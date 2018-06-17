package io.intercom.android.sdk.middleware;

import android.os.Handler;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.BaseResponse;
import io.intercom.android.sdk.models.Config;
import io.intercom.android.sdk.nexus.NexusClient;
import io.intercom.android.sdk.nexus.NexusConfig;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Selectors;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.Store.Middleware;
import io.intercom.android.sdk.store.Store.NextDispatcher;
import java.util.List;

public class NexusClientMiddleware
  implements Store.Middleware<State>
{
  private final Provider<AppConfig> appConfigProvider;
  private final Runnable disconnectRunnable = new Runnable()
  {
    public void run()
    {
      NexusClientMiddleware.this.client().disconnect();
    }
  };
  private final Handler handler;
  private final Provider<NexusClient> nexusClient;
  
  public NexusClientMiddleware(Provider<NexusClient> paramProvider, Provider<AppConfig> paramProvider1, Handler paramHandler)
  {
    this.nexusClient = paramProvider;
    this.appConfigProvider = paramProvider1;
    this.handler = paramHandler;
  }
  
  private void connectWithConfig(NexusConfig paramNexusConfig)
  {
    this.handler.removeCallbacks(this.disconnectRunnable);
    client().connect(paramNexusConfig, true);
  }
  
  private void disconnectImmediately()
  {
    this.handler.removeCallbacks(this.disconnectRunnable);
    client().disconnect();
  }
  
  private void scheduleDisconnect()
  {
    this.handler.removeCallbacks(this.disconnectRunnable);
    this.handler.postDelayed(this.disconnectRunnable, ((AppConfig)this.appConfigProvider.get()).getNewSessionThresholdMs());
  }
  
  NexusClient client()
  {
    return (NexusClient)this.nexusClient.get();
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
      connectWithConfig(((AppConfig)this.appConfigProvider.get()).getRealTimeConfig());
      return;
      scheduleDisconnect();
      return;
      disconnectImmediately();
      return;
      paramAction = ((BaseResponse)paramAction.value()).getConfig().getRealTimeConfig();
      if (paramAction.getEndpoints().isEmpty())
      {
        disconnectImmediately();
        return;
      }
    } while (((Boolean)paramStore.select(Selectors.APP_IS_BACKGROUNDED)).booleanValue());
    connectWithConfig(paramAction);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/middleware/NexusClientMiddleware.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */