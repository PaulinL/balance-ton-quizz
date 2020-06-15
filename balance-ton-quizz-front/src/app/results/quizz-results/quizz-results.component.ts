import {Component, OnInit} from '@angular/core';
import {ParticipationScore} from '../../shared/participation-score.model';
import {ParticipationService} from '../../services/participation.service';
import {ActivatedRoute} from '@angular/router';
import {Quizz} from '../../shared/quizz.model';
import {QuizzService} from '../../services/quizz.service';

@Component({
  selector: 'app-quizz-results',
  templateUrl: './quizz-results.component.html',
  styleUrls: ['./quizz-results.component.scss']
})
export class QuizzResultsComponent implements OnInit {

  participations: ParticipationScore[];

  quizz: Quizz;

  displayedColumns = ['username', 'score'];

  constructor(
    private participationService: ParticipationService,
    private route: ActivatedRoute,
    private quizzService: QuizzService
  ) {
  }

  ngOnInit(): void {
    this.route.paramMap.subscribe(async params => {
      this.participations = await this.participationService.getParticipationByQuizzId(params.get('quizzId')).toPromise();
      this.quizz = await this.quizzService.getQuizzById(params.get('quizzId')).toPromise();
    });
  }
}
