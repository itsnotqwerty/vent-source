package io.intercom.a.a.a.i;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

public final class a
{
  private static final AtomicReference<byte[]> cQO = new AtomicReference();
  
  /* Error */
  public static void b(ByteBuffer paramByteBuffer, java.io.File paramFile)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: invokevirtual 32	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   5: pop
    //   6: new 34	java/io/RandomAccessFile
    //   9: dup
    //   10: aload_1
    //   11: ldc 36
    //   13: invokespecial 39	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   16: astore_2
    //   17: aload_2
    //   18: invokevirtual 43	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   21: astore_1
    //   22: aload_1
    //   23: aload_0
    //   24: invokevirtual 49	java/nio/channels/FileChannel:write	(Ljava/nio/ByteBuffer;)I
    //   27: pop
    //   28: aload_1
    //   29: iconst_0
    //   30: invokevirtual 53	java/nio/channels/FileChannel:force	(Z)V
    //   33: aload_1
    //   34: invokevirtual 56	java/nio/channels/FileChannel:close	()V
    //   37: aload_2
    //   38: invokevirtual 57	java/io/RandomAccessFile:close	()V
    //   41: aload_1
    //   42: ifnull +7 -> 49
    //   45: aload_1
    //   46: invokevirtual 56	java/nio/channels/FileChannel:close	()V
    //   49: aload_2
    //   50: invokevirtual 57	java/io/RandomAccessFile:close	()V
    //   53: return
    //   54: astore_0
    //   55: aconst_null
    //   56: astore_1
    //   57: aconst_null
    //   58: astore_2
    //   59: aload_1
    //   60: ifnull +7 -> 67
    //   63: aload_1
    //   64: invokevirtual 56	java/nio/channels/FileChannel:close	()V
    //   67: aload_2
    //   68: ifnull +7 -> 75
    //   71: aload_2
    //   72: invokevirtual 57	java/io/RandomAccessFile:close	()V
    //   75: aload_0
    //   76: athrow
    //   77: astore_0
    //   78: goto -29 -> 49
    //   81: astore_0
    //   82: return
    //   83: astore_1
    //   84: goto -17 -> 67
    //   87: astore_1
    //   88: goto -13 -> 75
    //   91: astore_0
    //   92: aconst_null
    //   93: astore_1
    //   94: goto -35 -> 59
    //   97: astore_0
    //   98: goto -39 -> 59
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	paramByteBuffer	ByteBuffer
    //   0	101	1	paramFile	java.io.File
    //   16	56	2	localRandomAccessFile	java.io.RandomAccessFile
    // Exception table:
    //   from	to	target	type
    //   6	17	54	finally
    //   45	49	77	java/io/IOException
    //   49	53	81	java/io/IOException
    //   63	67	83	java/io/IOException
    //   71	75	87	java/io/IOException
    //   17	22	91	finally
    //   22	41	97	finally
  }
  
  public static byte[] c(ByteBuffer paramByteBuffer)
  {
    if ((!paramByteBuffer.isReadOnly()) && (paramByteBuffer.hasArray())) {}
    for (Object localObject = new b(paramByteBuffer.array(), paramByteBuffer.arrayOffset(), paramByteBuffer.limit()); (localObject != null) && (((b)localObject).offset == 0) && (((b)localObject).limit == ((b)localObject).data.length); localObject = null) {
      return paramByteBuffer.array();
    }
    paramByteBuffer = paramByteBuffer.asReadOnlyBuffer();
    localObject = new byte[paramByteBuffer.limit()];
    paramByteBuffer.position(0);
    paramByteBuffer.get((byte[])localObject);
    return (byte[])localObject;
  }
  
  public static InputStream d(ByteBuffer paramByteBuffer)
  {
    return new a(paramByteBuffer);
  }
  
  /* Error */
  public static ByteBuffer o(java.io.File paramFile)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 112	java/io/File:length	()J
    //   4: lstore_1
    //   5: lload_1
    //   6: ldc2_w 113
    //   9: lcmp
    //   10: ifle +39 -> 49
    //   13: new 26	java/io/IOException
    //   16: dup
    //   17: ldc 116
    //   19: invokespecial 119	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   22: athrow
    //   23: astore_0
    //   24: aconst_null
    //   25: astore_3
    //   26: aconst_null
    //   27: astore 4
    //   29: aload_3
    //   30: ifnull +7 -> 37
    //   33: aload_3
    //   34: invokevirtual 56	java/nio/channels/FileChannel:close	()V
    //   37: aload 4
    //   39: ifnull +8 -> 47
    //   42: aload 4
    //   44: invokevirtual 57	java/io/RandomAccessFile:close	()V
    //   47: aload_0
    //   48: athrow
    //   49: lload_1
    //   50: lconst_0
    //   51: lcmp
    //   52: ifne +13 -> 65
    //   55: new 26	java/io/IOException
    //   58: dup
    //   59: ldc 121
    //   61: invokespecial 119	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   64: athrow
    //   65: new 34	java/io/RandomAccessFile
    //   68: dup
    //   69: aload_0
    //   70: ldc 123
    //   72: invokespecial 39	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   75: astore_0
    //   76: aload_0
    //   77: invokevirtual 43	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   80: astore_3
    //   81: aload_3
    //   82: getstatic 129	java/nio/channels/FileChannel$MapMode:READ_ONLY	Ljava/nio/channels/FileChannel$MapMode;
    //   85: lconst_0
    //   86: lload_1
    //   87: invokevirtual 133	java/nio/channels/FileChannel:map	(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    //   90: invokevirtual 139	java/nio/MappedByteBuffer:load	()Ljava/nio/MappedByteBuffer;
    //   93: astore 4
    //   95: aload_3
    //   96: ifnull +7 -> 103
    //   99: aload_3
    //   100: invokevirtual 56	java/nio/channels/FileChannel:close	()V
    //   103: aload_0
    //   104: invokevirtual 57	java/io/RandomAccessFile:close	()V
    //   107: aload 4
    //   109: areturn
    //   110: astore_3
    //   111: goto -8 -> 103
    //   114: astore_0
    //   115: aload 4
    //   117: areturn
    //   118: astore_3
    //   119: goto -82 -> 37
    //   122: astore_3
    //   123: goto -76 -> 47
    //   126: astore_3
    //   127: aconst_null
    //   128: astore 5
    //   130: aload_0
    //   131: astore 4
    //   133: aload_3
    //   134: astore_0
    //   135: aload 5
    //   137: astore_3
    //   138: goto -109 -> 29
    //   141: astore 5
    //   143: aload_0
    //   144: astore 4
    //   146: aload 5
    //   148: astore_0
    //   149: goto -120 -> 29
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	152	0	paramFile	java.io.File
    //   4	83	1	l	long
    //   25	75	3	localFileChannel	java.nio.channels.FileChannel
    //   110	1	3	localIOException1	IOException
    //   118	1	3	localIOException2	IOException
    //   122	1	3	localIOException3	IOException
    //   126	8	3	localObject1	Object
    //   137	1	3	localObject2	Object
    //   27	118	4	localObject3	Object
    //   128	8	5	localObject4	Object
    //   141	6	5	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   0	5	23	finally
    //   13	23	23	finally
    //   55	65	23	finally
    //   65	76	23	finally
    //   99	103	110	java/io/IOException
    //   103	107	114	java/io/IOException
    //   33	37	118	java/io/IOException
    //   42	47	122	java/io/IOException
    //   76	81	126	finally
    //   81	95	141	finally
  }
  
  private static final class a
    extends InputStream
  {
    private final ByteBuffer byteBuffer;
    private int cQP = -1;
    
    a(ByteBuffer paramByteBuffer)
    {
      this.byteBuffer = paramByteBuffer;
    }
    
    public final int available()
      throws IOException
    {
      return this.byteBuffer.remaining();
    }
    
    public final void mark(int paramInt)
    {
      try
      {
        this.cQP = this.byteBuffer.position();
        return;
      }
      finally
      {
        localObject = finally;
        throw ((Throwable)localObject);
      }
    }
    
    public final boolean markSupported()
    {
      return true;
    }
    
    public final int read()
      throws IOException
    {
      if (!this.byteBuffer.hasRemaining()) {
        return -1;
      }
      return this.byteBuffer.get();
    }
    
    public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      if (!this.byteBuffer.hasRemaining()) {
        return -1;
      }
      paramInt2 = Math.min(paramInt2, available());
      this.byteBuffer.get(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt2;
    }
    
    public final void reset()
      throws IOException
    {
      try
      {
        if (this.cQP == -1) {
          throw new IOException("Cannot reset to unset mark position");
        }
      }
      finally {}
      this.byteBuffer.position(this.cQP);
    }
    
    public final long skip(long paramLong)
      throws IOException
    {
      if (!this.byteBuffer.hasRemaining()) {
        return -1L;
      }
      paramLong = Math.min(paramLong, available());
      this.byteBuffer.position((int)(this.byteBuffer.position() + paramLong));
      return paramLong;
    }
  }
  
  static final class b
  {
    final byte[] data;
    final int limit;
    final int offset;
    
    b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      this.data = paramArrayOfByte;
      this.offset = paramInt1;
      this.limit = paramInt2;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/i/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */