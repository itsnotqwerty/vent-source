package io.intercom.android.sdk.models.events;

import io.intercom.android.sdk.models.Conversation;

public class NewConversationEvent
{
  private final Conversation conversation;
  private final String partId;
  
  public NewConversationEvent(Conversation paramConversation, String paramString)
  {
    this.conversation = paramConversation;
    this.partId = paramString;
  }
  
  public Conversation getConversation()
  {
    return this.conversation;
  }
  
  public String getPartId()
  {
    return this.partId;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/events/NewConversationEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */