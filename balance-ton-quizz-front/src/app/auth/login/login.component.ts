import {Component, OnInit} from '@angular/core';
import {FormBuilder, FormControl, FormGroup, Validators} from "@angular/forms";
import {AuthService} from "../../services/auth.service";
import {ActivatedRoute, Router} from "@angular/router";

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {

  loginForm: FormGroup
  returnUrl: string;

  constructor(
    private fb: FormBuilder,
    private authService: AuthService,
    private router: Router,
    private route: ActivatedRoute,
  ) {
  }

  ngOnInit(): void {
    this.loginForm = this.fb.group({
      username: new FormControl('', Validators.required),
      password: new FormControl('', Validators.required),
    });
    // get return url from route parameters or default to '/'
    this.returnUrl = this.route.snapshot.queryParams['returnUrl'] || '/';
  }

  async onSubmit() {
    if (this.loginForm.valid) {
      try {
        const result = await this.authService.login(
          this.loginForm.controls.username.value,
          this.loginForm.controls.password.value
        ).toPromise();
        this.authService.setToken((<any>result).token);
        this.authService.setUser((result as any).user);
        await this.router.navigateByUrl(this.returnUrl);
      } catch (e) {
        if (e.status === 401) {
          this.loginForm.controls.password.setErrors({notFound: true})
        }
      }
    }
  }

}
