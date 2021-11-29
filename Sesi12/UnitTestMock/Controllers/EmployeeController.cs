using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using UnitTestMock.Models;
using UnitTestMock.Services;

namespace UnitTestMock.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        private readonly IEmployeeService employeeService;

        public EmployeeController(IEmployeeService employeeService)
        {
            this.employeeService = employeeService;
        }

        [HttpGet(nameof(GetEmployeeById))]
        public async Task<string> GetEmployeeById(int id)
        {
            var result = await employeeService.GetEmployeeById(id);
            return result;
        }


        [HttpGet(nameof(GetEmployeeDetails))]
        public async Task<Employee> GetEmployeeDetails(int id)
        {
            var result = await employeeService.GetEmployeeDetail(id);
            return result;
        }



    }
}
