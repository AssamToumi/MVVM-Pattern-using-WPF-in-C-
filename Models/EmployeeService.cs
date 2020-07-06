using System.Collections.Generic;
using MvvmApp.Models;
using System;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MvvmApp.Models
{
    public class EmployeeService
    {
        private static List<Employee> ObjEmployeesList;
        public EmployeeService()
        {
            ObjEmployeesList = new List<Employee>()
           {
               new Employee{Id=101, Name="Assam Toumi", Age=30}
           };
        }
        public List<Employee> GetAll()
        {
            return ObjEmployeesList;
        }
        public bool Add (Employee objNewEmployee)
        {
            if (objNewEmployee.Age < 21 || objNewEmployee.Age > 58)
                throw new ArgumentException("Invalid age Limit for employee");

            ObjEmployeesList.Add(objNewEmployee);
                return true;
        }

        public bool Update(Employee objEmployeeToUpdate)
        {
            bool IsUpdated = false;
            for (int index=0; index < ObjEmployeesList.Count; index++)
            {
                if (ObjEmployeesList[index].Id == objEmployeeToUpdate.Id)
                {
                    ObjEmployeesList[index].Name = objEmployeeToUpdate.Name;
                    ObjEmployeesList[index].Age = objEmployeeToUpdate.Age;
                    IsUpdated = true;
                    break;
                }
            }
            return IsUpdated;
        }

        public bool Delete( int id)
        {
            bool IsDeleted = false;
            for (int index =0; index<ObjEmployeesList.Count; index++)
            {
                if (ObjEmployeesList[index].Id==id)
                {
                    ObjEmployeesList.RemoveAt(index);
                    IsDeleted = true;
                    break;
                }
            }
                return IsDeleted;
        }
        
        public Employee Search(int id)
        {
            return ObjEmployeesList.FirstOrDefault(e => e.Id == id);  
        }
     }
}