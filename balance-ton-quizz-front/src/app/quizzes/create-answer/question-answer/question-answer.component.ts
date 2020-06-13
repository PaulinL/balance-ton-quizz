import {Component, EventEmitter, Input, OnInit, Output} from '@angular/core';
import {Question} from '../../../shared/question.model';
import {QuestionAnswer} from '../../../shared/participation.model';
import {Answer} from '../../../shared/answer.model';

@Component({
  selector: 'app-question-answer',
  templateUrl: './question-answer.component.html',
  styleUrls: ['./question-answer.component.scss']
})
export class QuestionAnswerComponent implements OnInit {

  @Input()
  question: Question;

  @Input()
  index: number;

  @Input()
  nbQuestions: number;

  @Output()
  answerQuestion: EventEmitter<QuestionAnswer>;

  questionAnswers: { answer: Answer, checked: boolean }[];
  selectedAnswer: Answer;

  constructor() {
    this.answerQuestion = new EventEmitter<QuestionAnswer>();
    this.questionAnswers = [];
  }

  ngOnInit(): void {
    this.question.answers.forEach(answer => {
      this.questionAnswers.push({
        answer,
        checked: false
      });
    });
  }

  onAnswerQuestion() {
    // if an answer has been selected
    if (this.selectedAnswer || this.questionAnswers.filter(a => a.checked).length > 0) {
      if (this.question.multiple) {
        this.answerQuestion.emit({
          answers: this.questionAnswers.filter(a => a.checked).map(a => a.answer.id),
          questionId: this.question.id
        });
      } else {
        this.answerQuestion.emit({
          answers: [this.selectedAnswer.id],
          questionId: this.question.id
        });
      }
    }
  }
}
