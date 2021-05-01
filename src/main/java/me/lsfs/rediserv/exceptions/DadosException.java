package me.lsfs.rediserv.exceptions;

public class DadosException extends RuntimeException{

    private static final long serialVersionUID = 1L;
    private static final String MENSAGEM_PADRAO = "Registro não encontrado";

    /**
     * Construtor padrão. Utiliza a mensagem padrão conforme chave <b>erro.registroNaoEncontrado</b>
     * declarada no arquivo <b>messages.properties</b>.
     */
    public DadosException() {
        super(MENSAGEM_PADRAO);
    }

    /**
     * Construtor sobrecarregado para receber uma mensagem de erro como parâmetro.
     * A mensagem deve estar declarada corretamente no arquivo <b>messages.properties</b>.
     */
    public DadosException(String mensagem) {
        super(mensagem);
    }
}
