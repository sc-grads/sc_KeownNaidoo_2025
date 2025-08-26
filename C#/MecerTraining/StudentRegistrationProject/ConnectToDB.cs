using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Security.Cryptography.X509Certificates;

namespace StudentRegistrationProject
{
    public class ConnectToDB
    {
        SqlConnection conn = new SqlConnection(@"Data Source=SAMBE2025006;Initial Catalog=StudentRegSambe;Integrated Security=True;Trust Server Certificate=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader sqlDataReader;
        DataRow dataRow;

        public ConnectToDB()
        {
            // Constructor logic here
            ;
        }

        public void RegisterStudent(int StudentID, string name, string lname, string address, string city, string number)
        {
            conn.Open();
            cmd = new SqlCommand(string.Format("INSERT INTO Students (StudentID, FirstName, LastName, Address, City, PhoneNumber) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}')",StudentID,name,lname,address,city,number ));
            cmd.ExecuteNonQuery();
            conn.Close();
            cmd.Dispose();

        }


        }

    }
}
