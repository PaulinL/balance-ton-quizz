import {Answer} from "./answer.model";

export interface Question {
  id?: number;
  label: string,
  multiple: boolean,
  answers: Answer[],
  imageUrl?: string
}
