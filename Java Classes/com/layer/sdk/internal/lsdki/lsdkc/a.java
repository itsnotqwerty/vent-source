package com.layer.sdk.internal.lsdki.lsdkc;

import java.io.IOException;
import java.io.OutputStream;
import java.util.concurrent.atomic.AtomicLong;

public class a
  extends OutputStream
{
  private final OutputStream a;
  private final a b;
  private final long c;
  private final AtomicLong d = new AtomicLong(0L);
  
  public a(OutputStream paramOutputStream, long paramLong1, long paramLong2, a parama)
  {
    this.a = paramOutputStream;
    this.b = parama;
    this.c = paramLong1;
    this.d.set(paramLong2);
  }
  
  private void a(long paramLong)
  {
    a(this.d.addAndGet(paramLong), paramLong);
  }
  
  private void a(long paramLong1, long paramLong2)
  {
    if (this.b != null) {
      this.b.a(this.c, paramLong1, paramLong2);
    }
  }
  
  public void close()
    throws IOException
  {
    this.a.close();
  }
  
  public void flush()
    throws IOException
  {
    this.a.flush();
  }
  
  public void write(int paramInt)
    throws IOException
  {
    this.a.write(paramInt);
    a(1L);
  }
  
  public void write(byte[] paramArrayOfByte)
    throws IOException
  {
    this.a.write(paramArrayOfByte);
    a(paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    this.a.write(paramArrayOfByte, paramInt1, paramInt2);
    a(paramInt2);
  }
  
  public static abstract interface a
  {
    public abstract void a(long paramLong1, long paramLong2, long paramLong3);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */