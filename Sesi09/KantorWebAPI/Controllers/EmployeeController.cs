using KantorWebAPI.Models;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace KantorWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        private EmployeeContext context;

        public EmployeeController(EmployeeContext context)
        {
            this.context = context;
        }

        // GET api/user
        [HttpGet(Name = "Get All")]
        public ActionResult<IEnumerable<EmployeeItem>> getEmployeeItems()
        {
            context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;

            return context.getAllEmployee();
        }
        // GET api/user{id}
        [HttpGet("{id}", Name = "Get Where")]
        public ActionResult<IEnumerable<EmployeeItem>> getEmployeeItem(string id)
        {
            context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
            var data = context.GetEmployee(id);
            if (data.Count == 0) return NotFound();
            return data;
        }

        [HttpPost]
        public ActionResult<IEnumerable<EmployeeItem>> InsertEmployee(EmployeeItem data)
        {
            context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
            return context.InsertEmployee(data);
        }

        [HttpPut("{id}", Name = "Get Where")]
        public ActionResult<IEnumerable<EmployeeItem>> UpdateEmployee(string id, EmployeeItem employeeItem)
        {
            context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
            var data = context.UpdateEmployee(id, employeeItem);
            if (data.Count == 0) return NotFound("Employee Not found");
            return data;

        }

        [HttpDelete("{id}", Name = "Get Where")]
        public ActionResult DeleteEmployee(string id)
        {
            if (context.DeleteEmployee(id)) return Ok("Delete Employee");
            return NotFound("Id not found");
        }



    }
}
