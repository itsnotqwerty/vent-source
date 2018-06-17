package io.intercom.android.sdk.store;

import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.models.TeamPresence;
import io.intercom.android.sdk.state.ActiveConversationState;
import io.intercom.android.sdk.state.HostAppState;
import io.intercom.android.sdk.state.InboxState;
import io.intercom.android.sdk.state.OverlayState;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.state.UiState;
import java.util.Set;

class StateReducer
  implements Store.Reducer<State>
{
  private final Store.Reducer<ActiveConversationState> activeConversationStateReducer;
  private final Store.Reducer<Boolean> hasConversationsReducer;
  private final Store.Reducer<HostAppState> hostAppStateReducer;
  private final Store.Reducer<InboxState> inboxStateReducer;
  private final Store.Reducer<OverlayState> overlayStateReducer;
  private final Store.Reducer<TeamPresence> teamPresenceReducer;
  private final Store.Reducer<UiState> uiStateReducer;
  private final Store.Reducer<Set<String>> unreadConversationIdsReducer;
  
  StateReducer(Store.Reducer<Boolean> paramReducer, Store.Reducer<UiState> paramReducer1, Store.Reducer<TeamPresence> paramReducer2, Store.Reducer<Set<String>> paramReducer3, Store.Reducer<InboxState> paramReducer4, Store.Reducer<HostAppState> paramReducer5, Store.Reducer<OverlayState> paramReducer6, Store.Reducer<ActiveConversationState> paramReducer7)
  {
    this.hasConversationsReducer = paramReducer;
    this.uiStateReducer = paramReducer1;
    this.teamPresenceReducer = paramReducer2;
    this.unreadConversationIdsReducer = paramReducer3;
    this.inboxStateReducer = paramReducer4;
    this.hostAppStateReducer = paramReducer5;
    this.overlayStateReducer = paramReducer6;
    this.activeConversationStateReducer = paramReducer7;
  }
  
  public State reduce(Action<?> paramAction, State paramState)
  {
    return State.create(((Boolean)this.hasConversationsReducer.reduce(paramAction, Boolean.valueOf(paramState.hasConversations()))).booleanValue(), (UiState)this.uiStateReducer.reduce(paramAction, paramState.uiState()), (TeamPresence)this.teamPresenceReducer.reduce(paramAction, paramState.teamPresence()), (Set)this.unreadConversationIdsReducer.reduce(paramAction, paramState.unreadConversationIds()), (InboxState)this.inboxStateReducer.reduce(paramAction, paramState.inboxState()), (HostAppState)this.hostAppStateReducer.reduce(paramAction, paramState.hostAppState()), (OverlayState)this.overlayStateReducer.reduce(paramAction, paramState.overlayState()), (ActiveConversationState)this.activeConversationStateReducer.reduce(paramAction, paramState.activeConversationState()));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/StateReducer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */