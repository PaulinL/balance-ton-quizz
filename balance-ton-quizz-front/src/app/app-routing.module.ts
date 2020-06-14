import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {HomeComponent} from "./home/home.component";
import {CreateComponent} from "./quizzes/create/create.component";
import {RegisterComponent} from "./auth/register/register.component";
import {AuthGuard} from "./guards/auth.guard";
import {LoginComponent} from "./auth/login/login.component";
import {CreateAnswerComponent} from "./quizzes/create-answer/create-answer.component";
import {ProfileComponent} from "./user/profile/profile.component";


const routes: Routes = [
  {
    path: '',
    component: HomeComponent
  },
  {
    path: 'quizzes/create',
    component: CreateComponent,
    canActivate: [AuthGuard],
  },
  {
    path: 'quizzes/:quizzId/answer',
    component: CreateAnswerComponent,
    canActivate: [AuthGuard],
  },
  {
    path: 'register',
    component: RegisterComponent
  },
  {
    path: 'login',
    component: LoginComponent
  },
  {
    path: 'profile',
    component: ProfileComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
