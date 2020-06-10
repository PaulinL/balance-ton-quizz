import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from "@angular/router";
import {Quizz} from "../../shared/quizz.model";
import {QuizzService} from "../../services/quizz.service";

@Component({
  selector: 'app-create-answer',
  templateUrl: './create-answer.component.html',
  styleUrls: ['./create-answer.component.scss']
})
export class CreateAnswerComponent implements OnInit {

  quizz: Quizz;

  constructor(private route: ActivatedRoute,
              private quizzService: QuizzService) {
  }

  ngOnInit(): void {
    this.route.paramMap.subscribe(async params => {
      this.quizz = await this.quizzService.getQuizzById(params.get("quizzId")).toPromise();
    });
  }
}
