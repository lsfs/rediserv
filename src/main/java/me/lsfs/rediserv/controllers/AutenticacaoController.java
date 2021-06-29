package me.lsfs.rediserv.controllers;

import me.lsfs.rediserv.configurations.security.JwtUtils;
import me.lsfs.rediserv.dtos.DadosLoginDTO;
import me.lsfs.rediserv.dtos.TokenDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/autenticar")
public class AutenticacaoController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtUtils jwtUtils;

    @PostMapping("/login")
    public ResponseEntity<TokenDTO> autenticar(@RequestBody DadosLoginDTO dadosLoginDTO) {

        UsernamePasswordAuthenticationToken dadosLogin = dadosLoginDTO.converter();

        try {
            Authentication authentication = authenticationManager.authenticate(dadosLogin);

            String token = jwtUtils.gerarToken(authentication);

            return ResponseEntity.ok(new TokenDTO(token,"Bearer"));


        } catch (AuthenticationException e) {

            return ResponseEntity.badRequest().build();

        }
    }

//    @PostMapping("/cadastrar")
//    String cadastrar(Pessoa)


}
