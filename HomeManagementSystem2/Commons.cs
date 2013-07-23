using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
namespace HomeManagementSystem2
{
   
    public static class Commons
    {
        public static DataClasses1DataContext dc = new DataClasses1DataContext();
        public static bool doLogin(string UserEmail,string UserPassword)
        {
           
            var pe1 = dc.person.FirstOrDefault(a => a.email == UserEmail);
            if (pe1 == null)
            {
                return false;
            }
            else
            {

                var pe2 = dc.member.FirstOrDefault(a => a.person_id == pe1.person_id);

                if (pe2 == null)
                    return false;
                else
                {
                    if ((pe1.email == UserEmail) && (pe1.password == UserPassword))
                    {
                     
                        return true;
                    }
                    else
                        return false;
                }
            }
        }

        public static person findPersonByEmail(string UserEmail)    //通过Email查找person实体，为了存储在Session中
        {
            return dc.person.FirstOrDefault(a => a.email == UserEmail);
        }

        public void getAllAgents()
        {
            var query = from p in dc.person
                        from a in dc.agent
                        where p.person_id == a.person_id
                        select new { name = p.names, profession = a.profession, register_date = a.register_date, trade_number = a.trade_number };
            return query;
                
        }
    }
}