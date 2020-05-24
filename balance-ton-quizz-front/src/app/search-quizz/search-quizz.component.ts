import {Component, EventEmitter, OnInit, Output} from '@angular/core';

@Component({
  selector: 'app-search-quizz',
  templateUrl: './search-quizz.component.html',
  styleUrls: ['./search-quizz.component.scss']
})
export class SearchQuizzComponent implements OnInit {
  @Output() search = new EventEmitter<string>();

  constructor() { }

  ngOnInit(): void {
  }

  submitSearch(event: any){
    this.search.emit(event.target.value);
  }
}
