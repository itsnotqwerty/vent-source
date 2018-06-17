package io.intercom.android.sdk.store;

import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.state.HostAppState;

class HostAppStateReducer
  implements Store.Reducer<HostAppState>
{
  static final HostAppState INITIAL_STATE = HostAppState.create(true, false, 0L);
  
  public HostAppState reduce(Action<?> paramAction, HostAppState paramHostAppState)
  {
    switch (paramAction.type())
    {
    default: 
      return paramHostAppState;
    case ???: 
      return HostAppState.create(false, false, paramHostAppState.backgroundedTimestamp());
    case ???: 
      return HostAppState.create(true, paramHostAppState.sessionStartedSinceLastBackgrounded(), ((Long)paramAction.value()).longValue());
    case ???: 
      return HostAppState.create(paramHostAppState.isBackgrounded(), true, paramHostAppState.backgroundedTimestamp());
    }
    return HostAppState.create(paramHostAppState.isBackgrounded(), false, paramHostAppState.backgroundedTimestamp());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/HostAppStateReducer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */