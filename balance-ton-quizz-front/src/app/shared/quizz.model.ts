import {Question} from "./question.model";
import {Theme} from "./theme.model";
import {User} from "./user.model";

export interface Quizz {
  id?: number;
  title: string;
  description?: string;
  creator: string;
  author: User;
  questions: Question[];
  theme: Theme;
  imageName?: string;
}
