package io.intercom.android.sdk.push;

final class AutoValue_PushPayload
  extends PushPayload
{
  private final String appName;
  private final String authorName;
  private final String body;
  private final String conversationId;
  private final String conversationPartType;
  private final String imageUrl;
  private final String intercomPushType;
  private final String message;
  private final int priority;
  private final String pushOnlyConversationId;
  private final String receiver;
  private final String title;
  private final String uri;
  
  AutoValue_PushPayload(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, int paramInt)
  {
    if (paramString1 == null) {
      throw new NullPointerException("Null conversationId");
    }
    this.conversationId = paramString1;
    if (paramString2 == null) {
      throw new NullPointerException("Null message");
    }
    this.message = paramString2;
    if (paramString3 == null) {
      throw new NullPointerException("Null body");
    }
    this.body = paramString3;
    if (paramString4 == null) {
      throw new NullPointerException("Null authorName");
    }
    this.authorName = paramString4;
    if (paramString5 == null) {
      throw new NullPointerException("Null imageUrl");
    }
    this.imageUrl = paramString5;
    if (paramString6 == null) {
      throw new NullPointerException("Null appName");
    }
    this.appName = paramString6;
    if (paramString7 == null) {
      throw new NullPointerException("Null receiver");
    }
    this.receiver = paramString7;
    if (paramString8 == null) {
      throw new NullPointerException("Null conversationPartType");
    }
    this.conversationPartType = paramString8;
    if (paramString9 == null) {
      throw new NullPointerException("Null intercomPushType");
    }
    this.intercomPushType = paramString9;
    if (paramString10 == null) {
      throw new NullPointerException("Null uri");
    }
    this.uri = paramString10;
    if (paramString11 == null) {
      throw new NullPointerException("Null pushOnlyConversationId");
    }
    this.pushOnlyConversationId = paramString11;
    if (paramString12 == null) {
      throw new NullPointerException("Null title");
    }
    this.title = paramString12;
    this.priority = paramInt;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof PushPayload)) {
        break;
      }
      paramObject = (PushPayload)paramObject;
    } while ((this.conversationId.equals(((PushPayload)paramObject).getConversationId())) && (this.message.equals(((PushPayload)paramObject).getMessage())) && (this.body.equals(((PushPayload)paramObject).getBody())) && (this.authorName.equals(((PushPayload)paramObject).getAuthorName())) && (this.imageUrl.equals(((PushPayload)paramObject).getImageUrl())) && (this.appName.equals(((PushPayload)paramObject).getAppName())) && (this.receiver.equals(((PushPayload)paramObject).getReceiver())) && (this.conversationPartType.equals(((PushPayload)paramObject).getConversationPartType())) && (this.intercomPushType.equals(((PushPayload)paramObject).getIntercomPushType())) && (this.uri.equals(((PushPayload)paramObject).getUri())) && (this.pushOnlyConversationId.equals(((PushPayload)paramObject).getPushOnlyConversationId())) && (this.title.equals(((PushPayload)paramObject).getTitle())) && (this.priority == ((PushPayload)paramObject).getPriority()));
    return false;
    return false;
  }
  
  public final String getAppName()
  {
    return this.appName;
  }
  
  public final String getAuthorName()
  {
    return this.authorName;
  }
  
  public final String getBody()
  {
    return this.body;
  }
  
  public final String getConversationId()
  {
    return this.conversationId;
  }
  
  public final String getConversationPartType()
  {
    return this.conversationPartType;
  }
  
  public final String getImageUrl()
  {
    return this.imageUrl;
  }
  
  public final String getIntercomPushType()
  {
    return this.intercomPushType;
  }
  
  public final String getMessage()
  {
    return this.message;
  }
  
  public final int getPriority()
  {
    return this.priority;
  }
  
  public final String getPushOnlyConversationId()
  {
    return this.pushOnlyConversationId;
  }
  
  public final String getReceiver()
  {
    return this.receiver;
  }
  
  public final String getTitle()
  {
    return this.title;
  }
  
  public final String getUri()
  {
    return this.uri;
  }
  
  public final int hashCode()
  {
    return ((((((((((((this.conversationId.hashCode() ^ 0xF4243) * 1000003 ^ this.message.hashCode()) * 1000003 ^ this.body.hashCode()) * 1000003 ^ this.authorName.hashCode()) * 1000003 ^ this.imageUrl.hashCode()) * 1000003 ^ this.appName.hashCode()) * 1000003 ^ this.receiver.hashCode()) * 1000003 ^ this.conversationPartType.hashCode()) * 1000003 ^ this.intercomPushType.hashCode()) * 1000003 ^ this.uri.hashCode()) * 1000003 ^ this.pushOnlyConversationId.hashCode()) * 1000003 ^ this.title.hashCode()) * 1000003 ^ this.priority;
  }
  
  public final String toString()
  {
    return "PushPayload{conversationId=" + this.conversationId + ", message=" + this.message + ", body=" + this.body + ", authorName=" + this.authorName + ", imageUrl=" + this.imageUrl + ", appName=" + this.appName + ", receiver=" + this.receiver + ", conversationPartType=" + this.conversationPartType + ", intercomPushType=" + this.intercomPushType + ", uri=" + this.uri + ", pushOnlyConversationId=" + this.pushOnlyConversationId + ", title=" + this.title + ", priority=" + this.priority + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/push/AutoValue_PushPayload.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */