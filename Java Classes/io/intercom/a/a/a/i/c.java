package io.intercom.a.a.a.i;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

public final class c
  extends InputStream
{
  private static final Queue<c> cQR = i.ft(0);
  private InputStream cQS;
  public IOException cQT;
  
  public static c r(InputStream paramInputStream)
  {
    synchronized (cQR)
    {
      c localc = (c)cQR.poll();
      ??? = localc;
      if (localc == null) {
        ??? = new c();
      }
      ((c)???).cQS = paramInputStream;
      return (c)???;
    }
  }
  
  public final int available()
    throws IOException
  {
    return this.cQS.available();
  }
  
  public final void close()
    throws IOException
  {
    this.cQS.close();
  }
  
  public final void mark(int paramInt)
  {
    this.cQS.mark(paramInt);
  }
  
  public final boolean markSupported()
  {
    return this.cQS.markSupported();
  }
  
  public final int read()
    throws IOException
  {
    try
    {
      int i = this.cQS.read();
      return i;
    }
    catch (IOException localIOException)
    {
      this.cQT = localIOException;
    }
    return -1;
  }
  
  public final int read(byte[] paramArrayOfByte)
    throws IOException
  {
    try
    {
      int i = this.cQS.read(paramArrayOfByte);
      return i;
    }
    catch (IOException paramArrayOfByte)
    {
      this.cQT = paramArrayOfByte;
    }
    return -1;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      paramInt1 = this.cQS.read(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt1;
    }
    catch (IOException paramArrayOfByte)
    {
      this.cQT = paramArrayOfByte;
    }
    return -1;
  }
  
  public final void release()
  {
    this.cQT = null;
    this.cQS = null;
    synchronized (cQR)
    {
      cQR.offer(this);
      return;
    }
  }
  
  public final void reset()
    throws IOException
  {
    try
    {
      this.cQS.reset();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final long skip(long paramLong)
    throws IOException
  {
    try
    {
      paramLong = this.cQS.skip(paramLong);
      return paramLong;
    }
    catch (IOException localIOException)
    {
      this.cQT = localIOException;
    }
    return 0L;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/i/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */