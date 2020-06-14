import { Component, OnInit } from '@angular/core';
import {AuthService} from '../../services/auth.service';
import {User} from '../../shared/user.model';
import {ImageService} from '../../services/image.service';
import {Quizz} from '../../shared/quizz.model';
import {environment} from '../../../environments/environment';
import {ToastrService} from 'ngx-toastr';
import {UserService} from '../../services/user.service';
import {ParticipationService} from "../../services/participation.service";
import {Participation} from "../../shared/participation.model";
import {ParticipationScore} from "../../shared/participation-score.model";
import {QuizzService} from "../../services/quizz.service";

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.scss']
})
export class ProfileComponent implements OnInit {

  user: User;
  editImage = false;
  file: File;
  participations: ParticipationScore[];
  quizzes: Quizz[];
  displayedColumns = ['quizz', 'author', 'score'];

  constructor(public authService: AuthService,
              public imageService: ImageService,
              public toastrService: ToastrService,
              public userService: UserService,
              public participationService: ParticipationService,
              public quizzService: QuizzService) { }

  async ngOnInit() {
    this.user = await this.authService.getUser().toPromise();
    this.participations = await this.participationService.getMyParticipation().toPromise();
    this.quizzes = await this.quizzService.getUserQuizz().toPromise();
  }

  onSubmitImage(){
    if (this.file) {
      this.imageService.uploadImage(this.file).subscribe(res => {
        this.user.imageUrl = res.fileName as string;
        this.userService.updateUser(this.user).subscribe(
          res => {
            this.toastrService.success('Image mise à jour');
            this.file = null;
          },
          error => {
          this.toastrService.error('Erreur lors de la mise à jour de l\'utilisateur');
          console.log(error);
        });
      }, error => {
        this.toastrService.error('Upload de l\'image impossible');
        console.error(error);
      });
    }
    this.editImage = false;
  }

  getImageUrlUser(user: User) {
    if (user.imageUrl){
      return `${environment.backendUrl}/images/${user.imageUrl}`;
    } else {
      return 'assets/default_avatar.png';
    }
  }

  getImageUrlQuizz(quizz: Quizz) {
    if(quizz.imageName){
      return `${environment.backendUrl}/images/${quizz.imageName}`;
    } else {
      return 'assets/question.svg';
    }
  }

}
