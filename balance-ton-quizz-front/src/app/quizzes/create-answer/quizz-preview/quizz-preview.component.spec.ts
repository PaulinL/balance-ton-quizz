import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { QuizzPreviewComponent } from './quizz-preview.component';

describe('QuizzPreviewComponent', () => {
  let component: QuizzPreviewComponent;
  let fixture: ComponentFixture<QuizzPreviewComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ QuizzPreviewComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(QuizzPreviewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should edit', () => {
    expect(component).toBeTruthy();
  });
});
