package d;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

public final class c
  implements d, e, Cloneable, ByteChannel
{
  private static final byte[] cTV = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  @Nullable
  o dbZ;
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
      localo = this.dbZ;
      if (localo.pos + paramLong > localo.limit) {
        return new String(ag(paramLong), paramCharset);
      }
      str = new String(localo.data, localo.pos, (int)paramLong, paramCharset);
      localo.pos = ((int)(localo.pos + paramLong));
      this.size -= paramLong;
      paramCharset = str;
    } while (localo.pos != localo.limit);
    this.dbZ = localo.Nt();
    p.b(localo);
    return str;
  }
  
  private String ad(long paramLong)
    throws EOFException
  {
    return a(paramLong, u.UTF_8);
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
    Object localObject = this.dbZ;
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
          localObject = new c().aA(l1).fV(n);
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
      this.dbZ = ((o)localObject).Nt();
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
        if (this.dbZ != null) {
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
      Object localObject = this.dbZ;
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
          localObject = new c().aB(l).fV(i1);
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
        this.dbZ = ((o)localObject).Nt();
        p.b((o)localObject);
      }
      for (;;)
      {
        if ((j == 0) && (this.dbZ != null)) {
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
  
  public final t MK()
  {
    return t.dcn;
  }
  
  public final f MT()
  {
    return new f(KA());
  }
  
  public final c Nj()
  {
    return this;
  }
  
  public final c P(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("source == null");
    }
    return i(paramArrayOfByte, 0, paramArrayOfByte.length);
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
    Object localObject1 = this.dbZ;
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
        localObject2 = ((o)localObject2).dcm;
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
      localObject2 = ((o)localObject2).dcl;
      paramLong2 = l1;
    }
    paramLong2 = ((o)localObject1).limit - ((o)localObject1).pos + paramLong2;
    localObject1 = ((o)localObject1).dcl;
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
  
  public final long a(c paramc, long paramLong)
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
    paramc.b(this, l);
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
      l2 = params.a(this, 8192L);
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
    for (o localo1 = this.dbZ;; localo1 = localo1.dcl)
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
      localo1 = localo2.Ns();
      localo1.pos = ((int)(localo1.pos + l1));
      localo1.limit = Math.min(localo1.pos + (int)l2, localo1.limit);
      if (paramc.dbZ != null) {
        break label212;
      }
      localo1.dcm = localo1;
      localo1.dcl = localo1;
      paramc.dbZ = localo1;
    }
    for (;;)
    {
      l2 -= localo1.limit - localo1.pos;
      localo2 = localo2.dcl;
      l1 = 0L;
      break label104;
      break;
      label212:
      paramc.dbZ.dcm.a(localo1);
    }
  }
  
  public final c aA(long paramLong)
  {
    if (paramLong == 0L) {
      return fV(48);
    }
    if (paramLong < 0L)
    {
      paramLong = -paramLong;
      if (paramLong < 0L) {
        return fE("-9223372036854775808");
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
        localo = fY(k);
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
  
  public final c aB(long paramLong)
  {
    if (paramLong == 0L) {
      return fV(48);
    }
    int j = Long.numberOfTrailingZeros(Long.highestOneBit(paramLong)) / 4 + 1;
    o localo = fY(j);
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
  
  public final byte ab(long paramLong)
  {
    u.checkOffsetAndCount(this.size, paramLong, 1L);
    if (this.size - paramLong > paramLong) {
      for (localo = this.dbZ;; localo = localo.dcl)
      {
        int i = localo.limit - localo.pos;
        if (paramLong < i) {
          return localo.data[(localo.pos + (int)paramLong)];
        }
        paramLong -= i;
      }
    }
    paramLong -= this.size;
    for (o localo = this.dbZ.dcm;; localo = localo.dcm)
    {
      paramLong += localo.limit - localo.pos;
      if (paramLong >= 0L) {
        return localo.data[(localo.pos + (int)paramLong)];
      }
    }
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
    throw new EOFException("\\n not found: limit=" + Math.min(this.size, paramLong) + " content=" + localc.MT().KJ() + '…');
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
      if (this.dbZ == null) {
        throw new EOFException();
      }
      int i = (int)Math.min(paramLong, this.dbZ.limit - this.dbZ.pos);
      this.size -= i;
      long l = paramLong - i;
      o localo = this.dbZ;
      localo.pos = (i + localo.pos);
      paramLong = l;
      if (this.dbZ.pos == this.dbZ.limit)
      {
        localo = this.dbZ;
        this.dbZ = localo.Nt();
        p.b(localo);
        paramLong = l;
      }
    }
  }
  
  public final f az(long paramLong)
    throws EOFException
  {
    return new f(ag(paramLong));
  }
  
  public final void b(c paramc, long paramLong)
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
      if (paramLong >= paramc.dbZ.limit - paramc.dbZ.pos) {
        break label274;
      }
      if (this.dbZ == null) {
        break label161;
      }
      localo1 = this.dbZ.dcm;
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
      paramc.dbZ.a(localo1, (int)paramLong);
      paramc.size -= paramLong;
      this.size += paramLong;
      return;
      localo1 = null;
      break;
    }
    label177:
    o localo2 = paramc.dbZ;
    i = (int)paramLong;
    if ((i <= 0) || (i > localo2.limit - localo2.pos)) {
      throw new IllegalArgumentException();
    }
    if (i >= 1024)
    {
      localo1 = localo2.Ns();
      label231:
      localo1.limit = (localo1.pos + i);
      localo2.pos = (i + localo2.pos);
      localo2.dcm.a(localo1);
      paramc.dbZ = localo1;
      label274:
      localo1 = paramc.dbZ;
      l = localo1.limit - localo1.pos;
      paramc.dbZ = localo1.Nt();
      if (this.dbZ != null) {
        break label407;
      }
      this.dbZ = localo1;
      localo1 = this.dbZ;
      localo2 = this.dbZ;
      o localo3 = this.dbZ;
      localo2.dcm = localo3;
      localo1.dcl = localo3;
    }
    label407:
    label538:
    for (;;)
    {
      paramc.size -= l;
      this.size += l;
      paramLong -= l;
      break;
      localo1 = p.Nu();
      System.arraycopy(localo2.data, localo2.pos, localo1.data, 0, i);
      break label231;
      localo1 = this.dbZ.dcm.a(localo1);
      if (localo1.dcm == localo1) {
        throw new IllegalStateException();
      }
      if (localo1.dcm.cUn)
      {
        int j = localo1.limit - localo1.pos;
        int k = localo1.dcm.limit;
        if (localo1.dcm.cUm) {}
        for (i = 0;; i = localo1.dcm.pos)
        {
          if (j > i + (8192 - k)) {
            break label538;
          }
          localo1.a(localo1.dcm, j);
          localo1.Nt();
          p.b(localo1);
          break;
        }
      }
    }
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
  
  public final c d(f paramf)
  {
    if (paramf == null) {
      throw new IllegalArgumentException("byteString == null");
    }
    paramf.a(this);
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
    if (this.size != ((c)paramObject).size) {
      return false;
    }
    if (this.size == 0L) {
      return true;
    }
    Object localObject2 = this.dbZ;
    paramObject = ((c)paramObject).dbZ;
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
        localObject1 = ((o)localObject2).dcl;
        k = ((o)localObject1).pos;
      }
      j = i;
      Object localObject3 = paramObject;
      if (i == ((o)paramObject).limit)
      {
        localObject3 = ((o)paramObject).dcl;
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
  
  public final c fE(String paramString)
  {
    return o(paramString, 0, paramString.length());
  }
  
  public final c fU(int paramInt)
  {
    if (paramInt < 128)
    {
      fV(paramInt);
      return this;
    }
    if (paramInt < 2048)
    {
      fV(paramInt >> 6 | 0xC0);
      fV(paramInt & 0x3F | 0x80);
      return this;
    }
    if (paramInt < 65536)
    {
      if ((paramInt >= 55296) && (paramInt <= 57343))
      {
        fV(63);
        return this;
      }
      fV(paramInt >> 12 | 0xE0);
      fV(paramInt >> 6 & 0x3F | 0x80);
      fV(paramInt & 0x3F | 0x80);
      return this;
    }
    if (paramInt <= 1114111)
    {
      fV(paramInt >> 18 | 0xF0);
      fV(paramInt >> 12 & 0x3F | 0x80);
      fV(paramInt >> 6 & 0x3F | 0x80);
      fV(paramInt & 0x3F | 0x80);
      return this;
    }
    throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(paramInt));
  }
  
  public final c fV(int paramInt)
  {
    o localo = fY(1);
    byte[] arrayOfByte = localo.data;
    int i = localo.limit;
    localo.limit = (i + 1);
    arrayOfByte[i] = ((byte)paramInt);
    this.size += 1L;
    return this;
  }
  
  public final c fW(int paramInt)
  {
    o localo = fY(2);
    byte[] arrayOfByte = localo.data;
    int i = localo.limit;
    int j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[j] = ((byte)(paramInt & 0xFF));
    localo.limit = (j + 1);
    this.size += 2L;
    return this;
  }
  
  public final c fX(int paramInt)
  {
    o localo = fY(4);
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
  
  final o fY(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > 8192)) {
      throw new IllegalArgumentException();
    }
    o localo2;
    o localo1;
    if (this.dbZ == null)
    {
      this.dbZ = p.Nu();
      localo2 = this.dbZ;
      o localo3 = this.dbZ;
      localo1 = this.dbZ;
      localo3.dcm = localo1;
      localo2.dcl = localo1;
    }
    do
    {
      return localo1;
      localo2 = this.dbZ.dcm;
      if (localo2.limit + paramInt > 8192) {
        break;
      }
      localo1 = localo2;
    } while (localo2.cUn);
    return localo2.a(p.Nu());
  }
  
  public final void flush() {}
  
  public final int hashCode()
  {
    Object localObject = this.dbZ;
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
      localo = ((o)localObject).dcl;
      i = j;
      localObject = localo;
    } while (localo != this.dbZ);
    return j;
  }
  
  public final c i(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("source == null");
    }
    u.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    int i = paramInt1 + paramInt2;
    while (paramInt1 < i)
    {
      o localo = fY(1);
      int j = Math.min(i - paramInt1, 8192 - localo.limit);
      System.arraycopy(paramArrayOfByte, paramInt1, localo.data, localo.limit, j);
      paramInt1 += j;
      localo.limit = (j + localo.limit);
    }
    this.size += paramInt2;
    return this;
  }
  
  public final boolean isOpen()
  {
    return true;
  }
  
  public final c o(String paramString, int paramInt1, int paramInt2)
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
        localo = fY(1);
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
        fV(j >> 6 | 0xC0);
        fV(j & 0x3F | 0x80);
        paramInt1 += 1;
      }
      else if ((j < 55296) || (j > 57343))
      {
        fV(j >> 12 | 0xE0);
        fV(j >> 6 & 0x3F | 0x80);
        fV(j & 0x3F | 0x80);
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
          fV(63);
          paramInt1 += 1;
          break;
        }
        label449:
        i = (i & 0xFFFF23FF | (j & 0xFFFF27FF) << 10) + 65536;
        fV(i >> 18 | 0xF0);
        fV(i >> 12 & 0x3F | 0x80);
        fV(i >> 6 & 0x3F | 0x80);
        fV(i & 0x3F | 0x80);
        paramInt1 += 2;
      }
    }
    return this;
  }
  
  public final int read(ByteBuffer paramByteBuffer)
    throws IOException
  {
    o localo = this.dbZ;
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
    this.dbZ = localo.Nt();
    p.b(localo);
    return j;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    u.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    o localo = this.dbZ;
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
    this.dbZ = localo.Nt();
    p.b(localo);
    return paramInt2;
  }
  
  public final byte readByte()
  {
    if (this.size == 0L) {
      throw new IllegalStateException("size == 0");
    }
    o localo = this.dbZ;
    int i = localo.pos;
    int j = localo.limit;
    byte[] arrayOfByte = localo.data;
    int k = i + 1;
    byte b = arrayOfByte[i];
    this.size -= 1L;
    if (k == j)
    {
      this.dbZ = localo.Nt();
      p.b(localo);
      return b;
    }
    localo.pos = k;
    return b;
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
    o localo = this.dbZ;
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
      this.dbZ = localo.Nt();
      p.b(localo);
      return j;
    }
    localo.pos = n;
    return j;
  }
  
  public final short readShort()
  {
    if (this.size < 2L) {
      throw new IllegalStateException("size < 2: " + this.size);
    }
    o localo = this.dbZ;
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
      this.dbZ = localo.Nt();
      p.b(localo);
    }
    for (;;)
    {
      return (short)((k & 0xFF) << 8 | j & 0xFF);
      localo.pos = m;
    }
  }
  
  public final String toString()
  {
    if (this.size > 2147483647L) {
      throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.size);
    }
    int i = (int)this.size;
    if (i == 0) {}
    for (Object localObject = f.dcb;; localObject = new q(this, i)) {
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
      o localo = fY(1);
      int k = Math.min(i, 8192 - localo.limit);
      paramByteBuffer.get(localo.data, localo.limit, k);
      i -= k;
      localo.limit = (k + localo.limit);
    }
    this.size += j;
    return j;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */