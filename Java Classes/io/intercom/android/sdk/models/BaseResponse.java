package io.intercom.android.sdk.models;

public abstract class BaseResponse
{
  private final Config config;
  private final boolean hasConversations;
  private final User user;
  
  protected BaseResponse(Builder paramBuilder)
  {
    Config localConfig;
    if (paramBuilder.config == null)
    {
      localConfig = Config.NULL;
      this.config = localConfig;
      this.hasConversations = paramBuilder.has_conversations;
      if (paramBuilder.user != null) {
        break label56;
      }
    }
    label56:
    for (paramBuilder = User.NULL;; paramBuilder = paramBuilder.user.build())
    {
      this.user = paramBuilder;
      return;
      localConfig = paramBuilder.config.build();
      break;
    }
  }
  
  public Config getConfig()
  {
    return this.config;
  }
  
  public User getUser()
  {
    return this.user;
  }
  
  public boolean hasConversations()
  {
    return this.hasConversations;
  }
  
  static abstract class Builder
  {
    Config.Builder config;
    boolean has_conversations;
    User.Builder user;
    
    public abstract BaseResponse build();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/BaseResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */