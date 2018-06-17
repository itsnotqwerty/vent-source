package io.intercom.android.sdk.store;

import io.intercom.android.sdk.models.TeamPresence;
import io.intercom.android.sdk.state.ActiveConversationState;
import io.intercom.android.sdk.state.HostAppState;
import io.intercom.android.sdk.state.InboxState;
import io.intercom.android.sdk.state.OverlayState;
import io.intercom.android.sdk.state.State;
import java.util.Set;

public class Selectors
{
  public static final Store.Selector<State, ActiveConversationState> ACTIVE_CONVERSATION = new Store.Selector()
  {
    public final ActiveConversationState transform(State paramAnonymousState)
    {
      return paramAnonymousState.activeConversationState();
    }
  };
  public static final Store.Selector<State, Boolean> APP_IS_BACKGROUNDED;
  public static final Store.Selector<State, InboxState> INBOX;
  public static final Store.Selector<State, OverlayState> OVERLAY;
  public static final Store.Selector<State, Boolean> SESSION_STARTED_SINCE_LAST_BACKGROUNDED;
  public static final Store.Selector<State, TeamPresence> TEAM_PRESENCE;
  public static final Store.Selector<State, Integer> UNREAD_COUNT = new Store.Selector()
  {
    public final Integer transform(State paramAnonymousState)
    {
      return Integer.valueOf(paramAnonymousState.unreadConversationIds().size());
    }
  };
  
  static
  {
    INBOX = new Store.Selector()
    {
      public final InboxState transform(State paramAnonymousState)
      {
        return paramAnonymousState.inboxState();
      }
    };
    APP_IS_BACKGROUNDED = new Store.Selector()
    {
      public final Boolean transform(State paramAnonymousState)
      {
        return Boolean.valueOf(paramAnonymousState.hostAppState().isBackgrounded());
      }
    };
    SESSION_STARTED_SINCE_LAST_BACKGROUNDED = new Store.Selector()
    {
      public final Boolean transform(State paramAnonymousState)
      {
        return Boolean.valueOf(paramAnonymousState.hostAppState().sessionStartedSinceLastBackgrounded());
      }
    };
    OVERLAY = new Store.Selector()
    {
      public final OverlayState transform(State paramAnonymousState)
      {
        return paramAnonymousState.overlayState();
      }
    };
    TEAM_PRESENCE = new Store.Selector()
    {
      public final TeamPresence transform(State paramAnonymousState)
      {
        return paramAnonymousState.teamPresence();
      }
    };
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/Selectors.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */