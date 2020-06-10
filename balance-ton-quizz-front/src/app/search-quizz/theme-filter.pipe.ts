import { Pipe, PipeTransform } from '@angular/core';
import {Theme} from '../shared/theme.model';

@Pipe({
  name: 'themeTitleFilter',
  pure: false
})
export class ThemeFilterPipe implements PipeTransform {

  transform(themes: Theme[], filterText: string): Theme[] {
    if (themes) {
      return themes.filter(theme => theme.title.search(new RegExp(filterText, 'i')) > -1);
    } else {
      return [];
    }
  }
}
