import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router'
import { SignUpComponent } from './modules/auth/sign-up/sign-up.component'
import { SignInComponent } from './modules/auth/sign-in/sign-in.component'
import { MoviesComponent } from './modules/movie/movies/movies.component'

const routes: Routes = [
  {
    path: '', redirectTo: "/signup", pathMatch: "full",
  },
  {
    path: "signup", component: SignUpComponent
  },
  {
    path: "signin", component: SignInComponent
  },
  {
    path: "movies", component: MoviesComponent
  }
];


@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
