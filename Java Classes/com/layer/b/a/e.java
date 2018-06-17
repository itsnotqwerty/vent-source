package com.layer.b.a;

import com.layer.b.e.a;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.X509KeyManager;
import org.json.JSONException;
import org.json.JSONObject;

public final class e
{
  static String a(JSONObject paramJSONObject)
  {
    return b.f.L(dx(paramJSONObject.toString())).b();
  }
  
  static String a(JSONObject paramJSONObject, String paramString1, String paramString2)
    throws JSONException
  {
    paramJSONObject = paramJSONObject.get(paramString1);
    if (!paramString2.equals(paramJSONObject)) {
      throw new IllegalArgumentException("Bogus entry: key = " + paramString1 + " val = " + paramJSONObject + " instead of " + paramString2);
    }
    return (String)paramJSONObject;
  }
  
  public static KeyPair a(f paramf, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      paramf = paramf.a();
      paramf = new KeyPair(paramf.generatePublic(new X509EncodedKeySpec(paramArrayOfByte1)), paramf.generatePrivate(new PKCS8EncodedKeySpec(paramArrayOfByte2)));
      return paramf;
    }
    catch (InvalidKeySpecException paramf)
    {
      if (a.a(6)) {
        a.g(paramf.getMessage(), paramf);
      }
      return null;
    }
    catch (NoSuchAlgorithmException paramf)
    {
      for (;;)
      {
        if (a.a(6)) {
          a.g(paramf.getMessage(), paramf);
        }
      }
    }
  }
  
  public static PublicKey a(f paramf, String paramString)
  {
    try
    {
      paramString = b.f.fp(paramString.replaceAll("-----BEGIN CERTIFICATE-----", "").replaceAll("-----END CERTIFICATE-----", "")).g();
      paramf = paramf.e().generateCertificate(new ByteArrayInputStream(paramString)).getPublicKey();
      return paramf;
    }
    catch (Exception paramf)
    {
      if (a.a(6)) {
        a.g(paramf.getMessage(), paramf);
      }
    }
    return null;
  }
  
  public static Certificate a(f paramf, byte[] paramArrayOfByte)
  {
    try
    {
      paramf = paramf.e().generateCertificate(new ByteArrayInputStream(paramArrayOfByte));
      return paramf;
    }
    catch (CertificateException paramf)
    {
      if (a.a(6)) {
        a.g(paramf.getMessage(), paramf);
      }
    }
    return null;
  }
  
  public static X509KeyManager a(f paramf, KeyPair paramKeyPair, Certificate paramCertificate)
  {
    char[] arrayOfChar = "".toCharArray();
    try
    {
      KeyStore localKeyStore = paramf.b();
      localKeyStore.load(null, arrayOfChar);
      localKeyStore.setCertificateEntry("csr", paramCertificate);
      localKeyStore.setKeyEntry("rsa_priv", paramKeyPair.getPrivate(), arrayOfChar, new Certificate[] { paramCertificate });
      paramf = paramf.c();
      paramf.init(localKeyStore, arrayOfChar);
      paramf = paramf.getKeyManagers();
      j = paramf.length;
      i = 0;
    }
    catch (KeyStoreException paramf)
    {
      int j;
      if (!a.a(6)) {
        break label127;
      }
      a.g(paramf.getMessage(), paramf);
      return null;
    }
    catch (NoSuchAlgorithmException paramf)
    {
      for (;;)
      {
        if (a.a(6)) {
          a.g(paramf.getMessage(), paramf);
        }
      }
    }
    catch (CertificateException paramf)
    {
      for (;;)
      {
        if (a.a(6)) {
          a.g(paramf.getMessage(), paramf);
        }
      }
    }
    catch (UnrecoverableKeyException paramf)
    {
      for (;;)
      {
        if (a.a(6)) {
          a.g(paramf.getMessage(), paramf);
        }
      }
    }
    catch (IOException paramf)
    {
      for (;;)
      {
        int i;
        if (a.a(6))
        {
          a.g(paramf.getMessage(), paramf);
          continue;
          i += 1;
        }
      }
    }
    if (i < j)
    {
      paramKeyPair = paramf[i];
      if ((paramKeyPair instanceof X509KeyManager)) {
        return (X509KeyManager)paramKeyPair;
      }
    }
    else
    {
      throw new IllegalStateException("No X509 KeyManager found");
    }
  }
  
  static void a(JSONObject paramJSONObject, String paramString, Object paramObject)
  {
    try
    {
      paramJSONObject.put(paramString, paramObject);
      return;
    }
    catch (JSONException paramJSONObject)
    {
      throw new RuntimeException("Problem putting JSONObject entry, this should never happen!");
    }
  }
  
  public static KeyPair c(f paramf)
  {
    try
    {
      paramf = paramf.d();
      paramf.initialize(2048);
      paramf = paramf.generateKeyPair();
      return paramf;
    }
    catch (NoSuchAlgorithmException paramf)
    {
      if (a.a(6)) {
        a.g(paramf.getMessage(), paramf);
      }
    }
    return null;
  }
  
  static byte[] dx(String paramString)
  {
    return paramString.getBytes(Charset.forName("UTF-8"));
  }
  
  static JSONObject r(byte[] paramArrayOfByte)
    throws JSONException
  {
    return new JSONObject(new String(paramArrayOfByte, Charset.forName("UTF-8")));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */