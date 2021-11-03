package me.lsfs.rediserv.services;

import me.lsfs.rediserv.models.Pessoa;
import me.lsfs.rediserv.models.utils.AssuntoEmailEnum;
import me.lsfs.rediserv.models.utils.TokenConfirmacao;
import me.lsfs.rediserv.repositories.TokenConfirmacaoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.UUID;

@Service
public class TokenConfirmacaoService {


    private final TokenConfirmacaoRepository tokenConfirmacaoRepository;
    private final EmailService emailService;

    private final String URL_EMAIL_VALIDACAO = "http://localhost:4200/auth/validar/";
    private final String URL_SENHA_RESET = "http://localhost:4200/auth/redefinir/";

    @Autowired
    public TokenConfirmacaoService(TokenConfirmacaoRepository tokenConfirmacaoRepository, EmailService emailService) {
        this.tokenConfirmacaoRepository = tokenConfirmacaoRepository;
        this.emailService = emailService;
    }

    public void salvarTokenConfirmacao(TokenConfirmacao tokenConfirmacao) {
        tokenConfirmacaoRepository.save(tokenConfirmacao);
    }

    public TokenConfirmacao getToken(String token) {
        return tokenConfirmacaoRepository.findByConteudoToken(token)
                .orElseThrow(() ->
                        new IllegalStateException("Token não encontrado"));

    }

    public String confirmarToken(String token) {

        TokenConfirmacao tokenConfirmacao = this.getToken(token);


        if (tokenConfirmacao.getDataConfirmacaoToken() != null) {
            throw new IllegalStateException("Token já confirmado");
        }

        LocalDateTime dataExpiracao = tokenConfirmacao.getDataExpiracaoToken();

        if (dataExpiracao.isBefore(LocalDateTime.now())) {
            throw new IllegalStateException("Token expirou");
            // gerar novo token
        }


        tokenConfirmacaoRepository.updateDataConfirmacao(token, LocalDateTime.now());

        return "Token confirmado";
    }


    public void apagarToken(Long id) {
        tokenConfirmacaoRepository.deleteById(id);
    }


    public TokenConfirmacao geraToken(Pessoa pessoa, LocalDateTime dataCriacao, LocalDateTime dataExpiracao) {

        String conteudoToken = UUID.randomUUID().toString();

        TokenConfirmacao tokenConfirmacao = new TokenConfirmacao(
                pessoa,
                conteudoToken,
                dataCriacao,
                dataExpiracao

        );


        return tokenConfirmacao;


    }

    public void enviarTokenEmail(String conteudoToken, Pessoa pessoa, AssuntoEmailEnum assuntoEmailEnum) {

        String link_email;
        String conteudoEmail = null;
        String assunto = null;

        switch (assuntoEmailEnum) {
            case VALIDACAO:
                link_email = URL_EMAIL_VALIDACAO + conteudoToken;
                conteudoEmail = conteudoEmailConfirmacao(pessoa.getNome(), link_email);
                assunto = "Confirme seu e-mail e ative sua conta no Rediserv";
                break;

            case SENHA:
                link_email = URL_SENHA_RESET + conteudoToken;
                conteudoEmail = conteudoEmailSenha(pessoa.getNome(), link_email);
                assunto = "Recupere sua senha no Rediserv";
                break;

        }

        emailService.enviarEmail(
                pessoa.getEmail(),
                conteudoEmail,
                assunto);
    }


    private String conteudoEmailConfirmacao(String name, String link) {
        return "<div style=\"font-family:Helvetica,Arial,sans-serif;font-size:16px;margin:0;color:#0b0c0c\">\n" +
                '\n' +
                "<span style=\"display:none;font-size:1px;color:#fff;max-height:0\"></span>\n" +
                '\n' +
                "  <table role=\"presentation\" width=\"100%\" style=\"border-collapse:collapse;min-width:100%;width:100%!important\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n" +
                "    <tbody><tr>\n" +
                "      <td width=\"100%\" height=\"53\" bgcolor=\"#303F9F\">\n" +
                "        \n" +
                "        <table role=\"presentation\" width=\"100%\" style=\"border-collapse:collapse;max-width:580px\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\n" +
                "          <tbody><tr>\n" +
                "            <td width=\"70\" bgcolor=\"#303F9F\" valign=\"middle\">\n" +
                "                <table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-collapse:collapse\">\n" +
                "                  <tbody><tr>\n" +
                "                    <td style=\"padding-left:10px\">\n" +
                "                  \n" +
                "                    </td>\n" +
                "                    <td style=\"font-size:28px;line-height:1.315789474;Margin-top:4px;padding-left:10px\">\n" +
                "                      <span style=\"font-family:Helvetica,Arial,sans-serif;font-weight:600;color:#ffffff;text-decoration:none;vertical-align:top;display:inline-block\">REDISERV</span>\n" +
                "                    </td>\n" +
                "                  </tr>\n" +
                "                </tbody></table>\n" +
                "              </a>\n" +
                "            </td>\n" +
                "          </tr>\n" +
                "        </tbody></table>\n" +
                "        \n" +
                "      </td>\n" +
                "    </tr>\n" +
                "  </tbody></table>\n" +
                "  <table role=\"presentation\" class=\"m_-6186904992287805515content\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-collapse:collapse;max-width:580px;width:100%!important\" width=\"100%\">\n" +
                "    <tbody><tr>\n" +
                "      <td width=\"10\" height=\"10\" valign=\"middle\"></td>\n" +
                "      <td>\n" +
                "        \n" +
                "                <table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-collapse:collapse\">\n" +
                "                  <tbody><tr>\n" +
                "                    <td bgcolor=\"#b1b4b6\" width=\"100%\" height=\"10\"></td>\n" +
                "                  </tr>\n" +
                "                </tbody></table>\n" +
                "        \n" +
                "      </td>\n" +
                "      <td width=\"10\" valign=\"middle\" height=\"10\"></td>\n" +
                "    </tr>\n" +
                "  </tbody></table>\n" +
                "\n" +
                "\n" +
                "\n" +
                "  <table role=\"presentation\" class=\"m_-6186904992287805515content\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-collapse:collapse;max-width:580px;width:100%!important\" width=\"100%\">\n" +
                "    <tbody><tr>\n" +
                "      <td height=\"30\"><br></td>\n" +
                "    </tr>\n" +
                "    <tr>\n" +
                "      <td width=\"10\" valign=\"middle\"><br></td>\n" +
                "      <td style=\"font-family:Helvetica,Arial,sans-serif;font-size:19px;line-height:1.315789474;max-width:560px\">\n" +
                "        \n" +
                "            <p style=\"Margin:0 0 20px 0;font-size:19px;line-height:25px;color:#0b0c0c\">Olá, " + name + ".</p><p style=\"Margin:0 0 20px 0;font-size:19px;line-height:25px;color:#0b0c0c\"> Obrigado por se registrar no Rediserv. Clique no link abaixo para confirmar seu e-mail" +
                " e ativar sua conta </p><blockquote style=\"Margin:0 0 20px 0;border-left:10px solid #b1b4b6;padding:15px 0 0.1px 15px;font-size:19px;line-height:25px\"><p style=\"Margin:0 0 20px 0;font-size:19px;line-height:25px;color:#0b0c0c\"> <a href=\"" + link + "\">Confirmar e-mail</a> </p></blockquote>\n O link vai expirar em 30 minutos. <p>Até logo.</p>" +
                "        \n" +
                "      </td>\n" +
                "      <td width=\"10\" valign=\"middle\"><br></td>\n" +
                "    </tr>\n" +
                "    <tr>\n" +
                "      <td height=\"30\"><br></td>\n" +
                "    </tr>\n" +
                "  </tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n" +
                '\n' +
                "</div></div>";
    }

    private String conteudoEmailSenha(String name, String link) {
        return "<div style=\"font-family:Helvetica,Arial,sans-serif;font-size:16px;margin:0;color:#0b0c0c\">\n" +
                '\n' +
                "<span style=\"display:none;font-size:1px;color:#fff;max-height:0\"></span>\n" +
                '\n' +
                "  <table role=\"presentation\" width=\"100%\" style=\"border-collapse:collapse;min-width:100%;width:100%!important\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n" +
                "    <tbody><tr>\n" +
                "      <td width=\"100%\" height=\"53\" bgcolor=\"#303F9F\">\n" +
                "        \n" +
                "        <table role=\"presentation\" width=\"100%\" style=\"border-collapse:collapse;max-width:580px\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\n" +
                "          <tbody><tr>\n" +
                "            <td width=\"70\" bgcolor=\"#303F9F\" valign=\"middle\">\n" +
                "                <table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-collapse:collapse\">\n" +
                "                  <tbody><tr>\n" +
                "                    <td style=\"padding-left:10px\">\n" +
                "                  \n" +
                "                    </td>\n" +
                "                    <td style=\"font-size:28px;line-height:1.315789474;Margin-top:4px;padding-left:10px\">\n" +
                "                      <span style=\"font-family:Helvetica,Arial,sans-serif;font-weight:600;color:#ffffff;text-decoration:none;vertical-align:top;display:inline-block\">REDISERV</span>\n" +
                "                    </td>\n" +
                "                  </tr>\n" +
                "                </tbody></table>\n" +
                "              </a>\n" +
                "            </td>\n" +
                "          </tr>\n" +
                "        </tbody></table>\n" +
                "        \n" +
                "      </td>\n" +
                "    </tr>\n" +
                "  </tbody></table>\n" +
                "  <table role=\"presentation\" class=\"m_-6186904992287805515content\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-collapse:collapse;max-width:580px;width:100%!important\" width=\"100%\">\n" +
                "    <tbody><tr>\n" +
                "      <td width=\"10\" height=\"10\" valign=\"middle\"></td>\n" +
                "      <td>\n" +
                "        \n" +
                "                <table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-collapse:collapse\">\n" +
                "                  <tbody><tr>\n" +
                "                    <td bgcolor=\"#b1b4b6\" width=\"100%\" height=\"10\"></td>\n" +
                "                  </tr>\n" +
                "                </tbody></table>\n" +
                "        \n" +
                "      </td>\n" +
                "      <td width=\"10\" valign=\"middle\" height=\"10\"></td>\n" +
                "    </tr>\n" +
                "  </tbody></table>\n" +
                "\n" +
                "\n" +
                "\n" +
                "  <table role=\"presentation\" class=\"m_-6186904992287805515content\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-collapse:collapse;max-width:580px;width:100%!important\" width=\"100%\">\n" +
                "    <tbody><tr>\n" +
                "      <td height=\"30\"><br></td>\n" +
                "    </tr>\n" +
                "    <tr>\n" +
                "      <td width=\"10\" valign=\"middle\"><br></td>\n" +
                "      <td style=\"font-family:Helvetica,Arial,sans-serif;font-size:19px;line-height:1.315789474;max-width:560px\">\n" +
                "        \n" +
                "            <p style=\"Margin:0 0 20px 0;font-size:19px;line-height:25px;color:#0b0c0c\">Olá, " + name + ".</p><p style=\"Margin:0 0 20px 0;font-size:19px;line-height:25px;color:#0b0c0c\"> Você solicitou ajuda para recuperar sua senha. Clique no link abaixo para prosseguir " +
                " com a operação. \n Caso essa solicitação não tenha sido realizada por você, apenas ignore esse e-mail. </p><blockquote style=\"Margin:0 0 20px 0;border-left:10px solid #b1b4b6;padding:15px 0 0.1px 15px;font-size:19px;line-height:25px\"><p style=\"Margin:0 0 20px 0;font-size:19px;line-height:25px;color:#0b0c0c\"> <a href=\"" + link + "\">Recuperar senha</a> </p></blockquote>\n O link vai expirar em 30 minutos. <p>Até logo.</p>" +
                "        \n" +

                "      </td>\n" +
                "      <td width=\"10\" valign=\"middle\"><br></td>\n" +
                "    </tr>\n" +
                "    <tr>\n" +
                "      <td height=\"30\"><br></td>\n" +
                "    </tr>\n" +
                "  </tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n" +
                '\n' +
                "</div></div>";
    }

}
