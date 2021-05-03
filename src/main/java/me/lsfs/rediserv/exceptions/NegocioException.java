package me.lsfs.rediserv.exceptions;

public class NegocioException extends RuntimeException{

    private static final long serialVersionUID = 1L;
    private static final String MENSAGEM_PADRAO = "Dados inválidos";

    /**
     * Construtor padrão. Utiliza a mensagem padrão conforme chave <b>erro.registroNaoEncontrado</b>
     * declarada no arquivo <b>messages.properties</b>.
     */
    public NegocioException() {
        super(MENSAGEM_PADRAO);
    }

    /**
     * Construtor sobrecarregado para receber uma mensagem de erro como parâmetro.
     * A mensagem deve estar declarada corretamente no arquivo <b>messages.properties</b>.
     */
    public NegocioException(String mensagem) {
        super(mensagem);
    }

}
