package com.layer.sdk.internal.lsdkd;

import com.layer.sdk.exceptions.LayerObjectException;
import com.layer.sdk.internal.lsdkk.f.a;
import com.layer.sdk.listeners.LayerTypingIndicatorListener.TypingIndicator;
import com.layer.sdk.messaging.Conversation;
import java.util.UUID;

public abstract interface i
  extends com.layer.sdk.internal.lsdka.c
{
  public abstract void a(LayerObjectException paramLayerObjectException);
  
  public abstract void a(k paramk, Conversation paramConversation);
  
  public abstract void a(com.layer.sdk.internal.lsdkd.lsdka.c paramc);
  
  public abstract void a(f.a parama);
  
  public abstract void a(UUID paramUUID, LayerTypingIndicatorListener.TypingIndicator paramTypingIndicator);
  
  public abstract void n();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */