package balancetonquizz.security;


/**
 * Réponse envoyée après une authentification réussie avec le token
 */
public class JwtResponse {

    private final String jwttoken;

    // Constructeur
    public JwtResponse(String jwttoken) {
        this.jwttoken = jwttoken;
    }

    public String getToken() {
        return this.jwttoken;
    }
}
