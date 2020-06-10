import {Component, Input, OnInit} from '@angular/core';
import {Quizz} from "../../../shared/quizz.model";

@Component({
  selector: 'app-quizz-preview',
  templateUrl: './quizz-preview.component.html',
  styleUrls: ['./quizz-preview.component.scss']
})
export class QuizzPreviewComponent implements OnInit {

  @Input()
  quizz: Quizz;

  constructor() { }

  ngOnInit(): void {
  }

}
