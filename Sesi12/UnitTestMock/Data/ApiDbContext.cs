using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using UnitTestMock.Models;

namespace UnitTestMock.Data
{
    public class ApiDbContext : DbContext
    {
        public DbSet<Employee> employee { get; set; }
        public IConfiguration Configuration { get; }

        public ApiDbContext(IConfiguration configuration)
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

            modelBuilder.Entity<Employee>(entity =>
            {
                entity.HasKey(e => e.Id);
                entity.Property(e => e.Name).IsRequired();
                entity.Property(e => e.Designation);
            });
        }
    }
}
