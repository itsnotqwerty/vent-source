package b;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class c
  implements d, e, Cloneable
{
  private static final byte[] bMw = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  public long b;
  p cUy;
  
  private void I(byte[] paramArrayOfByte)
    throws EOFException
  {
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = d(paramArrayOfByte, i, paramArrayOfByte.length - i);
      if (j == -1) {
        throw new EOFException();
      }
      i += j;
    }
  }
  
  private c Lh()
  {
    c localc = new c();
    if (this.b == 0L) {
      return localc;
    }
    localc.cUy = new p(this.cUy);
    p localp1 = localc.cUy;
    p localp2 = localc.cUy;
    p localp3 = localc.cUy;
    localp2.cUQ = localp3;
    localp1.cUP = localp3;
    for (localp1 = this.cUy.cUP; localp1 != this.cUy; localp1 = localp1.cUP) {
      localc.cUy.cUQ.a(new p(localp1));
    }
    localc.b = this.b;
    return localc;
  }
  
  private String aq(long paramLong)
    throws EOFException
  {
    return b(paramLong, u.cUR);
  }
  
  private String b(long paramLong, Charset paramCharset)
    throws EOFException
  {
    u.a(this.b, 0L, paramLong);
    if (paramCharset == null) {
      throw new IllegalArgumentException("charset == null");
    }
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    }
    if (paramLong == 0L) {
      paramCharset = "";
    }
    p localp;
    String str;
    do
    {
      return paramCharset;
      localp = this.cUy;
      if (localp.b + paramLong > localp.c) {
        return new String(as(paramLong), paramCharset);
      }
      str = new String(localp.bIG, localp.b, (int)paramLong, paramCharset);
      localp.b = ((int)(localp.b + paramLong));
      this.b -= paramLong;
      paramCharset = str;
    } while (localp.b != localp.c);
    this.cUy = localp.Lp();
    q.b(localp);
    return str;
  }
  
  public final c J(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("source == null");
    }
    return e(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public final c KU()
  {
    return this;
  }
  
  public final OutputStream KV()
  {
    new OutputStream()
    {
      public final void close() {}
      
      public final void flush() {}
      
      public final String toString()
      {
        return this + ".outputStream()";
      }
      
      public final void write(int paramAnonymousInt)
      {
        c.this.fF((byte)paramAnonymousInt);
      }
      
      public final void write(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        c.this.e(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
      }
    };
  }
  
  public final d KW()
  {
    return this;
  }
  
  public final byte KX()
  {
    if (this.b == 0L) {
      throw new IllegalStateException("size == 0");
    }
    p localp = this.cUy;
    int i = localp.b;
    int j = localp.c;
    byte[] arrayOfByte = localp.bIG;
    int k = i + 1;
    byte b1 = arrayOfByte[i];
    this.b -= 1L;
    if (k == j)
    {
      this.cUy = localp.Lp();
      q.b(localp);
      return b1;
    }
    localp.b = k;
    return b1;
  }
  
  public final short KY()
  {
    if (this.b < 2L) {
      throw new IllegalStateException("size < 2: " + this.b);
    }
    p localp = this.cUy;
    int k = localp.b;
    int i = localp.c;
    if (i - k < 2) {
      return (short)((KX() & 0xFF) << 8 | KX() & 0xFF);
    }
    byte[] arrayOfByte = localp.bIG;
    int j = k + 1;
    k = arrayOfByte[k];
    int m = j + 1;
    j = arrayOfByte[j];
    this.b -= 2L;
    if (m == i)
    {
      this.cUy = localp.Lp();
      q.b(localp);
    }
    for (;;)
    {
      return (short)((k & 0xFF) << 8 | j & 0xFF);
      localp.b = m;
    }
  }
  
  public final int KZ()
  {
    if (this.b < 4L) {
      throw new IllegalStateException("size < 4: " + this.b);
    }
    p localp = this.cUy;
    int j = localp.b;
    int i = localp.c;
    if (i - j < 4) {
      return (KX() & 0xFF) << 24 | (KX() & 0xFF) << 16 | (KX() & 0xFF) << 8 | KX() & 0xFF;
    }
    byte[] arrayOfByte = localp.bIG;
    int k = j + 1;
    j = arrayOfByte[j];
    int n = k + 1;
    k = arrayOfByte[k];
    int m = n + 1;
    int i1 = arrayOfByte[n];
    n = m + 1;
    j = (j & 0xFF) << 24 | (k & 0xFF) << 16 | (i1 & 0xFF) << 8 | arrayOfByte[m] & 0xFF;
    this.b -= 4L;
    if (n == i)
    {
      this.cUy = localp.Lp();
      q.b(localp);
      return j;
    }
    localp.b = n;
    return j;
  }
  
  public final short La()
  {
    return u.b(KY());
  }
  
  public final int Lb()
  {
    return u.dU(KZ());
  }
  
  public final long Lc()
  {
    if (this.b == 0L) {
      throw new IllegalStateException("size == 0");
    }
    int k = 0;
    int i = 0;
    long l = 0L;
    for (;;)
    {
      Object localObject = this.cUy;
      byte[] arrayOfByte = ((p)localObject).bIG;
      int m = ((p)localObject).b;
      int n = ((p)localObject).c;
      int j = k;
      if (m < n)
      {
        int i1 = arrayOfByte[m];
        if ((i1 >= 48) && (i1 <= 57)) {
          j = i1 - 48;
        }
        for (;;)
        {
          if ((0xF000000000000000 & l) == 0L) {
            break label279;
          }
          localObject = new c().au(l).fF(i1);
          throw new NumberFormatException("Number too large: " + ((c)localObject).Le());
          if ((i1 >= 97) && (i1 <= 102))
          {
            j = i1 - 97 + 10;
          }
          else
          {
            if ((i1 < 65) || (i1 > 70)) {
              break;
            }
            j = i1 - 65 + 10;
          }
        }
        if (i == 0) {
          throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(i1));
        }
        j = 1;
      }
      if (m == n)
      {
        this.cUy = ((p)localObject).Lp();
        q.b((p)localObject);
      }
      for (;;)
      {
        if ((j == 0) && (this.cUy != null)) {
          break label311;
        }
        this.b -= i;
        return l;
        label279:
        l = l << 4 | j;
        i += 1;
        m += 1;
        break;
        ((p)localObject).b = m;
      }
      label311:
      k = j;
    }
  }
  
  public final f Ld()
  {
    return new f(Lg());
  }
  
  public final String Le()
  {
    try
    {
      String str = b(this.b, u.cUR);
      return str;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public final String Lf()
    throws EOFException
  {
    long l = a((byte)10, 0L);
    if (l == -1L)
    {
      c localc = new c();
      a(localc, 0L, Math.min(32L, this.b));
      throw new EOFException("\\n not found: size=" + this.b + " content=" + localc.Ld().d() + "...");
    }
    return ar(l);
  }
  
  public final byte[] Lg()
  {
    try
    {
      byte[] arrayOfByte = as(this.b);
      return arrayOfByte;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public final long a(byte paramByte, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("fromIndex < 0");
    }
    Object localObject1 = this.cUy;
    if (localObject1 == null) {
      return -1L;
    }
    long l1 = 0L;
    int i = ((p)localObject1).c - ((p)localObject1).b;
    if (paramLong >= i) {}
    for (paramLong -= i;; paramLong = 0L)
    {
      l1 += i;
      Object localObject2 = ((p)localObject1).cUP;
      localObject1 = localObject2;
      if (localObject2 != this.cUy) {
        break;
      }
      return -1L;
      localObject2 = ((p)localObject1).bIG;
      paramLong = ((p)localObject1).b + paramLong;
      long l2 = ((p)localObject1).c;
      while (paramLong < l2)
      {
        if (localObject2[((int)paramLong)] == paramByte) {
          return l1 + paramLong - ((p)localObject1).b;
        }
        paramLong += 1L;
      }
    }
  }
  
  public final long a(s params)
    throws IOException
  {
    if (params == null) {
      throw new IllegalArgumentException("source == null");
    }
    long l2;
    for (long l1 = 0L;; l1 += l2)
    {
      l2 = params.b(this, 2048L);
      if (l2 == -1L) {
        break;
      }
    }
    return l1;
  }
  
  public final c a(c paramc, long paramLong1, long paramLong2)
  {
    if (paramc == null) {
      throw new IllegalArgumentException("out == null");
    }
    u.a(this.b, paramLong1, paramLong2);
    if (paramLong2 == 0L) {
      return this;
    }
    paramc.b += paramLong2;
    p localp2;
    long l1;
    long l2;
    for (p localp1 = this.cUy;; localp1 = localp1.cUP)
    {
      localp2 = localp1;
      l1 = paramLong1;
      l2 = paramLong2;
      if (paramLong1 < localp1.c - localp1.b) {
        break;
      }
      paramLong1 -= localp1.c - localp1.b;
    }
    label104:
    if (l2 > 0L)
    {
      localp1 = new p(localp2);
      localp1.b = ((int)(localp1.b + l1));
      localp1.c = Math.min(localp1.b + (int)l2, localp1.c);
      if (paramc.cUy != null) {
        break label216;
      }
      localp1.cUQ = localp1;
      localp1.cUP = localp1;
      paramc.cUy = localp1;
    }
    for (;;)
    {
      l2 -= localp1.c - localp1.b;
      localp2 = localp2.cUP;
      l1 = 0L;
      break label104;
      break;
      label216:
      paramc.cUy.cUQ.a(localp1);
    }
  }
  
  public final void a(long paramLong)
    throws EOFException
  {
    if (this.b < paramLong) {
      throw new EOFException();
    }
  }
  
  public final void a(c paramc, long paramLong)
  {
    if (paramc == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramc == this) {
      throw new IllegalArgumentException("source == this");
    }
    u.a(paramc.b, 0L, paramLong);
    if (paramLong > 0L)
    {
      if (paramLong >= paramc.cUy.c - paramc.cUy.b) {
        break label270;
      }
      if (this.cUy == null) {
        break label161;
      }
      localp1 = this.cUy.cUQ;
      if ((localp1 == null) || (!localp1.e)) {
        break label177;
      }
      l = localp1.c;
      if (!localp1.d) {
        break label167;
      }
    }
    label161:
    label167:
    for (int i = 0;; i = localp1.b)
    {
      if (l + paramLong - i > 2048L) {
        break label177;
      }
      paramc.cUy.a(localp1, (int)paramLong);
      paramc.b -= paramLong;
      this.b += paramLong;
      return;
      localp1 = null;
      break;
    }
    label177:
    p localp1 = paramc.cUy;
    i = (int)paramLong;
    if ((i <= 0) || (i > localp1.c - localp1.b)) {
      throw new IllegalArgumentException();
    }
    p localp2 = new p(localp1);
    localp2.c = (localp2.b + i);
    localp1.b = (i + localp1.b);
    localp1.cUQ.a(localp2);
    paramc.cUy = localp2;
    label270:
    localp1 = paramc.cUy;
    long l = localp1.c - localp1.b;
    paramc.cUy = localp1.Lp();
    if (this.cUy == null)
    {
      this.cUy = localp1;
      localp1 = this.cUy;
      localp2 = this.cUy;
      p localp3 = this.cUy;
      localp2.cUQ = localp3;
      localp1.cUP = localp3;
    }
    label505:
    for (;;)
    {
      paramc.b -= l;
      this.b += l;
      paramLong -= l;
      break;
      localp1 = this.cUy.cUQ.a(localp1);
      if (localp1.cUQ == localp1) {
        throw new IllegalStateException();
      }
      if (localp1.cUQ.e)
      {
        int j = localp1.c - localp1.b;
        int k = localp1.cUQ.c;
        if (localp1.cUQ.d) {}
        for (i = 0;; i = localp1.cUQ.b)
        {
          if (j > i + (2048 - k)) {
            break label505;
          }
          localp1.a(localp1.cUQ, j);
          localp1.Lp();
          q.b(localp1);
          break;
        }
      }
    }
  }
  
  public final byte ao(long paramLong)
  {
    u.a(this.b, paramLong, 1L);
    for (p localp = this.cUy;; localp = localp.cUP)
    {
      int i = localp.c - localp.b;
      if (paramLong < i) {
        return localp.bIG[(localp.b + (int)paramLong)];
      }
      paramLong -= i;
    }
  }
  
  public final f ap(long paramLong)
    throws EOFException
  {
    return new f(as(paramLong));
  }
  
  final String ar(long paramLong)
    throws EOFException
  {
    if ((paramLong > 0L) && (ao(paramLong - 1L) == 13))
    {
      str = aq(paramLong - 1L);
      at(2L);
      return str;
    }
    String str = aq(paramLong);
    at(1L);
    return str;
  }
  
  public final byte[] as(long paramLong)
    throws EOFException
  {
    u.a(this.b, 0L, paramLong);
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    }
    byte[] arrayOfByte = new byte[(int)paramLong];
    I(arrayOfByte);
    return arrayOfByte;
  }
  
  public final void at(long paramLong)
    throws EOFException
  {
    while (paramLong > 0L)
    {
      if (this.cUy == null) {
        throw new EOFException();
      }
      int i = (int)Math.min(paramLong, this.cUy.c - this.cUy.b);
      this.b -= i;
      long l = paramLong - i;
      p localp = this.cUy;
      localp.b = (i + localp.b);
      paramLong = l;
      if (this.cUy.b == this.cUy.c)
      {
        localp = this.cUy;
        this.cUy = localp.Lp();
        q.b(localp);
        paramLong = l;
      }
    }
  }
  
  public final c au(long paramLong)
  {
    if (paramLong == 0L) {
      return fF(48);
    }
    int j = Long.numberOfTrailingZeros(Long.highestOneBit(paramLong)) / 4 + 1;
    p localp = fI(j);
    byte[] arrayOfByte = localp.bIG;
    int i = localp.c + j - 1;
    int k = localp.c;
    while (i >= k)
    {
      arrayOfByte[i] = bMw[((int)(0xF & paramLong))];
      paramLong >>>= 4;
      i -= 1;
    }
    localp.c += j;
    paramLong = this.b;
    this.b = (j + paramLong);
    return this;
  }
  
  public final long b(c paramc, long paramLong)
  {
    if (paramc == null) {
      throw new IllegalArgumentException("sink == null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.b == 0L) {
      return -1L;
    }
    long l = paramLong;
    if (paramLong > this.b) {
      l = this.b;
    }
    paramc.a(this, l);
    return l;
  }
  
  public final c c(f paramf)
  {
    if (paramf == null) {
      throw new IllegalArgumentException("byteString == null");
    }
    e(paramf.bMw, 0, paramf.bMw.length);
    return this;
  }
  
  public final void close() {}
  
  public final int d(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    u.a(paramArrayOfByte.length, paramInt1, paramInt2);
    p localp = this.cUy;
    if (localp == null) {
      paramInt1 = -1;
    }
    do
    {
      return paramInt1;
      paramInt2 = Math.min(paramInt2, localp.c - localp.b);
      System.arraycopy(localp.bIG, localp.b, paramArrayOfByte, paramInt1, paramInt2);
      localp.b += paramInt2;
      this.b -= paramInt2;
      paramInt1 = paramInt2;
    } while (localp.b != localp.c);
    this.cUy = localp.Lp();
    q.b(localp);
    return paramInt2;
  }
  
  public final c e(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("source == null");
    }
    u.a(paramArrayOfByte.length, paramInt1, paramInt2);
    int i = paramInt1 + paramInt2;
    while (paramInt1 < i)
    {
      p localp = fI(1);
      int j = Math.min(i - paramInt1, 2048 - localp.c);
      System.arraycopy(paramArrayOfByte, paramInt1, localp.bIG, localp.c, j);
      paramInt1 += j;
      localp.c = (j + localp.c);
    }
    this.b += paramInt2;
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    long l1 = 0L;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof c)) {
      return false;
    }
    paramObject = (c)paramObject;
    if (this.b != ((c)paramObject).b) {
      return false;
    }
    if (this.b == 0L) {
      return true;
    }
    Object localObject2 = this.cUy;
    paramObject = ((c)paramObject).cUy;
    int j = ((p)localObject2).b;
    int i = ((p)paramObject).b;
    while (l1 < this.b)
    {
      long l2 = Math.min(((p)localObject2).c - j, ((p)paramObject).c - i);
      int k = 0;
      while (k < l2)
      {
        if (localObject2.bIG[j] != paramObject.bIG[i]) {
          return false;
        }
        k += 1;
        i += 1;
        j += 1;
      }
      k = j;
      Object localObject1 = localObject2;
      if (j == ((p)localObject2).c)
      {
        localObject1 = ((p)localObject2).cUP;
        k = ((p)localObject1).b;
      }
      j = i;
      Object localObject3 = paramObject;
      if (i == ((p)paramObject).c)
      {
        localObject3 = ((p)paramObject).cUP;
        j = ((p)localObject3).b;
      }
      l1 += l2;
      i = j;
      j = k;
      localObject2 = localObject1;
      paramObject = localObject3;
    }
    return true;
  }
  
  public final long f(byte paramByte)
  {
    return a(paramByte, 0L);
  }
  
  public final c fE(int paramInt)
  {
    if (paramInt < 128)
    {
      fF(paramInt);
      return this;
    }
    if (paramInt < 2048)
    {
      fF(paramInt >> 6 | 0xC0);
      fF(paramInt & 0x3F | 0x80);
      return this;
    }
    if (paramInt < 65536)
    {
      if ((paramInt >= 55296) && (paramInt <= 57343)) {
        throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(paramInt));
      }
      fF(paramInt >> 12 | 0xE0);
      fF(paramInt >> 6 & 0x3F | 0x80);
      fF(paramInt & 0x3F | 0x80);
      return this;
    }
    if (paramInt <= 1114111)
    {
      fF(paramInt >> 18 | 0xF0);
      fF(paramInt >> 12 & 0x3F | 0x80);
      fF(paramInt >> 6 & 0x3F | 0x80);
      fF(paramInt & 0x3F | 0x80);
      return this;
    }
    throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(paramInt));
  }
  
  public final c fF(int paramInt)
  {
    p localp = fI(1);
    byte[] arrayOfByte = localp.bIG;
    int i = localp.c;
    localp.c = (i + 1);
    arrayOfByte[i] = ((byte)paramInt);
    this.b += 1L;
    return this;
  }
  
  public final c fG(int paramInt)
  {
    p localp = fI(2);
    byte[] arrayOfByte = localp.bIG;
    int i = localp.c;
    int j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[j] = ((byte)(paramInt & 0xFF));
    localp.c = (j + 1);
    this.b += 2L;
    return this;
  }
  
  public final c fH(int paramInt)
  {
    p localp = fI(4);
    byte[] arrayOfByte = localp.bIG;
    int j = localp.c;
    int i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 24 & 0xFF));
    j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 16 & 0xFF));
    i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[i] = ((byte)(paramInt & 0xFF));
    localp.c = (i + 1);
    this.b += 4L;
    return this;
  }
  
  final p fI(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > 2048)) {
      throw new IllegalArgumentException();
    }
    p localp2;
    p localp1;
    if (this.cUy == null)
    {
      this.cUy = q.Lp();
      localp2 = this.cUy;
      p localp3 = this.cUy;
      localp1 = this.cUy;
      localp3.cUQ = localp1;
      localp2.cUP = localp1;
    }
    do
    {
      return localp1;
      localp2 = this.cUy.cUQ;
      if (localp2.c + paramInt > 2048) {
        break;
      }
      localp1 = localp2;
    } while (localp2.e);
    return localp2.a(q.Lp());
  }
  
  public final c fl(String paramString)
  {
    return n(paramString, 0, paramString.length());
  }
  
  public final void flush() {}
  
  public final InputStream h()
  {
    new InputStream()
    {
      public final int available()
      {
        return (int)Math.min(c.this.b, 2147483647L);
      }
      
      public final void close() {}
      
      public final int read()
      {
        if (c.this.b > 0L) {
          return c.this.KX() & 0xFF;
        }
        return -1;
      }
      
      public final int read(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        return c.this.d(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
      }
      
      public final String toString()
      {
        return c.this + ".inputStream()";
      }
    };
  }
  
  public final int hashCode()
  {
    Object localObject = this.cUy;
    if (localObject == null) {
      return 0;
    }
    int i = 1;
    int j;
    p localp;
    do
    {
      int k = ((p)localObject).b;
      int m = ((p)localObject).c;
      j = i;
      while (k < m)
      {
        j = j * 31 + localObject.bIG[k];
        k += 1;
      }
      localp = ((p)localObject).cUP;
      i = j;
      localObject = localp;
    } while (localp != this.cUy);
    return j;
  }
  
  public final c n(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("string == null");
    }
    if (paramInt1 < 0) {
      throw new IllegalAccessError("beginIndex < 0: " + paramInt1);
    }
    if (paramInt2 < paramInt1) {
      throw new IllegalArgumentException("endIndex < beginIndex: " + paramInt2 + " < " + paramInt1);
    }
    int k;
    p localp;
    int i;
    if (paramInt2 > paramString.length())
    {
      throw new IllegalArgumentException("endIndex > string.length: " + paramInt2 + " > " + paramString.length());
      i = paramInt1 + k - localp.c;
      localp.c += i;
      this.b += i;
    }
    for (;;)
    {
      if (paramInt1 >= paramInt2) {
        return this;
      }
      int j = paramString.charAt(paramInt1);
      if (j < 128)
      {
        localp = fI(1);
        byte[] arrayOfByte = localp.bIG;
        k = localp.c - paramInt1;
        int m = Math.min(paramInt2, 2048 - k);
        i = paramInt1 + 1;
        arrayOfByte[(k + paramInt1)] = ((byte)j);
        paramInt1 = i;
        for (;;)
        {
          if (paramInt1 >= m) {
            break label276;
          }
          i = paramString.charAt(paramInt1);
          if (i >= 128) {
            break;
          }
          arrayOfByte[(paramInt1 + k)] = ((byte)i);
          paramInt1 += 1;
        }
        label276:
        break;
      }
      if (j < 2048)
      {
        fF(j >> 6 | 0xC0);
        fF(j & 0x3F | 0x80);
        paramInt1 += 1;
      }
      else if ((j < 55296) || (j > 57343))
      {
        fF(j >> 12 | 0xE0);
        fF(j >> 6 & 0x3F | 0x80);
        fF(j & 0x3F | 0x80);
        paramInt1 += 1;
      }
      else
      {
        if (paramInt1 + 1 < paramInt2) {}
        for (i = paramString.charAt(paramInt1 + 1);; i = 0)
        {
          if ((j <= 56319) && (i >= 56320) && (i <= 57343)) {
            break label449;
          }
          fF(63);
          paramInt1 += 1;
          break;
        }
        label449:
        i = (i & 0xFFFF23FF | (j & 0xFFFF27FF) << 10) + 65536;
        fF(i >> 18 | 0xF0);
        fF(i >> 12 & 0x3F | 0x80);
        fF(i >> 6 & 0x3F | 0x80);
        fF(i & 0x3F | 0x80);
        paramInt1 += 2;
      }
    }
    return this;
  }
  
  public final void t()
  {
    try
    {
      at(this.b);
      return;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public final String toString()
  {
    if (this.b == 0L) {
      return "Buffer[size=0]";
    }
    Object localObject;
    if (this.b <= 16L)
    {
      localObject = Lh().Ld();
      return String.format("Buffer[size=%s data=%s]", new Object[] { Long.valueOf(this.b), ((f)localObject).d() });
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(this.cUy.bIG, this.cUy.b, this.cUy.c - this.cUy.b);
      for (localObject = this.cUy.cUP; localObject != this.cUy; localObject = ((p)localObject).cUP) {
        localMessageDigest.update(((p)localObject).bIG, ((p)localObject).b, ((p)localObject).c - ((p)localObject).b);
      }
      localObject = String.format("Buffer[size=%s md5=%s]", new Object[] { Long.valueOf(this.b), f.L(localMessageDigest.digest()).d() });
      return (String)localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new AssertionError();
    }
  }
  
  public final boolean xi()
  {
    return this.b == 0L;
  }
  
  public final t zA()
  {
    return t.cUH;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */