package io.intercom.a.a.a.i;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class b
  extends FilterInputStream
{
  private int cQQ;
  private final long contentLength;
  
  private b(InputStream paramInputStream, long paramLong)
  {
    super(paramInputStream);
    this.contentLength = paramLong;
  }
  
  public static InputStream a(InputStream paramInputStream, long paramLong)
  {
    return new b(paramInputStream, paramLong);
  }
  
  private int fr(int paramInt)
    throws IOException
  {
    if (paramInt >= 0) {
      this.cQQ += paramInt;
    }
    while (this.contentLength - this.cQQ <= 0L) {
      return paramInt;
    }
    throw new IOException("Failed to read all expected data, expected: " + this.contentLength + ", but read: " + this.cQQ);
  }
  
  public final int available()
    throws IOException
  {
    try
    {
      long l = Math.max(this.contentLength - this.cQQ, this.in.available());
      int i = (int)l;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final int read()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 70	java/io/FilterInputStream:read	()I
    //   6: istore_2
    //   7: iload_2
    //   8: iflt +15 -> 23
    //   11: iconst_1
    //   12: istore_1
    //   13: aload_0
    //   14: iload_1
    //   15: invokespecial 72	io/intercom/a/a/a/i/b:fr	(I)I
    //   18: pop
    //   19: aload_0
    //   20: monitorexit
    //   21: iload_2
    //   22: ireturn
    //   23: iconst_m1
    //   24: istore_1
    //   25: goto -12 -> 13
    //   28: astore_3
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_3
    //   32: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	this	b
    //   12	13	1	i	int
    //   6	16	2	j	int
    //   28	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	28	finally
    //   13	19	28	finally
  }
  
  public final int read(byte[] paramArrayOfByte)
    throws IOException
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      paramInt1 = fr(super.read(paramArrayOfByte, paramInt1, paramInt2));
      return paramInt1;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/i/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */