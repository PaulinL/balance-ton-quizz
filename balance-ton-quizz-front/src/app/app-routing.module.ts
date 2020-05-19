import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {HomeComponent} from "./home/home.component";
import {CreateComponent} from "./quizzes/create/create.component";


const routes: Routes = [
  {
    path: '',
    component: HomeComponent
  },
  {
    path: 'quizzes/create',
    component: CreateComponent
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
