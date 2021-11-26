using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MovieWebAPI.Data;
using MovieWebAPI.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace MovieWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MovieController : ControllerBase
    {
        private MovieContext context;

        public MovieController(MovieDbContext context)
        {
            this.context = new MovieContext(context);

        }


        // GET: api/<MovieController>
        [HttpGet]
        public async Task<IActionResult> Get()
        {
            return Ok(await context.GetAllMoviesAsync());
        }

        // GET api/<MovieController>/5
        [HttpGet("{id}")]
        public async Task<IActionResult> Get(int id)
        {
            if (id == null) return NotFound();
            var movie = context.GetMovieAsync(id);
            return Ok(movie);
        }

        // POST api/<MovieController>
        [HttpPost]
        public async Task<IActionResult> Post(Movie data)
        {
            if (data.Name == null) return new JsonResult("Name Cannot be null") { StatusCode = 400 };
            if (ModelState.IsValid)
            {
                var movie = await context.InsertMovieAsync(data);
                return CreatedAtAction("Get", new { movie.Id }, movie);
            }

            return new JsonResult("Invalid request") { StatusCode = 400 };
        }

        // PUT api/<MovieController>/5
        [HttpPut("{id}")]
        public async Task<IActionResult> Put(int id, Movie data)
        {
            if (id == null) return BadRequest();
            if (ModelState.IsValid)
            {
                var oldMovie = await context.GetMovieContext().FirstOrDefaultAsync(p => p.Id == id);
                if (oldMovie == null) return NotFound("Movie Not Found");
                await context.UpdateMovieAsync(id, oldMovie, data);
                return Ok($"Update movie success");
            }

            return new JsonResult("Invalid request") { StatusCode = 400 };
        }

        // DELETE api/<MovieController>/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            if (id == null) return new JsonResult("Id cannot be null") { StatusCode = 400 };
            var movie = await context.GetMovieContext().FirstOrDefaultAsync(p => p.Id == id);
            if (movie == null) return NotFound("Movie not found");
            await context.DeleteMovieAsync(movie);
            return Ok("Delete movie success");
        }
    }
}
