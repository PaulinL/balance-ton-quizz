import {Component} from '@angular/core';
import {AuthService} from "./services/auth.service";
import {Router} from "@angular/router";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'balance-ton-quizz-front';
  isDrawerOpen = true;

  constructor(private authService: AuthService,
              private router: Router) {
  }

  isAuthenticated() {
    return this.authService.isAuthenticated();
  }

  async logout() {
    this.authService.logout();
    await this.router.navigateByUrl('');
  }
}
