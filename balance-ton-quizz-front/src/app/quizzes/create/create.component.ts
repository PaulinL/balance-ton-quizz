import {Component, OnInit} from '@angular/core';
import {FormArray, FormBuilder, FormControl, FormGroup, Validators} from '@angular/forms';
import {Quizz} from '../../shared/quizz.model';
import {QuizzService} from '../../services/quizz.service';
import {Router} from '@angular/router';
import {ToastrService} from 'ngx-toastr';
import {ThemeService} from '../../services/theme.service';
import {Theme} from '../../shared/theme.model';
import {environment} from '../../../environments/environment';
import {ImageService} from '../../services/image.service';

@Component({
  selector: 'app-create',
  templateUrl: './create.component.html',
  styleUrls: ['./create.component.scss']
})
export class CreateComponent implements OnInit {

  quizzForm: FormGroup;

  quizz: Quizz;

  themes: Theme[];
  selectedTheme: Theme;
  url: string;
  file: File;
  searchText: string;

  constructor(
    private formBuilder: FormBuilder,
    private quizzService: QuizzService,
    private router: Router,
    private toastrService: ToastrService,
    private themeService: ThemeService,
    private imageService: ImageService
  ) {
  }

  ngOnInit(): void {
    this.quizzForm = this.formBuilder.group({
      title: new FormControl('', Validators.required),
      description: new FormControl(''),
      questions: new FormArray([])
    });
    this.addEmptyQuestion();
    this.themeService.getAllThemes().subscribe(themes => {
      //console.log(themes)
      this.themes = themes;
    }, error => console.error);
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
      this.quizz = value;
      if (this.file) {
        this.imageService.uploadImage(this.file).subscribe(res => {
          if (this.quizz.imageName) {
            this.imageService.removeImage(this.quizz.imageName).subscribe(res => {
            }, error => {
            });
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
}


