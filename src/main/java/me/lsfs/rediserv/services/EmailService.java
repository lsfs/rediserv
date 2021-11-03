package me.lsfs.rediserv.services;

import me.lsfs.rediserv.configurations.email.EmailConfiguration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Service
public class EmailService {


    @Autowired
    private JavaMailSenderImpl javaMailSender;


    private final static Logger LOGGER = LoggerFactory
            .getLogger(EmailService.class);



    @Async
    public void enviarEmail(String to, String email, String assunto) {
        try {

            MimeMessage mimeMessage = javaMailSender.createMimeMessage();
            MimeMessageHelper helper =
                    new MimeMessageHelper(mimeMessage, "utf-8");
            helper.setText(email, true);
            helper.setTo(to);
            helper.setSubject(assunto);
            helper.setFrom("lufesampaio@gmail.com");

            javaMailSender.send(mimeMessage);


        } catch (MessagingException e) {
            LOGGER.error("failed to send email", e);
            throw new IllegalStateException("failed to send email");
        }
    }

}
