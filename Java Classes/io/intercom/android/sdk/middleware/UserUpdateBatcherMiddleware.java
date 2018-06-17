package io.intercom.android.sdk.middleware;

import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.api.UserUpdateBatcher;
import io.intercom.android.sdk.api.UserUpdateRequest;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.state.HostAppState;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Selectors;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.Store.Middleware;
import io.intercom.android.sdk.store.Store.NextDispatcher;

public class UserUpdateBatcherMiddleware
  implements Store.Middleware<State>
{
  private final Provider<AppConfig> appConfigProvider;
  private final Provider<UserIdentity> userIdentityProvider;
  private final Provider<UserUpdateBatcher> userUpdateBatcher;
  
  public UserUpdateBatcherMiddleware(Provider<UserUpdateBatcher> paramProvider, Provider<AppConfig> paramProvider1, Provider<UserIdentity> paramProvider2)
  {
    this.appConfigProvider = paramProvider1;
    this.userUpdateBatcher = paramProvider;
    this.userIdentityProvider = paramProvider2;
  }
  
  public void dispatch(Store<State> paramStore, Action<?> paramAction, Store.NextDispatcher paramNextDispatcher)
  {
    paramNextDispatcher.dispatch(paramAction);
    switch (paramAction.type())
    {
    }
    do
    {
      return;
    } while ((((Long)paramAction.value()).longValue() - ((State)paramStore.state()).hostAppState().backgroundedTimestamp() <= ((AppConfig)this.appConfigProvider.get()).getNewSessionThresholdMs()) || (!((UserIdentity)this.userIdentityProvider.get()).identityExists()) || (((Boolean)paramStore.select(Selectors.SESSION_STARTED_SINCE_LAST_BACKGROUNDED)).booleanValue()));
    paramStore = (Boolean)paramStore.select(Selectors.APP_IS_BACKGROUNDED);
    ((UserUpdateBatcher)this.userUpdateBatcher.get()).updateUser(new UserUpdateRequest(true, paramStore.booleanValue(), true));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/middleware/UserUpdateBatcherMiddleware.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */