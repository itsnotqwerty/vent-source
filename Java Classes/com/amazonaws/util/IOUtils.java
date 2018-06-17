package com.amazonaws.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public enum IOUtils
{
  private static final Log auU = LogFactory.getLog(IOUtils.class);
  
  private static byte[] i(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      byte[] arrayOfByte = new byte['က'];
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      paramInputStream = localByteArrayOutputStream.toByteArray();
    }
    finally
    {
      localByteArrayOutputStream.close();
    }
    localByteArrayOutputStream.close();
    return paramInputStream;
  }
  
  public static String j(InputStream paramInputStream)
    throws IOException
  {
    return new String(i(paramInputStream), StringUtils.avd);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/IOUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */