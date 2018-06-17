package io.intercom.okhttp3;

import io.intercom.b.f;
import javax.annotation.Nullable;

public abstract interface WebSocket
{
  public abstract void cancel();
  
  public abstract boolean close(int paramInt, @Nullable String paramString);
  
  public abstract long queueSize();
  
  public abstract Request request();
  
  public abstract boolean send(f paramf);
  
  public abstract boolean send(String paramString);
  
  public static abstract interface Factory
  {
    public abstract WebSocket newWebSocket(Request paramRequest, WebSocketListener paramWebSocketListener);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/WebSocket.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */