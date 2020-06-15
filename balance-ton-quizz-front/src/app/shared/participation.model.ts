export interface Participation {
  quizzId: number;
  questionAnswers: QuestionAnswer[];
}

export interface QuestionAnswer {
  questionId: number;
  answers: number[];
}
