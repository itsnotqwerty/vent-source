package com.vent.b;

import android.text.TextUtils;
import android.util.Base64;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

final class g
{
  private static boolean a(PublicKey paramPublicKey, String paramString1, String paramString2)
  {
    int i = 0;
    Signature localSignature = null;
    byte[] arrayOfByte = null;
    for (;;)
    {
      int j = i + 1;
      switch (i)
      {
      }
      try
      {
        if (localSignature.verify(arrayOfByte, 0, arrayOfByte.length))
        {
          i = 1;
          break label129;
          arrayOfByte = Base64.decode(paramString2, 0);
          i = j;
          continue;
          localSignature = Signature.getInstance("SHA1withRSA");
          i = j;
          continue;
          localSignature.initVerify(paramPublicKey);
          i = j;
          continue;
          localSignature.update(paramString1.getBytes());
          i = j;
        }
        else
        {
          i = -1;
        }
      }
      catch (Exception paramPublicKey)
      {
        i = 0;
      }
    }
    label129:
    do
    {
      return false;
    } while (i != 1);
    return true;
  }
  
  private static PublicKey eq(String paramString)
  {
    try
    {
      paramString = Base64.decode(paramString, 0);
      paramString = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(paramString));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new RuntimeException(paramString);
    }
    catch (InvalidKeySpecException paramString)
    {
      throw new IllegalArgumentException(paramString);
    }
  }
  
  static boolean k(String paramString1, String paramString2, String paramString3)
  {
    if ((TextUtils.isEmpty(paramString2)) || (TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString3))) {
      return false;
    }
    return a(eq(paramString1), paramString2, paramString3);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/b/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */