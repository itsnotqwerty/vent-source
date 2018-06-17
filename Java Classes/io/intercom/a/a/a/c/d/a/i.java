package io.intercom.a.a.a.c.d.a;

import android.util.Log;
import io.intercom.a.a.a.c.b.a.b;
import io.intercom.a.a.a.c.f;
import io.intercom.a.a.a.c.f.a;
import io.intercom.a.a.a.i.h;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

public final class i
  implements f
{
  static final byte[] cNC = "Exif\000\000".getBytes(Charset.forName("UTF-8"));
  private static final int[] cND = { 0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8 };
  
  private static int a(b paramb)
  {
    int i = paramb.fl(6);
    ByteOrder localByteOrder;
    label54:
    int n;
    int m;
    int i1;
    if (i != 19789) {
      if (i == 18761)
      {
        localByteOrder = ByteOrder.LITTLE_ENDIAN;
        paramb.cNE.order(localByteOrder);
        int j = paramb.fk(10) + 6;
        int k = paramb.fl(j);
        i = 0;
        if (i >= k) {
          break label464;
        }
        n = j + 2 + i * 12;
        m = paramb.fl(n);
        if (m == 274)
        {
          i1 = paramb.fl(n + 2);
          if ((i1 > 0) && (i1 <= 12)) {
            break label185;
          }
          if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Got invalid format code = " + i1);
          }
        }
      }
    }
    for (;;)
    {
      i += 1;
      break label54;
      if (Log.isLoggable("DfltImageHeaderParser", 3)) {
        Log.d("DfltImageHeaderParser", "Unknown endianness = " + i);
      }
      localByteOrder = ByteOrder.BIG_ENDIAN;
      break;
      label185:
      int i2 = paramb.fk(n + 4);
      if (i2 < 0)
      {
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
          Log.d("DfltImageHeaderParser", "Negative tiff component count");
        }
      }
      else
      {
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
          Log.d("DfltImageHeaderParser", "Got tagIndex=" + i + " tagType=" + m + " formatCode=" + i1 + " componentCount=" + i2);
        }
        i2 += cND[i1];
        if (i2 > 4)
        {
          if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + i1);
          }
        }
        else
        {
          n += 8;
          if ((n < 0) || (n > paramb.cNE.remaining()))
          {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
              Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + n + " tagType=" + m);
            }
          }
          else
          {
            if ((i2 >= 0) && (n + i2 <= paramb.cNE.remaining())) {
              break label457;
            }
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
              Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + m);
            }
          }
        }
      }
    }
    label457:
    return paramb.fl(n);
    label464:
    return -1;
  }
  
  /* Error */
  private static int a(c paramc, b paramb)
    throws IOException
  {
    // Byte code:
    //   0: iconst_m1
    //   1: istore_3
    //   2: aload_0
    //   3: invokeinterface 133 1 0
    //   8: istore 4
    //   10: iload 4
    //   12: ldc -122
    //   14: iand
    //   15: ldc -122
    //   17: if_icmpeq +19 -> 36
    //   20: iload 4
    //   22: sipush 19789
    //   25: if_icmpeq +11 -> 36
    //   28: iload 4
    //   30: sipush 18761
    //   33: if_icmpne +43 -> 76
    //   36: iconst_1
    //   37: istore_2
    //   38: iload_2
    //   39: ifne +42 -> 81
    //   42: ldc 75
    //   44: iconst_3
    //   45: invokestatic 81	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   48: ifeq +26 -> 74
    //   51: ldc 75
    //   53: new 83	java/lang/StringBuilder
    //   56: dup
    //   57: ldc -120
    //   59: invokespecial 88	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   62: iload 4
    //   64: invokevirtual 92	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   67: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: invokestatic 99	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   73: pop
    //   74: iconst_m1
    //   75: ireturn
    //   76: iconst_0
    //   77: istore_2
    //   78: goto -40 -> 38
    //   81: aload_0
    //   82: invokestatic 139	io/intercom/a/a/a/c/d/a/i:b	(Lio/intercom/a/a/a/c/d/a/i$c;)I
    //   85: istore 4
    //   87: iload 4
    //   89: iconst_m1
    //   90: if_icmpne +22 -> 112
    //   93: ldc 75
    //   95: iconst_3
    //   96: invokestatic 81	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   99: ifeq -25 -> 74
    //   102: ldc 75
    //   104: ldc -115
    //   106: invokestatic 99	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   109: pop
    //   110: iconst_m1
    //   111: ireturn
    //   112: aload_1
    //   113: iload 4
    //   115: ldc -114
    //   117: invokeinterface 147 3 0
    //   122: checkcast 142	[B
    //   125: astore 6
    //   127: aload_0
    //   128: aload 6
    //   130: iload 4
    //   132: invokeinterface 151 3 0
    //   137: istore 5
    //   139: iload 5
    //   141: iload 4
    //   143: if_icmpeq +59 -> 202
    //   146: iload_3
    //   147: istore_2
    //   148: ldc 75
    //   150: iconst_3
    //   151: invokestatic 81	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   154: ifeq +38 -> 192
    //   157: ldc 75
    //   159: new 83	java/lang/StringBuilder
    //   162: dup
    //   163: ldc -103
    //   165: invokespecial 88	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   168: iload 4
    //   170: invokevirtual 92	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   173: ldc -101
    //   175: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: iload 5
    //   180: invokevirtual 92	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   183: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   186: invokestatic 99	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   189: pop
    //   190: iload_3
    //   191: istore_2
    //   192: aload_1
    //   193: aload 6
    //   195: invokeinterface 159 2 0
    //   200: iload_2
    //   201: ireturn
    //   202: aload 6
    //   204: iload 4
    //   206: invokestatic 163	io/intercom/a/a/a/c/d/a/i:e	([BI)Z
    //   209: ifeq +21 -> 230
    //   212: new 11	io/intercom/a/a/a/c/d/a/i$b
    //   215: dup
    //   216: aload 6
    //   218: iload 4
    //   220: invokespecial 166	io/intercom/a/a/a/c/d/a/i$b:<init>	([BI)V
    //   223: invokestatic 168	io/intercom/a/a/a/c/d/a/i:a	(Lio/intercom/a/a/a/c/d/a/i$b;)I
    //   226: istore_2
    //   227: goto -35 -> 192
    //   230: iload_3
    //   231: istore_2
    //   232: ldc 75
    //   234: iconst_3
    //   235: invokestatic 81	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   238: ifeq -46 -> 192
    //   241: ldc 75
    //   243: ldc -86
    //   245: invokestatic 99	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   248: pop
    //   249: iload_3
    //   250: istore_2
    //   251: goto -59 -> 192
    //   254: astore_0
    //   255: aload_1
    //   256: aload 6
    //   258: invokeinterface 159 2 0
    //   263: aload_0
    //   264: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	265	0	paramc	c
    //   0	265	1	paramb	b
    //   37	214	2	i	int
    //   1	249	3	j	int
    //   8	211	4	k	int
    //   137	42	5	m	int
    //   125	132	6	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   127	139	254	finally
    //   148	190	254	finally
    //   202	227	254	finally
    //   232	249	254	finally
  }
  
  private static f.a a(c paramc)
    throws IOException
  {
    int i = paramc.IV();
    if (i == 65496) {
      return f.a.cHS;
    }
    i = i << 16 & 0xFFFF0000 | paramc.IV() & 0xFFFF;
    if (i == -1991225785)
    {
      paramc.skip(21L);
      if (paramc.IX() >= 3) {
        return f.a.cHU;
      }
      return f.a.cHV;
    }
    if (i >> 8 == 4671814) {
      return f.a.cHR;
    }
    if (i != 1380533830) {
      return f.a.cHY;
    }
    paramc.skip(4L);
    if ((paramc.IV() << 16 & 0xFFFF0000 | paramc.IV() & 0xFFFF) != 1464156752) {
      return f.a.cHY;
    }
    i = paramc.IV() << 16 & 0xFFFF0000 | paramc.IV() & 0xFFFF;
    if ((i & 0xFF00) != 1448097792) {
      return f.a.cHY;
    }
    if ((i & 0xFF) == 88)
    {
      paramc.skip(4L);
      if ((paramc.IX() & 0x10) != 0) {
        return f.a.cHW;
      }
      return f.a.cHX;
    }
    if ((i & 0xFF) == 76)
    {
      paramc.skip(4L);
      if ((paramc.IX() & 0x8) != 0) {
        return f.a.cHW;
      }
      return f.a.cHX;
    }
    return f.a.cHX;
  }
  
  private static int b(c paramc)
    throws IOException
  {
    int i = paramc.IW();
    if (i != 255) {
      if (Log.isLoggable("DfltImageHeaderParser", 3)) {
        Log.d("DfltImageHeaderParser", "Unknown segmentId=" + i);
      }
    }
    int j;
    long l;
    do
    {
      do
      {
        do
        {
          return -1;
          i = paramc.IW();
        } while (i == 218);
        if (i != 217) {
          break;
        }
      } while (!Log.isLoggable("DfltImageHeaderParser", 3));
      Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
      return -1;
      j = paramc.IV() - 2;
      if (i == 225) {
        return j;
      }
      l = paramc.skip(j);
      if (l == j) {
        break;
      }
    } while (!Log.isLoggable("DfltImageHeaderParser", 3));
    Log.d("DfltImageHeaderParser", "Unable to skip enough data, type: " + i + ", wanted to skip: " + j + ", but actually skipped: " + l);
    return -1;
    return j;
  }
  
  private static boolean e(byte[] paramArrayOfByte, int paramInt)
  {
    boolean bool;
    if ((paramArrayOfByte != null) && (paramInt > cNC.length))
    {
      bool = true;
      if (bool) {
        paramInt = 0;
      }
    }
    else
    {
      for (;;)
      {
        if (paramInt >= cNC.length) {
          return bool;
        }
        if (paramArrayOfByte[paramInt] != cNC[paramInt])
        {
          return false;
          bool = false;
          break;
        }
        paramInt += 1;
      }
    }
    return bool;
  }
  
  public final int a(InputStream paramInputStream, b paramb)
    throws IOException
  {
    return a(new d((InputStream)h.checkNotNull(paramInputStream, "Argument must not be null")), (b)h.checkNotNull(paramb, "Argument must not be null"));
  }
  
  public final f.a a(ByteBuffer paramByteBuffer)
    throws IOException
  {
    return a(new a((ByteBuffer)h.checkNotNull(paramByteBuffer, "Argument must not be null")));
  }
  
  public final f.a p(InputStream paramInputStream)
    throws IOException
  {
    return a(new d((InputStream)h.checkNotNull(paramInputStream, "Argument must not be null")));
  }
  
  private static final class a
    implements i.c
  {
    private final ByteBuffer byteBuffer;
    
    a(ByteBuffer paramByteBuffer)
    {
      this.byteBuffer = paramByteBuffer;
      paramByteBuffer.order(ByteOrder.BIG_ENDIAN);
    }
    
    public final int IV()
      throws IOException
    {
      return IX() << 8 & 0xFF00 | IX() & 0xFF;
    }
    
    public final short IW()
      throws IOException
    {
      return (short)(IX() & 0xFF);
    }
    
    public final int IX()
      throws IOException
    {
      if (this.byteBuffer.remaining() <= 0) {
        return -1;
      }
      return this.byteBuffer.get();
    }
    
    public final int f(byte[] paramArrayOfByte, int paramInt)
      throws IOException
    {
      paramInt = Math.min(paramInt, this.byteBuffer.remaining());
      if (paramInt == 0) {
        return -1;
      }
      this.byteBuffer.get(paramArrayOfByte, 0, paramInt);
      return paramInt;
    }
    
    public final long skip(long paramLong)
      throws IOException
    {
      int i = (int)Math.min(this.byteBuffer.remaining(), paramLong);
      this.byteBuffer.position(this.byteBuffer.position() + i);
      return i;
    }
  }
  
  private static final class b
  {
    final ByteBuffer cNE;
    
    b(byte[] paramArrayOfByte, int paramInt)
    {
      this.cNE = ((ByteBuffer)ByteBuffer.wrap(paramArrayOfByte).order(ByteOrder.BIG_ENDIAN).limit(paramInt));
    }
    
    private boolean aM(int paramInt1, int paramInt2)
    {
      return this.cNE.remaining() - paramInt1 >= paramInt2;
    }
    
    final int fk(int paramInt)
    {
      if (aM(paramInt, 4)) {
        return this.cNE.getInt(paramInt);
      }
      return -1;
    }
    
    final short fl(int paramInt)
    {
      if (aM(paramInt, 2)) {
        return this.cNE.getShort(paramInt);
      }
      return -1;
    }
  }
  
  private static abstract interface c
  {
    public abstract int IV()
      throws IOException;
    
    public abstract short IW()
      throws IOException;
    
    public abstract int IX()
      throws IOException;
    
    public abstract int f(byte[] paramArrayOfByte, int paramInt)
      throws IOException;
    
    public abstract long skip(long paramLong)
      throws IOException;
  }
  
  private static final class d
    implements i.c
  {
    private final InputStream ane;
    
    d(InputStream paramInputStream)
    {
      this.ane = paramInputStream;
    }
    
    public final int IV()
      throws IOException
    {
      return this.ane.read() << 8 & 0xFF00 | this.ane.read() & 0xFF;
    }
    
    public final short IW()
      throws IOException
    {
      return (short)(this.ane.read() & 0xFF);
    }
    
    public final int IX()
      throws IOException
    {
      return this.ane.read();
    }
    
    public final int f(byte[] paramArrayOfByte, int paramInt)
      throws IOException
    {
      int i = paramInt;
      while (i > 0)
      {
        int j = this.ane.read(paramArrayOfByte, paramInt - i, i);
        if (j == -1) {
          break;
        }
        i -= j;
      }
      return paramInt - i;
    }
    
    public final long skip(long paramLong)
      throws IOException
    {
      if (paramLong < 0L) {
        return 0L;
      }
      long l1 = paramLong;
      while (l1 > 0L)
      {
        long l2 = this.ane.skip(l1);
        if (l2 > 0L)
        {
          l1 -= l2;
        }
        else
        {
          if (this.ane.read() == -1) {
            break;
          }
          l1 -= 1L;
        }
      }
      return paramLong - l1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */