import {Injectable} from '@angular/core';
import {environment} from "../../environments/environment";
import {HttpClient} from "@angular/common/http";

@Injectable({
  providedIn: 'root'
})
export class ImageService {

  private readonly endpoint = environment.backendUrl;

  constructor(private http: HttpClient) {
  }

  uploadImage(file: File) {
    const formData: FormData = new FormData();
    formData.append('file', file, file.name);
    return this.http.post<{ fileName: string }>(`${this.endpoint}/images`, formData);
  }

  removeImage(imageName: string) {
    return this.http.delete(`${this.endpoint}/images/${imageName}`);
  }
}
