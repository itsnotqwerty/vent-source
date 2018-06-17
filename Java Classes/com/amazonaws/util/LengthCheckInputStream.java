package com.amazonaws.util;

import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class LengthCheckInputStream
  extends SdkFilterInputStream
{
  private final long auW;
  private final boolean auX;
  private long auY;
  private long auZ;
  
  public LengthCheckInputStream(InputStream paramInputStream, long paramLong)
  {
    super(paramInputStream);
    if (paramLong < 0L) {
      throw new IllegalArgumentException();
    }
    this.auW = paramLong;
    this.auX = false;
  }
  
  private void al(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (this.auY != this.auW) {
        throw new AmazonClientException("Data read (" + this.auY + ") has a different length than the expected (" + this.auW + ")");
      }
    }
    else if (this.auY > this.auW) {
      throw new AmazonClientException("More data read (" + this.auY + ") than expected (" + this.auW + ")");
    }
  }
  
  public void mark(int paramInt)
  {
    super.mark(paramInt);
    this.auZ = this.auY;
  }
  
  public int read()
    throws IOException
  {
    int i = super.read();
    if (i >= 0) {
      this.auY += 1L;
    }
    if (i == -1) {}
    for (boolean bool = true;; bool = false)
    {
      al(bool);
      return i;
    }
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    long l2 = this.auY;
    long l1;
    if (paramInt1 >= 0)
    {
      l1 = paramInt1;
      this.auY = (l1 + l2);
      if (paramInt1 != -1) {
        break label53;
      }
    }
    label53:
    for (boolean bool = true;; bool = false)
    {
      al(bool);
      return paramInt1;
      l1 = 0L;
      break;
    }
  }
  
  public void reset()
    throws IOException
  {
    super.reset();
    if (super.markSupported()) {
      this.auY = this.auZ;
    }
  }
  
  public long skip(long paramLong)
    throws IOException
  {
    paramLong = super.skip(paramLong);
    if ((this.auX) && (paramLong > 0L))
    {
      this.auY += paramLong;
      al(false);
    }
    return paramLong;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/LengthCheckInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */