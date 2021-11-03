package me.lsfs.rediserv.configurations.email;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
public class EmailConfiguration {

    @Bean
    public JavaMailSenderImpl javaMailSender(){

        JavaMailSenderImpl emailSender = new JavaMailSenderImpl();
        emailSender.setHost(this.host);
        emailSender.setPort(this.port);
        emailSender.setUsername(this.username);
        emailSender.setPassword(this.password);

        return emailSender;
    }

    @Value("${spring.mail.host}")
    private String host;

    @Value("${spring.mail.port}")
    private int port;

    @Value("${spring.mail.username}")
    private String username;

    @Value("${spring.mail.password}")
    private String password;


}

// http://localhost:8081/rediserv_api/propostas/filtro?size=8&page=-1&idestado=0&idcargo=2&idinstituicao=0%20%20%20%20&situacaoProposta=SUBMETIDA