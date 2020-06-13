import { Injectable } from '@angular/core';
import {Participation} from '../shared/participation.model';
import {environment} from '../../environments/environment';
import {HttpClient} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ParticipationService {

  private readonly endpoint = environment.backendUrl;

  constructor(private http: HttpClient) { }

  createParticipation(participation: Participation) {
    return this.http.post<any>(`${this.endpoint}/participation`, participation);
  }
}
