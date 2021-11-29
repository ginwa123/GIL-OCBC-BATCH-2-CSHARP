using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TodoAppWithJwtRefreshToken.Data;
using TodoAppWithJwtRefreshToken.Models;

namespace TodoAppWithJwtRefreshToken.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    public class TodoController : ControllerBase
    {
        private readonly ApiDbContext context;

        public TodoController(ApiDbContext context)
        {
            this.context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetItems()
        {
            var items = await context.Items.ToListAsync();
            return Ok(items);
        }

        [HttpPost]
        public async Task<IActionResult> CreateItem(ItemData data)
        {
            if (ModelState.IsValid)
            {
                await context.Items.AddAsync(data);
                await context.SaveChangesAsync();

                return CreatedAtAction("GetItem", new { data.Id }, data);
            }
            return new JsonResult("Something Went Wrong") { StatusCode = 500 };
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetItem(int id)
        {
            var item = context.Items.FirstOrDefaultAsync(x => x.Id == id);
            if (item == null) return NotFound();
            return Ok(item);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateItem(int id, ItemData data)
        {
            if (id != data.Id) return BadRequest();

            var existsItem = await context.Items.FirstOrDefaultAsync(x => x.Id == id);

            if (existsItem == null) return NotFound();

            existsItem.Title = data.Title;
            existsItem.Description = data.Description;
            existsItem.Done = data.Done;

            await context.SaveChangesAsync();

            return Ok("Update Success");
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteItem(int id)
        {
            var existsItem = await context.Items.FirstOrDefaultAsync(x => x.Id == id);

            if (existsItem == null) return NotFound();

            context.Items.Remove(existsItem);
            await context.SaveChangesAsync();

            return Ok("Delete Success");
        }

        [Route("TestRun")]
        [HttpGet]
        public ActionResult testRun()
        {
            return Ok("success");
        }
    }
}
