package io.intercom.android.sdk.models;

public class UsersResponse
  extends BaseResponse
{
  private final ConversationList unreadConversations;
  
  UsersResponse(Builder paramBuilder)
  {
    super(paramBuilder);
    if (paramBuilder.unread_conversations == null) {}
    for (paramBuilder = new ConversationList.Builder().build();; paramBuilder = paramBuilder.unread_conversations.build())
    {
      this.unreadConversations = paramBuilder;
      return;
    }
  }
  
  public ConversationList getUnreadConversations()
  {
    return this.unreadConversations;
  }
  
  public static class Builder
    extends BaseResponse.Builder
  {
    ConversationList.Builder unread_conversations;
    
    public UsersResponse build()
    {
      return new UsersResponse(this);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/UsersResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */