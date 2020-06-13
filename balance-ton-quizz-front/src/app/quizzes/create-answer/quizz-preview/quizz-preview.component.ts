import {Component, EventEmitter, Input, OnInit, Output} from '@angular/core';
import {Quizz} from "../../../shared/quizz.model";
import {ImageService} from '../../../services/image.service';

@Component({
  selector: 'app-quizz-preview',
  templateUrl: './quizz-preview.component.html',
  styleUrls: ['./quizz-preview.component.scss']
})
export class QuizzPreviewComponent implements OnInit {

  @Input()
  quizz: Quizz;

  @Output()
  answerQuizz: EventEmitter<void>;

  constructor(
    private imageService: ImageService
  ) {
    this.answerQuizz = new EventEmitter<void>();
  }

  ngOnInit(): void {
  }

  getImageUrl(quizz: Quizz) {
    return this.imageService.getImageUrl(quizz.imageName);
  }

  onAnswerQuizz() {
    this.answerQuizz.emit();
  }
}
