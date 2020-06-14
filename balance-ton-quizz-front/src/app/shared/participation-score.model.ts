import {User} from './user.model';
import {Quizz} from './quizz.model';

export interface ParticipationScore {
  nbCorrectAnswers: number;
  nbTotalQuestions: number;
  player: User;
  quizz: Quizz;
}
