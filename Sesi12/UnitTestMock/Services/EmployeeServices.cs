using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.Threading.Tasks;
using UnitTestMock.Data;
using UnitTestMock.Models;

namespace UnitTestMock.Services
{
    public class EmployeeServices : IEmployeeService
    {
        private ApiDbContext apiDbContext;

        public EmployeeServices(ApiDbContext apiDbContext)
        {
            this.apiDbContext = apiDbContext;
        }
        public async Task<string> GetEmployeeById(int id)
        {
            var employee = await apiDbContext.employee.Where(c => c.Id == id).Select(d => d.Name).FirstOrDefaultAsync();
            return employee;
        }

        public async Task<Employee> GetEmployeeDetail(int id)
        {
            var employee = await apiDbContext.employee.FirstOrDefaultAsync(c => c.Id == id);
            return employee;
        }
    }
}
