package io.intercom.okhttp3.internal.ws;

import io.intercom.b.c;
import io.intercom.b.e;
import io.intercom.b.f;
import io.intercom.b.t;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

final class WebSocketReader
{
  boolean closed;
  long frameBytesRead;
  final FrameCallback frameCallback;
  long frameLength;
  final boolean isClient;
  boolean isControlFrame;
  boolean isFinalFrame;
  boolean isMasked;
  final byte[] maskBuffer = new byte[' '];
  final byte[] maskKey = new byte[4];
  int opcode;
  final e source;
  
  WebSocketReader(boolean paramBoolean, e parame, FrameCallback paramFrameCallback)
  {
    if (parame == null) {
      throw new NullPointerException("source == null");
    }
    if (paramFrameCallback == null) {
      throw new NullPointerException("frameCallback == null");
    }
    this.isClient = paramBoolean;
    this.source = parame;
    this.frameCallback = paramFrameCallback;
  }
  
  private void readControlFrame()
    throws IOException
  {
    Object localObject = new c();
    if (this.frameBytesRead < this.frameLength)
    {
      if (!this.isClient) {
        break label142;
      }
      this.source.a((c)localObject, this.frameLength);
    }
    switch (this.opcode)
    {
    default: 
      throw new ProtocolException("Unknown control opcode: " + Integer.toHexString(this.opcode));
      do
      {
        WebSocketProtocol.toggleMask(this.maskBuffer, i, this.maskKey, this.frameBytesRead);
        ((c)localObject).b(this.maskBuffer, 0, i);
        this.frameBytesRead += i;
        if (this.frameBytesRead >= this.frameLength) {
          break;
        }
        i = (int)Math.min(this.frameLength - this.frameBytesRead, this.maskBuffer.length);
        i = this.source.read(this.maskBuffer, 0, i);
      } while (i != -1);
      throw new EOFException();
    case 9: 
      this.frameCallback.onReadPing(((c)localObject).readByteString());
      return;
    case 10: 
      label142:
      this.frameCallback.onReadPong(((c)localObject).readByteString());
      return;
    }
    int i = 1005;
    String str = "";
    long l = ((c)localObject).size;
    if (l == 1L) {
      throw new ProtocolException("Malformed close payload length of 1.");
    }
    if (l != 0L)
    {
      i = ((c)localObject).readShort();
      str = ((c)localObject).Ky();
      localObject = WebSocketProtocol.closeCodeExceptionMessage(i);
      if (localObject != null) {
        throw new ProtocolException((String)localObject);
      }
    }
    this.frameCallback.onReadClose(i, str);
    this.closed = true;
  }
  
  private void readHeader()
    throws IOException
  {
    boolean bool2 = true;
    if (this.closed) {
      throw new IOException("closed");
    }
    long l = this.source.timeout().timeoutNanos();
    this.source.timeout().clearTimeout();
    boolean bool1;
    for (;;)
    {
      try
      {
        i = this.source.readByte();
        k = i & 0xFF;
        this.source.timeout().timeout(l, TimeUnit.NANOSECONDS);
        this.opcode = (k & 0xF);
        if ((k & 0x80) != 0)
        {
          bool1 = true;
          this.isFinalFrame = bool1;
          if ((k & 0x8) == 0) {
            break label175;
          }
          bool1 = true;
          this.isControlFrame = bool1;
          if ((!this.isControlFrame) || (this.isFinalFrame)) {
            break;
          }
          throw new ProtocolException("Control frames must be final.");
        }
      }
      finally
      {
        this.source.timeout().timeout(l, TimeUnit.NANOSECONDS);
      }
      bool1 = false;
      continue;
      label175:
      bool1 = false;
    }
    int j;
    if ((k & 0x40) != 0)
    {
      i = 1;
      if ((k & 0x20) == 0) {
        break label235;
      }
      j = 1;
      label199:
      if ((k & 0x10) == 0) {
        break label240;
      }
    }
    label235:
    label240:
    for (int k = 1;; k = 0)
    {
      if ((i == 0) && (j == 0) && (k == 0)) {
        break label245;
      }
      throw new ProtocolException("Reserved flags are unsupported.");
      i = 0;
      break;
      j = 0;
      break label199;
    }
    label245:
    int i = this.source.readByte() & 0xFF;
    if ((i & 0x80) != 0)
    {
      bool1 = bool2;
      this.isMasked = bool1;
      if (this.isMasked != this.isClient) {
        break label322;
      }
      if (!this.isClient) {
        break label315;
      }
    }
    label315:
    for (String str = "Server-sent frames must not be masked.";; str = "Client-sent frames must be masked.")
    {
      throw new ProtocolException(str);
      bool1 = false;
      break;
    }
    label322:
    this.frameLength = (i & 0x7F);
    if (this.frameLength == 126L) {
      this.frameLength = (this.source.readShort() & 0xFFFF);
    }
    do
    {
      do
      {
        this.frameBytesRead = 0L;
        if ((!this.isControlFrame) || (this.frameLength <= 125L)) {
          break;
        }
        throw new ProtocolException("Control frame must be less than 125B.");
      } while (this.frameLength != 127L);
      this.frameLength = this.source.readLong();
    } while (this.frameLength >= 0L);
    throw new ProtocolException("Frame length 0x" + Long.toHexString(this.frameLength) + " > 0x7FFFFFFFFFFFFFFF");
    if (this.isMasked) {
      this.source.readFully(this.maskKey);
    }
  }
  
  private void readMessage(c paramc)
    throws IOException
  {
    if (this.closed) {
      throw new IOException("closed");
    }
    if (this.frameBytesRead == this.frameLength)
    {
      if (this.isFinalFrame) {}
      do
      {
        return;
        readUntilNonControlFrame();
        if (this.opcode != 0) {
          throw new ProtocolException("Expected continuation opcode. Got: " + Integer.toHexString(this.opcode));
        }
      } while ((this.isFinalFrame) && (this.frameLength == 0L));
    }
    long l1 = this.frameLength - this.frameBytesRead;
    if (this.isMasked)
    {
      l1 = Math.min(l1, this.maskBuffer.length);
      l1 = this.source.read(this.maskBuffer, 0, (int)l1);
      if (l1 == -1L) {
        throw new EOFException();
      }
      WebSocketProtocol.toggleMask(this.maskBuffer, l1, this.maskKey, this.frameBytesRead);
      paramc.b(this.maskBuffer, 0, (int)l1);
    }
    long l2;
    do
    {
      this.frameBytesRead += l1;
      break;
      l2 = this.source.read(paramc, l1);
      l1 = l2;
    } while (l2 != -1L);
    throw new EOFException();
  }
  
  private void readMessageFrame()
    throws IOException
  {
    int i = this.opcode;
    if ((i != 1) && (i != 2)) {
      throw new ProtocolException("Unknown opcode: " + Integer.toHexString(i));
    }
    c localc = new c();
    readMessage(localc);
    if (i == 1)
    {
      this.frameCallback.onReadMessage(localc.Ky());
      return;
    }
    this.frameCallback.onReadMessage(localc.readByteString());
  }
  
  final void processNextFrame()
    throws IOException
  {
    readHeader();
    if (this.isControlFrame)
    {
      readControlFrame();
      return;
    }
    readMessageFrame();
  }
  
  final void readUntilNonControlFrame()
    throws IOException
  {
    while (!this.closed)
    {
      readHeader();
      if (!this.isControlFrame) {
        break;
      }
      readControlFrame();
    }
  }
  
  public static abstract interface FrameCallback
  {
    public abstract void onReadClose(int paramInt, String paramString);
    
    public abstract void onReadMessage(f paramf)
      throws IOException;
    
    public abstract void onReadMessage(String paramString)
      throws IOException;
    
    public abstract void onReadPing(f paramf);
    
    public abstract void onReadPong(f paramf);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/ws/WebSocketReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */