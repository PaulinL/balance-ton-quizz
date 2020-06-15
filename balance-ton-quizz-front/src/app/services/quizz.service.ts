import {Injectable} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {Quizz} from "../shared/quizz.model";
import {environment} from "../../environments/environment";
import {Observable} from "rxjs";

@Injectable({
  providedIn: 'root'
})
export class QuizzService {

  private readonly endpoint = environment.backendUrl;
  private readonly frontEndpoint = environment.frontendUrl;

  constructor(private http: HttpClient) {
  }

  getAllQuizzes(): Observable<Quizz[]> {
    return this.http.get<Quizz[]>(`${this.endpoint}/quizzes`);
  }

  createQuizz(quizz: Quizz) {
    return this.http.post<any>(`${this.endpoint}/quizzes`, quizz);
  }

  getQuizzById(quizzId: string) {
    return this.http.get<Quizz>(`${this.endpoint}/quizzes/${quizzId}`);
  }

  getQuizzUrl(quizzId: string) {
    return `${this.frontEndpoint}/quizzes/${quizzId}/answer`;
  }

  getRandomQuizzId() {
    return this.http.get<number>(`${this.endpoint}/quizzes/random`);
  }

  getUserQuizz(){
    return this.http.get<Quizz[]>(`${this.endpoint}/quizzes/user`);
  }
}
