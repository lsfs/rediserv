package me.lsfs.rediserv.configurations.security;

import com.fasterxml.jackson.annotation.JsonIgnore;
import me.lsfs.rediserv.models.Pessoa;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.lang.reflect.Field;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

public class UserDetailsImpl implements UserDetails {
    private static final long serialVersionUID = 1L;

    private Long id;

    private String nome;

    private String email;

    @JsonIgnore
    private String password;

    private Long unidade;

    private Long cargo;

    private boolean locked;

    private boolean enabled;

    private Collection<? extends GrantedAuthority> authorities;

    public UserDetailsImpl(Long id, String nome, String email, String password,
                           Long unidade, Long cargo,
                           boolean enabled,
                           Collection<? extends GrantedAuthority> authorities) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.password = password;
        this.unidade = unidade;
        this.cargo = cargo;
        this.authorities = authorities;
        this.enabled = enabled;
    }

    public static UserDetailsImpl build(Pessoa pessoa) {
        List<GrantedAuthority> authorities = pessoa.getRoles().stream()
                .map(role -> new SimpleGrantedAuthority(role.getNome().name()))
                .collect(Collectors.toList());

        return new UserDetailsImpl(
                pessoa.getId(),
                pessoa.getNome(),
                pessoa.getEmail(),
                pessoa.getPassword(),
                pessoa.getUnidade().getId(),
                pessoa.getCargo().getId(),
                pessoa.isEnabled(),
                authorities);
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    public Long getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return !locked;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return enabled;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        UserDetailsImpl user = (UserDetailsImpl) o;
        return Objects.equals(id, user.id);
    }

    @Override
    public String toString() {
        ReflectionToStringBuilder builder = new ReflectionToStringBuilder(
                this, ToStringStyle.JSON_STYLE) {
            @Override
            protected boolean accept(Field field) {
                return !field.getName().equals("password");
            }
        };

        return builder.toString();
    }
}