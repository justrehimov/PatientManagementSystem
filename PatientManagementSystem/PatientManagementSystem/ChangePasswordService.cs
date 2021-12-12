using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace PatientManagementSystem
{
    public class ChangePasswordService
    {
        private static ChangePasswordService cps = new ChangePasswordService();
        private static Database db = new Database();
        private int confirmcode = 0;
        private ChangePasswordService()
        {
        }
        public void sendconfirmCode(string emailadress)
        {
            Random random = new Random();
            confirmcode = random.Next(100000, 999999);
            string from = "confirmmailadress@gmail.com";
            string password = "cxwwfvqqoecsvtwu";

            MailMessage message = new MailMessage();
            message.From = new MailAddress(from);
            message.Subject = "Patient Management System";
            message.Body = db.getuser(emailadress) + "\nYour Confirm Code: " + confirmcode;
            message.To.Add(new MailAddress(emailadress));

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.EnableSsl = true;

            NetworkCredential network = new NetworkCredential(from, password);
            smtp.Credentials = network;
            smtp.Send(message);

        }
        public static ChangePasswordService getCPS()
        {
            if (cps == null)
            {
                return new ChangePasswordService();
            }
            else
                return cps;
        }
        public int getCode()
        {
            return confirmcode;
        }
    }
}