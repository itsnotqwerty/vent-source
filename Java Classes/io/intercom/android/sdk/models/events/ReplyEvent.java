package io.intercom.android.sdk.models.events;

import io.intercom.android.sdk.models.Part;

public class ReplyEvent
{
  private final String conversationId;
  private final String partId;
  private final int position;
  private final Part response;
  
  public ReplyEvent(Part paramPart, int paramInt, String paramString1, String paramString2)
  {
    this.response = paramPart;
    this.partId = paramString1;
    this.position = paramInt;
    this.conversationId = paramString2;
  }
  
  public String getConversationId()
  {
    return this.conversationId;
  }
  
  public String getPartId()
  {
    return this.partId;
  }
  
  public int getPosition()
  {
    return this.position;
  }
  
  public Part getResponse()
  {
    return this.response;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/events/ReplyEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */