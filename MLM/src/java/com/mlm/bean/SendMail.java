
package com.mlm.bean;
import java.util.Date;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
    public boolean sendMail(String emailid,String message){
        try {                
                String host = "smtp.gmail.com";
                String to = emailid;
                String from="mlmnetwork07@gmail.com";
                String subject = "subject";
                String messageText =message;
                boolean sessionDebug = true;
                Properties props = System.getProperties();
                props.put("mail.smtp.starttls.enable","true");
                props.setProperty("mail.transport.protocol","smtp");
                props.setProperty("mail.host",host);
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.port", "587");    //port is 587 for TLS  if you use SSL then port is 465
                props.put("mail.debug", "true");
                props.put("mail.smtp.socketFactory.port", "465");
                props.put("mail.smtp.socketFactory.fallback", "false");
                props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {protected PasswordAuthentication getPasswordAuthentication() {return new PasswordAuthentication("mail@gmail.com", "password");
                }
                }); 
                mailSession.setDebug(sessionDebug);
                Message msg = new MimeMessage(mailSession);
                msg.setFrom(new InternetAddress(from));
                InternetAddress[] address = {new InternetAddress(to)};
                msg.setRecipients(Message.RecipientType.TO, address);
                msg.setSubject(subject);
                msg.setSentDate(new Date());
                msg.setText(messageText);
                Transport transport = mailSession.getTransport("smtp");
                transport.connect(host, "mlmnetwork07@gmail.com", "MayurPatel");
                transport.sendMessage(msg, msg.getAllRecipients());
                transport.send(msg);
                } catch (MessagingException ex) {
                    Logger.getLogger(SendMail.class.getName()).log(Level.SEVERE, null, ex);
                    return false;
                }
        return true;
    }
}
