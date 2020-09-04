package net.wuyuling.milkteamooc.utils;

import org.springframework.stereotype.Service;

import java.security.MessageDigest;

/**
 * Common Utility Tools
 */
@Service
public class CommonUtils {
    /**
     * Encryption of MD5
     *
     * @param data Plain Data
     * @return Encrypted Data
     */
    public static String MD5(String data) {
        try {
            java.security.MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] array = md.digest(data.getBytes("UTF_8"));
            StringBuilder sb = new StringBuilder();
            for (byte item : array) {
                sb.append(Integer.toHexString((item & 0xFF) | 0x100), 1, 3);
            }
            return sb.toString().toUpperCase();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
}
