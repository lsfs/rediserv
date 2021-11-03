package me.lsfs.rediserv.controllers;

import me.lsfs.rediserv.models.jwtpayload.request.CadastroRequest;
import me.lsfs.rediserv.models.jwtpayload.request.LoginRequest;
import me.lsfs.rediserv.models.jwtpayload.response.JwtResponse;
import me.lsfs.rediserv.models.jwtpayload.response.MessageResponse;
import me.lsfs.rediserv.models.utils.NovaSenhaRequest;
import me.lsfs.rediserv.models.utils.UsuarioSenhaReset;
import me.lsfs.rediserv.repositories.RoleRepository;
import me.lsfs.rediserv.services.AutenticacaoService;
import me.lsfs.rediserv.repositories.PessoaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;


@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/auth")
public class AutenticacaoController {
    @Autowired
    AuthenticationManager authenticationManager;

    @Autowired
    PessoaRepository userRepository;

    @Autowired
    RoleRepository roleRepository;

    @Autowired
    PasswordEncoder encoder;

    @Autowired
    AutenticacaoService autenticacaoService;


    @PostMapping(value = "/login")
    public ResponseEntity<JwtResponse> autenticaUsuario(@Valid @RequestBody LoginRequest loginRequest) {

        JwtResponse jwtResponse = autenticacaoService.realizaLogin(loginRequest);

        return ResponseEntity.ok(jwtResponse);
    }

    @PostMapping(value = "/registro")
    public ResponseEntity<MessageResponse> realizaCadastro(@Valid @RequestBody CadastroRequest cadastroRequest) {

        MessageResponse messageResponse = autenticacaoService.cadastraUsuario(cadastroRequest);

        return ResponseEntity.ok(messageResponse);
    }

    @GetMapping(value = "/validacaoEmail")
    public ResponseEntity<MessageResponse> confirmarEmail(
            @RequestParam("token") String token
    ){

        MessageResponse retorno = autenticacaoService.confirmarConta(token);

        return ResponseEntity.ok().body(retorno);

    }


    @PostMapping(value = "/resetaSenha")
    public ResponseEntity<MessageResponse> solicitaNovaSenha(@RequestBody UsuarioSenhaReset usuarioSenhaReset){

        MessageResponse retorno = autenticacaoService.solicitaNovaSenha(usuarioSenhaReset);


        return ResponseEntity.ok().body(retorno);

    }

    @PostMapping(value = "/novaSenha")
    public ResponseEntity<MessageResponse> enviaNovaSenha(
            @RequestBody NovaSenhaRequest novaSenhaRequest,
            @RequestParam("token") String token
    ){

        MessageResponse retorno = autenticacaoService.salvaNovaSenha(novaSenhaRequest, token);

        return ResponseEntity.ok().body(retorno);

    }




}
