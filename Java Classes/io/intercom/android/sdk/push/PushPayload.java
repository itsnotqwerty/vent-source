package io.intercom.android.sdk.push;

import android.os.Bundle;
import com.google.auto.value.AutoValue;

@AutoValue
public abstract class PushPayload
{
  private static final String MESSAGE_TYPE = "message";
  private static final String PUSH_ONLY = "push_only";
  
  public static PushPayload create(Bundle paramBundle)
  {
    while (paramBundle == null) {
      paramBundle = Bundle.EMPTY;
    }
    int i = paramBundle.getInt("intercom_priority_type", 1);
    return new AutoValue_PushPayload(stringOrEmpty(paramBundle, "conversation_id"), stringOrEmpty(paramBundle, "message"), stringOrEmpty(paramBundle, "body"), stringOrEmpty(paramBundle, "author_name"), stringOrEmpty(paramBundle, "image_url"), stringOrEmpty(paramBundle, "app_name"), stringOrEmpty(paramBundle, "receiver"), stringOrEmpty(paramBundle, "conversation_part_type"), stringOrEmpty(paramBundle, "intercom_push_type"), stringOrEmpty(paramBundle, "uri"), stringOrEmpty(paramBundle, "push_only_conv_id"), stringOrEmpty(paramBundle, "title"), i);
  }
  
  private static String stringOrEmpty(Bundle paramBundle, String paramString)
  {
    return paramBundle.getString(paramString, "");
  }
  
  public abstract String getAppName();
  
  public abstract String getAuthorName();
  
  public abstract String getBody();
  
  public abstract String getConversationId();
  
  public abstract String getConversationPartType();
  
  public abstract String getImageUrl();
  
  public abstract String getIntercomPushType();
  
  public abstract String getMessage();
  
  public abstract int getPriority();
  
  public abstract String getPushOnlyConversationId();
  
  public abstract String getReceiver();
  
  public abstract String getTitle();
  
  public abstract String getUri();
  
  boolean isFirstPart()
  {
    return "message".equals(getConversationPartType());
  }
  
  boolean isIntercomPush()
  {
    return (!getIntercomPushType().isEmpty()) && ("intercom_sdk".equals(getReceiver()));
  }
  
  boolean isPushOnly()
  {
    return "push_only".equals(getIntercomPushType());
  }
  
  String messageOrBody()
  {
    if (getMessage().isEmpty()) {
      return getBody();
    }
    return getMessage();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/push/PushPayload.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */