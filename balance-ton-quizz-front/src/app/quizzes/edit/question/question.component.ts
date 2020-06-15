import {Component, EventEmitter, Input, OnInit, Output} from '@angular/core';
import {FormArray, FormControl, FormGroup, Validators} from '@angular/forms';
import {CdkDragDrop, moveItemInArray} from '@angular/cdk/drag-drop';
import {Question} from '../../../shared/question.model';
import {Answer} from '../../../shared/answer.model';

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

  @Input()
  isUpdate: boolean;

  @Output()
  deleteQuestion: EventEmitter<void>;

  constructor() {
    this.deleteQuestion = new EventEmitter<void>();
  }

  ngOnInit(): void {
    if (!this.isUpdate) {
      this.addEmptyAnswer();
      this.addEmptyAnswer();
    }
    this.questionForm.controls.multiple.valueChanges.subscribe(() => this.onIsCorrectChange());
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

  onIsCorrectChange(index = null) {
    if (!this.questionForm.controls.multiple.value) {
      if (index === null) {
        this.setAllFalse(this.getFirstCorrectAnswerIndex());
      } else if (!this.getAnswerControls()[index].controls.isCorrect.value) {
        this.setAllFalse(index);
      }
    }

  }

  private setAllFalse(except: number) {
    const answers = this.getAnswerControls();
    for (let i = 0; i < answers.length; i++) {
      if (i !== except) {
        answers[i].controls.isCorrect.setValue(false);
      } else {
        setTimeout(() => answers[i].controls.isCorrect.setValue(true), 10);
      }
    }
  }

  private getFirstCorrectAnswerIndex(): number {
    let index = 0;
    for (const answer of this.getAnswerControls()) {
      if ((answer as FormGroup).controls.isCorrect.value) {
        return index;
      }
      index++;
    }
    return null;
  }

  drop(event: CdkDragDrop<Answer[]>) {
    moveItemInArray(
      ((this.questionForm.controls.answers as FormArray).controls as FormGroup[]),
      event.previousIndex, event.currentIndex
    );
  }
}
