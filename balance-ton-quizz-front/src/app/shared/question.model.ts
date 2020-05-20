import {Answer} from "./answer.model";

export interface Question {
  id?: number;
  label: string,
  multiple: boolean,
  answers: Answer[]
}

export interface TextQuestion extends Question {

}

export interface ImageQuestion extends Question {
  image: string
}
