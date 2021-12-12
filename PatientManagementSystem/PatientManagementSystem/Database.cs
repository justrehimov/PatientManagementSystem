using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;

namespace PatientManagementSystem
{
    public class Database
    {
        string connection = "server=localhost;uid=root;pwd=123456789;database=patientmanagementdb";
        MySqlConnection con;
        MySqlCommand cmd;
        public Database()
        {
            createDatabase();
            con = new MySqlConnection(connection);
            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = String.Format("Create table if not exists doctors(name varchar(30),surname varchar(40),email varchar(30),password varchar(20))");
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cmd.CommandText = "create table if not exists patients(name varchar(30),surname varchar(40),fathername varchar(30),phone varchar(15),region varchar(30),email varchar(30),birthday varchar(30),appeals varchar(20))";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
        } 
        private void createDatabase()
        {
            string constring = "server=localhost;uid=root;pwd=123456789";
            MySqlConnection conn = new MySqlConnection(constring);
            MySqlCommand cm = conn.CreateCommand();
            conn.Open();
            cm.CommandText = "create database if not exists patientmanagementdb";
            cm.ExecuteNonQuery();
            cm.Dispose();

        }
        public bool login(string email,string password)
        {

            cmd.CommandText = "select * from doctors";
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                if (reader.GetString("email") == email && reader.GetString("password") == password)
                {
                    cmd.Dispose();
                    return true;
                }
            }
            return false;
        }

        public void addPatient(string name,string surname,string fathername,string phone,string region,string email,string birthday,string appeals)
        {
            cmd.CommandText = String.Format("insert into patients(name,surname,fathername,phone,region,email,birthday,appeals) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}');", name, surname, fathername, phone, region, email, birthday, appeals);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }

        public void signup(string name,string surname,string email,string password)
        {

            cmd.CommandText = String.Format("insert into doctors(name,surname,email,password) values('{0}','{1}','{2}','{3}');", name, surname, email, password);
            cmd.ExecuteNonQuery();
            cmd.Dispose();

        }

        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }
        
        public int[] getPatientCount()
        {
            int headache = 0;
            int heartpain = 0;
            int nausea = 0;
            int vomiting = 0;
            int flu = 0;
            int bronchitis = 0;
            int corona = 0;
            int cancer = 0;
            int plague = 0;
            cmd.CommandText = "select * from patients";
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                if (reader.GetString("appeals") == "headache")
                    headache++;
                else if (reader.GetString("appeals") == "heartpain")
                    heartpain++;
                else if (reader.GetString("appeals") == "nausea")
                    nausea++;
                else if (reader.GetString("appeals") == "vomiting")
                    vomiting++;
                else if (reader.GetString("appeals") == "flu")
                    flu++;
                else if (reader.GetString("appeals") == "bronchitis")
                    bronchitis++;
                else if (reader.GetString("appeals") == "corona")
                    corona++;
                else if (reader.GetString("appeals") == "cancer")
                    cancer++;
                else if (reader.GetString("appeals") == "plague")
                    plague++;
            }
            reader.Close();
            cmd.Dispose();
            return new int[] { headache, heartpain, nausea, vomiting, flu, bronchitis, corona, cancer, plague };
        }

        public MySqlDataAdapter getAdapter()
        {
            MySqlDataAdapter adapter = new MySqlDataAdapter(String.Format("select * from patients;"), con);
            return adapter;
        }
        public MySqlDataAdapter getAdapter(string name)
        {

            MySqlDataAdapter adapter = new MySqlDataAdapter(String.Format("select * from patients where name LIKE '{0}%';",name), con);

            return adapter;
        }

        public void changePass(string password,string email)
        {

            cmd.CommandText = String.Format("update doctors set password = '{0}' where email = '{1}';", password, email);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }
       
        public bool checkMail(string email)
        {
            bool ishave = false;

            cmd.CommandText = String.Format("select * from doctors where email = '{0}';",email);
            MySqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                ishave = true;
            }
            cmd.Dispose();
            reader.Dispose();
            return ishave;
        }
        public string getuser(string email)
        {
            cmd.CommandText = String.Format("select * from doctors where email = '{0}';", email);
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                cmd.Dispose();
                return reader.GetString("name") + " " + reader.GetString("surname");
            }
            return null;
        }
    }
}