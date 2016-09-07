using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using System.Net.Security;

namespace massive_code_v_2
{
    public class cl_Mail
    {
        String ps_MailSupportAddress = "support@massivecode.ru";
        String ps_MailSupportPassword = "sUpporT87";
        private void prv_SendMail(MailMessage lmm_Message)
        {
            SmtpClient lsmtp = new SmtpClient("mail.massivecode.ru", 587);
            lsmtp.Credentials = new NetworkCredential(ps_MailSupportAddress, ps_MailSupportPassword);
            lsmtp.Send(lmm_Message);
        }
        public void pv_Mail_ConfirmRegistration(String ls_UID, String ls_MailTo, String ls_Name, String ls_Surname)
        {
            String ls_ConfirmURL = "http://massivecode.ru/registration.aspx?mail_confirm=" + ls_UID;
            MailMessage lmm = new MailMessage(ps_MailSupportAddress, ls_MailTo);
            lmm.Body = "Здравствуйте "+ ls_Surname + " " + ls_Name + ". Подтвердите ваши регистрационные данные перейдя по ссылке: " + ls_ConfirmURL;
            lmm.Subject = "Подтверждение регистрации MASSIVECODE.RU";
            prv_SendMail(lmm);
        }

    }
}