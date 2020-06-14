import {Injectable} from '@angular/core';
import {environment} from '../../environments/environment';
import {HttpClient} from '@angular/common/http';
import {JwtHelperService} from '@auth0/angular-jwt';
import {User} from '../shared/user.model';
import {Observable, of} from 'rxjs';
import {UserService} from './user.service';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  private readonly endpoint = environment.backendUrl;
  private readonly tokenKey = 'token';
  private user: User;

  constructor(private http: HttpClient,
              public jwtHelper: JwtHelperService,
              private userService: UserService) {
  }

  public isAuthenticated(): boolean {
    const token = localStorage.getItem('token');
    if (token === undefined) {
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

  public setUser(user: User): void {
    this.user = user;
  }

  public getUser(): Observable<User> {
    if (this.user) {
      return of(this.user);
    } else if (this.isAuthenticated()) {
      return this.userService.getUserDetails();
    } else {
      return of(null);
    }
  }

  public logout() {
    localStorage.removeItem(this.tokenKey);
  }
}
