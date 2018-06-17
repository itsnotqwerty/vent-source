package io.intercom.okhttp3.internal.ws;

import io.intercom.b.c;
import io.intercom.b.d;
import io.intercom.b.f;
import io.intercom.b.r;
import io.intercom.b.t;
import java.io.IOException;
import java.util.Random;

final class WebSocketWriter
{
  boolean activeWriter;
  final c buffer = new c();
  final FrameSink frameSink = new FrameSink();
  final boolean isClient;
  final byte[] maskBuffer;
  final byte[] maskKey;
  final Random random;
  final d sink;
  boolean writerClosed;
  
  WebSocketWriter(boolean paramBoolean, d paramd, Random paramRandom)
  {
    if (paramd == null) {
      throw new NullPointerException("sink == null");
    }
    if (paramRandom == null) {
      throw new NullPointerException("random == null");
    }
    this.isClient = paramBoolean;
    this.sink = paramd;
    this.random = paramRandom;
    if (paramBoolean) {}
    for (paramd = new byte[4];; paramd = null)
    {
      this.maskKey = paramd;
      paramd = (d)localObject;
      if (paramBoolean) {
        paramd = new byte[' '];
      }
      this.maskBuffer = paramd;
      return;
    }
  }
  
  private void writeControlFrame(int paramInt, f paramf)
    throws IOException
  {
    if (this.writerClosed) {
      throw new IOException("closed");
    }
    int i = paramf.size();
    if (i > 125L) {
      throw new IllegalArgumentException("Payload size must be less than or equal to 125");
    }
    this.sink.fB(paramInt | 0x80);
    if (this.isClient)
    {
      this.sink.fB(i | 0x80);
      this.random.nextBytes(this.maskKey);
      this.sink.G(this.maskKey);
      paramf = paramf.toByteArray();
      WebSocketProtocol.toggleMask(paramf, paramf.length, this.maskKey, 0L);
      this.sink.G(paramf);
    }
    for (;;)
    {
      this.sink.flush();
      return;
      this.sink.fB(i);
      this.sink.c(paramf);
    }
  }
  
  final r newMessageSink(int paramInt, long paramLong)
  {
    if (this.activeWriter) {
      throw new IllegalStateException("Another message writer is active. Did you call close()?");
    }
    this.activeWriter = true;
    this.frameSink.formatOpcode = paramInt;
    this.frameSink.contentLength = paramLong;
    this.frameSink.isFirstFrame = true;
    this.frameSink.closed = false;
    return this.frameSink;
  }
  
  final void writeClose(int paramInt, f paramf)
    throws IOException
  {
    Object localObject = f.cTY;
    if ((paramInt != 0) || (paramf != null))
    {
      if (paramInt != 0) {
        WebSocketProtocol.validateCloseCode(paramInt);
      }
      localObject = new c();
      ((c)localObject).fw(paramInt);
      if (paramf != null) {
        ((c)localObject).a(paramf);
      }
      localObject = ((c)localObject).readByteString();
    }
    try
    {
      writeControlFrame(8, (f)localObject);
      return;
    }
    finally
    {
      this.writerClosed = true;
    }
  }
  
  final void writeMessageFrame(int paramInt, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
    throws IOException
  {
    if (this.writerClosed) {
      throw new IOException("closed");
    }
    int i;
    if (paramBoolean1)
    {
      i = paramInt;
      if (paramBoolean2) {
        i = paramInt | 0x80;
      }
      this.sink.fB(i);
      if (!this.isClient) {
        break label303;
      }
    }
    label86:
    label292:
    label303:
    for (paramInt = 128;; paramInt = 0)
    {
      if (paramLong <= 125L)
      {
        i = (int)paramLong;
        this.sink.fB(paramInt | i);
        if (this.isClient)
        {
          this.random.nextBytes(this.maskKey);
          this.sink.G(this.maskKey);
        }
      }
      else
      {
        for (long l = 0L;; l += paramInt)
        {
          if (l >= paramLong) {
            break label292;
          }
          paramInt = (int)Math.min(paramLong, this.maskBuffer.length);
          paramInt = this.buffer.read(this.maskBuffer, 0, paramInt);
          if (paramInt == -1)
          {
            throw new AssertionError();
            paramInt = 0;
            break;
            if (paramLong <= 65535L)
            {
              this.sink.fB(paramInt | 0x7E);
              this.sink.fA((int)paramLong);
              break label86;
            }
            this.sink.fB(paramInt | 0x7F);
            this.sink.an(paramLong);
            break label86;
          }
          WebSocketProtocol.toggleMask(this.maskBuffer, paramInt, this.maskKey, l);
          this.sink.c(this.maskBuffer, 0, paramInt);
        }
      }
      this.sink.write(this.buffer, paramLong);
      this.sink.Kq();
      return;
    }
  }
  
  final void writePing(f paramf)
    throws IOException
  {
    writeControlFrame(9, paramf);
  }
  
  final void writePong(f paramf)
    throws IOException
  {
    writeControlFrame(10, paramf);
  }
  
  final class FrameSink
    implements r
  {
    boolean closed;
    long contentLength;
    int formatOpcode;
    boolean isFirstFrame;
    
    FrameSink() {}
    
    public final void close()
      throws IOException
    {
      if (this.closed) {
        throw new IOException("closed");
      }
      WebSocketWriter.this.writeMessageFrame(this.formatOpcode, WebSocketWriter.this.buffer.size, this.isFirstFrame, true);
      this.closed = true;
      WebSocketWriter.this.activeWriter = false;
    }
    
    public final void flush()
      throws IOException
    {
      if (this.closed) {
        throw new IOException("closed");
      }
      WebSocketWriter.this.writeMessageFrame(this.formatOpcode, WebSocketWriter.this.buffer.size, this.isFirstFrame, false);
      this.isFirstFrame = false;
    }
    
    public final t timeout()
    {
      return WebSocketWriter.this.sink.timeout();
    }
    
    public final void write(c paramc, long paramLong)
      throws IOException
    {
      if (this.closed) {
        throw new IOException("closed");
      }
      WebSocketWriter.this.buffer.write(paramc, paramLong);
      if ((this.isFirstFrame) && (this.contentLength != -1L) && (WebSocketWriter.this.buffer.size > this.contentLength - 8192L)) {}
      for (int i = 1;; i = 0)
      {
        paramLong = WebSocketWriter.this.buffer.Kt();
        if ((paramLong > 0L) && (i == 0))
        {
          WebSocketWriter.this.writeMessageFrame(this.formatOpcode, paramLong, this.isFirstFrame, false);
          this.isFirstFrame = false;
        }
        return;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/ws/WebSocketWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */