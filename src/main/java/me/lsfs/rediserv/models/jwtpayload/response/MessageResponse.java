package me.lsfs.rediserv.models.jwtpayload.response;

public class MessageResponse {
    private String message;
    private boolean haErros;

    public MessageResponse(String message, boolean haErros) {
        this.message = message;
        this.haErros = haErros;
    }


    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public boolean isHaErros() {
        return haErros;
    }

    public void setHaErros(boolean haErros) {
        this.haErros = haErros;
    }
}
