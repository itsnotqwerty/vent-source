package io.intercom.android.sdk.state;

import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.models.TeamPresence;
import java.util.Set;

@AutoValue
public abstract class State
{
  public static State create(boolean paramBoolean, UiState paramUiState, TeamPresence paramTeamPresence, Set<String> paramSet, InboxState paramInboxState, HostAppState paramHostAppState, OverlayState paramOverlayState, ActiveConversationState paramActiveConversationState)
  {
    return new AutoValue_State(paramBoolean, paramUiState, paramTeamPresence, paramSet, paramInboxState, paramHostAppState, paramOverlayState, paramActiveConversationState);
  }
  
  public abstract ActiveConversationState activeConversationState();
  
  public abstract boolean hasConversations();
  
  public abstract HostAppState hostAppState();
  
  public abstract InboxState inboxState();
  
  public abstract OverlayState overlayState();
  
  public abstract TeamPresence teamPresence();
  
  public abstract UiState uiState();
  
  public abstract Set<String> unreadConversationIds();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/state/State.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */