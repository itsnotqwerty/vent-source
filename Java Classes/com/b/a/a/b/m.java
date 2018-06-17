package com.b.a.a.b;

import b.f;
import b.g;
import com.b.a.a.i;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.zip.Deflater;

public final class m
  implements q
{
  static final byte[] bIG;
  
  static
  {
    try
    {
      bIG = "\000\000\000\007options\000\000\000\004head\000\000\000\004post\000\000\000\003put\000\000\000\006delete\000\000\000\005trace\000\000\000\006accept\000\000\000\016accept-charset\000\000\000\017accept-encoding\000\000\000\017accept-language\000\000\000\raccept-ranges\000\000\000\003age\000\000\000\005allow\000\000\000\rauthorization\000\000\000\rcache-control\000\000\000\nconnection\000\000\000\fcontent-base\000\000\000\020content-encoding\000\000\000\020content-language\000\000\000\016content-length\000\000\000\020content-location\000\000\000\013content-md5\000\000\000\rcontent-range\000\000\000\fcontent-type\000\000\000\004date\000\000\000\004etag\000\000\000\006expect\000\000\000\007expires\000\000\000\004from\000\000\000\004host\000\000\000\bif-match\000\000\000\021if-modified-since\000\000\000\rif-none-match\000\000\000\bif-range\000\000\000\023if-unmodified-since\000\000\000\rlast-modified\000\000\000\blocation\000\000\000\fmax-forwards\000\000\000\006pragma\000\000\000\022proxy-authenticate\000\000\000\023proxy-authorization\000\000\000\005range\000\000\000\007referer\000\000\000\013retry-after\000\000\000\006server\000\000\000\002te\000\000\000\007trailer\000\000\000\021transfer-encoding\000\000\000\007upgrade\000\000\000\nuser-agent\000\000\000\004vary\000\000\000\003via\000\000\000\007warning\000\000\000\020www-authenticate\000\000\000\006method\000\000\000\003get\000\000\000\006status\000\000\000\006200 OK\000\000\000\007version\000\000\000\bHTTP/1.1\000\000\000\003url\000\000\000\006public\000\000\000\nset-cookie\000\000\000\nkeep-alive\000\000\000\006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(i.bII.name());
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError();
    }
  }
  
  public final b a(b.e parame, boolean paramBoolean)
  {
    return new a(parame, paramBoolean);
  }
  
  public final c a(b.d paramd, boolean paramBoolean)
  {
    return new b(paramd, paramBoolean);
  }
  
  static final class a
    implements b
  {
    private final boolean b;
    private final b.e bKU;
    private final j bKV;
    
    a(b.e parame, boolean paramBoolean)
    {
      this.bKU = parame;
      this.bKV = new j(this.bKU);
      this.b = paramBoolean;
    }
    
    private void a(b.a parama, int paramInt1, int paramInt2)
      throws IOException
    {
      boolean bool = true;
      int i = this.bKU.KZ();
      if (paramInt2 != i * 8 + 4) {
        throw g("TYPE_SETTINGS length: %d != 4 + 8 * %d", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(i) });
      }
      l locall = new l();
      paramInt2 = 0;
      while (paramInt2 < i)
      {
        int j = this.bKU.KZ();
        locall.m(j & 0xFFFFFF, (0xFF000000 & j) >>> 24, this.bKU.KZ());
        paramInt2 += 1;
      }
      if ((paramInt1 & 0x1) != 0) {}
      for (;;)
      {
        parama.a(bool, locall);
        return;
        bool = false;
      }
    }
    
    private static IOException g(String paramString, Object... paramVarArgs)
      throws IOException
    {
      throw new IOException(String.format(paramString, paramVarArgs));
    }
    
    public final void a() {}
    
    public final boolean a(b.a parama)
      throws IOException
    {
      boolean bool1 = false;
      boolean bool2 = false;
      int k;
      int m;
      int j;
      for (;;)
      {
        try
        {
          k = this.bKU.KZ();
          m = this.bKU.KZ();
          if ((0x80000000 & k) != 0)
          {
            i = 1;
            j = (0xFF000000 & m) >>> 24;
            m = 0xFFFFFF & m;
            if (i == 0) {
              break label719;
            }
            i = (0x7FFF0000 & k) >>> 16;
            if (i == 3) {
              break;
            }
            throw new ProtocolException("version != 3: " + i);
          }
        }
        catch (IOException parama)
        {
          return false;
        }
        i = 0;
      }
      Object localObject;
      switch (k & 0xFFFF)
      {
      case 5: 
      default: 
        this.bKU.at(m);
        return true;
      case 1: 
        i = this.bKU.KZ();
        k = this.bKU.KZ();
        this.bKU.KY();
        localObject = this.bKV.a(m - 10);
        if ((j & 0x1) != 0) {}
        for (bool1 = true;; bool1 = false)
        {
          if ((j & 0x2) != 0) {
            bool2 = true;
          }
          parama.a(bool2, bool1, i & 0x7FFFFFFF, k & 0x7FFFFFFF, (List)localObject, e.bKy);
          return true;
        }
      case 2: 
        i = this.bKU.KZ();
        localObject = this.bKV.a(m - 4);
        if ((j & 0x1) != 0) {}
        for (bool1 = true;; bool1 = false)
        {
          parama.a(false, bool1, i & 0x7FFFFFFF, -1, (List)localObject, e.bKz);
          return true;
        }
      case 3: 
        if (m != 8) {
          throw g("TYPE_RST_STREAM length: %d != 8", new Object[] { Integer.valueOf(m) });
        }
        i = this.bKU.KZ();
        j = this.bKU.KZ();
        localObject = a.dJ(j);
        if (localObject == null) {
          throw g("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(j) });
        }
        parama.a(i & 0x7FFFFFFF, (a)localObject);
        return true;
      case 4: 
        a(parama, j, m);
        return true;
      case 6: 
        if (m != 4) {
          throw g("TYPE_PING length: %d != 4", new Object[] { Integer.valueOf(m) });
        }
        i = this.bKU.KZ();
        bool2 = this.b;
        if ((i & 0x1) == 1)
        {
          bool1 = true;
          if (bool2 != bool1) {
            break label503;
          }
        }
        for (bool1 = true;; bool1 = false)
        {
          parama.a(bool1, i, 0);
          return true;
          bool1 = false;
          break;
        }
      case 7: 
        if (m != 8) {
          throw g("TYPE_GOAWAY length: %d != 8", new Object[] { Integer.valueOf(m) });
        }
        i = this.bKU.KZ();
        j = this.bKU.KZ();
        if (a.dL(j) == null) {
          throw g("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(j) });
        }
        parama.a(i & 0x7FFFFFFF, f.bKp);
        return true;
      case 8: 
        label503:
        parama.a(false, false, this.bKU.KZ() & 0x7FFFFFFF, -1, this.bKV.a(m - 4), e.bKA);
        return true;
      }
      if (m != 8) {
        throw g("TYPE_WINDOW_UPDATE length: %d != 8", new Object[] { Integer.valueOf(m) });
      }
      int i = this.bKU.KZ();
      long l = this.bKU.KZ() & 0x7FFFFFFF;
      if (l == 0L) {
        throw g("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
      }
      parama.g(i & 0x7FFFFFFF, l);
      return true;
      label719:
      if ((j & 0x1) != 0) {
        bool1 = true;
      }
      parama.a(bool1, k & 0x7FFFFFFF, this.bKU, m);
      return true;
    }
    
    public final void close()
      throws IOException
    {
      this.bKV.bKS.close();
    }
  }
  
  static final class b
    implements c
  {
    private final b.d bKK;
    private final b.c bKW;
    private final b.d bKX;
    private final boolean d;
    private boolean e;
    
    b(b.d paramd, boolean paramBoolean)
    {
      this.bKK = paramd;
      this.d = paramBoolean;
      paramd = new Deflater();
      paramd.setDictionary(m.bIG);
      this.bKW = new b.c();
      this.bKX = b.m.b(new g(this.bKW, paramd));
    }
    
    private void a(List<d> paramList)
      throws IOException
    {
      if (this.bKW.b != 0L) {
        throw new IllegalStateException();
      }
      this.bKX.fJ(paramList.size());
      int j = paramList.size();
      int i = 0;
      while (i < j)
      {
        f localf = ((d)paramList.get(i)).bKv;
        this.bKX.fJ(localf.bMw.length);
        this.bKX.d(localf);
        localf = ((d)paramList.get(i)).bKw;
        this.bKX.fJ(localf.bMw.length);
        this.bKX.d(localf);
        i += 1;
      }
      this.bKX.flush();
    }
    
    public final void a() {}
    
    public final void a(int paramInt, a parama)
      throws IOException
    {
      try
      {
        if (this.e) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (parama.bKl == -1) {
        throw new IllegalArgumentException();
      }
      this.bKK.fJ(-2147287037);
      this.bKK.fJ(8);
      this.bKK.fJ(0x7FFFFFFF & paramInt);
      this.bKK.fJ(parama.bKl);
      this.bKK.flush();
    }
    
    public final void a(int paramInt, a parama, byte[] paramArrayOfByte)
      throws IOException
    {
      try
      {
        if (this.e) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (parama.bKm == -1) {
        throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
      }
      this.bKK.fJ(-2147287033);
      this.bKK.fJ(8);
      this.bKK.fJ(paramInt);
      this.bKK.fJ(parama.bKm);
      this.bKK.flush();
    }
    
    public final void a(l paraml) {}
    
    public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
      throws IOException
    {
      boolean bool2 = true;
      try
      {
        if (this.e) {
          throw new IOException("closed");
        }
      }
      finally {}
      boolean bool3 = this.d;
      boolean bool1;
      if ((paramInt1 & 0x1) == 1) {
        bool1 = true;
      }
      for (;;)
      {
        if (paramBoolean != bool1) {
          throw new IllegalArgumentException("payload != reply");
        }
        this.bKK.fJ(-2147287034);
        this.bKK.fJ(4);
        this.bKK.fJ(paramInt1);
        this.bKK.flush();
        return;
        for (;;)
        {
          if (bool3 == bool1) {
            break label130;
          }
          bool1 = bool2;
          break;
          bool1 = false;
        }
        label130:
        bool1 = false;
      }
    }
    
    public final void a(boolean paramBoolean, int paramInt1, b.c paramc, int paramInt2)
      throws IOException
    {
      if (paramBoolean) {}
      for (int i = 1;; i = 0) {
        try
        {
          if (!this.e) {
            break;
          }
          throw new IOException("closed");
        }
        finally {}
      }
      if (paramInt2 > 16777215L) {
        throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + paramInt2);
      }
      this.bKK.fJ(0x7FFFFFFF & paramInt1);
      this.bKK.fJ((i & 0xFF) << 24 | 0xFFFFFF & paramInt2);
      if (paramInt2 > 0) {
        this.bKK.a(paramc, paramInt2);
      }
    }
    
    public final void a(boolean paramBoolean, int paramInt, List<d> paramList)
      throws IOException
    {
      int i = 0;
      try
      {
        if (this.e) {
          throw new IOException("closed");
        }
      }
      finally {}
      a(paramList);
      int j = (int)(10L + this.bKW.b);
      if (paramBoolean) {
        i = 1;
      }
      this.bKK.fJ(-2147287039);
      this.bKK.fJ(((i | 0x0) & 0xFF) << 24 | j & 0xFFFFFF);
      this.bKK.fJ(0x7FFFFFFF & paramInt);
      this.bKK.fJ(0);
      this.bKK.fK(0);
      this.bKK.a(this.bKW);
      this.bKK.flush();
    }
    
    public final void b()
      throws IOException
    {
      try
      {
        if (this.e) {
          throw new IOException("closed");
        }
      }
      finally {}
      this.bKK.flush();
    }
    
    public final void b(l paraml)
      throws IOException
    {
      try
      {
        if (this.e) {
          throw new IOException("closed");
        }
      }
      finally {}
      int i = Integer.bitCount(paraml.a);
      this.bKK.fJ(-2147287036);
      this.bKK.fJ(i * 8 + 4 & 0xFFFFFF | 0x0);
      this.bKK.fJ(i);
      i = 0;
      for (;;)
      {
        if (i <= 10)
        {
          if (paraml.a(i))
          {
            int j = paraml.dQ(i);
            this.bKK.fJ((j & 0xFF) << 24 | i & 0xFFFFFF);
            this.bKK.fJ(paraml.brd[i]);
          }
        }
        else
        {
          this.bKK.flush();
          return;
        }
        i += 1;
      }
    }
    
    public final int c()
    {
      return 16383;
    }
    
    public final void close()
      throws IOException
    {
      try
      {
        this.e = true;
        i.a(this.bKK, this.bKX);
        return;
      }
      finally
      {
        localObject = finally;
        throw ((Throwable)localObject);
      }
    }
    
    public final void g(int paramInt, long paramLong)
      throws IOException
    {
      try
      {
        if (this.e) {
          throw new IOException("closed");
        }
      }
      finally {}
      if ((paramLong == 0L) || (paramLong > 2147483647L)) {
        throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + paramLong);
      }
      this.bKK.fJ(-2147287031);
      this.bKK.fJ(8);
      this.bKK.fJ(paramInt);
      this.bKK.fJ((int)paramLong);
      this.bKK.flush();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/b/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */