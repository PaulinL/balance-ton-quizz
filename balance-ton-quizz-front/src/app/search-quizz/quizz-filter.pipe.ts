import { Pipe, PipeTransform } from '@angular/core';
import {Quizz} from '../shared/quizz.model';
import {Theme} from '../shared/theme.model';

@Pipe({
  name: 'quizzFilter',
  pure: false
})
export class QuizzFilterPipe implements PipeTransform {

  transform(quizzes: Quizz[], filterTitle: string, filterThemes: Theme[]): Quizz[] {
    filterThemes.forEach(e => console.log(e.title));
    if (quizzes) {
      const filteredQuizzByTheme = filterThemes.length > 0 ? quizzes.filter(quizz => filterThemes.find(theme => theme.title === quizz.theme.title)) : quizzes;
      return filteredQuizzByTheme.filter(quizz => quizz.title.search(new RegExp(filterTitle, 'i')) > -1); // */
    } else {
      return [];
    }
  }
}
