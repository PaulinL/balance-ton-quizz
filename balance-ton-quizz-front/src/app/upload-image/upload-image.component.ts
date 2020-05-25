import {Component, EventEmitter, Input, OnInit, Output} from '@angular/core';

@Component({
  selector: 'app-upload-image',
  templateUrl: './upload-image.component.html',
  styleUrls: ['./upload-image.component.scss']
})
export class UploadImageComponent implements OnInit {

  @Input()
  file: File

  @Output()
  fileChange: EventEmitter<File>;

  constructor() {
    this.fileChange = new EventEmitter<File>();
  }

  ngOnInit(): void {
  }

  onFileInput(files: FileList) {
    this.file = files.item(0);
    this.fileChange.emit(this.file);
  }

  removeFile() {
    this.file = null;
    this.fileChange.emit(null)
  }
}
