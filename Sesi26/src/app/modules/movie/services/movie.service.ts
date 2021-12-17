import { HttpClient, HttpErrorResponse } from '@angular/common/http'
import { Injectable } from '@angular/core'
import { throwError } from 'rxjs'
import { catchError } from 'rxjs/operators'
@Injectable({
  providedIn: 'root'
})
export class MovieService {

  endpoint: string = "https://fsd-h8-ocbc-my-movies.herokuapp.com"

  constructor(private http: HttpClient) { }

  getMovies() {
    const api = `${this.endpoint}/movies`
    return this.http
      .get(api)
      .pipe(catchError(this.handleError))
  }

  handleError(error: HttpErrorResponse) {
    let message = ""
    if (error.error instanceof ErrorEvent) message = error.error.message
    else message = `Error COde: ${error.status}\nMessage: ${error.message}`
    return throwError(message)
  }
}
