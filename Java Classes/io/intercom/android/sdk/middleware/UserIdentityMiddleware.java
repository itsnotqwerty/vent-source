package io.intercom.android.sdk.middleware;

import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.models.BaseResponse;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.Store.Middleware;
import io.intercom.android.sdk.store.Store.NextDispatcher;

public class UserIdentityMiddleware
  implements Store.Middleware<State>
{
  private final Provider<UserIdentity> userIdentityProvider;
  
  public UserIdentityMiddleware(Provider<UserIdentity> paramProvider)
  {
    this.userIdentityProvider = paramProvider;
  }
  
  public void dispatch(Store<State> paramStore, Action<?> paramAction, Store.NextDispatcher paramNextDispatcher)
  {
    paramNextDispatcher.dispatch(paramAction);
    switch (paramAction.type())
    {
    default: 
      return;
    case ???: 
      paramStore = (BaseResponse)paramAction.value();
      ((UserIdentity)this.userIdentityProvider.get()).update(paramStore.getUser());
      return;
    case ???: 
      ((UserIdentity)this.userIdentityProvider.get()).softReset();
      return;
    }
    ((UserIdentity)this.userIdentityProvider.get()).hardReset();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/middleware/UserIdentityMiddleware.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */