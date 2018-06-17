package io.intercom.okhttp3;

import io.intercom.b.f;
import javax.annotation.Nullable;

public abstract class WebSocketListener
{
  public void onClosed(WebSocket paramWebSocket, int paramInt, String paramString) {}
  
  public void onClosing(WebSocket paramWebSocket, int paramInt, String paramString) {}
  
  public void onFailure(WebSocket paramWebSocket, Throwable paramThrowable, @Nullable Response paramResponse) {}
  
  public void onMessage(WebSocket paramWebSocket, f paramf) {}
  
  public void onMessage(WebSocket paramWebSocket, String paramString) {}
  
  public void onOpen(WebSocket paramWebSocket, Response paramResponse) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/WebSocketListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */