package net.wuyuling.milkteamooc.utils;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import net.wuyuling.milkteamooc.model.entity.User;

import java.util.Date;

/**
 * Jwt Utility Tools
 * Note:
 * 1. Generated Token can be decrypted to plaintext through Base64.
 * 2. If decrypted and modified by someone and then encoded again, the decryption process will fail.
 * 3. The issued token cannot be invalidated unless changing the secret key.
 */
public class JWTUtils {
    /**
     * Expiration Time, Default: 3 Days
     * Unit: ms
     */
    private static final long EXPIRE = 60000 * 60 * 24 * 3;


    /**
     * Encryption Secret Key
     */
    private static final String SECRET = "milktea.wuyuling.net";


    /**
     * Token Prefix of Encryption String
     */
    private static final String TOKEN_PREFIX = "milktea";


    /**
     * Encryption Subject
     */
    private static final String SUBJECT = "milktea";


    /**
     * Generate the Token by the User's info
     *
     * @param user the User Info
     * @return Token String
     */
    public static String generateJsonWebToken(User user) {

        String token = Jwts.builder().setSubject(SUBJECT)
                .claim("head_img", user.getHeadImg())
                .claim("id", user.getId())
                .claim("name", user.getName())
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis() + EXPIRE))
                .signWith(SignatureAlgorithm.HS256, SECRET).compact();

        token = TOKEN_PREFIX + token;

        return token;
    }


    /**
     * Validate the Token
     *
     * @param token Encrypted Token
     * @return Decrypted JSON map
     */
    public static Claims checkJWT(String token) {

        try {
            // MUST replace the first Token Prefix string, because the token may include the prefix string after the Signature Algorithm.
            return Jwts.parser().setSigningKey(SECRET).parseClaimsJws(token.replaceFirst(TOKEN_PREFIX, "")).getBody();

        } catch (Exception e) {
            // Maybe make some records in the log here?
            return null;
        }

    }


}