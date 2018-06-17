package io.intercom.android.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.api.UserUpdateBatcher;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.overlay.OverlayPresenter;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.user.DeviceData;
import io.intercom.android.sdk.utilities.ActivityFinisher;

public class ResetManager
{
  private final ActivityFinisher activityFinisher;
  private final Provider<Api> apiProvider;
  private final Provider<AppConfig> appConfigProvider;
  private final Context context;
  private final Handler handler = new Handler(Looper.getMainLooper());
  private final Runnable hardResetTask = new Runnable()
  {
    public void run()
    {
      ResetManager.this.hardReset();
    }
  };
  private final OverlayPresenter overlayPresenter;
  private final Store<State> store;
  private final Twig twig = LumberMill.getLogger();
  private final UserIdentity userIdentity;
  private final UserUpdateBatcher userUpdateBatcher;
  
  public ResetManager(Provider<Api> paramProvider, UserIdentity paramUserIdentity, OverlayPresenter paramOverlayPresenter, Provider<AppConfig> paramProvider1, Store<State> paramStore, UserUpdateBatcher paramUserUpdateBatcher, Context paramContext, ActivityFinisher paramActivityFinisher)
  {
    this.apiProvider = paramProvider;
    this.userIdentity = paramUserIdentity;
    this.overlayPresenter = paramOverlayPresenter;
    this.appConfigProvider = paramProvider1;
    this.store = paramStore;
    this.userUpdateBatcher = paramUserUpdateBatcher;
    this.context = paramContext;
    this.activityFinisher = paramActivityFinisher;
  }
  
  public void clear()
  {
    this.handler.removeCallbacks(this.hardResetTask);
  }
  
  public void hardReset()
  {
    this.handler.removeCallbacks(this.hardResetTask);
    String str;
    if (isSoftReset())
    {
      str = DeviceData.getDeviceToken(this.context);
      if (!TextUtils.isEmpty(str)) {
        break label54;
      }
      this.twig.internal("There is no device token to remove.");
    }
    for (;;)
    {
      this.store.dispatch(Actions.hardReset());
      return;
      label54:
      ((Api)this.apiProvider.get()).removeDeviceToken(str);
    }
  }
  
  boolean isSoftReset()
  {
    return this.userIdentity.isSoftReset();
  }
  
  public void softReset()
  {
    this.userUpdateBatcher.submitPendingUpdate();
    this.activityFinisher.finishActivities();
    this.overlayPresenter.softReset();
    this.handler.postDelayed(this.hardResetTask, ((AppConfig)this.appConfigProvider.get()).getSoftResetTimeoutMs());
    this.store.dispatch(Actions.softReset());
    this.twig.i("Successfully reset the user. To resume communicating with Intercom, you can register a user", new Object[0]);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/ResetManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */