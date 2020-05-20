import {Answer} from "./answer.model";

export interface Question {
  label: string,
  multiple: boolean,
  answers: Answer[]
}

export interface TextQuestion extends Question {

}

export interface ImageQuestion extends Question {
  image: string
}
