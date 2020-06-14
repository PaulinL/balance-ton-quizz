package balancetonquizz.security;


import balancetonquizz.entities.User;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * Réponse envoyée après une authentification réussie avec le token
 */
@Getter
@Setter
public class JwtResponse {

    private final String token;
    private final User user;

    // Constructeur
    public JwtResponse(String jwtToken, User user) {
        this.token = jwtToken;
        this.user = user;
    }
}
