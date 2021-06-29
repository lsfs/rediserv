package me.lsfs.rediserv.configurations.security;

import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.models.Pessoa;
import me.lsfs.rediserv.repositories.PessoaRepository;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class AutenticacaoTokenFilter extends OncePerRequestFilter {


    private JwtUtils jwtUtils;
    private PessoaRepository pessoaRepository;

    public AutenticacaoTokenFilter(JwtUtils jwtUtils, PessoaRepository pessoaRepository) {
        this.jwtUtils = jwtUtils;
        this.pessoaRepository = pessoaRepository;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest httpServletRequest,
                                    HttpServletResponse httpServletResponse,
                                    FilterChain filterChain) throws ServletException, IOException {

        String token = recuperarToken(httpServletRequest);
        boolean tokenValido = jwtUtils.isTokenValido(token);

        if (tokenValido) autenticarCliente(token);

        filterChain.doFilter(httpServletRequest, httpServletResponse);

    }

    private void autenticarCliente(String token) {

        Long idPessoa = jwtUtils.getIdPessoa(token);
        System.out.println("Id pessoa: " + idPessoa);

        Pessoa pessoa = pessoaRepository.findById(idPessoa).orElseThrow(
                () -> new DadosException("Erro ao realizar autenticação")
        );


        UsernamePasswordAuthenticationToken authentication
                = new UsernamePasswordAuthenticationToken(pessoa, null, pessoa.getAuthorities());

        SecurityContextHolder.getContext().setAuthentication(authentication);
    }

    private String recuperarToken(HttpServletRequest httpServletRequest) {

        String token = httpServletRequest.getHeader("Authorization");

        if (token == null || token.isEmpty() || !token.startsWith("Bearer ")) {
            return null;
        }

        return token.substring(7, token.length());
    }
}
