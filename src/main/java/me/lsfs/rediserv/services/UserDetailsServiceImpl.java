package me.lsfs.rediserv.services;

import me.lsfs.rediserv.configurations.security.UserDetailsImpl;
import me.lsfs.rediserv.models.Pessoa;
import me.lsfs.rediserv.repositories.PessoaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    PessoaRepository pessoaRepository;

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Pessoa pessoa = pessoaRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("Pessoa não encontrada com email: " + email));

        return UserDetailsImpl.build(pessoa);
    }

}
