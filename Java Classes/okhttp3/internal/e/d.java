package okhttp3.internal.e;

import d.e;
import d.f;
import d.l;
import d.s;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

final class d
{
  static final Map<f, Integer> NAME_TO_FIRST_INDEX;
  static final c[] daI;
  
  static
  {
    int i = 0;
    daI = new c[] { new c(c.daF, ""), new c(c.daC, "GET"), new c(c.daC, "POST"), new c(c.daD, "/"), new c(c.daD, "/index.html"), new c(c.daE, "http"), new c(c.daE, "https"), new c(c.daB, "200"), new c(c.daB, "204"), new c(c.daB, "206"), new c(c.daB, "304"), new c(c.daB, "400"), new c(c.daB, "404"), new c(c.daB, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c("content-length", ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c("etag", ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c("host", ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c("location", ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c("referer", ""), new c("refresh", ""), new c("retry-after", ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "") };
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(daI.length);
    while (i < daI.length)
    {
      if (!localLinkedHashMap.containsKey(daI[i].daG)) {
        localLinkedHashMap.put(daI[i].daG, Integer.valueOf(i));
      }
      i += 1;
    }
    NAME_TO_FIRST_INDEX = Collections.unmodifiableMap(localLinkedHashMap);
  }
  
  static f a(f paramf)
    throws IOException
  {
    int i = 0;
    int j = paramf.size();
    while (i < j)
    {
      int k = paramf.getByte(i);
      if ((k >= 65) && (k <= 90)) {
        throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + paramf.KE());
      }
      i += 1;
    }
    return paramf;
  }
  
  static final class a
  {
    c[] daJ = new c[8];
    final e dad;
    int dynamicTableByteCount = 0;
    int headerCount = 0;
    final List<c> headerList = new ArrayList();
    final int headerTableSizeSetting = 4096;
    int maxDynamicTableByteCount = 4096;
    int nextHeaderIndex = this.daJ.length - 1;
    
    a(s params)
    {
      this(params, (byte)0);
    }
    
    private a(s params, byte paramByte)
    {
      this.dad = l.b(params);
    }
    
    private void clearDynamicTable()
    {
      Arrays.fill(this.daJ, null);
      this.nextHeaderIndex = (this.daJ.length - 1);
      this.headerCount = 0;
      this.dynamicTableByteCount = 0;
    }
    
    private int evictToRecoverBytes(int paramInt)
    {
      int i = 0;
      int k = 0;
      if (paramInt > 0)
      {
        i = this.daJ.length - 1;
        int j = paramInt;
        paramInt = k;
        while ((i >= this.nextHeaderIndex) && (j > 0))
        {
          j -= this.daJ[i].hpackSize;
          this.dynamicTableByteCount -= this.daJ[i].hpackSize;
          this.headerCount -= 1;
          paramInt += 1;
          i -= 1;
        }
        System.arraycopy(this.daJ, this.nextHeaderIndex + 1, this.daJ, this.nextHeaderIndex + 1 + paramInt, this.headerCount);
        this.nextHeaderIndex += paramInt;
        i = paramInt;
      }
      return i;
    }
    
    static boolean isStaticHeader(int paramInt)
    {
      return (paramInt >= 0) && (paramInt <= d.daI.length - 1);
    }
    
    private int readByte()
      throws IOException
    {
      return this.dad.readByte() & 0xFF;
    }
    
    final f MT()
      throws IOException
    {
      int j = readByte();
      int i;
      k localk;
      byte[] arrayOfByte;
      ByteArrayOutputStream localByteArrayOutputStream;
      k.a locala1;
      int k;
      if ((j & 0x80) == 128)
      {
        i = 1;
        j = readInt(j, 127);
        if (i != 0)
        {
          localk = k.MY();
          arrayOfByte = this.dad.ag(j);
          localByteArrayOutputStream = new ByteArrayOutputStream();
          locala1 = localk.dbH;
          j = 0;
          i = 0;
          k = 0;
        }
      }
      else
      {
        int m;
        k.a locala2;
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
            locala1 = locala1.dbI[(k >>> i - 8 & 0xFF)];
            if (locala1.dbI == null)
            {
              localByteArrayOutputStream.write(locala1.symbol);
              i -= locala1.terminalBits;
              locala1 = localk.dbH;
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
          locala1 = locala2.dbI[(k << 8 - m & 0xFF)];
          if ((locala1.dbI != null) || (locala1.terminalBits > m)) {
            break;
          }
          localByteArrayOutputStream.write(locala1.symbol);
          m -= locala1.terminalBits;
          locala2 = localk.dbH;
        }
        return f.R(localByteArrayOutputStream.toByteArray());
      }
      return this.dad.az(j);
    }
    
    final void a(c paramc)
    {
      this.headerList.add(paramc);
      int i = paramc.hpackSize;
      if (i > this.maxDynamicTableByteCount)
      {
        clearDynamicTable();
        return;
      }
      evictToRecoverBytes(this.dynamicTableByteCount + i - this.maxDynamicTableByteCount);
      if (this.headerCount + 1 > this.daJ.length)
      {
        c[] arrayOfc = new c[this.daJ.length * 2];
        System.arraycopy(this.daJ, 0, arrayOfc, this.daJ.length, this.daJ.length);
        this.nextHeaderIndex = (this.daJ.length - 1);
        this.daJ = arrayOfc;
      }
      int j = this.nextHeaderIndex;
      this.nextHeaderIndex = (j - 1);
      this.daJ[j] = paramc;
      this.headerCount += 1;
      this.dynamicTableByteCount = (i + this.dynamicTableByteCount);
    }
    
    final void adjustDynamicTableByteCount()
    {
      if (this.maxDynamicTableByteCount < this.dynamicTableByteCount)
      {
        if (this.maxDynamicTableByteCount == 0) {
          clearDynamicTable();
        }
      }
      else {
        return;
      }
      evictToRecoverBytes(this.dynamicTableByteCount - this.maxDynamicTableByteCount);
    }
    
    final int dynamicTableIndex(int paramInt)
    {
      return this.nextHeaderIndex + 1 + paramInt;
    }
    
    final f fR(int paramInt)
      throws IOException
    {
      if (isStaticHeader(paramInt)) {
        return d.daI[paramInt].daG;
      }
      int i = dynamicTableIndex(paramInt - d.daI.length);
      if ((i < 0) || (i >= this.daJ.length)) {
        throw new IOException("Header index too large " + (paramInt + 1));
      }
      return this.daJ[i].daG;
    }
    
    final int readInt(int paramInt1, int paramInt2)
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
        i = readByte();
        if ((i & 0x80) == 0) {
          break;
        }
        paramInt2 += ((i & 0x7F) << paramInt1);
        paramInt1 += 7;
      }
      return (i << paramInt1) + paramInt2;
    }
  }
  
  static final class b
  {
    c[] daJ = new c[8];
    private final d.c daK;
    int dynamicTableByteCount = 0;
    private boolean emitDynamicTableSizeUpdate;
    int headerCount = 0;
    int headerTableSizeSetting = 4096;
    int maxDynamicTableByteCount = 4096;
    int nextHeaderIndex = this.daJ.length - 1;
    private int smallestHeaderTableSizeSetting = Integer.MAX_VALUE;
    private final boolean useCompression = true;
    
    b(d.c paramc)
    {
      this(paramc, (byte)0);
    }
    
    private b(d.c paramc, byte paramByte)
    {
      this.daK = paramc;
    }
    
    private void b(f paramf)
      throws IOException
    {
      if (this.useCompression)
      {
        k.MY();
        if (k.c(paramf) < paramf.size())
        {
          d.c localc = new d.c();
          k.MY();
          k.a(paramf, localc);
          paramf = localc.MT();
          writeInt(paramf.size(), 127, 128);
          this.daK.d(paramf);
          return;
        }
      }
      writeInt(paramf.size(), 127, 0);
      this.daK.d(paramf);
    }
    
    private void b(c paramc)
    {
      int i = paramc.hpackSize;
      if (i > this.maxDynamicTableByteCount)
      {
        clearDynamicTable();
        return;
      }
      evictToRecoverBytes(this.dynamicTableByteCount + i - this.maxDynamicTableByteCount);
      if (this.headerCount + 1 > this.daJ.length)
      {
        c[] arrayOfc = new c[this.daJ.length * 2];
        System.arraycopy(this.daJ, 0, arrayOfc, this.daJ.length, this.daJ.length);
        this.nextHeaderIndex = (this.daJ.length - 1);
        this.daJ = arrayOfc;
      }
      int j = this.nextHeaderIndex;
      this.nextHeaderIndex = (j - 1);
      this.daJ[j] = paramc;
      this.headerCount += 1;
      this.dynamicTableByteCount = (i + this.dynamicTableByteCount);
    }
    
    private void clearDynamicTable()
    {
      Arrays.fill(this.daJ, null);
      this.nextHeaderIndex = (this.daJ.length - 1);
      this.headerCount = 0;
      this.dynamicTableByteCount = 0;
    }
    
    private int evictToRecoverBytes(int paramInt)
    {
      int i = 0;
      int k = 0;
      if (paramInt > 0)
      {
        i = this.daJ.length - 1;
        int j = paramInt;
        paramInt = k;
        while ((i >= this.nextHeaderIndex) && (j > 0))
        {
          j -= this.daJ[i].hpackSize;
          this.dynamicTableByteCount -= this.daJ[i].hpackSize;
          this.headerCount -= 1;
          paramInt += 1;
          i -= 1;
        }
        System.arraycopy(this.daJ, this.nextHeaderIndex + 1, this.daJ, this.nextHeaderIndex + 1 + paramInt, this.headerCount);
        Arrays.fill(this.daJ, this.nextHeaderIndex + 1, this.nextHeaderIndex + 1 + paramInt, null);
        this.nextHeaderIndex += paramInt;
        i = paramInt;
      }
      return i;
    }
    
    private void writeInt(int paramInt1, int paramInt2, int paramInt3)
    {
      if (paramInt1 < paramInt2)
      {
        this.daK.fV(paramInt3 | paramInt1);
        return;
      }
      this.daK.fV(paramInt3 | paramInt2);
      paramInt1 -= paramInt2;
      while (paramInt1 >= 128)
      {
        this.daK.fV(paramInt1 & 0x7F | 0x80);
        paramInt1 >>>= 7;
      }
      this.daK.fV(paramInt1);
    }
    
    final void setHeaderTableSizeSetting(int paramInt)
    {
      this.headerTableSizeSetting = paramInt;
      paramInt = Math.min(paramInt, 16384);
      if (this.maxDynamicTableByteCount == paramInt) {}
      do
      {
        return;
        if (paramInt < this.maxDynamicTableByteCount) {
          this.smallestHeaderTableSizeSetting = Math.min(this.smallestHeaderTableSizeSetting, paramInt);
        }
        this.emitDynamicTableSizeUpdate = true;
        this.maxDynamicTableByteCount = paramInt;
      } while (this.maxDynamicTableByteCount >= this.dynamicTableByteCount);
      if (this.maxDynamicTableByteCount == 0)
      {
        clearDynamicTable();
        return;
      }
      evictToRecoverBytes(this.dynamicTableByteCount - this.maxDynamicTableByteCount);
    }
    
    final void writeHeaders(List<c> paramList)
      throws IOException
    {
      if (this.emitDynamicTableSizeUpdate)
      {
        if (this.smallestHeaderTableSizeSetting < this.maxDynamicTableByteCount) {
          writeInt(this.smallestHeaderTableSizeSetting, 31, 32);
        }
        this.emitDynamicTableSizeUpdate = false;
        this.smallestHeaderTableSizeSetting = Integer.MAX_VALUE;
        writeInt(this.maxDynamicTableByteCount, 31, 32);
      }
      int i2 = paramList.size();
      int k = 0;
      c localc;
      f localf1;
      f localf2;
      Object localObject;
      int i;
      int m;
      int j;
      if (k < i2)
      {
        localc = (c)paramList.get(k);
        localf1 = localc.daG.No();
        localf2 = localc.daH;
        localObject = (Integer)d.NAME_TO_FIRST_INDEX.get(localf1);
        if (localObject == null) {
          break label463;
        }
        i = ((Integer)localObject).intValue() + 1;
        if ((i <= 1) || (i >= 8)) {
          break label458;
        }
        if (okhttp3.internal.c.equal(d.daI[(i - 1)].daH, localf2))
        {
          m = i;
          j = i;
          i = m;
        }
      }
      for (;;)
      {
        label166:
        int n = i;
        int i1 = j;
        if (j == -1)
        {
          m = this.nextHeaderIndex + 1;
          int i3 = this.daJ.length;
          label192:
          n = i;
          i1 = j;
          if (m < i3)
          {
            n = i;
            if (!okhttp3.internal.c.equal(this.daJ[m].daG, localf1)) {
              break label332;
            }
            if (!okhttp3.internal.c.equal(this.daJ[m].daH, localf2)) {
              break label310;
            }
            i1 = m - this.nextHeaderIndex + d.daI.length;
            n = i;
          }
        }
        if (i1 != -1) {
          writeInt(i1, 127, 128);
        }
        for (;;)
        {
          k += 1;
          break;
          if (!okhttp3.internal.c.equal(d.daI[i].daH, localf2)) {
            break label458;
          }
          j = i + 1;
          break label166;
          label310:
          n = i;
          if (i == -1) {
            n = m - this.nextHeaderIndex + d.daI.length;
          }
          label332:
          m += 1;
          i = n;
          break label192;
          if (n == -1)
          {
            this.daK.fV(64);
            b(localf1);
            b(localf2);
            b(localc);
          }
          else
          {
            localObject = c.daA;
            if ((localf1.a(0, (f)localObject, 0, ((f)localObject).size())) && (!c.daF.equals(localf1)))
            {
              writeInt(n, 15, 0);
              b(localf2);
            }
            else
            {
              writeInt(n, 63, 64);
              b(localf2);
              b(localc);
            }
          }
        }
        return;
        label458:
        j = -1;
        continue;
        label463:
        i = -1;
        j = -1;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/e/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */