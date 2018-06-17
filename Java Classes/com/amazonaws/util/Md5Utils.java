package com.amazonaws.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class Md5Utils
{
  public static String e(File paramFile)
    throws FileNotFoundException, IOException
  {
    return Base64.g(k(new FileInputStream(paramFile)));
  }
  
  private static byte[] k(InputStream paramInputStream)
    throws IOException
  {
    paramInputStream = new BufferedInputStream(paramInputStream);
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      byte[] arrayOfByte2 = new byte['䀀'];
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte2, 0, 16384);
        if (i == -1) {
          break;
        }
        localMessageDigest.update(arrayOfByte2, 0, i);
      }
      try
      {
        paramInputStream.close();
        throw ((Throwable)localObject);
        byte[] arrayOfByte1 = ((MessageDigest)localObject).digest();
        try
        {
          paramInputStream.close();
          return arrayOfByte1;
        }
        catch (Exception paramInputStream)
        {
          LogFactory.getLog(Md5Utils.class).debug("Unable to close input stream of hash candidate: " + paramInputStream);
          return arrayOfByte1;
        }
      }
      catch (Exception paramInputStream)
      {
        for (;;)
        {
          LogFactory.getLog(Md5Utils.class).debug("Unable to close input stream of hash candidate: " + paramInputStream);
        }
      }
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException = localNoSuchAlgorithmException;
      throw new IllegalStateException(localNoSuchAlgorithmException);
    }
    finally {}
  }
  
  private static byte[] k(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = MessageDigest.getInstance("MD5").digest(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      throw new IllegalStateException(paramArrayOfByte);
    }
  }
  
  public static String l(byte[] paramArrayOfByte)
  {
    return Base64.g(k(paramArrayOfByte));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/Md5Utils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */