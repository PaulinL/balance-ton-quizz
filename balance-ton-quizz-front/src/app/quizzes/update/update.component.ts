import { Component, OnInit } from '@angular/core';
import {ActivatedRoute} from '@angular/router';
import {QuizzService} from '../../services/quizz.service';
import {Quizz} from '../../shared/quizz.model';

@Component({
  selector: 'app-update',
  templateUrl: './update.component.html',
  styleUrls: ['./update.component.scss']
})
export class UpdateComponent implements OnInit {

  quizz: Quizz;

  constructor(private route: ActivatedRoute,
              private quizzService: QuizzService) {

  }

  ngOnInit(): void {
    this.route.paramMap.subscribe(async params => {
      this.quizz = await this.quizzService.getQuizzById(params.get('quizzId')).toPromise();
    });
  }

}
