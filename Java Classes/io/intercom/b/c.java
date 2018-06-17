package io.intercom.b;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

public final class c
  implements d, e, Cloneable, ByteChannel
{
  private static final byte[] cTV = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  @Nullable
  o cTW;
  public long size;
  
  private String a(long paramLong, Charset paramCharset)
    throws EOFException
  {
    u.checkOffsetAndCount(this.size, 0L, paramLong);
    if (paramCharset == null) {
      throw new IllegalArgumentException("charset == null");
    }
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    }
    if (paramLong == 0L) {
      paramCharset = "";
    }
    o localo;
    String str;
    do
    {
      return paramCharset;
      localo = this.cTW;
      if (localo.pos + paramLong > localo.limit) {
        return new String(ag(paramLong), paramCharset);
      }
      str = new String(localo.data, localo.pos, (int)paramLong, paramCharset);
      localo.pos = ((int)(localo.pos + paramLong));
      this.size -= paramLong;
      paramCharset = str;
    } while (localo.pos != localo.limit);
    this.cTW = localo.KO();
    p.b(localo);
    return str;
  }
  
  private String ad(long paramLong)
    throws EOFException
  {
    return a(paramLong, u.UTF_8);
  }
  
  public final c F(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("source == null");
    }
    return b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public final byte[] KA()
  {
    try
    {
      byte[] arrayOfByte = ag(this.size);
      return arrayOfByte;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public final long KB()
  {
    return a((byte)0, 0L, Long.MAX_VALUE);
  }
  
  public final c KC()
  {
    c localc = new c();
    if (this.size == 0L) {
      return localc;
    }
    localc.cTW = this.cTW.KN();
    o localo1 = localc.cTW;
    o localo2 = localc.cTW;
    o localo3 = localc.cTW;
    localo2.cUp = localo3;
    localo1.cUo = localo3;
    for (localo1 = this.cTW.cUo; localo1 != this.cTW; localo1 = localo1.cUo) {
      localc.cTW.cUp.a(localo1.KN());
    }
    localc.size = this.size;
    return localc;
  }
  
  public final c Kp()
  {
    return this;
  }
  
  public final d Kq()
  {
    return this;
  }
  
  public final boolean Kr()
  {
    return this.size == 0L;
  }
  
  public final InputStream Ks()
  {
    new InputStream()
    {
      public final int available()
      {
        return (int)Math.min(c.this.size, 2147483647L);
      }
      
      public final void close() {}
      
      public final int read()
      {
        if (c.this.size > 0L) {
          return c.this.readByte() & 0xFF;
        }
        return -1;
      }
      
      public final int read(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        return c.this.read(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
      }
      
      public final String toString()
      {
        return c.this + ".inputStream()";
      }
    };
  }
  
  public final long Kt()
  {
    long l2 = this.size;
    long l1;
    if (l2 == 0L) {
      l1 = 0L;
    }
    o localo;
    do
    {
      do
      {
        return l1;
        localo = this.cTW.cUp;
        l1 = l2;
      } while (localo.limit >= 8192);
      l1 = l2;
    } while (!localo.cUn);
    return l2 - (localo.limit - localo.pos);
  }
  
  public final short Ku()
  {
    return u.a(readShort());
  }
  
  public final int Kv()
  {
    return u.fD(readInt());
  }
  
  public final long Kw()
  {
    if (this.size == 0L) {
      throw new IllegalStateException("size == 0");
    }
    long l2 = 0L;
    int n = 0;
    int i1 = 0;
    int i = 0;
    long l3 = -7L;
    Object localObject = this.cTW;
    byte[] arrayOfByte = ((o)localObject).data;
    int m = ((o)localObject).pos;
    int i2 = ((o)localObject).limit;
    long l1 = l2;
    int j = n;
    int k = i1;
    l2 = l3;
    n = i;
    if (m < i2)
    {
      n = arrayOfByte[m];
      if ((n >= 48) && (n <= 57))
      {
        i1 = 48 - n;
        if ((l1 < -922337203685477580L) || ((l1 == -922337203685477580L) && (i1 < l2)))
        {
          localObject = new c().aj(l1).fv(n);
          if (k == 0) {
            ((c)localObject).readByte();
          }
          throw new NumberFormatException("Number too large: " + ((c)localObject).Ky());
        }
        l1 = l1 * 10L + i1;
      }
      for (;;)
      {
        m += 1;
        j += 1;
        break;
        if ((n != 45) || (j != 0)) {
          break label245;
        }
        k = 1;
        l2 -= 1L;
      }
      label245:
      if (j == 0) {
        throw new NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + Integer.toHexString(n));
      }
      n = 1;
    }
    if (m == i2)
    {
      this.cTW = ((o)localObject).KO();
      p.b((o)localObject);
    }
    for (;;)
    {
      if (n == 0)
      {
        l3 = l2;
        i = n;
        i1 = k;
        n = j;
        l2 = l1;
        if (this.cTW != null) {
          break;
        }
      }
      this.size -= j;
      if (k == 0) {
        break label358;
      }
      return l1;
      ((o)localObject).pos = m;
    }
    label358:
    return -l1;
  }
  
  public final long Kx()
  {
    if (this.size == 0L) {
      throw new IllegalStateException("size == 0");
    }
    int k = 0;
    int i = 0;
    long l = 0L;
    for (;;)
    {
      Object localObject = this.cTW;
      byte[] arrayOfByte = ((o)localObject).data;
      int m = ((o)localObject).pos;
      int n = ((o)localObject).limit;
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
          localObject = new c().ak(l).fv(i1);
          throw new NumberFormatException("Number too large: " + ((c)localObject).Ky());
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
        this.cTW = ((o)localObject).KO();
        p.b((o)localObject);
      }
      for (;;)
      {
        if ((j == 0) && (this.cTW != null)) {
          break label311;
        }
        this.size -= i;
        return l;
        label279:
        l = l << 4 | j;
        i += 1;
        m += 1;
        break;
        ((o)localObject).pos = m;
      }
      label311:
      k = j;
    }
  }
  
  public final String Ky()
  {
    try
    {
      String str = a(this.size, u.UTF_8);
      return str;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public final String Kz()
    throws EOFException
  {
    return ae(Long.MAX_VALUE);
  }
  
  public final void Z(long paramLong)
    throws EOFException
  {
    if (this.size < paramLong) {
      throw new EOFException();
    }
  }
  
  public final long a(byte paramByte, long paramLong1, long paramLong2)
  {
    if ((paramLong1 < 0L) || (paramLong2 < paramLong1)) {
      throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", new Object[] { Long.valueOf(this.size), Long.valueOf(paramLong1), Long.valueOf(paramLong2) }));
    }
    long l2 = paramLong2;
    if (paramLong2 > this.size) {
      l2 = this.size;
    }
    if (paramLong1 == l2) {
      return -1L;
    }
    Object localObject1 = this.cTW;
    if (localObject1 == null) {
      return -1L;
    }
    if (this.size - paramLong1 < paramLong1)
    {
      l1 = this.size;
      localObject2 = localObject1;
      for (;;)
      {
        paramLong2 = l1;
        localObject1 = localObject2;
        if (l1 <= paramLong1) {
          break;
        }
        localObject2 = ((o)localObject2).cUp;
        l1 -= ((o)localObject2).limit - ((o)localObject2).pos;
      }
    }
    paramLong2 = 0L;
    Object localObject2 = localObject1;
    for (;;)
    {
      l1 = ((o)localObject2).limit - ((o)localObject2).pos + paramLong2;
      localObject1 = localObject2;
      if (l1 >= paramLong1) {
        break;
      }
      localObject2 = ((o)localObject2).cUo;
      paramLong2 = l1;
    }
    paramLong2 = ((o)localObject1).limit - ((o)localObject1).pos + paramLong2;
    localObject1 = ((o)localObject1).cUo;
    paramLong1 = paramLong2;
    long l1 = paramLong2;
    paramLong2 = paramLong1;
    for (;;)
    {
      if (paramLong2 < l2)
      {
        localObject2 = ((o)localObject1).data;
        int j = (int)Math.min(((o)localObject1).limit, ((o)localObject1).pos + l2 - paramLong2);
        int i = (int)(((o)localObject1).pos + l1 - paramLong2);
        while (i < j)
        {
          if (localObject2[i] == paramByte) {
            return i - ((o)localObject1).pos + paramLong2;
          }
          i += 1;
        }
        break;
      }
      return -1L;
      l1 = paramLong1;
    }
  }
  
  public final long a(r paramr)
    throws IOException
  {
    long l = this.size;
    if (l > 0L) {
      paramr.write(this, l);
    }
    return l;
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
      l2 = params.read(this, 8192L);
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
    u.checkOffsetAndCount(this.size, paramLong1, paramLong2);
    if (paramLong2 == 0L) {
      return this;
    }
    paramc.size += paramLong2;
    o localo2;
    long l1;
    long l2;
    for (o localo1 = this.cTW;; localo1 = localo1.cUo)
    {
      localo2 = localo1;
      l1 = paramLong1;
      l2 = paramLong2;
      if (paramLong1 < localo1.limit - localo1.pos) {
        break;
      }
      paramLong1 -= localo1.limit - localo1.pos;
    }
    label104:
    if (l2 > 0L)
    {
      localo1 = localo2.KN();
      localo1.pos = ((int)(localo1.pos + l1));
      localo1.limit = Math.min(localo1.pos + (int)l2, localo1.limit);
      if (paramc.cTW != null) {
        break label212;
      }
      localo1.cUp = localo1;
      localo1.cUo = localo1;
      paramc.cTW = localo1;
    }
    for (;;)
    {
      l2 -= localo1.limit - localo1.pos;
      localo2 = localo2.cUo;
      l1 = 0L;
      break label104;
      break;
      label212:
      paramc.cTW.cUp.a(localo1);
    }
  }
  
  public final c a(f paramf)
  {
    if (paramf == null) {
      throw new IllegalArgumentException("byteString == null");
    }
    paramf.a(this);
    return this;
  }
  
  public final c a(String paramString, int paramInt1, int paramInt2, Charset paramCharset)
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
    if (paramInt2 > paramString.length()) {
      throw new IllegalArgumentException("endIndex > string.length: " + paramInt2 + " > " + paramString.length());
    }
    if (paramCharset == null) {
      throw new IllegalArgumentException("charset == null");
    }
    if (paramCharset.equals(u.UTF_8)) {
      return l(paramString, paramInt1, paramInt2);
    }
    paramString = paramString.substring(paramInt1, paramInt2).getBytes(paramCharset);
    return b(paramString, 0, paramString.length);
  }
  
  public final String a(Charset paramCharset)
  {
    try
    {
      paramCharset = a(this.size, paramCharset);
      return paramCharset;
    }
    catch (EOFException paramCharset)
    {
      throw new AssertionError(paramCharset);
    }
  }
  
  public final void a(c paramc, long paramLong)
    throws EOFException
  {
    if (this.size < paramLong)
    {
      paramc.write(this, this.size);
      throw new EOFException();
    }
    paramc.write(this, paramLong);
  }
  
  public final boolean aa(long paramLong)
  {
    return this.size >= paramLong;
  }
  
  public final byte ab(long paramLong)
  {
    u.checkOffsetAndCount(this.size, paramLong, 1L);
    if (this.size - paramLong > paramLong) {
      for (localo = this.cTW;; localo = localo.cUo)
      {
        int i = localo.limit - localo.pos;
        if (paramLong < i) {
          return localo.data[(localo.pos + (int)paramLong)];
        }
        paramLong -= i;
      }
    }
    paramLong -= this.size;
    for (o localo = this.cTW.cUp;; localo = localo.cUp)
    {
      paramLong += localo.limit - localo.pos;
      if (paramLong >= 0L) {
        return localo.data[(localo.pos + (int)paramLong)];
      }
    }
  }
  
  public final f ac(long paramLong)
    throws EOFException
  {
    return new f(ag(paramLong));
  }
  
  public final String ae(long paramLong)
    throws EOFException
  {
    long l1 = Long.MAX_VALUE;
    if (paramLong < 0L) {
      throw new IllegalArgumentException("limit < 0: " + paramLong);
    }
    if (paramLong == Long.MAX_VALUE) {}
    for (;;)
    {
      long l2 = a((byte)10, 0L, l1);
      if (l2 == -1L) {
        break;
      }
      return af(l2);
      l1 = paramLong + 1L;
    }
    if ((l1 < this.size) && (ab(l1 - 1L) == 13) && (ab(l1) == 10)) {
      return af(l1);
    }
    c localc = new c();
    a(localc, 0L, Math.min(32L, this.size));
    throw new EOFException("\\n not found: limit=" + Math.min(this.size, paramLong) + " content=" + localc.readByteString().KJ() + '…');
  }
  
  final String af(long paramLong)
    throws EOFException
  {
    if ((paramLong > 0L) && (ab(paramLong - 1L) == 13))
    {
      str = ad(paramLong - 1L);
      ah(2L);
      return str;
    }
    String str = ad(paramLong);
    ah(1L);
    return str;
  }
  
  public final byte[] ag(long paramLong)
    throws EOFException
  {
    u.checkOffsetAndCount(this.size, 0L, paramLong);
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    }
    byte[] arrayOfByte = new byte[(int)paramLong];
    readFully(arrayOfByte);
    return arrayOfByte;
  }
  
  public final void ah(long paramLong)
    throws EOFException
  {
    while (paramLong > 0L)
    {
      if (this.cTW == null) {
        throw new EOFException();
      }
      int i = (int)Math.min(paramLong, this.cTW.limit - this.cTW.pos);
      this.size -= i;
      long l = paramLong - i;
      o localo = this.cTW;
      localo.pos = (i + localo.pos);
      paramLong = l;
      if (this.cTW.pos == this.cTW.limit)
      {
        localo = this.cTW;
        this.cTW = localo.KO();
        p.b(localo);
        paramLong = l;
      }
    }
  }
  
  public final c ai(long paramLong)
  {
    o localo = fy(8);
    byte[] arrayOfByte = localo.data;
    int j = localo.limit;
    int i = j + 1;
    arrayOfByte[j] = ((byte)(int)(paramLong >>> 56 & 0xFF));
    j = i + 1;
    arrayOfByte[i] = ((byte)(int)(paramLong >>> 48 & 0xFF));
    i = j + 1;
    arrayOfByte[j] = ((byte)(int)(paramLong >>> 40 & 0xFF));
    j = i + 1;
    arrayOfByte[i] = ((byte)(int)(paramLong >>> 32 & 0xFF));
    i = j + 1;
    arrayOfByte[j] = ((byte)(int)(paramLong >>> 24 & 0xFF));
    j = i + 1;
    arrayOfByte[i] = ((byte)(int)(paramLong >>> 16 & 0xFF));
    i = j + 1;
    arrayOfByte[j] = ((byte)(int)(paramLong >>> 8 & 0xFF));
    arrayOfByte[i] = ((byte)(int)(paramLong & 0xFF));
    localo.limit = (i + 1);
    this.size += 8L;
    return this;
  }
  
  public final c aj(long paramLong)
  {
    if (paramLong == 0L) {
      return fv(48);
    }
    if (paramLong < 0L)
    {
      paramLong = -paramLong;
      if (paramLong < 0L) {
        return ff("-9223372036854775808");
      }
    }
    for (int j = 1;; j = 0)
    {
      int i;
      if (paramLong < 100000000L) {
        if (paramLong < 10000L) {
          if (paramLong < 100L) {
            if (paramLong < 10L) {
              i = 1;
            }
          }
        }
      }
      int k;
      o localo;
      byte[] arrayOfByte;
      for (;;)
      {
        k = i;
        if (j != 0) {
          k = i + 1;
        }
        localo = fy(k);
        arrayOfByte = localo.data;
        i = localo.limit + k;
        while (paramLong != 0L)
        {
          int m = (int)(paramLong % 10L);
          i -= 1;
          arrayOfByte[i] = cTV[m];
          paramLong /= 10L;
        }
        i = 2;
        continue;
        if (paramLong < 1000L)
        {
          i = 3;
        }
        else
        {
          i = 4;
          continue;
          if (paramLong < 1000000L)
          {
            if (paramLong < 100000L) {
              i = 5;
            } else {
              i = 6;
            }
          }
          else if (paramLong < 10000000L)
          {
            i = 7;
          }
          else
          {
            i = 8;
            continue;
            if (paramLong < 1000000000000L)
            {
              if (paramLong < 10000000000L)
              {
                if (paramLong < 1000000000L) {
                  i = 9;
                } else {
                  i = 10;
                }
              }
              else if (paramLong < 100000000000L) {
                i = 11;
              } else {
                i = 12;
              }
            }
            else if (paramLong < 1000000000000000L)
            {
              if (paramLong < 10000000000000L) {
                i = 13;
              } else if (paramLong < 100000000000000L) {
                i = 14;
              } else {
                i = 15;
              }
            }
            else if (paramLong < 100000000000000000L)
            {
              if (paramLong < 10000000000000000L) {
                i = 16;
              } else {
                i = 17;
              }
            }
            else if (paramLong < 1000000000000000000L) {
              i = 18;
            } else {
              i = 19;
            }
          }
        }
      }
      if (j != 0) {
        arrayOfByte[(i - 1)] = 45;
      }
      localo.limit += k;
      paramLong = this.size;
      this.size = (k + paramLong);
      return this;
    }
  }
  
  public final c ak(long paramLong)
  {
    if (paramLong == 0L) {
      return fv(48);
    }
    int j = Long.numberOfTrailingZeros(Long.highestOneBit(paramLong)) / 4 + 1;
    o localo = fy(j);
    byte[] arrayOfByte = localo.data;
    int i = localo.limit + j - 1;
    int k = localo.limit;
    while (i >= k)
    {
      arrayOfByte[i] = cTV[((int)(0xF & paramLong))];
      paramLong >>>= 4;
      i -= 1;
    }
    localo.limit += j;
    paramLong = this.size;
    this.size = (j + paramLong);
    return this;
  }
  
  public final c b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("source == null");
    }
    u.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    int i = paramInt1 + paramInt2;
    while (paramInt1 < i)
    {
      o localo = fy(1);
      int j = Math.min(i - paramInt1, 8192 - localo.limit);
      System.arraycopy(paramArrayOfByte, paramInt1, localo.data, localo.limit, j);
      paramInt1 += j;
      localo.limit = (j + localo.limit);
    }
    this.size += paramInt2;
    return this;
  }
  
  public final boolean b(f paramf)
  {
    int j = paramf.size();
    if ((0L < 0L) || (j < 0) || (this.size - 0L < j) || (paramf.size() + 0 < j)) {
      return false;
    }
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label71;
      }
      if (ab(i + 0L) != paramf.getByte(i + 0)) {
        break;
      }
      i += 1;
    }
    label71:
    return true;
  }
  
  public final void clear()
  {
    try
    {
      ah(this.size);
      return;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public final void close() {}
  
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
    if (this.size != ((c)paramObject).size) {
      return false;
    }
    if (this.size == 0L) {
      return true;
    }
    Object localObject2 = this.cTW;
    paramObject = ((c)paramObject).cTW;
    int j = ((o)localObject2).pos;
    int i = ((o)paramObject).pos;
    while (l1 < this.size)
    {
      long l2 = Math.min(((o)localObject2).limit - j, ((o)paramObject).limit - i);
      int k = 0;
      while (k < l2)
      {
        if (localObject2.data[j] != paramObject.data[i]) {
          return false;
        }
        k += 1;
        i += 1;
        j += 1;
      }
      k = j;
      Object localObject1 = localObject2;
      if (j == ((o)localObject2).limit)
      {
        localObject1 = ((o)localObject2).cUo;
        k = ((o)localObject1).pos;
      }
      j = i;
      Object localObject3 = paramObject;
      if (i == ((o)paramObject).limit)
      {
        localObject3 = ((o)paramObject).cUo;
        j = ((o)localObject3).pos;
      }
      l1 += l2;
      i = j;
      j = k;
      localObject2 = localObject1;
      paramObject = localObject3;
    }
    return true;
  }
  
  public final c ff(String paramString)
  {
    return l(paramString, 0, paramString.length());
  }
  
  public final void flush() {}
  
  public final c fu(int paramInt)
  {
    if (paramInt < 128)
    {
      fv(paramInt);
      return this;
    }
    if (paramInt < 2048)
    {
      fv(paramInt >> 6 | 0xC0);
      fv(paramInt & 0x3F | 0x80);
      return this;
    }
    if (paramInt < 65536)
    {
      if ((paramInt >= 55296) && (paramInt <= 57343))
      {
        fv(63);
        return this;
      }
      fv(paramInt >> 12 | 0xE0);
      fv(paramInt >> 6 & 0x3F | 0x80);
      fv(paramInt & 0x3F | 0x80);
      return this;
    }
    if (paramInt <= 1114111)
    {
      fv(paramInt >> 18 | 0xF0);
      fv(paramInt >> 12 & 0x3F | 0x80);
      fv(paramInt >> 6 & 0x3F | 0x80);
      fv(paramInt & 0x3F | 0x80);
      return this;
    }
    throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(paramInt));
  }
  
  public final c fv(int paramInt)
  {
    o localo = fy(1);
    byte[] arrayOfByte = localo.data;
    int i = localo.limit;
    localo.limit = (i + 1);
    arrayOfByte[i] = ((byte)paramInt);
    this.size += 1L;
    return this;
  }
  
  public final c fw(int paramInt)
  {
    o localo = fy(2);
    byte[] arrayOfByte = localo.data;
    int i = localo.limit;
    int j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[j] = ((byte)(paramInt & 0xFF));
    localo.limit = (j + 1);
    this.size += 2L;
    return this;
  }
  
  public final c fx(int paramInt)
  {
    o localo = fy(4);
    byte[] arrayOfByte = localo.data;
    int j = localo.limit;
    int i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 24 & 0xFF));
    j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 16 & 0xFF));
    i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[i] = ((byte)(paramInt & 0xFF));
    localo.limit = (i + 1);
    this.size += 4L;
    return this;
  }
  
  final o fy(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > 8192)) {
      throw new IllegalArgumentException();
    }
    o localo2;
    o localo1;
    if (this.cTW == null)
    {
      this.cTW = p.KP();
      localo2 = this.cTW;
      o localo3 = this.cTW;
      localo1 = this.cTW;
      localo3.cUp = localo1;
      localo2.cUo = localo1;
    }
    do
    {
      return localo1;
      localo2 = this.cTW.cUp;
      if (localo2.limit + paramInt > 8192) {
        break;
      }
      localo1 = localo2;
    } while (localo2.cUn);
    return localo2.a(p.KP());
  }
  
  public final int hashCode()
  {
    Object localObject = this.cTW;
    if (localObject == null) {
      return 0;
    }
    int i = 1;
    int j;
    o localo;
    do
    {
      int k = ((o)localObject).pos;
      int m = ((o)localObject).limit;
      j = i;
      while (k < m)
      {
        j = j * 31 + localObject.data[k];
        k += 1;
      }
      localo = ((o)localObject).cUo;
      i = j;
      localObject = localo;
    } while (localo != this.cTW);
    return j;
  }
  
  public final boolean isOpen()
  {
    return true;
  }
  
  public final c l(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("string == null");
    }
    if (paramInt1 < 0) {
      throw new IllegalArgumentException("beginIndex < 0: " + paramInt1);
    }
    if (paramInt2 < paramInt1) {
      throw new IllegalArgumentException("endIndex < beginIndex: " + paramInt2 + " < " + paramInt1);
    }
    int k;
    o localo;
    int i;
    if (paramInt2 > paramString.length())
    {
      throw new IllegalArgumentException("endIndex > string.length: " + paramInt2 + " > " + paramString.length());
      i = paramInt1 + k - localo.limit;
      localo.limit += i;
      this.size += i;
    }
    for (;;)
    {
      if (paramInt1 >= paramInt2) {
        return this;
      }
      int j = paramString.charAt(paramInt1);
      if (j < 128)
      {
        localo = fy(1);
        byte[] arrayOfByte = localo.data;
        k = localo.limit - paramInt1;
        int m = Math.min(paramInt2, 8192 - k);
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
        fv(j >> 6 | 0xC0);
        fv(j & 0x3F | 0x80);
        paramInt1 += 1;
      }
      else if ((j < 55296) || (j > 57343))
      {
        fv(j >> 12 | 0xE0);
        fv(j >> 6 & 0x3F | 0x80);
        fv(j & 0x3F | 0x80);
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
          fv(63);
          paramInt1 += 1;
          break;
        }
        label449:
        i = (i & 0xFFFF23FF | (j & 0xFFFF27FF) << 10) + 65536;
        fv(i >> 18 | 0xF0);
        fv(i >> 12 & 0x3F | 0x80);
        fv(i >> 6 & 0x3F | 0x80);
        fv(i & 0x3F | 0x80);
        paramInt1 += 2;
      }
    }
    return this;
  }
  
  public final int read(ByteBuffer paramByteBuffer)
    throws IOException
  {
    o localo = this.cTW;
    int i;
    if (localo == null) {
      i = -1;
    }
    int j;
    do
    {
      return i;
      j = Math.min(paramByteBuffer.remaining(), localo.limit - localo.pos);
      paramByteBuffer.put(localo.data, localo.pos, j);
      localo.pos += j;
      this.size -= j;
      i = j;
    } while (localo.pos != localo.limit);
    this.cTW = localo.KO();
    p.b(localo);
    return j;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    u.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    o localo = this.cTW;
    if (localo == null) {
      paramInt1 = -1;
    }
    do
    {
      return paramInt1;
      paramInt2 = Math.min(paramInt2, localo.limit - localo.pos);
      System.arraycopy(localo.data, localo.pos, paramArrayOfByte, paramInt1, paramInt2);
      localo.pos += paramInt2;
      this.size -= paramInt2;
      paramInt1 = paramInt2;
    } while (localo.pos != localo.limit);
    this.cTW = localo.KO();
    p.b(localo);
    return paramInt2;
  }
  
  public final long read(c paramc, long paramLong)
  {
    if (paramc == null) {
      throw new IllegalArgumentException("sink == null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.size == 0L) {
      return -1L;
    }
    long l = paramLong;
    if (paramLong > this.size) {
      l = this.size;
    }
    paramc.write(this, l);
    return l;
  }
  
  public final byte readByte()
  {
    if (this.size == 0L) {
      throw new IllegalStateException("size == 0");
    }
    o localo = this.cTW;
    int i = localo.pos;
    int j = localo.limit;
    byte[] arrayOfByte = localo.data;
    int k = i + 1;
    byte b = arrayOfByte[i];
    this.size -= 1L;
    if (k == j)
    {
      this.cTW = localo.KO();
      p.b(localo);
      return b;
    }
    localo.pos = k;
    return b;
  }
  
  public final f readByteString()
  {
    return new f(KA());
  }
  
  public final void readFully(byte[] paramArrayOfByte)
    throws EOFException
  {
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = read(paramArrayOfByte, i, paramArrayOfByte.length - i);
      if (j == -1) {
        throw new EOFException();
      }
      i += j;
    }
  }
  
  public final int readInt()
  {
    if (this.size < 4L) {
      throw new IllegalStateException("size < 4: " + this.size);
    }
    o localo = this.cTW;
    int j = localo.pos;
    int i = localo.limit;
    if (i - j < 4) {
      return (readByte() & 0xFF) << 24 | (readByte() & 0xFF) << 16 | (readByte() & 0xFF) << 8 | readByte() & 0xFF;
    }
    byte[] arrayOfByte = localo.data;
    int k = j + 1;
    j = arrayOfByte[j];
    int n = k + 1;
    k = arrayOfByte[k];
    int m = n + 1;
    int i1 = arrayOfByte[n];
    n = m + 1;
    j = (j & 0xFF) << 24 | (k & 0xFF) << 16 | (i1 & 0xFF) << 8 | arrayOfByte[m] & 0xFF;
    this.size -= 4L;
    if (n == i)
    {
      this.cTW = localo.KO();
      p.b(localo);
      return j;
    }
    localo.pos = n;
    return j;
  }
  
  public final long readLong()
  {
    if (this.size < 8L) {
      throw new IllegalStateException("size < 8: " + this.size);
    }
    o localo = this.cTW;
    int k = localo.pos;
    int i = localo.limit;
    if (i - k < 8) {
      return (readInt() & 0xFFFFFFFF) << 32 | readInt() & 0xFFFFFFFF;
    }
    byte[] arrayOfByte = localo.data;
    int j = k + 1;
    long l1 = arrayOfByte[k];
    k = j + 1;
    long l2 = arrayOfByte[j];
    j = k + 1;
    long l3 = arrayOfByte[k];
    k = j + 1;
    long l4 = arrayOfByte[j];
    j = k + 1;
    long l5 = arrayOfByte[k];
    k = j + 1;
    long l6 = arrayOfByte[j];
    j = k + 1;
    long l7 = arrayOfByte[k];
    k = j + 1;
    l1 = arrayOfByte[j] & 0xFF | (l2 & 0xFF) << 48 | (l1 & 0xFF) << 56 | (l3 & 0xFF) << 40 | (l4 & 0xFF) << 32 | (l5 & 0xFF) << 24 | (l6 & 0xFF) << 16 | (l7 & 0xFF) << 8;
    this.size -= 8L;
    if (k == i)
    {
      this.cTW = localo.KO();
      p.b(localo);
      return l1;
    }
    localo.pos = k;
    return l1;
  }
  
  public final short readShort()
  {
    if (this.size < 2L) {
      throw new IllegalStateException("size < 2: " + this.size);
    }
    o localo = this.cTW;
    int k = localo.pos;
    int i = localo.limit;
    if (i - k < 2) {
      return (short)((readByte() & 0xFF) << 8 | readByte() & 0xFF);
    }
    byte[] arrayOfByte = localo.data;
    int j = k + 1;
    k = arrayOfByte[k];
    int m = j + 1;
    j = arrayOfByte[j];
    this.size -= 2L;
    if (m == i)
    {
      this.cTW = localo.KO();
      p.b(localo);
    }
    for (;;)
    {
      return (short)((k & 0xFF) << 8 | j & 0xFF);
      localo.pos = m;
    }
  }
  
  public final t timeout()
  {
    return t.NONE;
  }
  
  public final String toString()
  {
    if (this.size > 2147483647L) {
      throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.size);
    }
    int i = (int)this.size;
    if (i == 0) {}
    for (Object localObject = f.cTY;; localObject = new q(this, i)) {
      return ((f)localObject).toString();
    }
  }
  
  public final int write(ByteBuffer paramByteBuffer)
    throws IOException
  {
    if (paramByteBuffer == null) {
      throw new IllegalArgumentException("source == null");
    }
    int j = paramByteBuffer.remaining();
    int i = j;
    while (i > 0)
    {
      o localo = fy(1);
      int k = Math.min(i, 8192 - localo.limit);
      paramByteBuffer.get(localo.data, localo.limit, k);
      i -= k;
      localo.limit = (k + localo.limit);
    }
    this.size += j;
    return j;
  }
  
  public final void write(c paramc, long paramLong)
  {
    if (paramc == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramc == this) {
      throw new IllegalArgumentException("source == this");
    }
    u.checkOffsetAndCount(paramc.size, 0L, paramLong);
    o localo1;
    long l;
    if (paramLong > 0L)
    {
      if (paramLong >= paramc.cTW.limit - paramc.cTW.pos) {
        break label274;
      }
      if (this.cTW == null) {
        break label161;
      }
      localo1 = this.cTW.cUp;
      if ((localo1 == null) || (!localo1.cUn)) {
        break label177;
      }
      l = localo1.limit;
      if (!localo1.cUm) {
        break label167;
      }
    }
    label161:
    label167:
    for (int i = 0;; i = localo1.pos)
    {
      if (l + paramLong - i > 8192L) {
        break label177;
      }
      paramc.cTW.a(localo1, (int)paramLong);
      paramc.size -= paramLong;
      this.size += paramLong;
      return;
      localo1 = null;
      break;
    }
    label177:
    o localo2 = paramc.cTW;
    i = (int)paramLong;
    if ((i <= 0) || (i > localo2.limit - localo2.pos)) {
      throw new IllegalArgumentException();
    }
    if (i >= 1024)
    {
      localo1 = localo2.KN();
      label231:
      localo1.limit = (localo1.pos + i);
      localo2.pos = (i + localo2.pos);
      localo2.cUp.a(localo1);
      paramc.cTW = localo1;
      label274:
      localo1 = paramc.cTW;
      l = localo1.limit - localo1.pos;
      paramc.cTW = localo1.KO();
      if (this.cTW != null) {
        break label407;
      }
      this.cTW = localo1;
      localo1 = this.cTW;
      localo2 = this.cTW;
      o localo3 = this.cTW;
      localo2.cUp = localo3;
      localo1.cUo = localo3;
    }
    label407:
    label538:
    for (;;)
    {
      paramc.size -= l;
      this.size += l;
      paramLong -= l;
      break;
      localo1 = p.KP();
      System.arraycopy(localo2.data, localo2.pos, localo1.data, 0, i);
      break label231;
      localo1 = this.cTW.cUp.a(localo1);
      if (localo1.cUp == localo1) {
        throw new IllegalStateException();
      }
      if (localo1.cUp.cUn)
      {
        int j = localo1.limit - localo1.pos;
        int k = localo1.cUp.limit;
        if (localo1.cUp.cUm) {}
        for (i = 0;; i = localo1.cUp.pos)
        {
          if (j > i + (8192 - k)) {
            break label538;
          }
          localo1.a(localo1.cUp, j);
          localo1.KO();
          p.b(localo1);
          break;
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */