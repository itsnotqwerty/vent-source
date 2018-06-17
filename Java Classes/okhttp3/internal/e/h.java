package okhttp3.internal.e;

import d.f;
import d.s;
import d.t;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

final class h
  implements Closeable
{
  static final Logger logger = Logger.getLogger(e.class.getName());
  final boolean client;
  final d.e dad;
  private final a dbt;
  final d.a dbu;
  
  h(d.e parame, boolean paramBoolean)
  {
    this.dad = parame;
    this.client = paramBoolean;
    this.dbt = new a(this.dad);
    this.dbu = new d.a(this.dbt);
  }
  
  private void MW()
    throws IOException
  {
    this.dad.readInt();
    this.dad.readByte();
  }
  
  static int c(d.e parame)
    throws IOException
  {
    return (parame.readByte() & 0xFF) << 16 | (parame.readByte() & 0xFF) << 8 | parame.readByte() & 0xFF;
  }
  
  private static int lengthWithoutPadding(int paramInt, byte paramByte, short paramShort)
    throws IOException
  {
    short s = paramInt;
    if ((paramByte & 0x8) != 0) {
      s = paramInt - 1;
    }
    if (paramShort > s) {
      throw e.ioException("PROTOCOL_ERROR padding %s > remaining length %s", new Object[] { Short.valueOf(paramShort), Integer.valueOf(s) });
    }
    return (short)(s - paramShort);
  }
  
  private List<c> readHeaderBlock(int paramInt1, short paramShort, byte paramByte, int paramInt2)
    throws IOException
  {
    Object localObject1 = this.dbt;
    this.dbt.left = paramInt1;
    ((a)localObject1).length = paramInt1;
    this.dbt.padding = paramShort;
    this.dbt.flags = paramByte;
    this.dbt.streamId = paramInt2;
    localObject1 = this.dbu;
    while (!((d.a)localObject1).dad.Kr())
    {
      paramInt1 = ((d.a)localObject1).dad.readByte() & 0xFF;
      if (paramInt1 == 128) {
        throw new IOException("index == 0");
      }
      if ((paramInt1 & 0x80) == 128)
      {
        paramInt1 = ((d.a)localObject1).readInt(paramInt1, 127) - 1;
        if (d.a.isStaticHeader(paramInt1))
        {
          localObject2 = d.daI[paramInt1];
          ((d.a)localObject1).headerList.add(localObject2);
        }
        else
        {
          paramInt2 = ((d.a)localObject1).dynamicTableIndex(paramInt1 - d.daI.length);
          if ((paramInt2 < 0) || (paramInt2 >= ((d.a)localObject1).daJ.length)) {
            throw new IOException("Header index too large " + (paramInt1 + 1));
          }
          ((d.a)localObject1).headerList.add(localObject1.daJ[paramInt2]);
        }
      }
      else if (paramInt1 == 64)
      {
        ((d.a)localObject1).a(new c(d.a(((d.a)localObject1).MT()), ((d.a)localObject1).MT()));
      }
      else if ((paramInt1 & 0x40) == 64)
      {
        ((d.a)localObject1).a(new c(((d.a)localObject1).fR(((d.a)localObject1).readInt(paramInt1, 63) - 1), ((d.a)localObject1).MT()));
      }
      else if ((paramInt1 & 0x20) == 32)
      {
        ((d.a)localObject1).maxDynamicTableByteCount = ((d.a)localObject1).readInt(paramInt1, 31);
        if ((((d.a)localObject1).maxDynamicTableByteCount < 0) || (((d.a)localObject1).maxDynamicTableByteCount > ((d.a)localObject1).headerTableSizeSetting)) {
          throw new IOException("Invalid dynamic table size update " + ((d.a)localObject1).maxDynamicTableByteCount);
        }
        ((d.a)localObject1).adjustDynamicTableByteCount();
      }
      else
      {
        f localf;
        if ((paramInt1 == 16) || (paramInt1 == 0))
        {
          localObject2 = d.a(((d.a)localObject1).MT());
          localf = ((d.a)localObject1).MT();
          ((d.a)localObject1).headerList.add(new c((f)localObject2, localf));
        }
        else
        {
          localObject2 = ((d.a)localObject1).fR(((d.a)localObject1).readInt(paramInt1, 15) - 1);
          localf = ((d.a)localObject1).MT();
          ((d.a)localObject1).headerList.add(new c((f)localObject2, localf));
        }
      }
    }
    localObject1 = this.dbu;
    Object localObject2 = new ArrayList(((d.a)localObject1).headerList);
    ((d.a)localObject1).headerList.clear();
    return (List<c>)localObject2;
  }
  
  public final boolean a(boolean paramBoolean, b paramb)
    throws IOException
  {
    boolean bool1 = true;
    short s2 = 0;
    boolean bool2 = false;
    short s1 = 0;
    int k;
    try
    {
      this.dad.Z(9L);
      k = c(this.dad);
      if ((k >= 0) && (k <= 16384)) {
        break label69;
      }
      throw e.ioException("FRAME_SIZE_ERROR: %s", new Object[] { Integer.valueOf(k) });
    }
    catch (IOException paramb)
    {
      paramBoolean = false;
    }
    return paramBoolean;
    label69:
    byte b1 = (byte)(this.dad.readByte() & 0xFF);
    if ((paramBoolean) && (b1 != 4)) {
      throw e.ioException("Expected a SETTINGS frame but was %s", new Object[] { Byte.valueOf(b1) });
    }
    byte b2 = (byte)(this.dad.readByte() & 0xFF);
    int j = this.dad.readInt() & 0x7FFFFFFF;
    if (logger.isLoggable(Level.FINE)) {
      logger.fine(e.frameLog(true, j, k, b1, b2));
    }
    switch (b1)
    {
    default: 
      this.dad.ah(k);
      return true;
    case 0: 
      if (j == 0) {
        throw e.ioException("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
      }
      if ((b2 & 0x1) != 0)
      {
        paramBoolean = true;
        if ((b2 & 0x20) == 0) {
          break label289;
        }
      }
      for (i = 1;; i = 0)
      {
        if (i == 0) {
          break label295;
        }
        throw e.ioException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        paramBoolean = false;
        break;
      }
      if ((b2 & 0x8) != 0) {
        s1 = (short)(this.dad.readByte() & 0xFF);
      }
      i = lengthWithoutPadding(k, b2, s1);
      paramb.a(paramBoolean, j, this.dad, i);
      this.dad.ah(s1);
      return true;
    case 1: 
      label289:
      label295:
      if (j == 0) {
        throw e.ioException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
      }
      if ((b2 & 0x1) != 0)
      {
        paramBoolean = true;
        label384:
        if ((b2 & 0x8) == 0) {
          break label461;
        }
        s1 = (short)(this.dad.readByte() & 0xFF);
        label408:
        if ((b2 & 0x20) == 0) {
          break label1280;
        }
        MW();
      }
      break;
    }
    label461:
    label864:
    label1280:
    for (int i = k - 5;; i = k)
    {
      paramb.b(paramBoolean, j, readHeaderBlock(lengthWithoutPadding(i, b2, s1), s1, b2, j));
      return true;
      paramBoolean = false;
      break label384;
      s1 = 0;
      break label408;
      if (k != 5) {
        throw e.ioException("TYPE_PRIORITY length: %d != 5", new Object[] { Integer.valueOf(k) });
      }
      if (j == 0) {
        throw e.ioException("TYPE_PRIORITY streamId == 0", new Object[0]);
      }
      MW();
      return true;
      if (k != 4) {
        throw e.ioException("TYPE_RST_STREAM length: %d != 4", new Object[] { Integer.valueOf(k) });
      }
      if (j == 0) {
        throw e.ioException("TYPE_RST_STREAM streamId == 0", new Object[0]);
      }
      i = this.dad.readInt();
      Object localObject = b.fQ(i);
      if (localObject == null) {
        throw e.ioException("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(i) });
      }
      paramb.c(j, (b)localObject);
      return true;
      if (j != 0) {
        throw e.ioException("TYPE_SETTINGS streamId != 0", new Object[0]);
      }
      if ((b2 & 0x1) != 0)
      {
        paramBoolean = bool1;
        if (k == 0) {
          break;
        }
        throw e.ioException("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
      }
      if (k % 6 != 0) {
        throw e.ioException("TYPE_SETTINGS length %% 6 != 0: %s", new Object[] { Integer.valueOf(k) });
      }
      localObject = new m();
      j = 0;
      if (j < k)
      {
        int m = this.dad.readShort() & 0xFFFF;
        int n = this.dad.readInt();
        i = m;
        switch (m)
        {
        default: 
          i = m;
        }
        do
        {
          do
          {
            for (;;)
            {
              ((m)localObject).aV(i, n);
              j += 6;
              break;
              i = m;
              if (n != 0)
              {
                i = m;
                if (n != 1)
                {
                  throw e.ioException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                  i = 4;
                }
              }
            }
            i = 7;
          } while (n >= 0);
          throw e.ioException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
          if (n < 16384) {
            break label864;
          }
          i = m;
        } while (n <= 16777215);
        throw e.ioException("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", new Object[] { Integer.valueOf(n) });
      }
      paramb.a((m)localObject);
      return true;
      if (j == 0) {
        throw e.ioException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
      }
      s1 = s2;
      if ((b2 & 0x8) != 0) {
        s1 = (short)(this.dad.readByte() & 0xFF);
      }
      paramb.c(this.dad.readInt() & 0x7FFFFFFF, readHeaderBlock(lengthWithoutPadding(k - 4, b2, s1), s1, b2, j));
      return true;
      if (k != 8) {
        throw e.ioException("TYPE_PING length != 8: %s", new Object[] { Integer.valueOf(k) });
      }
      if (j != 0) {
        throw e.ioException("TYPE_PING streamId != 0", new Object[0]);
      }
      i = this.dad.readInt();
      j = this.dad.readInt();
      paramBoolean = bool2;
      if ((b2 & 0x1) != 0) {
        paramBoolean = true;
      }
      paramb.ping(paramBoolean, i, j);
      return true;
      if (k < 8) {
        throw e.ioException("TYPE_GOAWAY length < 8: %s", new Object[] { Integer.valueOf(k) });
      }
      if (j != 0) {
        throw e.ioException("TYPE_GOAWAY streamId != 0", new Object[0]);
      }
      i = this.dad.readInt();
      j = this.dad.readInt();
      k -= 8;
      if (b.fQ(j) == null) {
        throw e.ioException("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(j) });
      }
      localObject = f.dcb;
      if (k > 0) {
        localObject = this.dad.az(k);
      }
      paramb.a(i, (f)localObject);
      return true;
      if (k != 4) {
        throw e.ioException("TYPE_WINDOW_UPDATE length !=4: %s", new Object[] { Integer.valueOf(k) });
      }
      long l = this.dad.readInt() & 0x7FFFFFFF;
      if (l == 0L) {
        throw e.ioException("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
      }
      paramb.windowUpdate(j, l);
      return true;
    }
  }
  
  public final void close()
    throws IOException
  {
    this.dad.close();
  }
  
  static final class a
    implements s
  {
    private final d.e dad;
    byte flags;
    int left;
    int length;
    short padding;
    int streamId;
    
    a(d.e parame)
    {
      this.dad = parame;
    }
    
    public final t MK()
    {
      return this.dad.MK();
    }
    
    public final long a(d.c paramc, long paramLong)
      throws IOException
    {
      if (this.left == 0)
      {
        this.dad.ah(this.padding);
        this.padding = 0;
        if ((this.flags & 0x4) == 0) {}
      }
      do
      {
        return -1L;
        int i = this.streamId;
        int j = h.c(this.dad);
        this.left = j;
        this.length = j;
        byte b = (byte)(this.dad.readByte() & 0xFF);
        this.flags = ((byte)(this.dad.readByte() & 0xFF));
        if (h.logger.isLoggable(Level.FINE)) {
          h.logger.fine(e.frameLog(true, this.streamId, this.length, b, this.flags));
        }
        this.streamId = (this.dad.readInt() & 0x7FFFFFFF);
        if (b != 9) {
          throw e.ioException("%s != TYPE_CONTINUATION", new Object[] { Byte.valueOf(b) });
        }
        if (this.streamId == i) {
          break;
        }
        throw e.ioException("TYPE_CONTINUATION streamId changed", new Object[0]);
        paramLong = this.dad.a(paramc, Math.min(paramLong, this.left));
      } while (paramLong == -1L);
      this.left = ((int)(this.left - paramLong));
      return paramLong;
    }
    
    public final void close()
      throws IOException
    {}
  }
  
  static abstract interface b
  {
    public abstract void a(int paramInt, f paramf);
    
    public abstract void a(m paramm);
    
    public abstract void a(boolean paramBoolean, int paramInt1, d.e parame, int paramInt2)
      throws IOException;
    
    public abstract void b(boolean paramBoolean, int paramInt, List<c> paramList);
    
    public abstract void c(int paramInt, List<c> paramList)
      throws IOException;
    
    public abstract void c(int paramInt, b paramb);
    
    public abstract void ping(boolean paramBoolean, int paramInt1, int paramInt2);
    
    public abstract void windowUpdate(int paramInt, long paramLong);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/e/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */