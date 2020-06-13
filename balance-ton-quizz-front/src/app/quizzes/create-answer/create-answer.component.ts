import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from "@angular/router";
import {Quizz} from "../../shared/quizz.model";
import {QuizzService} from "../../services/quizz.service";
import {Question} from '../../shared/question.model';
import {Participation, QuestionAnswer} from '../../shared/participation.model';

@Component({
  selector: 'app-create-answer',
  templateUrl: './create-answer.component.html',
  styleUrls: ['./create-answer.component.scss']
})
export class CreateAnswerComponent implements OnInit {

  quizz: Quizz;
  currentQuestionIndex = -1;
  participation: Participation;

  constructor(private route: ActivatedRoute,
              private quizzService: QuizzService) {
  }

  ngOnInit(): void {
    this.route.paramMap.subscribe(async params => {
      this.quizz = await this.quizzService.getQuizzById(params.get("quizzId")).toPromise();
      this.participation = {
        quizzId: this.quizz.id,
        questionAnswers: []
      };
    });
  }

  onQuizzStart() {
    this.currentQuestionIndex = 0;
  }

  onQuestionAnswer(questionAnswer: QuestionAnswer) {
    this.participation.questionAnswers.push(questionAnswer);
    this.currentQuestionIndex++;
    if(this.currentQuestionIndex === this.quizz.questions.length) {

    }
  }
}
