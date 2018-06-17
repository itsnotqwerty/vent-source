package io.intercom.a.a.a.c.a;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class e
  extends FilterInputStream
{
  private static final byte[] cIk = { -1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0 };
  private static final int cIl = 29;
  private static final int cIm = 31;
  private final byte cIn;
  private int position;
  
  public e(InputStream paramInputStream, int paramInt)
  {
    super(paramInputStream);
    if ((paramInt < -1) || (paramInt > 8)) {
      throw new IllegalArgumentException("Cannot add invalid orientation: " + paramInt);
    }
    this.cIn = ((byte)paramInt);
  }
  
  public final void mark(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean markSupported()
  {
    return false;
  }
  
  public final int read()
    throws IOException
  {
    int i;
    if ((this.position < 2) || (this.position > cIm)) {
      i = super.read();
    }
    for (;;)
    {
      if (i != -1) {
        this.position += 1;
      }
      return i;
      if (this.position == cIm) {
        i = this.cIn;
      } else {
        i = cIk[(this.position - 2)] & 0xFF;
      }
    }
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (this.position > cIm) {
      paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    }
    for (;;)
    {
      if (paramInt1 > 0) {
        this.position += paramInt1;
      }
      return paramInt1;
      if (this.position == cIm)
      {
        paramArrayOfByte[paramInt1] = this.cIn;
        paramInt1 = 1;
      }
      else if (this.position < 2)
      {
        paramInt1 = super.read(paramArrayOfByte, paramInt1, 2 - this.position);
      }
      else
      {
        paramInt2 = Math.min(cIm - this.position, paramInt2);
        System.arraycopy(cIk, this.position - 2, paramArrayOfByte, paramInt1, paramInt2);
        paramInt1 = paramInt2;
      }
    }
  }
  
  public final void reset()
    throws IOException
  {
    throw new UnsupportedOperationException();
  }
  
  public final long skip(long paramLong)
    throws IOException
  {
    paramLong = super.skip(paramLong);
    if (paramLong > 0L) {
      this.position = ((int)(this.position + paramLong));
    }
    return paramLong;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */