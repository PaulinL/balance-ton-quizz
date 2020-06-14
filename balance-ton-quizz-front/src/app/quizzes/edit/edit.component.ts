import {Component, Input, OnInit} from '@angular/core';
import {FormArray, FormBuilder, FormControl, FormGroup, Validators} from '@angular/forms';
import {Quizz} from '../../shared/quizz.model';
import {QuizzService} from '../../services/quizz.service';
import {Router} from '@angular/router';
import {ToastrService} from 'ngx-toastr';
import {ThemeService} from '../../services/theme.service';
import {Theme} from '../../shared/theme.model';
import {environment} from '../../../environments/environment';
import {ImageService} from '../../services/image.service';
import {CdkDragDrop, moveItemInArray} from '@angular/cdk/drag-drop';
import {Question} from '../../shared/question.model';

@Component({
  selector: 'app-create',
  templateUrl: './edit.component.html',
  styleUrls: ['./edit.component.scss']
})
export class EditComponent implements OnInit {

  quizzForm: FormGroup;

  @Input()
  quizz: Quizz;

  themes: Theme[];

  selectedTheme: Theme;

  url: string;
  file: File;
  searchText: string;

  isUpdate = false;

  constructor(
    private formBuilder: FormBuilder,
    private quizzService: QuizzService,
    private router: Router,
    private toastrService: ToastrService,
    private themeService: ThemeService,
    private imageService: ImageService
  ) {
  }

  async ngOnInit() {
    this.themes = await this.themeService.getAllThemes().toPromise();
    if (this.quizz) {
      this.quizzForm = this.buildFormFromQuizz(this.quizz);
      this.selectedTheme = this.themes.find(t => t.id === this.quizz.theme.id);
      this.isUpdate = true;
    } else {
      this.quizzForm = this.formBuilder.group({
        title: new FormControl('', Validators.required),
        description: new FormControl(''),
        questions: new FormArray([])
      });
      this.addEmptyQuestion();
    }
  }

  addEmptyQuestion() {
    (this.quizzForm.controls.questions as FormArray).push(new FormGroup({
      label: new FormControl('', Validators.required),
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

  onSubmitQuizz(value: Quizz) {
    if (this.quizzForm.valid) {
      if (this.isUpdate) {
        value.id = this.quizz.id;
        if (!this.file) {
          value.imageName = this.quizz.imageName;
        }
      }
      this.quizz = value;
      if (this.file) {
        this.imageService.uploadImage(this.file).subscribe(async res => {
          if (this.quizz.imageName) {
            await this.imageService.removeImage(this.quizz.imageName).toPromise();
          }
          this.quizz.imageName = res.fileName as string;
        }, error => {
          this.toastrService.error('Upload de l\'image impossible');
          console.error(error);
        });
      }
    }
  }

  async onSubmitTheme() {
    if (this.selectedTheme) {
      this.quizz.theme = this.selectedTheme;
      try {
        const result = await this.quizzService.createQuizz(this.quizz).toPromise();
        this.url = this.quizzService.getQuizzUrl(result.quizzId);
      } catch (e) {
        this.toastrService.error('Une erreur est survenue');
      }
    }
  }

  searchTheme($event: string) {
    this.searchText = $event;
  }

  async createTheme() {
    if (this.searchText) {
      try {
        const createdThemeId = await this.themeService.postTheme(this.searchText).toPromise();
        this.toastrService.success('Thème créé');
        // Reload
        this.themeService.getAllThemes().subscribe(themes => {
          console.log(themes);
          this.themes = themes;
          // Select theme
          this.selectedTheme = this.themes.find(theme => theme.id === createdThemeId);
        }, error => console.error);
      } catch (e) {
        console.log(e);
        this.toastrService.error('Une erreur est survenue pendant la création du thème');
      }
    }
  }

  getImageUrl(theme: Theme) {
    return `${environment.backendUrl}/images/${theme.imageName}`;
  }

  selectCard(theme: Theme) {
    this.selectedTheme = theme;
  }

  drop(event: CdkDragDrop<Question[]>) {
    moveItemInArray(
      ((this.quizzForm.controls.questions as FormArray).controls as FormGroup[]),
      event.previousIndex, event.currentIndex
    );
  }

  buildFormFromQuizz(quizz: Quizz) {
    return this.formBuilder.group({
      title: new FormControl(this.quizz.title, Validators.required),
      description: new FormControl(this.quizz.description),
      questions: new FormArray(quizz.questions.map(question => {
        return new FormGroup({
          label: new FormControl(question.label, Validators.required),
          multiple: new FormControl(question.multiple),
          answers: new FormArray(question.answers.map(answer => {
            return new FormGroup({
              label: new FormControl(answer.label, Validators.required),
              isCorrect: new FormControl(answer.isCorrect)
            });
          }))
        });
      }))
    });
  }
}


