package Winederlust;
/*
 * Simple encryption and description using DESede algorithm
 * to encrypt PW : PWCrypto.encrypt(pw)
 * to decrypt PW : PWCrypto.decrypt(pw)
 */

import java.security.spec.KeySpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;

import java.util.Base64;

public class PWCrypto 
{
    private static final String cipher = "DESede"; //algorithm code
    private static String key = "b70a 25fb c9d8 6a86 050c e0d7 11ea d4d9"; //encryption key
    private static SecretKey ky = null; //secret key object constructed from the encryption key
    private static Cipher c = null; //encrypt and decrypt object
    /**
     * initializes this encryption class with the specified encryption key
     * passed in.  Null to use default encryption key.
     * <p>This method must be called before any call to this class/object
     * @param keyString_p encryption key string
     * @throws Exception on any error/bad encryption key
     */
    public static void init (String keyString_p) throws Exception 
    {
        if (keyString_p!=null) key = keyString_p;
		byte[] enc = key.getBytes("UTF-8");
		KeySpec ks = null;
		SecretKeyFactory kf = null;
		ks = new DESedeKeySpec(enc);
		kf = SecretKeyFactory.getInstance(cipher);
		ky = kf.generateSecret(ks);
		c = Cipher.getInstance(cipher);        
    } 
	/**
	 encrypts the message passed in @param originalMsg_p message to be encrypted 
	 @return encrypted message in String @throws Exception any error
	 */
	public static String encrypt(String originalMsg_p)throws Exception 
	{
	    /**
	    8if (c==null) init(null);
		c.init(Cipher.ENCRYPT_MODE, ky);
		byte[] utf8 = originalMsg_p.getBytes("UTF-8");
		byte [] enc1 = c.doFinal(utf8);
		BASE64Encoder encoder = new BASE64Encoder();
		return encoder.encode(enc1);
		*/
		String originalInput = originalMsg_p;
		String encodedString = Base64.getEncoder().encodeToString(originalInput.getBytes());
		return encodedString;
	}
	/**
	 decrypt an encrypted message @param encryptedMsg_p encrypted messages to be decrypted
	 @return decrypted text in String @throws Exception any error
	 */
	public static String decrypt(String encryptedMsg_p)throws Exception 
	{
		/**
		if (c==null) init(null);
		BASE64Decoder decoder = new BASE64Decoder();
		byte[] enc3 = decoder.decodeBuffer(encryptedMsg_p);
		c.init(Cipher.DECRYPT_MODE, ky);
	    String result = new String(c.doFinal(enc3),"UTF-8");
	    return result;
	    */
	    byte[] decodedBytes = Base64.getDecoder().decode(encryptedMsg_p);
	    String decodedString = new String(decodedBytes);
	    return decodedString;
	}
}