package io.intercom.android.sdk.middleware;

import android.app.Activity;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.overlay.OverlayPresenter;
import io.intercom.android.sdk.state.OverlayState;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Selectors;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.Store.Middleware;
import io.intercom.android.sdk.store.Store.NextDispatcher;

public class OverlayPresenterMiddleware
  implements Store.Middleware<State>
{
  private final Provider<OverlayPresenter> presenterProvider;
  
  public OverlayPresenterMiddleware(Provider<OverlayPresenter> paramProvider)
  {
    this.presenterProvider = paramProvider;
  }
  
  private OverlayPresenter presenter()
  {
    return (OverlayPresenter)this.presenterProvider.get();
  }
  
  private void removeOverlays(Activity paramActivity)
  {
    if (paramActivity != null) {
      presenter().removeOverlaysIfPresent(paramActivity);
    }
  }
  
  public void dispatch(Store<State> paramStore, Action<?> paramAction, Store.NextDispatcher paramNextDispatcher)
  {
    Object localObject = (OverlayState)paramStore.select(Selectors.OVERLAY);
    paramStore = ((OverlayState)localObject).pausedHostActivity();
    localObject = ((OverlayState)localObject).resumedHostActivity();
    switch (paramAction.type())
    {
    }
    for (;;)
    {
      paramNextDispatcher.dispatch(paramAction);
      return;
      if ((Activity)paramAction.value() != paramStore)
      {
        removeOverlays(paramStore);
        continue;
        removeOverlays(paramStore);
        continue;
        if ((Activity)paramAction.value() == paramStore)
        {
          removeOverlays(paramStore);
          continue;
          presenter().cancelAnimations();
          removeOverlays(paramStore);
          removeOverlays((Activity)localObject);
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/middleware/OverlayPresenterMiddleware.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */