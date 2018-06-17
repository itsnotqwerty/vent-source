package io.intercom.android.sdk.conversation.events;

public class AdminIsTypingEvent
{
  private final String adminAvatarUrl;
  private final String adminId;
  private final String adminName;
  private final String conversationId;
  
  public AdminIsTypingEvent(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.adminId = paramString1;
    this.conversationId = paramString2;
    this.adminName = paramString3;
    this.adminAvatarUrl = paramString4;
  }
  
  public String getAdminAvatarUrl()
  {
    return this.adminAvatarUrl;
  }
  
  public String getAdminId()
  {
    return this.adminId;
  }
  
  public String getAdminName()
  {
    return this.adminName;
  }
  
  public String getConversationId()
  {
    return this.conversationId;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/events/AdminIsTypingEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */