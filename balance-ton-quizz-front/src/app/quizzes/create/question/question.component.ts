import {Component, EventEmitter, Input, OnInit, Output} from '@angular/core';
import {FormArray, FormControl, FormGroup, Validators} from "@angular/forms";

@Component({
  selector: 'app-question',
  templateUrl: './question.component.html',
  styleUrls: ['./question.component.scss']
})
export class QuestionComponent implements OnInit {

  @Input()
  questionForm: FormGroup;

  @Input()
  index: number;

  @Output()
  deleteQuestion: EventEmitter<void>;

  constructor() {
    this.deleteQuestion = new EventEmitter<void>();
  }

  ngOnInit(): void {
    this.addEmptyAnswer();
    this.addEmptyAnswer();
  }

  addEmptyAnswer() {
    (this.questionForm.controls.answers as FormArray).push(new FormGroup({
      label: new FormControl('', Validators.required),
      isCorrect: new FormControl(false)
    }));
  }

  getAnswerControls(): FormGroup[] {
    return ((this.questionForm.controls.answers as FormArray).controls as FormGroup[]);
  }

  removeQuestion() {
    this.deleteQuestion.emit();
  }

  deleteAnswer(answerIndex: number) {
    (this.questionForm.controls.answers as FormArray).removeAt(answerIndex);
  }
}
