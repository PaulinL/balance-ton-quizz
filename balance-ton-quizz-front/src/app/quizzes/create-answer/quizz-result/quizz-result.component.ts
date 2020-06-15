import {Component, Input, OnInit} from '@angular/core';

@Component({
  selector: 'app-quizz-result',
  templateUrl: './quizz-result.component.html',
  styleUrls: ['./quizz-result.component.scss']
})
export class QuizzResultComponent implements OnInit {

  @Input()
  result: any;

  constructor() { }

  ngOnInit(): void {
  }

}
