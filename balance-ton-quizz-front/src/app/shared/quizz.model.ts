import {Question} from "./question.model";
import {Theme} from "./theme.model";

export interface Quizz {
  id?: number;
  title: string;
  description?: string;
  creator: string;
  questions: Question[];
  theme: Theme;
  imageName?: string;
}
