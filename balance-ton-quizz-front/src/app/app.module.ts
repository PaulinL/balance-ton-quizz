import {BrowserModule} from '@angular/platform-browser';
import {NgModule} from '@angular/core';
import {MatSidenavModule} from '@angular/material/sidenav';
import {AppRoutingModule} from './app-routing.module';
import {AppComponent} from './app.component';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {HomeComponent} from './home/home.component';
import {FlexLayoutModule} from '@angular/flex-layout';
import {MatListModule} from "@angular/material/list";
import {MatIconModule} from "@angular/material/icon";
import {HTTP_INTERCEPTORS, HttpClientModule} from "@angular/common/http";
import {MatCardModule} from "@angular/material/card";
import {MatButtonModule} from "@angular/material/button";
import {CreateComponent} from './quizzes/create/create.component';
import {MatFormFieldModule} from "@angular/material/form-field";
import {MatInputModule} from "@angular/material/input";
import {QuestionComponent} from './quizzes/create/question/question.component';
import {FormsModule, ReactiveFormsModule} from "@angular/forms";
import {MatSlideToggleModule} from "@angular/material/slide-toggle";
import {AnswerComponent} from './quizzes/create/question/answer/answer.component';
import {MatCheckboxModule} from "@angular/material/checkbox";
import {ToastrModule, ToastrService} from "ngx-toastr";
import {MatStepperModule} from "@angular/material/stepper";
import {PreviewComponent} from './themes/preview/preview.component';
import {MatRadioModule} from "@angular/material/radio";
import {RegisterComponent} from './auth/register/register.component';
import {JwtInterceptor} from "./jwt/jwt.interceptor";
import {LoginComponent} from './auth/login/login.component';
import {JWT_OPTIONS, JwtHelperService} from "@auth0/angular-jwt";
import {AuthGuard} from "./guards/auth.guard";
import { UploadImageComponent } from './upload-image/upload-image.component';
import { SearchQuizzComponent } from './search-quizz/search-quizz.component';
import { QuizzFilterPipe } from './search-quizz/quizz-filter.pipe';
import {MatChipsModule} from "@angular/material/chips";
import { CreateAnswerComponent } from './quizzes/create-answer/create-answer.component';
import { QuizzPreviewComponent } from './quizzes/create-answer/quizz-preview/quizz-preview.component';
import { ThemeFilterPipe } from './search-quizz/theme-filter.pipe';
import { QuestionAnswerComponent } from './quizzes/create-answer/question-answer/question-answer.component';
import {ClipboardModule} from '@angular/cdk/clipboard';
import {DragDropModule} from '@angular/cdk/drag-drop';
import { ProfileComponent } from './user/profile/profile.component';
import {MatTabsModule} from "@angular/material/tabs";
import { QuizzResultComponent } from './quizzes/create-answer/quizz-result/quizz-result.component';


@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    CreateComponent,
    QuestionComponent,
    AnswerComponent,
    PreviewComponent,
    SearchQuizzComponent,
    QuizzFilterPipe,
    RegisterComponent,
    LoginComponent,
    UploadImageComponent,
    ThemeFilterPipe,
    QuizzPreviewComponent,
    CreateAnswerComponent,
    QuestionAnswerComponent,
    QuizzResultComponent,
    ProfileComponent
  ],
    imports: [
        BrowserModule,
        AppRoutingModule,
        BrowserAnimationsModule,
        MatSidenavModule,
        FlexLayoutModule,
        MatListModule,
        MatIconModule,
        HttpClientModule,
        MatCardModule,
        MatButtonModule,
        MatFormFieldModule,
        MatInputModule,
        ReactiveFormsModule,
        MatSlideToggleModule,
        MatCheckboxModule,
        ToastrModule.forRoot(),
        MatStepperModule,
        MatRadioModule,
        FormsModule,
        MatChipsModule,
        ClipboardModule,
		DragDropModule,
        MatTabsModule,
    ],
  providers: [
    {provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true},
    {provide: JWT_OPTIONS, useValue: JWT_OPTIONS},
    JwtHelperService,
    AuthGuard
  ],
  bootstrap: [AppComponent]
})
export class AppModule {
}
