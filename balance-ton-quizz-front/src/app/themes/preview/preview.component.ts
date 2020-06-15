import {Component, Input, OnInit} from '@angular/core';
import {Theme} from "../../shared/theme.model";

@Component({
  selector: 'app-preview',
  templateUrl: './preview.component.html',
  styleUrls: ['./preview.component.scss']
})
export class PreviewComponent implements OnInit {

  @Input()
  theme: Theme;

  constructor() {
  }

  ngOnInit(): void {
  }

}
