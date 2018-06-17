package io.intercom.android.sdk.middleware;

import android.app.Activity;
import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.Store.Middleware;
import io.intercom.android.sdk.store.Store.NextDispatcher;
import io.intercom.android.sdk.twig.Twig;

public class LoggerMiddleware<S>
  implements Store.Middleware<S>
{
  private final Twig twig;
  
  public LoggerMiddleware(Twig paramTwig)
  {
    this.twig = paramTwig;
  }
  
  public void dispatch(Store<S> paramStore, Action<?> paramAction, Store.NextDispatcher paramNextDispatcher)
  {
    paramNextDispatcher.dispatch(paramAction);
    this.twig.i("Dispatched Action: " + paramAction.toString(), new Object[0]);
    switch (paramAction.type())
    {
    default: 
      return;
    case ???: 
      paramStore = (Activity)paramAction.value();
      this.twig.i("Ready to show in-app messages in " + paramStore, new Object[0]);
      return;
    }
    paramStore = (Activity)paramAction.value();
    this.twig.i(paramStore + " was paused", new Object[0]);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/middleware/LoggerMiddleware.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */