package io.intercom.android.sdk.state;

import android.app.Activity;
import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.Intercom.Visibility;
import io.intercom.android.sdk.models.Conversation;
import java.util.List;
import java.util.Set;

@AutoValue
public abstract class OverlayState
{
  public static Builder builder()
  {
    return new AutoValue_OverlayState.Builder();
  }
  
  public static OverlayState create(List<Conversation> paramList, Set<String> paramSet, Intercom.Visibility paramVisibility1, Intercom.Visibility paramVisibility2, Activity paramActivity1, Activity paramActivity2, int paramInt)
  {
    return builder().conversations(paramList).dismissedPartIds(paramSet).notificationVisibility(paramVisibility1).launcherVisibility(paramVisibility2).bottomPadding(paramInt).resumedHostActivity(paramActivity1).pausedHostActivity(paramActivity2).build();
  }
  
  public abstract int bottomPadding();
  
  public abstract List<Conversation> conversations();
  
  public abstract Set<String> dismissedPartIds();
  
  public abstract Intercom.Visibility launcherVisibility();
  
  public abstract Intercom.Visibility notificationVisibility();
  
  public abstract Activity pausedHostActivity();
  
  public abstract Activity resumedHostActivity();
  
  public abstract Builder toBuilder();
  
  public static abstract class Builder
  {
    public abstract Builder bottomPadding(int paramInt);
    
    public abstract OverlayState build();
    
    public abstract Builder conversations(List<Conversation> paramList);
    
    public abstract Builder dismissedPartIds(Set<String> paramSet);
    
    public abstract Builder launcherVisibility(Intercom.Visibility paramVisibility);
    
    public abstract Builder notificationVisibility(Intercom.Visibility paramVisibility);
    
    public abstract Builder pausedHostActivity(Activity paramActivity);
    
    public abstract Builder resumedHostActivity(Activity paramActivity);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/state/OverlayState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */