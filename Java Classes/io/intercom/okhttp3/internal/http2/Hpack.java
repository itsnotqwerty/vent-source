package io.intercom.okhttp3.internal.http2;

import io.intercom.b.c;
import io.intercom.b.e;
import io.intercom.b.f;
import io.intercom.b.l;
import io.intercom.b.s;
import io.intercom.okhttp3.internal.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

final class Hpack
{
  static final Map<f, Integer> NAME_TO_FIRST_INDEX = nameToFirstIndex();
  private static final int PREFIX_4_BITS = 15;
  private static final int PREFIX_5_BITS = 31;
  private static final int PREFIX_6_BITS = 63;
  private static final int PREFIX_7_BITS = 127;
  static final Header[] STATIC_HEADER_TABLE = { new Header(Header.TARGET_AUTHORITY, ""), new Header(Header.TARGET_METHOD, "GET"), new Header(Header.TARGET_METHOD, "POST"), new Header(Header.TARGET_PATH, "/"), new Header(Header.TARGET_PATH, "/index.html"), new Header(Header.TARGET_SCHEME, "http"), new Header(Header.TARGET_SCHEME, "https"), new Header(Header.RESPONSE_STATUS, "200"), new Header(Header.RESPONSE_STATUS, "204"), new Header(Header.RESPONSE_STATUS, "206"), new Header(Header.RESPONSE_STATUS, "304"), new Header(Header.RESPONSE_STATUS, "400"), new Header(Header.RESPONSE_STATUS, "404"), new Header(Header.RESPONSE_STATUS, "500"), new Header("accept-charset", ""), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", ""), new Header("accept-ranges", ""), new Header("accept", ""), new Header("access-control-allow-origin", ""), new Header("age", ""), new Header("allow", ""), new Header("authorization", ""), new Header("cache-control", ""), new Header("content-disposition", ""), new Header("content-encoding", ""), new Header("content-language", ""), new Header("content-length", ""), new Header("content-location", ""), new Header("content-range", ""), new Header("content-type", ""), new Header("cookie", ""), new Header("date", ""), new Header("etag", ""), new Header("expect", ""), new Header("expires", ""), new Header("from", ""), new Header("host", ""), new Header("if-match", ""), new Header("if-modified-since", ""), new Header("if-none-match", ""), new Header("if-range", ""), new Header("if-unmodified-since", ""), new Header("last-modified", ""), new Header("link", ""), new Header("location", ""), new Header("max-forwards", ""), new Header("proxy-authenticate", ""), new Header("proxy-authorization", ""), new Header("range", ""), new Header("referer", ""), new Header("refresh", ""), new Header("retry-after", ""), new Header("server", ""), new Header("set-cookie", ""), new Header("strict-transport-security", ""), new Header("transfer-encoding", ""), new Header("user-agent", ""), new Header("vary", ""), new Header("via", ""), new Header("www-authenticate", "") };
  
  static f checkLowercase(f paramf)
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
  
  private static Map<f, Integer> nameToFirstIndex()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(STATIC_HEADER_TABLE.length);
    int i = 0;
    while (i < STATIC_HEADER_TABLE.length)
    {
      if (!localLinkedHashMap.containsKey(STATIC_HEADER_TABLE[i].name)) {
        localLinkedHashMap.put(STATIC_HEADER_TABLE[i].name, Integer.valueOf(i));
      }
      i += 1;
    }
    return Collections.unmodifiableMap(localLinkedHashMap);
  }
  
  static final class Reader
  {
    Header[] dynamicTable = new Header[8];
    int dynamicTableByteCount = 0;
    int headerCount = 0;
    private final List<Header> headerList = new ArrayList();
    private final int headerTableSizeSetting;
    private int maxDynamicTableByteCount;
    int nextHeaderIndex = this.dynamicTable.length - 1;
    private final e source;
    
    Reader(int paramInt1, int paramInt2, s params)
    {
      this.headerTableSizeSetting = paramInt1;
      this.maxDynamicTableByteCount = paramInt2;
      this.source = l.b(params);
    }
    
    Reader(int paramInt, s params)
    {
      this(paramInt, paramInt, params);
    }
    
    private void adjustDynamicTableByteCount()
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
    
    private void clearDynamicTable()
    {
      Arrays.fill(this.dynamicTable, null);
      this.nextHeaderIndex = (this.dynamicTable.length - 1);
      this.headerCount = 0;
      this.dynamicTableByteCount = 0;
    }
    
    private int dynamicTableIndex(int paramInt)
    {
      return this.nextHeaderIndex + 1 + paramInt;
    }
    
    private int evictToRecoverBytes(int paramInt)
    {
      int i = 0;
      int k = 0;
      if (paramInt > 0)
      {
        i = this.dynamicTable.length - 1;
        int j = paramInt;
        paramInt = k;
        while ((i >= this.nextHeaderIndex) && (j > 0))
        {
          j -= this.dynamicTable[i].hpackSize;
          this.dynamicTableByteCount -= this.dynamicTable[i].hpackSize;
          this.headerCount -= 1;
          paramInt += 1;
          i -= 1;
        }
        System.arraycopy(this.dynamicTable, this.nextHeaderIndex + 1, this.dynamicTable, this.nextHeaderIndex + 1 + paramInt, this.headerCount);
        this.nextHeaderIndex += paramInt;
        i = paramInt;
      }
      return i;
    }
    
    private f getName(int paramInt)
    {
      if (isStaticHeader(paramInt)) {
        return Hpack.STATIC_HEADER_TABLE[paramInt].name;
      }
      return this.dynamicTable[dynamicTableIndex(paramInt - Hpack.STATIC_HEADER_TABLE.length)].name;
    }
    
    private void insertIntoDynamicTable(int paramInt, Header paramHeader)
    {
      this.headerList.add(paramHeader);
      int j = paramHeader.hpackSize;
      int i = j;
      if (paramInt != -1) {
        i = j - this.dynamicTable[dynamicTableIndex(paramInt)].hpackSize;
      }
      if (i > this.maxDynamicTableByteCount)
      {
        clearDynamicTable();
        return;
      }
      j = evictToRecoverBytes(this.dynamicTableByteCount + i - this.maxDynamicTableByteCount);
      if (paramInt == -1)
      {
        if (this.headerCount + 1 > this.dynamicTable.length)
        {
          Header[] arrayOfHeader = new Header[this.dynamicTable.length * 2];
          System.arraycopy(this.dynamicTable, 0, arrayOfHeader, this.dynamicTable.length, this.dynamicTable.length);
          this.nextHeaderIndex = (this.dynamicTable.length - 1);
          this.dynamicTable = arrayOfHeader;
        }
        paramInt = this.nextHeaderIndex;
        this.nextHeaderIndex = (paramInt - 1);
        this.dynamicTable[paramInt] = paramHeader;
        this.headerCount += 1;
      }
      for (;;)
      {
        this.dynamicTableByteCount = (i + this.dynamicTableByteCount);
        return;
        int k = dynamicTableIndex(paramInt);
        this.dynamicTable[(j + k + paramInt)] = paramHeader;
      }
    }
    
    private boolean isStaticHeader(int paramInt)
    {
      return (paramInt >= 0) && (paramInt <= Hpack.STATIC_HEADER_TABLE.length - 1);
    }
    
    private int readByte()
      throws IOException
    {
      return this.source.readByte() & 0xFF;
    }
    
    private void readIndexedHeader(int paramInt)
      throws IOException
    {
      if (isStaticHeader(paramInt))
      {
        Header localHeader = Hpack.STATIC_HEADER_TABLE[paramInt];
        this.headerList.add(localHeader);
        return;
      }
      int i = dynamicTableIndex(paramInt - Hpack.STATIC_HEADER_TABLE.length);
      if ((i < 0) || (i > this.dynamicTable.length - 1)) {
        throw new IOException("Header index too large " + (paramInt + 1));
      }
      this.headerList.add(this.dynamicTable[i]);
    }
    
    private void readLiteralHeaderWithIncrementalIndexingIndexedName(int paramInt)
      throws IOException
    {
      insertIntoDynamicTable(-1, new Header(getName(paramInt), readByteString()));
    }
    
    private void readLiteralHeaderWithIncrementalIndexingNewName()
      throws IOException
    {
      insertIntoDynamicTable(-1, new Header(Hpack.checkLowercase(readByteString()), readByteString()));
    }
    
    private void readLiteralHeaderWithoutIndexingIndexedName(int paramInt)
      throws IOException
    {
      f localf1 = getName(paramInt);
      f localf2 = readByteString();
      this.headerList.add(new Header(localf1, localf2));
    }
    
    private void readLiteralHeaderWithoutIndexingNewName()
      throws IOException
    {
      f localf1 = Hpack.checkLowercase(readByteString());
      f localf2 = readByteString();
      this.headerList.add(new Header(localf1, localf2));
    }
    
    public final List<Header> getAndResetHeaderList()
    {
      ArrayList localArrayList = new ArrayList(this.headerList);
      this.headerList.clear();
      return localArrayList;
    }
    
    final int maxDynamicTableByteCount()
    {
      return this.maxDynamicTableByteCount;
    }
    
    final f readByteString()
      throws IOException
    {
      int j = readByte();
      if ((j & 0x80) == 128) {}
      for (int i = 1;; i = 0)
      {
        j = readInt(j, 127);
        if (i == 0) {
          break;
        }
        return f.H(Huffman.get().decode(this.source.ag(j)));
      }
      return this.source.ac(j);
    }
    
    final void readHeaders()
      throws IOException
    {
      while (!this.source.Kr())
      {
        int i = this.source.readByte() & 0xFF;
        if (i == 128) {
          throw new IOException("index == 0");
        }
        if ((i & 0x80) == 128)
        {
          readIndexedHeader(readInt(i, 127) - 1);
        }
        else if (i == 64)
        {
          readLiteralHeaderWithIncrementalIndexingNewName();
        }
        else if ((i & 0x40) == 64)
        {
          readLiteralHeaderWithIncrementalIndexingIndexedName(readInt(i, 63) - 1);
        }
        else if ((i & 0x20) == 32)
        {
          this.maxDynamicTableByteCount = readInt(i, 31);
          if ((this.maxDynamicTableByteCount < 0) || (this.maxDynamicTableByteCount > this.headerTableSizeSetting)) {
            throw new IOException("Invalid dynamic table size update " + this.maxDynamicTableByteCount);
          }
          adjustDynamicTableByteCount();
        }
        else if ((i == 16) || (i == 0))
        {
          readLiteralHeaderWithoutIndexingNewName();
        }
        else
        {
          readLiteralHeaderWithoutIndexingIndexedName(readInt(i, 15) - 1);
        }
      }
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
  
  static final class Writer
  {
    private static final int SETTINGS_HEADER_TABLE_SIZE = 4096;
    private static final int SETTINGS_HEADER_TABLE_SIZE_LIMIT = 16384;
    Header[] dynamicTable = new Header[8];
    int dynamicTableByteCount = 0;
    private boolean emitDynamicTableSizeUpdate;
    int headerCount = 0;
    int headerTableSizeSetting;
    int maxDynamicTableByteCount;
    int nextHeaderIndex = this.dynamicTable.length - 1;
    private final c out;
    private int smallestHeaderTableSizeSetting = Integer.MAX_VALUE;
    private final boolean useCompression;
    
    Writer(int paramInt, boolean paramBoolean, c paramc)
    {
      this.headerTableSizeSetting = paramInt;
      this.maxDynamicTableByteCount = paramInt;
      this.useCompression = paramBoolean;
      this.out = paramc;
    }
    
    Writer(c paramc)
    {
      this(4096, true, paramc);
    }
    
    private void adjustDynamicTableByteCount()
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
    
    private void clearDynamicTable()
    {
      Arrays.fill(this.dynamicTable, null);
      this.nextHeaderIndex = (this.dynamicTable.length - 1);
      this.headerCount = 0;
      this.dynamicTableByteCount = 0;
    }
    
    private int evictToRecoverBytes(int paramInt)
    {
      int i = 0;
      int k = 0;
      if (paramInt > 0)
      {
        i = this.dynamicTable.length - 1;
        int j = paramInt;
        paramInt = k;
        while ((i >= this.nextHeaderIndex) && (j > 0))
        {
          j -= this.dynamicTable[i].hpackSize;
          this.dynamicTableByteCount -= this.dynamicTable[i].hpackSize;
          this.headerCount -= 1;
          paramInt += 1;
          i -= 1;
        }
        System.arraycopy(this.dynamicTable, this.nextHeaderIndex + 1, this.dynamicTable, this.nextHeaderIndex + 1 + paramInt, this.headerCount);
        Arrays.fill(this.dynamicTable, this.nextHeaderIndex + 1, this.nextHeaderIndex + 1 + paramInt, null);
        this.nextHeaderIndex += paramInt;
        i = paramInt;
      }
      return i;
    }
    
    private void insertIntoDynamicTable(Header paramHeader)
    {
      int i = paramHeader.hpackSize;
      if (i > this.maxDynamicTableByteCount)
      {
        clearDynamicTable();
        return;
      }
      evictToRecoverBytes(this.dynamicTableByteCount + i - this.maxDynamicTableByteCount);
      if (this.headerCount + 1 > this.dynamicTable.length)
      {
        Header[] arrayOfHeader = new Header[this.dynamicTable.length * 2];
        System.arraycopy(this.dynamicTable, 0, arrayOfHeader, this.dynamicTable.length, this.dynamicTable.length);
        this.nextHeaderIndex = (this.dynamicTable.length - 1);
        this.dynamicTable = arrayOfHeader;
      }
      int j = this.nextHeaderIndex;
      this.nextHeaderIndex = (j - 1);
      this.dynamicTable[j] = paramHeader;
      this.headerCount += 1;
      this.dynamicTableByteCount = (i + this.dynamicTableByteCount);
    }
    
    final void setHeaderTableSizeSetting(int paramInt)
    {
      this.headerTableSizeSetting = paramInt;
      paramInt = Math.min(paramInt, 16384);
      if (this.maxDynamicTableByteCount == paramInt) {
        return;
      }
      if (paramInt < this.maxDynamicTableByteCount) {
        this.smallestHeaderTableSizeSetting = Math.min(this.smallestHeaderTableSizeSetting, paramInt);
      }
      this.emitDynamicTableSizeUpdate = true;
      this.maxDynamicTableByteCount = paramInt;
      adjustDynamicTableByteCount();
    }
    
    final void writeByteString(f paramf)
      throws IOException
    {
      if ((this.useCompression) && (Huffman.get().encodedLength(paramf) < paramf.size()))
      {
        c localc = new c();
        Huffman.get().encode(paramf, localc);
        paramf = localc.readByteString();
        writeInt(paramf.size(), 127, 128);
        this.out.a(paramf);
        return;
      }
      writeInt(paramf.size(), 127, 0);
      this.out.a(paramf);
    }
    
    final void writeHeaders(List<Header> paramList)
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
      Header localHeader;
      f localf1;
      f localf2;
      Object localObject;
      int i;
      int m;
      int j;
      if (k < i2)
      {
        localHeader = (Header)paramList.get(k);
        localf1 = localHeader.name.KK();
        localf2 = localHeader.value;
        localObject = (Integer)Hpack.NAME_TO_FIRST_INDEX.get(localf1);
        if (localObject == null) {
          break label463;
        }
        i = ((Integer)localObject).intValue() + 1;
        if ((i <= 1) || (i >= 8)) {
          break label458;
        }
        if (Util.equal(Hpack.STATIC_HEADER_TABLE[(i - 1)].value, localf2))
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
          int i3 = this.dynamicTable.length;
          label192:
          n = i;
          i1 = j;
          if (m < i3)
          {
            n = i;
            if (!Util.equal(this.dynamicTable[m].name, localf1)) {
              break label332;
            }
            if (!Util.equal(this.dynamicTable[m].value, localf2)) {
              break label310;
            }
            i1 = m - this.nextHeaderIndex + Hpack.STATIC_HEADER_TABLE.length;
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
          if (!Util.equal(Hpack.STATIC_HEADER_TABLE[i].value, localf2)) {
            break label458;
          }
          j = i + 1;
          break label166;
          label310:
          n = i;
          if (i == -1) {
            n = m - this.nextHeaderIndex + Hpack.STATIC_HEADER_TABLE.length;
          }
          label332:
          m += 1;
          i = n;
          break label192;
          if (n == -1)
          {
            this.out.fv(64);
            writeByteString(localf1);
            writeByteString(localf2);
            insertIntoDynamicTable(localHeader);
          }
          else
          {
            localObject = Header.PSEUDO_PREFIX;
            if ((localf1.a(0, (f)localObject, 0, ((f)localObject).size())) && (!Header.TARGET_AUTHORITY.equals(localf1)))
            {
              writeInt(n, 15, 0);
              writeByteString(localf2);
            }
            else
            {
              writeInt(n, 63, 64);
              writeByteString(localf2);
              insertIntoDynamicTable(localHeader);
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
    
    final void writeInt(int paramInt1, int paramInt2, int paramInt3)
    {
      if (paramInt1 < paramInt2)
      {
        this.out.fv(paramInt3 | paramInt1);
        return;
      }
      this.out.fv(paramInt3 | paramInt2);
      paramInt1 -= paramInt2;
      while (paramInt1 >= 128)
      {
        this.out.fv(paramInt1 & 0x7F | 0x80);
        paramInt1 >>>= 7;
      }
      this.out.fv(paramInt1);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/http2/Hpack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */