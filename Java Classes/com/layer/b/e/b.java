package com.layer.b.e;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class b
{
  public static void a(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    byte[] arrayOfByte = new byte['ࠀ'];
    try
    {
      a(paramInputStream, paramOutputStream, arrayOfByte);
      return;
    }
    finally
    {
      paramInputStream.close();
      paramOutputStream.close();
    }
  }
  
  public static void a(InputStream paramInputStream, OutputStream paramOutputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    for (;;)
    {
      int i = paramInputStream.read(paramArrayOfByte);
      if (i <= 0) {
        break;
      }
      paramOutputStream.write(paramArrayOfByte, 0, i);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/e/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */