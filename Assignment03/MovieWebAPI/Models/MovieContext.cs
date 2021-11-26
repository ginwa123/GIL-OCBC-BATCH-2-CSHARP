using Microsoft.EntityFrameworkCore;
using MovieWebAPI.Data;
using MySqlX.XDevAPI;
using System.Threading.Tasks;
using System.Collections.Generic;
using System;

namespace MovieWebAPI.Models
{
    public class MovieContext
    {
        private MovieDbContext context;

        public DbSet<Movie> GetMovieContext()
        {
            return context.Movies;
        }

        public MovieContext(MovieDbContext context)
        {
            this.context = context;
        }


        public async Task DeleteMovieAsync(Movie movie)
        {
            context.Movies.Remove(movie);
            await context.SaveChangesAsync();

        }

        public async Task<List<Movie>> GetAllMoviesAsync()
        {
            var movie = await context.Movies.ToListAsync();
            return movie;
        }

        public async Task<Movie> InsertMovieAsync(Movie movie)
        {
            await context.Movies.AddAsync(movie);
            await context.SaveChangesAsync();
            return movie;

        }

        public async Task<Movie> GetMovieAsync(int id)
        {
            var movie = await context.Movies.FirstOrDefaultAsync(p => p.Id == id);
            return movie;
        }



        public async Task UpdateMovieAsync(int id, Movie oldMovie, Movie newMovie)
        {
            oldMovie.Name = newMovie.Name;
            oldMovie.Genre = newMovie.Genre;
            oldMovie.ReleaseDate = newMovie.ReleaseDate;
            oldMovie.Duration = newMovie.Duration;
            await context.SaveChangesAsync();

        }


    }
}
