import {Component, OnInit} from '@angular/core';
import {QuizzService} from "../services/quizz-service.service";
import {Quizz} from "../shared/quizz.model";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  quizzes: Quizz[];

  constructor(
    private quizzService: QuizzService
  ) {
  }

  ngOnInit(): void {
    /*this.quizzService.getAllQuizzes().subscribe(quizzes => {
      this.quizzes = quizzes;
    }, error => {
      console.error(error);
    });*/
  }
}
