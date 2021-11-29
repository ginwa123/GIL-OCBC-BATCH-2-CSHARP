
using Moq;
using System;
using UnitTestMock.Controllers;
using UnitTestMock.Models;
using UnitTestMock.Services;
using Xunit;

namespace TestProject1
{
    public class UnitTest1
    {
        Mock<IEmployeeService> mock = new Mock<IEmployeeService>();


        [Fact]
        public async void GetEmployeeById()
        {
            mock.Setup(p => p.GetEmployeeById(1)).ReturnsAsync("JK");
            EmployeeController emp = new EmployeeController(mock.Object);
            var result = await emp.GetEmployeeById(1);
            Assert.Equal("JK", result);
        }


        [Fact]
        public async void GetEmployeeDetails()
        {
            var EmployeeDTO = new Employee()
            {
                Id = 1,
                Name = "JK",
                Designation = "SDE"
            };
            mock.Setup(p => p.GetEmployeeDetail(1)).ReturnsAsync(EmployeeDTO);
            EmployeeController emp = new EmployeeController(mock.Object);
            var result = await emp.GetEmployeeDetails(1);
            Console.WriteLine(result);
            Assert.True(EmployeeDTO.Equals(result));

        }
    }
}

