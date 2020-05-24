import {Component, OnInit} from '@angular/core';
import {FormBuilder, FormControl, FormGroup, Validators} from "@angular/forms";
import {AuthService} from "../../services/auth.service";
import {Router} from "@angular/router";

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent implements OnInit {

  registerForm: FormGroup

  constructor(
    private fb: FormBuilder,
    private authService: AuthService,
    private router: Router
  ) {
  }

  ngOnInit(): void {
    this.registerForm = this.fb.group({
      username: new FormControl('', Validators.required),
      password: new FormControl('', Validators.required),
      confirmPassword: new FormControl('', Validators.required)
    });
  }

  async onSubmit() {
    if (this.registerForm.controls.confirmPassword.value !== this.registerForm.controls.password.value) {
      const errors = {wrongPasswordConfirmation: true};
      this.registerForm.controls.confirmPassword.setErrors(errors);
      this.registerForm.controls.password.setErrors(errors);
    } else if (this.registerForm.valid) {
      try {
        const result = await this.authService.register(
          this.registerForm.controls.username.value,
          this.registerForm.controls.password.value
        ).toPromise();
        this.authService.setToken((<any>result).token);
        await this.router.navigateByUrl('');
      } catch (e) {
        const errors = {alreadyExists: true};
        this.registerForm.controls.username.setErrors(errors);
      }
    }
  }
}
