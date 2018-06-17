package com.amazonaws.services.s3.internal;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5DigestCalculatingInputStream
  extends SdkFilterInputStream
{
  private MessageDigest apR;
  public MessageDigest digest;
  
  public MD5DigestCalculatingInputStream(InputStream paramInputStream)
  {
    super(paramInputStream);
    try
    {
      this.digest = MessageDigest.getInstance("MD5");
      return;
    }
    catch (NoSuchAlgorithmException paramInputStream)
    {
      throw new IllegalStateException("unexpected", paramInputStream);
    }
  }
  
  public void mark(int paramInt)
  {
    super.mark(paramInt);
    if (markSupported()) {}
    try
    {
      this.apR = ((MessageDigest)this.digest.clone());
      return;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new IllegalStateException("unexpected", localCloneNotSupportedException);
    }
  }
  
  public int read()
    throws IOException
  {
    int i = super.read();
    if (i != -1) {
      this.digest.update((byte)i);
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    paramInt2 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt2 != -1) {
      this.digest.update(paramArrayOfByte, paramInt1, paramInt2);
    }
    return paramInt2;
  }
  
  public void reset()
    throws IOException
  {
    super.reset();
    if (this.apR != null) {}
    try
    {
      this.digest = ((MessageDigest)this.apR.clone());
      return;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new IllegalStateException("unexpected", localCloneNotSupportedException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */