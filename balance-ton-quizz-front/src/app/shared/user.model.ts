import {Quizz} from "./quizz.model";

export interface User {
  id?: number;
  username: string,
  imageUrl?: string;
  quizzList: Quizz[];
}
