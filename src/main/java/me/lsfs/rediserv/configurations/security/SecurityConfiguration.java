package me.lsfs.rediserv.configurations.security;

import me.lsfs.rediserv.repositories.PessoaRepository;
import me.lsfs.rediserv.services.PessoaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    private PessoaService pessoaService;

    @Autowired
    private JwtUtils jwtUtils;

    @Autowired
    private PessoaRepository pessoaRepository;

    @Override
    @Bean
    protected AuthenticationManager authenticationManager() throws Exception {
        return super.authenticationManager();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(pessoaService).passwordEncoder(new BCryptPasswordEncoder());
        auth.inMemoryAuthentication().withUser("admin").password("admin").authorities("SWAGGER");

    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        String senha = new BCryptPasswordEncoder().encode("123456");
        String senha2 = new BCryptPasswordEncoder().encode("admin");

        System.out.println(senha2);
        System.out.println(senha);

        http.authorizeRequests()
                .antMatchers(HttpMethod.POST, "/autenticar/**").permitAll().
                antMatchers("/v2/api-docs",
                        "/configuration/ui",
                        "/swagger-resources",
                        "/configuration/security",
                        "/swagger-ui.html",
                        "/webjars/**",
                        "/swagger-resources/configuration/ui",
                        "/swagger-ui.html").permitAll()
                .and().csrf().disable()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and().addFilterBefore(new AutenticacaoTokenFilter(jwtUtils, pessoaRepository), UsernamePasswordAuthenticationFilter.class);
    }


}
