import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms'
import { AuthService } from '../services/auth.service'

@Component({
  selector: 'app-sign-in',
  templateUrl: './sign-in.component.html',
  styleUrls: ['./sign-in.component.css']
})
export class SignInComponent  {

  constructor(private authService: AuthService) { }

  signInForm = new FormGroup({
    password : new FormControl("", [Validators.required, Validators.minLength(5)]),
    email : new FormControl("", [Validators.required, Validators.minLength(5)])
  })

  get password() {
    return this.signInForm.get("password")
  }

  get email() {
    return this.signInForm.get("email")
  }

  isSignIn() {
    if (this.authService.getAuthorizationToken() !== null) return true
    return false
  }

  signOut() {
    this.authService.signOut()
  }

  signIn() {
    return this.authService.signIn(
      this.signInForm.value
    ).subscribe((response: any) => {
      console.log(response);
      if (response.token !== null) {
        localStorage.setItem("access_token", response.token)
      }
    })
  }

}
