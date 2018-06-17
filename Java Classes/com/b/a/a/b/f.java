package com.b.a.a.b;

import b.c;
import b.e;
import b.m;
import b.s;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

final class f
{
  private static final Map<b.f, Integer> b;
  private static final d[] bKD;
  
  static
  {
    int i = 0;
    bKD = new d[] { new d(d.bKs, ""), new d(d.bKp, "GET"), new d(d.bKp, "POST"), new d(d.bKq, "/"), new d(d.bKq, "/index.html"), new d(d.bKr, "http"), new d(d.bKr, "https"), new d(d.bKo, "200"), new d(d.bKo, "204"), new d(d.bKo, "206"), new d(d.bKo, "304"), new d(d.bKo, "400"), new d(d.bKo, "404"), new d(d.bKo, "500"), new d("accept-charset", ""), new d("accept-encoding", "gzip, deflate"), new d("accept-language", ""), new d("accept-ranges", ""), new d("accept", ""), new d("access-control-allow-origin", ""), new d("age", ""), new d("allow", ""), new d("authorization", ""), new d("cache-control", ""), new d("content-disposition", ""), new d("content-encoding", ""), new d("content-language", ""), new d("content-length", ""), new d("content-location", ""), new d("content-range", ""), new d("content-type", ""), new d("cookie", ""), new d("date", ""), new d("etag", ""), new d("expect", ""), new d("expires", ""), new d("from", ""), new d("host", ""), new d("if-match", ""), new d("if-modified-since", ""), new d("if-none-match", ""), new d("if-range", ""), new d("if-unmodified-since", ""), new d("last-modified", ""), new d("link", ""), new d("location", ""), new d("max-forwards", ""), new d("proxy-authenticate", ""), new d("proxy-authorization", ""), new d("range", ""), new d("referer", ""), new d("refresh", ""), new d("retry-after", ""), new d("server", ""), new d("set-cookie", ""), new d("strict-transport-security", ""), new d("transfer-encoding", ""), new d("user-agent", ""), new d("vary", ""), new d("via", ""), new d("www-authenticate", "") };
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(bKD.length);
    while (i < bKD.length)
    {
      if (!localLinkedHashMap.containsKey(bKD[i].bKv)) {
        localLinkedHashMap.put(bKD[i].bKv, Integer.valueOf(i));
      }
      i += 1;
    }
    b = Collections.unmodifiableMap(localLinkedHashMap);
  }
  
  static final class a
  {
    int b = this.bKD.length - 1;
    d[] bKD = new d[8];
    final e bKE;
    int bpE = 4096;
    final List<d> bwT = new ArrayList();
    int c = 0;
    int d = 0;
    int g = 4096;
    
    a(s params)
    {
      this.bKE = m.b(params);
    }
    
    private int dM(int paramInt)
    {
      int i = 0;
      int k = 0;
      if (paramInt > 0)
      {
        i = this.bKD.length - 1;
        int j = paramInt;
        paramInt = k;
        while ((i >= this.b) && (j > 0))
        {
          j -= this.bKD[i].bKx;
          this.d -= this.bKD[i].bKx;
          this.c -= 1;
          paramInt += 1;
          i -= 1;
        }
        System.arraycopy(this.bKD, this.b + 1, this.bKD, this.b + 1 + paramInt, this.c);
        this.b += paramInt;
        i = paramInt;
      }
      return i;
    }
    
    static boolean dP(int paramInt)
    {
      return (paramInt >= 0) && (paramInt <= f.zJ().length - 1);
    }
    
    private void e()
    {
      this.bwT.clear();
      Arrays.fill(this.bKD, null);
      this.b = (this.bKD.length - 1);
      this.c = 0;
      this.d = 0;
    }
    
    private int zL()
      throws IOException
    {
      return this.bKE.KX() & 0xFF;
    }
    
    final void a(d paramd)
    {
      this.bwT.add(paramd);
      int i = paramd.bKx;
      if (i > this.bpE)
      {
        e();
        return;
      }
      dM(this.d + i - this.bpE);
      if (this.c + 1 > this.bKD.length)
      {
        d[] arrayOfd = new d[this.bKD.length * 2];
        System.arraycopy(this.bKD, 0, arrayOfd, this.bKD.length, this.bKD.length);
        this.b = (this.bKD.length - 1);
        this.bKD = arrayOfd;
      }
      int j = this.b;
      this.b = (j - 1);
      this.bKD[j] = paramd;
      this.c += 1;
      this.d = (i + this.d);
    }
    
    final int aB(int paramInt1, int paramInt2)
      throws IOException
    {
      paramInt1 &= paramInt2;
      if (paramInt1 < paramInt2) {
        return paramInt1;
      }
      paramInt1 = 0;
      int i;
      for (;;)
      {
        i = zL();
        if ((i & 0x80) == 0) {
          break;
        }
        paramInt2 += ((i & 0x7F) << paramInt1);
        paramInt1 += 7;
      }
      return (i << paramInt1) + paramInt2;
    }
    
    final void d()
    {
      if (this.bpE < this.d)
      {
        if (this.bpE == 0) {
          e();
        }
      }
      else {
        return;
      }
      dM(this.d - this.bpE);
    }
    
    final int dN(int paramInt)
    {
      return this.b + 1 + paramInt;
    }
    
    final b.f dO(int paramInt)
    {
      if (dP(paramInt)) {
        return f.zJ()[paramInt].bKv;
      }
      return this.bKD[dN(paramInt - f.zJ().length)].bKv;
    }
    
    final b.f zM()
      throws IOException
    {
      int j = zL();
      int i;
      h localh;
      byte[] arrayOfByte;
      ByteArrayOutputStream localByteArrayOutputStream;
      h.a locala1;
      int k;
      if ((j & 0x80) == 128)
      {
        i = 1;
        j = aB(j, 127);
        if (i != 0)
        {
          localh = h.zQ();
          arrayOfByte = this.bKE.as(j);
          localByteArrayOutputStream = new ByteArrayOutputStream();
          locala1 = localh.bKO;
          j = 0;
          i = 0;
          k = 0;
        }
      }
      else
      {
        int m;
        h.a locala2;
        for (;;)
        {
          m = i;
          locala2 = locala1;
          if (j >= arrayOfByte.length) {
            break label183;
          }
          k = k << 8 | arrayOfByte[j] & 0xFF;
          i += 8;
          for (;;)
          {
            if (i < 8) {
              break label176;
            }
            locala1 = locala1.bKP[(k >>> i - 8 & 0xFF)];
            if (locala1.bKP == null)
            {
              localByteArrayOutputStream.write(locala1.b);
              i -= locala1.c;
              locala1 = localh.bKO;
              continue;
              i = 0;
              break;
            }
            i -= 8;
          }
          label176:
          j += 1;
        }
        label183:
        while (m > 0)
        {
          locala1 = locala2.bKP[(k << 8 - m & 0xFF)];
          if ((locala1.bKP != null) || (locala1.c > m)) {
            break;
          }
          localByteArrayOutputStream.write(locala1.b);
          m -= locala1.c;
          locala2 = localh.bKO;
        }
        return b.f.L(localByteArrayOutputStream.toByteArray());
      }
      return this.bKE.ap(j);
    }
  }
  
  static final class b
  {
    private final c bKF;
    
    b(c paramc)
    {
      this.bKF = paramc;
    }
    
    private void aC(int paramInt1, int paramInt2)
      throws IOException
    {
      if (paramInt1 < paramInt2)
      {
        this.bKF.fF(paramInt1 | 0x0);
        return;
      }
      this.bKF.fF(paramInt2 | 0x0);
      paramInt1 -= paramInt2;
      while (paramInt1 >= 128)
      {
        this.bKF.fF(paramInt1 & 0x7F | 0x80);
        paramInt1 >>>= 7;
      }
      this.bKF.fF(paramInt1);
    }
    
    private void b(b.f paramf)
      throws IOException
    {
      aC(paramf.bMw.length, 127);
      this.bKF.c(paramf);
    }
    
    final void a(List<d> paramList)
      throws IOException
    {
      int j = paramList.size();
      int i = 0;
      if (i < j)
      {
        b.f localf = ((d)paramList.get(i)).bKv.Lj();
        Integer localInteger = (Integer)f.zK().get(localf);
        if (localInteger != null)
        {
          aC(localInteger.intValue() + 1, 15);
          b(((d)paramList.get(i)).bKw);
        }
        for (;;)
        {
          i += 1;
          break;
          this.bKF.fF(0);
          b(localf);
          b(((d)paramList.get(i)).bKw);
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/b/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */