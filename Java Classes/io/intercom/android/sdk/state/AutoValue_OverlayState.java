package io.intercom.android.sdk.state;

import android.app.Activity;
import io.intercom.android.sdk.Intercom.Visibility;
import io.intercom.android.sdk.models.Conversation;
import java.util.List;
import java.util.Set;

final class AutoValue_OverlayState
  extends OverlayState
{
  private final int bottomPadding;
  private final List<Conversation> conversations;
  private final Set<String> dismissedPartIds;
  private final Intercom.Visibility launcherVisibility;
  private final Intercom.Visibility notificationVisibility;
  private final Activity pausedHostActivity;
  private final Activity resumedHostActivity;
  
  private AutoValue_OverlayState(List<Conversation> paramList, Set<String> paramSet, Intercom.Visibility paramVisibility1, Intercom.Visibility paramVisibility2, int paramInt, Activity paramActivity1, Activity paramActivity2)
  {
    this.conversations = paramList;
    this.dismissedPartIds = paramSet;
    this.notificationVisibility = paramVisibility1;
    this.launcherVisibility = paramVisibility2;
    this.bottomPadding = paramInt;
    this.resumedHostActivity = paramActivity1;
    this.pausedHostActivity = paramActivity2;
  }
  
  public final int bottomPadding()
  {
    return this.bottomPadding;
  }
  
  public final List<Conversation> conversations()
  {
    return this.conversations;
  }
  
  public final Set<String> dismissedPartIds()
  {
    return this.dismissedPartIds;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof OverlayState)) {
        break label153;
      }
      paramObject = (OverlayState)paramObject;
      if ((!this.conversations.equals(((OverlayState)paramObject).conversations())) || (!this.dismissedPartIds.equals(((OverlayState)paramObject).dismissedPartIds())) || (!this.notificationVisibility.equals(((OverlayState)paramObject).notificationVisibility())) || (!this.launcherVisibility.equals(((OverlayState)paramObject).launcherVisibility())) || (this.bottomPadding != ((OverlayState)paramObject).bottomPadding())) {
        break;
      }
      if (this.resumedHostActivity != null) {
        break label120;
      }
      if (((OverlayState)paramObject).resumedHostActivity() != null) {
        break;
      }
      if (this.pausedHostActivity != null) {
        break label137;
      }
    } while (((OverlayState)paramObject).pausedHostActivity() == null);
    label120:
    label137:
    while (!this.pausedHostActivity.equals(((OverlayState)paramObject).pausedHostActivity()))
    {
      do
      {
        return false;
      } while (!this.resumedHostActivity.equals(((OverlayState)paramObject).resumedHostActivity()));
      break;
    }
    return true;
    label153:
    return false;
  }
  
  public final int hashCode()
  {
    int j = 0;
    int k = this.conversations.hashCode();
    int m = this.dismissedPartIds.hashCode();
    int n = this.notificationVisibility.hashCode();
    int i1 = this.launcherVisibility.hashCode();
    int i2 = this.bottomPadding;
    int i;
    if (this.resumedHostActivity == null)
    {
      i = 0;
      if (this.pausedHostActivity != null) {
        break label113;
      }
    }
    for (;;)
    {
      return (i ^ (((((k ^ 0xF4243) * 1000003 ^ m) * 1000003 ^ n) * 1000003 ^ i1) * 1000003 ^ i2) * 1000003) * 1000003 ^ j;
      i = this.resumedHostActivity.hashCode();
      break;
      label113:
      j = this.pausedHostActivity.hashCode();
    }
  }
  
  public final Intercom.Visibility launcherVisibility()
  {
    return this.launcherVisibility;
  }
  
  public final Intercom.Visibility notificationVisibility()
  {
    return this.notificationVisibility;
  }
  
  public final Activity pausedHostActivity()
  {
    return this.pausedHostActivity;
  }
  
  public final Activity resumedHostActivity()
  {
    return this.resumedHostActivity;
  }
  
  public final OverlayState.Builder toBuilder()
  {
    return new Builder(this, null);
  }
  
  public final String toString()
  {
    return "OverlayState{conversations=" + this.conversations + ", dismissedPartIds=" + this.dismissedPartIds + ", notificationVisibility=" + this.notificationVisibility + ", launcherVisibility=" + this.launcherVisibility + ", bottomPadding=" + this.bottomPadding + ", resumedHostActivity=" + this.resumedHostActivity + ", pausedHostActivity=" + this.pausedHostActivity + "}";
  }
  
  static final class Builder
    extends OverlayState.Builder
  {
    private Integer bottomPadding;
    private List<Conversation> conversations;
    private Set<String> dismissedPartIds;
    private Intercom.Visibility launcherVisibility;
    private Intercom.Visibility notificationVisibility;
    private Activity pausedHostActivity;
    private Activity resumedHostActivity;
    
    Builder() {}
    
    private Builder(OverlayState paramOverlayState)
    {
      this.conversations = paramOverlayState.conversations();
      this.dismissedPartIds = paramOverlayState.dismissedPartIds();
      this.notificationVisibility = paramOverlayState.notificationVisibility();
      this.launcherVisibility = paramOverlayState.launcherVisibility();
      this.bottomPadding = Integer.valueOf(paramOverlayState.bottomPadding());
      this.resumedHostActivity = paramOverlayState.resumedHostActivity();
      this.pausedHostActivity = paramOverlayState.pausedHostActivity();
    }
    
    public final OverlayState.Builder bottomPadding(int paramInt)
    {
      this.bottomPadding = Integer.valueOf(paramInt);
      return this;
    }
    
    public final OverlayState build()
    {
      Object localObject2 = "";
      if (this.conversations == null) {
        localObject2 = "" + " conversations";
      }
      Object localObject1 = localObject2;
      if (this.dismissedPartIds == null) {
        localObject1 = (String)localObject2 + " dismissedPartIds";
      }
      localObject2 = localObject1;
      if (this.notificationVisibility == null) {
        localObject2 = (String)localObject1 + " notificationVisibility";
      }
      localObject1 = localObject2;
      if (this.launcherVisibility == null) {
        localObject1 = (String)localObject2 + " launcherVisibility";
      }
      localObject2 = localObject1;
      if (this.bottomPadding == null) {
        localObject2 = (String)localObject1 + " bottomPadding";
      }
      if (!((String)localObject2).isEmpty()) {
        throw new IllegalStateException("Missing required properties:" + (String)localObject2);
      }
      return new AutoValue_OverlayState(this.conversations, this.dismissedPartIds, this.notificationVisibility, this.launcherVisibility, this.bottomPadding.intValue(), this.resumedHostActivity, this.pausedHostActivity, null);
    }
    
    public final OverlayState.Builder conversations(List<Conversation> paramList)
    {
      if (paramList == null) {
        throw new NullPointerException("Null conversations");
      }
      this.conversations = paramList;
      return this;
    }
    
    public final OverlayState.Builder dismissedPartIds(Set<String> paramSet)
    {
      if (paramSet == null) {
        throw new NullPointerException("Null dismissedPartIds");
      }
      this.dismissedPartIds = paramSet;
      return this;
    }
    
    public final OverlayState.Builder launcherVisibility(Intercom.Visibility paramVisibility)
    {
      if (paramVisibility == null) {
        throw new NullPointerException("Null launcherVisibility");
      }
      this.launcherVisibility = paramVisibility;
      return this;
    }
    
    public final OverlayState.Builder notificationVisibility(Intercom.Visibility paramVisibility)
    {
      if (paramVisibility == null) {
        throw new NullPointerException("Null notificationVisibility");
      }
      this.notificationVisibility = paramVisibility;
      return this;
    }
    
    public final OverlayState.Builder pausedHostActivity(Activity paramActivity)
    {
      this.pausedHostActivity = paramActivity;
      return this;
    }
    
    public final OverlayState.Builder resumedHostActivity(Activity paramActivity)
    {
      this.resumedHostActivity = paramActivity;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/state/AutoValue_OverlayState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */