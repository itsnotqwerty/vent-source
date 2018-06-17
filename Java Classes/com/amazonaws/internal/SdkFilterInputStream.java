package com.amazonaws.internal;

import com.amazonaws.AbortedException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class SdkFilterInputStream
  extends FilterInputStream
{
  protected SdkFilterInputStream(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  public void abort() {}
  
  public int available()
    throws IOException
  {
    jH();
    return this.in.available();
  }
  
  public void close()
    throws IOException
  {
    this.in.close();
    jH();
  }
  
  protected final void jH()
  {
    if (Thread.interrupted())
    {
      abort();
      throw new AbortedException();
    }
  }
  
  public void mark(int paramInt)
  {
    try
    {
      jH();
      this.in.mark(paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean markSupported()
  {
    jH();
    return this.in.markSupported();
  }
  
  public int read()
    throws IOException
  {
    jH();
    return this.in.read();
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    jH();
    return this.in.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void reset()
    throws IOException
  {
    try
    {
      jH();
      this.in.reset();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public long skip(long paramLong)
    throws IOException
  {
    jH();
    return this.in.skip(paramLong);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/internal/SdkFilterInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */