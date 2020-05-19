import {Component, OnInit} from '@angular/core';
import {FormArray, FormBuilder, FormControl, FormGroup, Validators} from "@angular/forms";

@Component({
  selector: 'app-create',
  templateUrl: './create.component.html',
  styleUrls: ['./create.component.scss']
})
export class CreateComponent implements OnInit {

  quizzForm: FormGroup;

  constructor(
    private formBuilder: FormBuilder
  ) {
  }

  ngOnInit(): void {
    this.quizzForm = this.formBuilder.group({
      title: new FormControl('', Validators.required),
      description: new FormControl(''),
      questions: new FormArray([])
    });
    this.addEmptyQuestion();
  }

  addEmptyQuestion() {
    (this.quizzForm.controls.questions as FormArray).push(new FormGroup({
      title: new FormControl('', Validators.required),
      multiple: new FormControl(false),
      answers: new FormArray([])
    }));
  }

  getQuestions(): FormGroup[] {
    return ((this.quizzForm.controls.questions as FormArray).controls as FormGroup[]);
  }

  deleteQuestion(questionIndex: number) {
    (this.quizzForm.controls.questions as FormArray).removeAt(questionIndex);
  }
}


