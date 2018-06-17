package io.intercom.okhttp3.internal.http2;

import io.intercom.b.c;
import io.intercom.b.d;
import io.intercom.b.f;
import io.intercom.okhttp3.internal.Util;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

final class Http2Writer
  implements Closeable
{
  private static final Logger logger = Logger.getLogger(Http2.class.getName());
  private final boolean client;
  private boolean closed;
  private final c hpackBuffer;
  final Hpack.Writer hpackWriter;
  private int maxFrameSize;
  private final d sink;
  
  Http2Writer(d paramd, boolean paramBoolean)
  {
    this.sink = paramd;
    this.client = paramBoolean;
    this.hpackBuffer = new c();
    this.hpackWriter = new Hpack.Writer(this.hpackBuffer);
    this.maxFrameSize = 16384;
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
        this.sink.write(this.hpackBuffer, i);
        break;
      }
    }
  }
  
  private static void writeMedium(d paramd, int paramInt)
    throws IOException
  {
    paramd.fB(paramInt >>> 16 & 0xFF);
    paramd.fB(paramInt >>> 8 & 0xFF);
    paramd.fB(paramInt & 0xFF);
  }
  
  public final void applyAndAckSettings(Settings paramSettings)
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    this.maxFrameSize = paramSettings.getMaxFrameSize(this.maxFrameSize);
    if (paramSettings.getHeaderTableSize() != -1) {
      this.hpackWriter.setHeaderTableSizeSetting(paramSettings.getHeaderTableSize());
    }
    frameHeader(0, 0, (byte)4, (byte)1);
    this.sink.flush();
  }
  
  public final void close()
    throws IOException
  {
    try
    {
      this.closed = true;
      this.sink.close();
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
        logger.fine(Util.format(">> CONNECTION %s", new Object[] { Http2.CONNECTION_PREFACE.KJ() }));
      }
      this.sink.G(Http2.CONNECTION_PREFACE.toByteArray());
      this.sink.flush();
    }
  }
  
  public final void data(boolean paramBoolean, int paramInt1, c paramc, int paramInt2)
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    byte b = 0;
    if (paramBoolean) {
      b = 1;
    }
    dataFrame(paramInt1, b, paramc, paramInt2);
  }
  
  final void dataFrame(int paramInt1, byte paramByte, c paramc, int paramInt2)
    throws IOException
  {
    frameHeader(paramInt1, paramInt2, (byte)0, paramByte);
    if (paramInt2 > 0) {
      this.sink.write(paramc, paramInt2);
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
    this.sink.flush();
  }
  
  public final void frameHeader(int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
    throws IOException
  {
    if (logger.isLoggable(Level.FINE)) {
      logger.fine(Http2.frameLog(false, paramInt1, paramInt2, paramByte1, paramByte2));
    }
    if (paramInt2 > this.maxFrameSize) {
      throw Http2.illegalArgument("FRAME_SIZE_ERROR length > %d: %d", new Object[] { Integer.valueOf(this.maxFrameSize), Integer.valueOf(paramInt2) });
    }
    if ((0x80000000 & paramInt1) != 0) {
      throw Http2.illegalArgument("reserved bit set: %s", new Object[] { Integer.valueOf(paramInt1) });
    }
    writeMedium(this.sink, paramInt2);
    this.sink.fB(paramByte1 & 0xFF);
    this.sink.fB(paramByte2 & 0xFF);
    this.sink.fz(0x7FFFFFFF & paramInt1);
  }
  
  public final void goAway(int paramInt, ErrorCode paramErrorCode, byte[] paramArrayOfByte)
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (paramErrorCode.httpCode == -1) {
      throw Http2.illegalArgument("errorCode.httpCode == -1", new Object[0]);
    }
    frameHeader(0, paramArrayOfByte.length + 8, (byte)7, (byte)0);
    this.sink.fz(paramInt);
    this.sink.fz(paramErrorCode.httpCode);
    if (paramArrayOfByte.length > 0) {
      this.sink.G(paramArrayOfByte);
    }
    this.sink.flush();
  }
  
  public final void headers(int paramInt, List<Header> paramList)
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    headers(false, paramInt, paramList);
  }
  
  final void headers(boolean paramBoolean, int paramInt, List<Header> paramList)
    throws IOException
  {
    if (this.closed) {
      throw new IOException("closed");
    }
    this.hpackWriter.writeHeaders(paramList);
    long l = this.hpackBuffer.size;
    int i = (int)Math.min(this.maxFrameSize, l);
    if (l == i) {}
    for (byte b1 = 4;; b1 = 0)
    {
      byte b2 = b1;
      if (paramBoolean) {
        b2 = (byte)(b1 | 0x1);
      }
      frameHeader(paramInt, i, (byte)1, b2);
      this.sink.write(this.hpackBuffer, i);
      if (l > i) {
        writeContinuationFrames(paramInt, l - i);
      }
      return;
    }
  }
  
  public final int maxDataLength()
  {
    return this.maxFrameSize;
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
    this.sink.fz(paramInt1);
    this.sink.fz(paramInt2);
    this.sink.flush();
  }
  
  public final void pushPromise(int paramInt1, int paramInt2, List<Header> paramList)
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    this.hpackWriter.writeHeaders(paramList);
    long l = this.hpackBuffer.size;
    int i = (int)Math.min(this.maxFrameSize - 4, l);
    if (l == i) {}
    for (byte b = 4;; b = 0)
    {
      frameHeader(paramInt1, i + 4, (byte)5, b);
      this.sink.fz(0x7FFFFFFF & paramInt2);
      this.sink.write(this.hpackBuffer, i);
      if (l > i) {
        writeContinuationFrames(paramInt1, l - i);
      }
      return;
    }
  }
  
  public final void rstStream(int paramInt, ErrorCode paramErrorCode)
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (paramErrorCode.httpCode == -1) {
      throw new IllegalArgumentException();
    }
    frameHeader(paramInt, 4, (byte)3, (byte)0);
    this.sink.fz(paramErrorCode.httpCode);
    this.sink.flush();
  }
  
  public final void settings(Settings paramSettings)
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
    frameHeader(0, paramSettings.size() * 6, (byte)4, (byte)0);
    int j;
    if (i < 10)
    {
      if (!paramSettings.isSet(i)) {
        break label107;
      }
      if (i != 4) {
        break label114;
      }
      j = 3;
    }
    for (;;)
    {
      label61:
      this.sink.fA(j);
      this.sink.fz(paramSettings.get(i));
      break label107;
      this.sink.flush();
      return;
      label107:
      label114:
      do
      {
        j = i;
        break label61;
        i += 1;
        break;
      } while (i != 7);
      j = 4;
    }
  }
  
  public final void synReply(boolean paramBoolean, int paramInt, List<Header> paramList)
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    headers(paramBoolean, paramInt, paramList);
  }
  
  public final void synStream(boolean paramBoolean, int paramInt1, int paramInt2, List<Header> paramList)
    throws IOException
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    headers(paramBoolean, paramInt1, paramList);
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
      throw Http2.illegalArgument("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[] { Long.valueOf(paramLong) });
    }
    frameHeader(paramInt, 4, (byte)8, (byte)0);
    this.sink.fz((int)paramLong);
    this.sink.flush();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/http2/Http2Writer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */