import {Component, EventEmitter, Input, OnInit, Output} from '@angular/core';
import {FormGroup} from "@angular/forms";

@Component({
  selector: 'app-answer',
  templateUrl: './answer.component.html',
  styleUrls: ['./answer.component.scss']
})
export class AnswerComponent implements OnInit {

  @Input()
  answerForm: FormGroup;

  @Input()
  index: number;

  @Output()
  deleteAnswer: EventEmitter<void>;

  constructor() {
    this.deleteAnswer = new EventEmitter<void>();
  }

  ngOnInit(): void {
  }

  removeAnswer() {
    this.deleteAnswer.emit();
  }
}
