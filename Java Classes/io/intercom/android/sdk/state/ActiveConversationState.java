package io.intercom.android.sdk.state;

import com.google.auto.value.AutoValue;

@AutoValue
public abstract class ActiveConversationState
{
  public static ActiveConversationState create(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    return new AutoValue_ActiveConversationState(paramString, paramBoolean1, paramBoolean2);
  }
  
  public abstract String getConversationId();
  
  public abstract boolean hasSwitchedInputType();
  
  public abstract boolean hasTextInComposer();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/state/ActiveConversationState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */