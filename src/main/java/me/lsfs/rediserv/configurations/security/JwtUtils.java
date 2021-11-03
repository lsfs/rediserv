package me.lsfs.rediserv.configurations.security;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.jsonwebtoken.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class JwtUtils {

        private static final Logger logger = LoggerFactory.getLogger(JwtUtils.class);

        @Value("${jwt.secret}")
        private String jwtSecret;

        @Value("${jwt.expiration}")
        private int jwtExpirationMs;

        @Autowired
        ObjectMapper mapper;

        public String generateJwtToken(Authentication authentication) {

            UserDetailsImpl userPrincipal = (UserDetailsImpl) authentication.getPrincipal();

            return Jwts.builder()
                    .setSubject((userPrincipal.toString()))
                    .setIssuedAt(new Date())
                    .setExpiration(new Date((new Date()).getTime() + jwtExpirationMs))
                    .signWith(SignatureAlgorithm.HS512, jwtSecret)
                    .compact();
        }

        public String getUserNameFromJwtToken(String token) throws JsonProcessingException {

            String jwtUsuario = Jwts.parser().setSigningKey(jwtSecret).parseClaimsJws(token).getBody().getSubject();

           JsonNode jsonNode = mapper.readTree(jwtUsuario);

           String emailOriginal = jsonNode.get("email").toString();
           String email = emailOriginal.replace("\"","").trim();

            System.out.println(email);

            return email;
        }

        public boolean validateJwtToken(String authToken) {
            try {
                Jwts.parser().setSigningKey(jwtSecret).parseClaimsJws(authToken);
                return true;
            } catch (SignatureException e) {
                logger.error("Invalid JWT signature: {}", e.getMessage());
            } catch (MalformedJwtException e) {
                logger.error("Invalid JWT token: {}", e.getMessage());
            } catch (ExpiredJwtException e) {
                logger.error("JWT token is expired: {}", e.getMessage());
            } catch (UnsupportedJwtException e) {
                logger.error("JWT token is unsupported: {}", e.getMessage());
            } catch (IllegalArgumentException e) {
                logger.error("JWT claims string is empty: {}", e.getMessage());
            }

            return false;
        }
    }