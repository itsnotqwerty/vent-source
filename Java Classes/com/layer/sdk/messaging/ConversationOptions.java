package com.layer.sdk.messaging;

public class ConversationOptions
{
  private boolean a = true;
  private boolean b = true;
  
  public ConversationOptions deliveryReceipts(boolean paramBoolean)
  {
    this.a = paramBoolean;
    return this;
  }
  
  public ConversationOptions distinct(boolean paramBoolean)
  {
    this.b = paramBoolean;
    return this;
  }
  
  public boolean isDeliveryReceipts()
  {
    return this.a;
  }
  
  public boolean isDistinct()
  {
    return this.b;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/messaging/ConversationOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */