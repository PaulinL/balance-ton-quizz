import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {environment} from "../../environments/environment";
import {User} from "../shared/user.model";

@Injectable({
  providedIn: 'root'
})
export class UserService {

  private readonly endpoint = environment.backendUrl;

  constructor(private http: HttpClient) {}

  updateUser(user: User){
    return this.http.post(this.endpoint + '/user', user);
  }

  getUserDetails() {
    return this.http.get<User>(this.endpoint + '/user');
  }
}
