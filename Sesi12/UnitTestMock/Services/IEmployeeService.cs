using System.Threading.Tasks;
using UnitTestMock.Models;

namespace UnitTestMock.Services
{
    public interface IEmployeeService
    {

        Task<string> GetEmployeeById(int id);
        Task<Employee> GetEmployeeDetail(int id);
    }
}
