using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using MovieWebAPI.Models;
using System;
using System.Threading.Tasks;

namespace MovieWebAPI.Data
{
    public class MovieDbContext : DbContext
    {
        public DbSet<Movie> Movies { get; set; }
        public IConfiguration Configuration { get; }

        public MovieDbContext(IConfiguration configuration)
        {
            Configuration = configuration;

        }

        // mysql conntection
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            // get connection setting in appsettings.json
            optionsBuilder.UseMySQL(Configuration.GetConnectionString("DefaultConnection"));

        }


        // generate models tables
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Movie>(entity =>
            {
                entity.HasKey(e => e.Id);
                entity.Property(e => e.Name).IsRequired().HasMaxLength(100);
                entity.Property(e => e.Genre).HasMaxLength(50);
                entity.Property(e => e.Duration).HasMaxLength(50);
            });


        }


    }

}
