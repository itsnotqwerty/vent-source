package io.intercom.android.sdk.middleware;

import io.intercom.a.c.a.b;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.BaseResponse;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.Store.Middleware;
import io.intercom.android.sdk.store.Store.NextDispatcher;

public class AppConfigMiddleware
  implements Store.Middleware<State>
{
  private final Provider<AppConfig> appConfigProvider;
  private final b bus;
  
  public AppConfigMiddleware(Provider<AppConfig> paramProvider, b paramb)
  {
    this.appConfigProvider = paramProvider;
    this.bus = paramb;
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
      ((AppConfig)this.appConfigProvider.get()).update(paramStore.getConfig(), this.bus);
      return;
    }
    ((AppConfig)this.appConfigProvider.get()).resetRealTimeConfig();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/middleware/AppConfigMiddleware.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */