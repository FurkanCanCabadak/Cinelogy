using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cinelogy.DataAccessLayer
{
    public class Context
    //(localdb)\MsSqlLocalDb
    {
        private static SqlConnection database = new SqlConnection(@"Data Source=DESKTOP-RL8255K; initial Catalog=CinelogyDb; integrated security=true");

        public static SqlConnection db()
        {
            return database;
        }
    }
}
