import { Component, OnInit } from '@angular/core';
import { Movie } from '../models/movie'
import { MovieService } from '../services/movie.service'

@Component({
  selector: 'app-movies',
  templateUrl: './movies.component.html',
  styleUrls: ['./movies.component.css']
})
export class MoviesComponent implements OnInit {

  constructor(private movieService: MovieService) { }

  movies : Movie[]= [] 

  ngOnInit(): void {
    this.getMovies()
  }

  getMovies() {
    this.movieService.getMovies()
    .subscribe((response)=> {
      console.log(response);
      this.movies = response as Movie[]
    })
  }

}
