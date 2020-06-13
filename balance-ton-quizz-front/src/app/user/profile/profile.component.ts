import { Component, OnInit } from '@angular/core';
import {AuthService} from '../../services/auth.service';
import {User} from '../../shared/user.model';
import {ImageService} from '../../services/image.service';
import {Quizz} from '../../shared/quizz.model';
import {environment} from '../../../environments/environment';
import {ToastrService} from 'ngx-toastr';
import {UserService} from '../../services/user.service';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.scss']
})
export class ProfileComponent implements OnInit {

  user: User;
  editUsername = false;
  editImage = false;
  file: File;

  constructor(public authService: AuthService,
              public imageService: ImageService,
              public toastrService: ToastrService,
              public userService: UserService) { }

  ngOnInit(): void {
    this.user = this.authService.getUser();
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

  getImageUrl(user: User) {
    return `${environment.backendUrl}/images/${user.imageUrl}`;
  }

}
