package io.intercom.android.sdk.state;

import io.intercom.android.sdk.models.Part;

public class ReplyPart
{
  private final String conversationId;
  private final Part part;
  
  public ReplyPart(Part paramPart, String paramString)
  {
    this.part = paramPart;
    this.conversationId = paramString;
  }
  
  public String getConversationId()
  {
    return this.conversationId;
  }
  
  public Part getPart()
  {
    return this.part;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/state/ReplyPart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */