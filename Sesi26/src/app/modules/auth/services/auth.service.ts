import { HttpClient, HttpErrorResponse } from '@angular/common/http'
import { Injectable } from '@angular/core'
import { Observable, throwError } from 'rxjs'
import { User } from '../models/user'
import { catchError } from 'rxjs/operators'
@Injectable({
  providedIn: 'root'
})
export class AuthService {
  endpoint: string = "https://fsd-h8-ocbc-my-movies.herokuapp.com"
  
  constructor(private http: HttpClient) { }
  
  signUp(user: User): Observable<any> {
    const api = `${this.endpoint}/register`
    return this.http
    .post(api, user)
    .pipe(
      catchError(this.handleError)
      )
  }

  signIn(user: User) {
    const api = `${this.endpoint}/login`
    return this.http
      .post(api, user)
  }

  isSignIn() {
    const authToken =  localStorage.getItem("access_token")
    if (authToken !== null) return true
    return false
  }

  getAuthorizationToken() {
    return localStorage.getItem("access_token")
  }

  signOut() {
    localStorage.removeItem("access_token")
  }
  
  handleError(error: HttpErrorResponse) {
    let message = ""
    if (error.error instanceof ErrorEvent) message = error.error.message
    else message = `Error COde: ${error.status}\nMessage: ${error.message}`
    return throwError(message)
  }

}

