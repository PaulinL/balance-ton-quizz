import { Injectable } from '@angular/core';
import {Participation} from '../shared/participation.model';
import {environment} from '../../environments/environment';
import {HttpClient} from '@angular/common/http';
import {ParticipationScore} from '../shared/participation-score.model';

@Injectable({
  providedIn: 'root'
})
export class ParticipationService {

  private readonly endpoint = environment.backendUrl;

  constructor(private http: HttpClient) { }

  createParticipation(participation: Participation) {
    return this.http.post<any>(`${this.endpoint}/participation`, participation);
  }

  getMyParticipation() {
    return this.http.get<ParticipationScore[]>(`${this.endpoint}/participation/user`);
  }

  getParticipationByQuizzId(quizzId: string) {
    return this.http.get<ParticipationScore[]>(`${this.endpoint}/participation/quizz/${quizzId}`);
  }
}
