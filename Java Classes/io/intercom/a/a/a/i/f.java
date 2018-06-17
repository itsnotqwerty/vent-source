package io.intercom.a.a.a.i;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class f
  extends FilterInputStream
{
  private int cQW = Integer.MIN_VALUE;
  
  public f(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  private long W(long paramLong)
  {
    long l;
    if (this.cQW == 0) {
      l = -1L;
    }
    do
    {
      do
      {
        return l;
        l = paramLong;
      } while (this.cQW == Integer.MIN_VALUE);
      l = paramLong;
    } while (paramLong <= this.cQW);
    return this.cQW;
  }
  
  private void X(long paramLong)
  {
    if ((this.cQW != Integer.MIN_VALUE) && (paramLong != -1L)) {
      this.cQW = ((int)(this.cQW - paramLong));
    }
  }
  
  public final int available()
    throws IOException
  {
    if (this.cQW == Integer.MIN_VALUE) {
      return super.available();
    }
    return Math.min(this.cQW, super.available());
  }
  
  public final void mark(int paramInt)
  {
    super.mark(paramInt);
    this.cQW = paramInt;
  }
  
  public final int read()
    throws IOException
  {
    if (W(1L) == -1L) {
      return -1;
    }
    int i = super.read();
    X(1L);
    return i;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    paramInt2 = (int)W(paramInt2);
    if (paramInt2 == -1) {
      return -1;
    }
    paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    X(paramInt1);
    return paramInt1;
  }
  
  public final void reset()
    throws IOException
  {
    super.reset();
    this.cQW = Integer.MIN_VALUE;
  }
  
  public final long skip(long paramLong)
    throws IOException
  {
    paramLong = W(paramLong);
    if (paramLong == -1L) {
      return 0L;
    }
    paramLong = super.skip(paramLong);
    X(paramLong);
    return paramLong;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/i/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */