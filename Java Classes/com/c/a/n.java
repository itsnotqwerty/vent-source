package com.c.a;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

final class n
  extends InputStream
{
  private long bNG;
  private long bNH;
  private long bNI;
  private long bNJ = -1L;
  private final InputStream in;
  
  public n(InputStream paramInputStream)
  {
    this(paramInputStream, (byte)0);
  }
  
  private n(InputStream paramInputStream, byte paramByte)
  {
    Object localObject = paramInputStream;
    if (!paramInputStream.markSupported()) {
      localObject = new BufferedInputStream(paramInputStream, 4096);
    }
    this.in = ((InputStream)localObject);
  }
  
  private void e(long paramLong1, long paramLong2)
    throws IOException
  {
    while (paramLong1 < paramLong2)
    {
      long l2 = this.in.skip(paramLong2 - paramLong1);
      long l1 = l2;
      if (l2 == 0L)
      {
        if (read() == -1) {
          break;
        }
        l1 = 1L;
      }
      paramLong1 += l1;
    }
  }
  
  public final void Q(long paramLong)
    throws IOException
  {
    if ((this.bNG > this.bNI) || (paramLong < this.bNH)) {
      throw new IOException("Cannot reset");
    }
    this.in.reset();
    e(this.bNH, paramLong);
    this.bNG = paramLong;
  }
  
  public final int available()
    throws IOException
  {
    return this.in.available();
  }
  
  public final void close()
    throws IOException
  {
    this.in.close();
  }
  
  /* Error */
  public final long dX(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 52	com/c/a/n:bNG	J
    //   4: iload_1
    //   5: i2l
    //   6: ladd
    //   7: lstore_2
    //   8: aload_0
    //   9: getfield 54	com/c/a/n:bNI	J
    //   12: lload_2
    //   13: lcmp
    //   14: ifge +65 -> 79
    //   17: aload_0
    //   18: getfield 56	com/c/a/n:bNH	J
    //   21: aload_0
    //   22: getfield 52	com/c/a/n:bNG	J
    //   25: lcmp
    //   26: ifge +58 -> 84
    //   29: aload_0
    //   30: getfield 52	com/c/a/n:bNG	J
    //   33: aload_0
    //   34: getfield 54	com/c/a/n:bNI	J
    //   37: lcmp
    //   38: ifgt +46 -> 84
    //   41: aload_0
    //   42: getfield 35	com/c/a/n:in	Ljava/io/InputStream;
    //   45: invokevirtual 64	java/io/InputStream:reset	()V
    //   48: aload_0
    //   49: getfield 35	com/c/a/n:in	Ljava/io/InputStream;
    //   52: lload_2
    //   53: aload_0
    //   54: getfield 56	com/c/a/n:bNH	J
    //   57: lsub
    //   58: l2i
    //   59: invokevirtual 78	java/io/InputStream:mark	(I)V
    //   62: aload_0
    //   63: aload_0
    //   64: getfield 56	com/c/a/n:bNH	J
    //   67: aload_0
    //   68: getfield 52	com/c/a/n:bNG	J
    //   71: invokespecial 66	com/c/a/n:e	(JJ)V
    //   74: aload_0
    //   75: lload_2
    //   76: putfield 54	com/c/a/n:bNI	J
    //   79: aload_0
    //   80: getfield 52	com/c/a/n:bNG	J
    //   83: lreturn
    //   84: aload_0
    //   85: aload_0
    //   86: getfield 52	com/c/a/n:bNG	J
    //   89: putfield 56	com/c/a/n:bNH	J
    //   92: aload_0
    //   93: getfield 35	com/c/a/n:in	Ljava/io/InputStream;
    //   96: lload_2
    //   97: aload_0
    //   98: getfield 52	com/c/a/n:bNG	J
    //   101: lsub
    //   102: l2i
    //   103: invokevirtual 78	java/io/InputStream:mark	(I)V
    //   106: goto -32 -> 74
    //   109: astore 4
    //   111: new 80	java/lang/IllegalStateException
    //   114: dup
    //   115: new 82	java/lang/StringBuilder
    //   118: dup
    //   119: ldc 84
    //   121: invokespecial 85	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   124: aload 4
    //   126: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   129: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   132: invokespecial 94	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   135: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	136	0	this	n
    //   0	136	1	paramInt	int
    //   7	90	2	l	long
    //   109	16	4	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   17	74	109	java/io/IOException
    //   74	79	109	java/io/IOException
    //   84	106	109	java/io/IOException
  }
  
  public final void mark(int paramInt)
  {
    this.bNJ = dX(paramInt);
  }
  
  public final boolean markSupported()
  {
    return this.in.markSupported();
  }
  
  public final int read()
    throws IOException
  {
    int i = this.in.read();
    if (i != -1) {
      this.bNG += 1L;
    }
    return i;
  }
  
  public final int read(byte[] paramArrayOfByte)
    throws IOException
  {
    int i = this.in.read(paramArrayOfByte);
    if (i != -1) {
      this.bNG += i;
    }
    return i;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    paramInt1 = this.in.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt1 != -1) {
      this.bNG += paramInt1;
    }
    return paramInt1;
  }
  
  public final void reset()
    throws IOException
  {
    Q(this.bNJ);
  }
  
  public final long skip(long paramLong)
    throws IOException
  {
    paramLong = this.in.skip(paramLong);
    this.bNG += paramLong;
    return paramLong;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */