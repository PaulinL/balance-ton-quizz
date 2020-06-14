package balancetonquizz.security;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class JwtAuthorizationFilter extends OncePerRequestFilter {

    public Logger logger = LoggerFactory.getLogger(JwtAuthorizationFilter.class);

    @Value("${jwt.secret}")
    private String secret;

    @Autowired
    private CustomUserDetailsService userDetailsService;

    @Autowired
    private JwtTokenProvider jwtTokenProvider;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws ServletException, IOException {

        final String PREFIX_BEARER = "Bearer ";
        String username = null;
        String jwtToken = null;

        final String tokenHeader = request.getHeader(HttpHeaders.AUTHORIZATION);

        // JWT Token is in the form "Bearer token". Remove Bearer word and get only the Token
        if (tokenHeader != null && tokenHeader.startsWith(PREFIX_BEARER)) {

            jwtToken = tokenHeader.substring(PREFIX_BEARER.length()); //Retrieve token
            logger.trace("token retrieved");

            try {
                username = jwtTokenProvider.getUsernameFromToken(jwtToken);
            } catch (IllegalArgumentException e) {
                logger.error("Unable to get JWT Token");
            } catch (ExpiredJwtException e) {
                logger.error("JWT Token has expired");
            }

            // Once we get the token validate it.
            if (username != null && SecurityContextHolder.getContext().getAuthentication() == null) {

                UserDetails userDetails = this.userDetailsService.loadUserByUsername(username);

                if (validateToken(jwtToken, userDetails)) {

                    UsernamePasswordAuthenticationToken auth = new UsernamePasswordAuthenticationToken(
                            userDetails, null, userDetails.getAuthorities());

                    auth.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));

                    SecurityContextHolder.getContext().setAuthentication(auth);
                    logger.trace("Authentication success");
                }
            }

        } else {
            logger.error("No token or JWT Token does not begin with Bearer String");
        }

        chain.doFilter(request, response);
    }

    public Boolean validateToken(String token, UserDetails userDetails) {

        Jws<Claims> claims = Jwts.parser().setSigningKey(secret).parseClaimsJws(token);
        final String username = jwtTokenProvider.getUsernameFromToken(token);
        final String password = (String) jwtTokenProvider.getAllClaimsFromToken(token).get("password");

        return username.equals(userDetails.getUsername()) && !jwtTokenProvider.isTokenExpired(token) && password.equals(userDetails.getPassword());
    }
}
