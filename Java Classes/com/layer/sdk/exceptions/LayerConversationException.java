package com.layer.sdk.exceptions;

import com.layer.sdk.messaging.Conversation;

public class LayerConversationException
  extends LayerException
{
  private Conversation a;
  
  public LayerConversationException(LayerException.Type paramType, Conversation paramConversation, String paramString)
  {
    super(paramType, paramString);
    this.a = paramConversation;
  }
  
  public Conversation getConversation()
  {
    return this.a;
  }
  
  public String toString()
  {
    if (this.a != null) {
      return super.toString() + " : " + this.a.toString();
    }
    return super.toString() + " : <null Conversation>";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/exceptions/LayerConversationException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */