import {Component, OnInit} from '@angular/core';
import {QuizzService} from "../services/quizz.service";
import {Quizz} from "../shared/quizz.model";
import {environment} from "../../environments/environment";

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
    this.quizzService.getAllQuizzes().subscribe(quizzes => {
      this.quizzes = quizzes;
    }, error => {
      console.error(error);
    });
  }

  getImageUrl(quizz: Quizz) {
    return `${environment.backendUrl}/images/${quizz.imageName}`
  }
}
