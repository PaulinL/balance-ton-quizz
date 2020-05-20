import {Injectable} from '@angular/core';
import {environment} from "../../environments/environment";
import {Observable} from "rxjs";
import {Quizz} from "../shared/quizz.model";
import {Theme} from "../shared/theme.model";
import {HttpClient} from "@angular/common/http";

@Injectable({
  providedIn: 'root'
})
export class ThemeService {

  private readonly endpoint = environment.backendUrl;

  constructor(private http: HttpClient) {
  }

  getAllThemes(): Observable<Theme[]> {
    return this.http.get<Theme[]>(`${this.endpoint}/themes`);
  }
}
