import {Component, OnInit} from '@angular/core';
import {QuizzService} from '../services/quizz.service';
import {Quizz} from '../shared/quizz.model';
import {ThemeService} from '../services/theme.service';
import {Theme} from '../shared/theme.model';
import {ImageService} from '../services/image.service';
import {Router} from '@angular/router';
import {environment} from "../../environments/environment";
import {User} from "../shared/user.model";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  quizzes: Quizz[];
  themes: Theme[];
  searchText: string;
  selectedThemes: Theme[] = [];

  constructor(
    private quizzService: QuizzService,
    private themeService: ThemeService,
    private imageService: ImageService,
    private router: Router
  ) {
  }

  ngOnInit(): void {
    this.quizzService.getAllQuizzes().subscribe(quizzes => {
      this.quizzes = quizzes;
    }, error => {
      console.error(error);
    });

    this.themeService.getAllThemes().subscribe( themes => {
      this.themes = themes;
    }, error => console.log(error));
  }

  getImageUrl(quizz: Quizz) {
    if(quizz.imageName){
      return this.imageService.getImageUrl(quizz.imageName);
    } else {
      return 'assets/question.svg';
    }
  }

  getUserImageUrl(user: User) {
    if (user.imageUrl){
      return `${environment.backendUrl}/images/${user.imageUrl}`;
    } else {
      return 'assets/default_avatar.png';
    }
  }

  // recoit la recherche pour filtrer les quizz
  search($event: string) {
    this.searchText = $event;
  }

  // sélectionne un theme pour filtrer les quizz
  selectThemeFilter(selectedTheme: Theme) {

    const index = this.selectedThemes.indexOf(selectedTheme);
    if (index >= 0){
      // remove from array
      this.selectedThemes.splice(index,1);
    } else {
      this.selectedThemes.push(selectedTheme);
    }
  }

  async getRandomQuizz() {
    const quizzId = await this.quizzService.getRandomQuizzId().toPromise();
    await this.router.navigateByUrl(`/quizzes/${quizzId}/answer`);
  }
}
