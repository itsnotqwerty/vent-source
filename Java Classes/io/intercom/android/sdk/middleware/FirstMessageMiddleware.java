package io.intercom.android.sdk.middleware;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Toast;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.models.BaseResponse;
import io.intercom.android.sdk.models.Config;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.Store.Middleware;
import io.intercom.android.sdk.store.Store.NextDispatcher;
import io.intercom.android.sdk.twig.Twig;

public class FirstMessageMiddleware
  implements Store.Middleware<State>
{
  private final Context context;
  private final Twig twig;
  
  public FirstMessageMiddleware(Twig paramTwig, Context paramContext)
  {
    this.twig = paramTwig;
    this.context = paramContext;
  }
  
  private void showFirstMessageToast()
  {
    View localView = LayoutInflater.from(this.context).inflate(R.layout.intercom_onboarding_layout, null);
    Toast localToast = new Toast(this.context);
    localToast.setGravity(17, 0, 0);
    localToast.setDuration(1);
    localToast.setView(localView);
    localToast.show();
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
    } while (!((BaseResponse)paramAction.value()).getConfig().isFirstRequest());
    this.twig.i(this.context.getString(R.string.intercom_android_activated_message), new Object[0]);
    try
    {
      showFirstMessageToast();
      return;
    }
    catch (Exception paramStore)
    {
      this.twig.internal("Couldn't show first message toast: " + paramStore.getMessage());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/middleware/FirstMessageMiddleware.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */