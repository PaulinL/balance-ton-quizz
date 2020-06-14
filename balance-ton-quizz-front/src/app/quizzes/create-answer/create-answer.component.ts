import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from '@angular/router';
import {Quizz} from '../../shared/quizz.model';
import {QuizzService} from '../../services/quizz.service';
import {Question} from '../../shared/question.model';
import {Participation, QuestionAnswer} from '../../shared/participation.model';
import {ParticipationService} from '../../services/participation.service';

@Component({
  selector: 'app-create-answer',
  templateUrl: './create-answer.component.html',
  styleUrls: ['./create-answer.component.scss']
})
export class CreateAnswerComponent implements OnInit {

  quizz: Quizz;
  currentQuestionIndex = -1;
  participation: Participation;
  result: any;

  constructor(private route: ActivatedRoute,
              private quizzService: QuizzService,
              private participationService: ParticipationService) {
  }

  ngOnInit(): void {
    this.route.paramMap.subscribe(async params => {
      this.quizz = await this.quizzService.getQuizzById(params.get('quizzId')).toPromise();
      this.participation = {
        quizzId: this.quizz.id,
        questionAnswers: []
      };
    });
  }

  onQuizzStart() {
    this.currentQuestionIndex = 0;
  }

  async onQuestionAnswer(questionAnswer: QuestionAnswer) {
    this.participation.questionAnswers.push(questionAnswer);
    if (this.currentQuestionIndex + 1 === this.quizz.questions.length) {
      this.result = await this.participationService.createParticipation(this.participation).toPromise();
    } else {
      this.currentQuestionIndex++;
    }
  }
}
