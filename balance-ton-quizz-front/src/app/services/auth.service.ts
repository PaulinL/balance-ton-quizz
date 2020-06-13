import {Injectable} from '@angular/core';
import {environment} from "../../environments/environment";
import {HttpClient} from "@angular/common/http";
import {JwtHelperService} from "@auth0/angular-jwt";

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  private readonly endpoint = environment.backendUrl;
  private readonly tokenKey = 'token';

  constructor(private http: HttpClient,
              public jwtHelper: JwtHelperService) {
  }

  public isAuthenticated(): boolean {
    const token = localStorage.getItem('token');
    if (token === undefined){
      return false;
    }
    return !this.jwtHelper.isTokenExpired(token);
  }

  public login(username, password) {
    return this.http.post(`${this.endpoint}/authenticate`, {username, password});
  }

  public register(username, password) {
    return this.http.post(`${this.endpoint}/register`, {username, password});
  }

  public getToken(): string {
    return localStorage.getItem(this.tokenKey);
  }

  public setToken(token: string): void {
    localStorage.setItem(this.tokenKey, token);
  }

  public logout() {
    localStorage.removeItem(this.tokenKey);
  }
}
