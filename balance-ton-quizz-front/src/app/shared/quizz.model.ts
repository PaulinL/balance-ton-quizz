import {Question} from "./question.model";
import {Theme} from "./theme.model";

export interface Quizz {
  id?: number;
  title: string;
  creator: string;
  question: Question[];
  theme: Theme;
  imageName?: string;
}
