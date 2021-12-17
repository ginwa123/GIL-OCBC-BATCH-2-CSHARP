import { Component, OnInit } from '@angular/core'
import { AbstractControl, FormControl, FormGroup, Validators } from '@angular/forms'
import { Router } from '@angular/router'
import { AuthService } from '../services/auth.service'

@Component({
  selector: 'app-sign-up',
  templateUrl: './sign-up.component.html',
  styleUrls: ['./sign-up.component.css']
})
export class SignUpComponent implements OnInit {


  signUpForm = new FormGroup({
    name: new FormControl("", [Validators.required, Validators.minLength(5)]),
    password: new FormControl("", [Validators.required, Validators.minLength(5)]),
    email: new FormControl("", [Validators.required, Validators.email])
  })

  constructor(private authService: AuthService, private router: Router) { }

  ngOnInit(): void {

  }

  get name(): AbstractControl | any {
    return this.signUpForm.get("name")
  }

  get password(): AbstractControl | any {
    return this.signUpForm.get("password")
  }

  get email(): AbstractControl | any {
    return this.signUpForm.get("email")
  }

  registerUser() {
    this.authService.signUp(this.signUpForm.value)
      .subscribe((response) => {
        console.log(response)
        console.log(typeof response) // object
        // {
        //   "name": "gilang tri",
        //     "email": "gilangtrisetya123@gmail.com",
        //       "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiZ2lsYW5nIHRyaSIsImVtYWlsIjoiZ2lsYW5ndHJpc2V0eWExMjNAZ21haWwuY29tIiwiaWF0IjoxNjM5MTE1OTUzfQ.36tTDKF6Xn8E4v9-UR4UpfYzXX14Vh8Nv3VBx-96FK8"
        // }
        if (response.result) {
          this.signUpForm.reset()
          this.router.navigate(["login"])
        }
        // if (response.result) {
        //   this.signUpForm.reset()
        //   this.router.navigate(["login"])
        // }
      })
  }

}
