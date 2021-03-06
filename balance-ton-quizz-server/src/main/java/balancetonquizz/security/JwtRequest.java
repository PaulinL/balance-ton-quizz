package balancetonquizz.security;


/**
 * Objet envoyé par le front avec les identifiants saisis par l'utilisateur
 */
public class JwtRequest{

    private String username;

    private String password;

    //need default constructor for JSON Parsing
    public JwtRequest() {}

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
