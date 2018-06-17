package io.intercom.android.sdk.models.events;

import io.intercom.android.sdk.models.Conversation;

public class ConversationEvent
{
  private final Conversation response;
  
  public ConversationEvent(Conversation paramConversation)
  {
    this.response = paramConversation;
  }
  
  public Conversation getResponse()
  {
    return this.response;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/events/ConversationEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */