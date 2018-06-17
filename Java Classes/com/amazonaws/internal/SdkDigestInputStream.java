package com.amazonaws.internal;

import java.io.IOException;
import java.io.InputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;

public class SdkDigestInputStream
  extends DigestInputStream
{
  static
  {
    if (!SdkDigestInputStream.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public SdkDigestInputStream(InputStream paramInputStream, MessageDigest paramMessageDigest)
  {
    super(paramInputStream, paramMessageDigest);
  }
  
  public final long skip(long paramLong)
    throws IOException
  {
    if (paramLong <= 0L) {}
    long l;
    do
    {
      return paramLong;
      byte[] arrayOfByte = new byte[(int)Math.min(2048L, paramLong)];
      int i;
      for (l = paramLong; l > 0L; l -= i)
      {
        i = read(arrayOfByte, 0, (int)Math.min(l, arrayOfByte.length));
        if (i == -1)
        {
          if (l == paramLong) {
            return -1L;
          }
          return paramLong - l;
        }
      }
    } while (($assertionsDisabled) || (l == 0L));
    throw new AssertionError();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/internal/SdkDigestInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */