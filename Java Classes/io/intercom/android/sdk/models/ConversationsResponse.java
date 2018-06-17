package io.intercom.android.sdk.models;

public class ConversationsResponse
  extends BaseResponse
{
  private final ConversationList conversationPage;
  
  ConversationsResponse(Builder paramBuilder)
  {
    super(paramBuilder);
    if (paramBuilder.conversation_page == null) {}
    for (paramBuilder = new ConversationList.Builder().build();; paramBuilder = paramBuilder.conversation_page.build())
    {
      this.conversationPage = paramBuilder;
      return;
    }
  }
  
  public ConversationList getConversationPage()
  {
    return this.conversationPage;
  }
  
  public static final class Builder
    extends BaseResponse.Builder
  {
    ConversationList.Builder conversation_page;
    
    public final ConversationsResponse build()
    {
      return new ConversationsResponse(this);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/ConversationsResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */