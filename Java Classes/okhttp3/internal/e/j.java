package okhttp3.internal.e;

import d.d;
import d.f;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class j
  implements Closeable
{
  private static final Logger logger = Logger.getLogger(e.class.getName());
  private final boolean client;
  private boolean closed;
  private final d dae;
  private final d.c dbE;
  final d.b dbF;
  int maxFrameSize;
  
  j(d paramd, boolean paramBoolean)
  {
    this.dae = paramd;
    this.client = paramBoolean;
    this.dbE = new d.c();
    this.dbF = new d.b(this.dbE);
    this.maxFrameSize = 16384;
  }
  
  private void frameHeader(int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
    throws IOException
  {
    if (logger.isLoggable(Level.FINE)) {
      logger.fine(e.frameLog(false, paramInt1, paramInt2, paramByte1, paramByte2));
    }
    if (paramInt2 > this.maxFrameSize) {
      throw e.illegalArgument("FRAME_SIZE_ERROR length > %d: %d", new Object[] { Integer.valueOf(this.maxFrameSize), Integer.valueOf(paramInt2) });
    }
    if ((0x80000000 & paramInt1) != 0) {
      throw e.illegalArgument("reserved bit set: %s", new Object[] { Integer.valueOf(paramInt1) });
    }
    d locald = this.dae;
    locald.gb(paramInt2 >>> 16 & 0xFF);
    locald.gb(paramInt2 >>> 8 & 0xFF);
    locald.gb(paramInt2 & 0xFF);
    this.dae.gb(paramByte1 & 0xFF);
    this.dae.gb(paramByte2 & 0xFF);
    this.dae.fZ(0x7FFFFFFF & paramInt1);
  }
  
  private void writeContinuationFrames(int paramInt, long paramLong)
    throws IOException
  {
    if (paramLong > 0L)
    {
      int i = (int)Math.min(this.maxFrameSize, paramLong);
      paramLong -= i;
      if (paramLong == 0L) {}
      for (byte b = 4;; b = 0)
      {
        frameHeader(paramInt, i, (byte)9, b);
        this.dae.b(this.dbE, i);
        break;
      }
    }
  }
  
  public final void a(int paramInt, b paramb, byte[] paramArrayOfByte)
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (paramb.httpCode == -1) {
      throw e.illegalArgument("errorCode.httpCode == -1", new Object[0]);
    }
    frameHeader(0, paramArrayOfByte.length + 8, (byte)7, (byte)0);
    this.dae.fZ(paramInt);
    this.dae.fZ(paramb.httpCode);
    if (paramArrayOfByte.length > 0) {
      this.dae.Q(paramArrayOfByte);
    }
    this.dae.flush();
  }
  
  public final void a(boolean paramBoolean, int paramInt1, d.c paramc, int paramInt2)
    throws IOException
  {
    byte b = 0;
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (paramBoolean) {
      b = 1;
    }
    frameHeader(paramInt1, paramInt2, (byte)0, b);
    if (paramInt2 > 0) {
      this.dae.b(paramc, paramInt2);
    }
  }
  
  public final void b(m paramm)
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    int i = this.maxFrameSize;
    if ((paramm.set & 0x20) != 0) {
      i = paramm.values[5];
    }
    this.maxFrameSize = i;
    if (paramm.getHeaderTableSize() != -1) {
      this.dbF.setHeaderTableSizeSetting(paramm.getHeaderTableSize());
    }
    frameHeader(0, 0, (byte)4, (byte)1);
    this.dae.flush();
  }
  
  public final void c(int paramInt, b paramb)
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (paramb.httpCode == -1) {
      throw new IllegalArgumentException();
    }
    frameHeader(paramInt, 4, (byte)3, (byte)0);
    this.dae.fZ(paramb.httpCode);
    this.dae.flush();
  }
  
  public final void c(m paramm)
    throws IOException
  {
    int i = 0;
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    frameHeader(0, Integer.bitCount(paramm.set) * 6, (byte)4, (byte)0);
    int j;
    if (i < 10)
    {
      if (!paramm.isSet(i)) {
        break label111;
      }
      if (i != 4) {
        break label118;
      }
      j = 3;
    }
    for (;;)
    {
      label64:
      this.dae.ga(j);
      this.dae.fZ(paramm.values[i]);
      break label111;
      this.dae.flush();
      return;
      label111:
      label118:
      do
      {
        j = i;
        break label64;
        i += 1;
        break;
      } while (i != 7);
      j = 4;
    }
  }
  
  public final void c(boolean paramBoolean, int paramInt, List<c> paramList)
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (this.closed) {
      throw new IOException("closed");
    }
    this.dbF.writeHeaders(paramList);
    long l = this.dbE.size;
    int i = (int)Math.min(this.maxFrameSize, l);
    byte b1;
    if (l == i) {
      b1 = 4;
    }
    for (;;)
    {
      frameHeader(paramInt, i, (byte)1, b2);
      this.dae.b(this.dbE, i);
      if (l > i) {
        writeContinuationFrames(paramInt, l - i);
      }
      return;
      b1 = 0;
      byte b2 = b1;
      if (paramBoolean) {
        b2 = (byte)(b1 | 0x1);
      }
    }
  }
  
  public final void close()
    throws IOException
  {
    try
    {
      this.closed = true;
      this.dae.close();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void connectionPreface()
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    boolean bool = this.client;
    if (!bool) {}
    for (;;)
    {
      return;
      if (logger.isLoggable(Level.FINE)) {
        logger.fine(okhttp3.internal.c.format(">> CONNECTION %s", new Object[] { e.daL.KJ() }));
      }
      this.dae.Q(e.daL.toByteArray());
      this.dae.flush();
    }
  }
  
  public final void flush()
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    this.dae.flush();
  }
  
  public final void ping(boolean paramBoolean, int paramInt1, int paramInt2)
    throws IOException
  {
    byte b = 0;
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (paramBoolean) {
      b = 1;
    }
    frameHeader(0, 8, (byte)6, b);
    this.dae.fZ(paramInt1);
    this.dae.fZ(paramInt2);
    this.dae.flush();
  }
  
  public final void windowUpdate(int paramInt, long paramLong)
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if ((paramLong == 0L) || (paramLong > 2147483647L)) {
      throw e.illegalArgument("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[] { Long.valueOf(paramLong) });
    }
    frameHeader(paramInt, 4, (byte)8, (byte)0);
    this.dae.fZ((int)paramLong);
    this.dae.flush();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/e/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */