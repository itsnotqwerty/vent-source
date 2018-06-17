package io.intercom.android.sdk.models.events.realtime;

public class UserContentSeenByAdminEvent
{
  private final String conversationId;
  
  public UserContentSeenByAdminEvent(String paramString)
  {
    this.conversationId = paramString;
  }
  
  public String getConversationId()
  {
    return this.conversationId;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/events/realtime/UserContentSeenByAdminEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */