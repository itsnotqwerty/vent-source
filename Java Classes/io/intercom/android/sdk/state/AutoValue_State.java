package io.intercom.android.sdk.state;

import io.intercom.android.sdk.models.TeamPresence;
import java.util.Set;

final class AutoValue_State
  extends State
{
  private final ActiveConversationState activeConversationState;
  private final boolean hasConversations;
  private final HostAppState hostAppState;
  private final InboxState inboxState;
  private final OverlayState overlayState;
  private final TeamPresence teamPresence;
  private final UiState uiState;
  private final Set<String> unreadConversationIds;
  
  AutoValue_State(boolean paramBoolean, UiState paramUiState, TeamPresence paramTeamPresence, Set<String> paramSet, InboxState paramInboxState, HostAppState paramHostAppState, OverlayState paramOverlayState, ActiveConversationState paramActiveConversationState)
  {
    this.hasConversations = paramBoolean;
    if (paramUiState == null) {
      throw new NullPointerException("Null uiState");
    }
    this.uiState = paramUiState;
    if (paramTeamPresence == null) {
      throw new NullPointerException("Null teamPresence");
    }
    this.teamPresence = paramTeamPresence;
    if (paramSet == null) {
      throw new NullPointerException("Null unreadConversationIds");
    }
    this.unreadConversationIds = paramSet;
    if (paramInboxState == null) {
      throw new NullPointerException("Null inboxState");
    }
    this.inboxState = paramInboxState;
    if (paramHostAppState == null) {
      throw new NullPointerException("Null hostAppState");
    }
    this.hostAppState = paramHostAppState;
    if (paramOverlayState == null) {
      throw new NullPointerException("Null overlayState");
    }
    this.overlayState = paramOverlayState;
    if (paramActiveConversationState == null) {
      throw new NullPointerException("Null activeConversationState");
    }
    this.activeConversationState = paramActiveConversationState;
  }
  
  public final ActiveConversationState activeConversationState()
  {
    return this.activeConversationState;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof State)) {
        break;
      }
      paramObject = (State)paramObject;
    } while ((this.hasConversations == ((State)paramObject).hasConversations()) && (this.uiState.equals(((State)paramObject).uiState())) && (this.teamPresence.equals(((State)paramObject).teamPresence())) && (this.unreadConversationIds.equals(((State)paramObject).unreadConversationIds())) && (this.inboxState.equals(((State)paramObject).inboxState())) && (this.hostAppState.equals(((State)paramObject).hostAppState())) && (this.overlayState.equals(((State)paramObject).overlayState())) && (this.activeConversationState.equals(((State)paramObject).activeConversationState())));
    return false;
    return false;
  }
  
  public final boolean hasConversations()
  {
    return this.hasConversations;
  }
  
  public final int hashCode()
  {
    if (this.hasConversations) {}
    for (int i = 1231;; i = 1237) {
      return (((((((i ^ 0xF4243) * 1000003 ^ this.uiState.hashCode()) * 1000003 ^ this.teamPresence.hashCode()) * 1000003 ^ this.unreadConversationIds.hashCode()) * 1000003 ^ this.inboxState.hashCode()) * 1000003 ^ this.hostAppState.hashCode()) * 1000003 ^ this.overlayState.hashCode()) * 1000003 ^ this.activeConversationState.hashCode();
    }
  }
  
  public final HostAppState hostAppState()
  {
    return this.hostAppState;
  }
  
  public final InboxState inboxState()
  {
    return this.inboxState;
  }
  
  public final OverlayState overlayState()
  {
    return this.overlayState;
  }
  
  public final TeamPresence teamPresence()
  {
    return this.teamPresence;
  }
  
  public final String toString()
  {
    return "State{hasConversations=" + this.hasConversations + ", uiState=" + this.uiState + ", teamPresence=" + this.teamPresence + ", unreadConversationIds=" + this.unreadConversationIds + ", inboxState=" + this.inboxState + ", hostAppState=" + this.hostAppState + ", overlayState=" + this.overlayState + ", activeConversationState=" + this.activeConversationState + "}";
  }
  
  public final UiState uiState()
  {
    return this.uiState;
  }
  
  public final Set<String> unreadConversationIds()
  {
    return this.unreadConversationIds;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/state/AutoValue_State.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */