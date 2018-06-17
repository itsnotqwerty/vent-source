package io.intercom.android.sdk.api;

import android.os.Handler;
import android.os.Looper;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;
import java.util.UUID;

public class UserUpdateBatcher
{
  private final Provider<Api> apiProvider;
  private final Provider<AppConfig> appConfigProvider;
  private final Handler handler;
  private UserUpdateRequest pendingUpdate;
  private String pendingUpdateIdentifier;
  private final Store<State> store;
  
  UserUpdateBatcher(Handler paramHandler, Provider<Api> paramProvider, Provider<AppConfig> paramProvider1, Store<State> paramStore)
  {
    this.apiProvider = paramProvider;
    this.handler = paramHandler;
    this.appConfigProvider = paramProvider1;
    this.store = paramStore;
    resetPendingUpdate();
  }
  
  public static UserUpdateBatcher create(Provider<Api> paramProvider, Provider<AppConfig> paramProvider1, Store<State> paramStore)
  {
    return new UserUpdateBatcher(new Handler(Looper.getMainLooper()), paramProvider, paramProvider1, paramStore);
  }
  
  private long maxDelay(UserUpdateRequest paramUserUpdateRequest)
  {
    AppConfig localAppConfig = (AppConfig)this.appConfigProvider.get();
    if (paramUserUpdateRequest.isInternalUpdate()) {
      return localAppConfig.getPingDelayMs();
    }
    return localAppConfig.getBatchUserUpdatePeriodMs();
  }
  
  private void resetPendingUpdate()
  {
    this.pendingUpdate = new UserUpdateRequest();
    this.pendingUpdateIdentifier = UUID.randomUUID().toString();
  }
  
  private void submitPendingUpdate(UserUpdateRequest paramUserUpdateRequest)
  {
    if (!paramUserUpdateRequest.isValidUpdate()) {
      return;
    }
    if (paramUserUpdateRequest.isNewSession()) {
      this.store.dispatch(Actions.sessionStarted());
    }
    ((Api)this.apiProvider.get()).updateUser(paramUserUpdateRequest);
    resetPendingUpdate();
  }
  
  /* Error */
  private void submitPendingUpdate(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 99	io/intercom/android/sdk/api/UserUpdateBatcher:pendingUpdateIdentifier	Ljava/lang/String;
    //   6: aload_1
    //   7: invokevirtual 129	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   10: istore_2
    //   11: iload_2
    //   12: ifne +6 -> 18
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: aload_0
    //   19: aload_0
    //   20: getfield 87	io/intercom/android/sdk/api/UserUpdateBatcher:pendingUpdate	Lio/intercom/android/sdk/api/UserUpdateRequest;
    //   23: invokespecial 131	io/intercom/android/sdk/api/UserUpdateBatcher:submitPendingUpdate	(Lio/intercom/android/sdk/api/UserUpdateRequest;)V
    //   26: goto -11 -> 15
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	UserUpdateBatcher
    //   0	34	1	paramString	String
    //   10	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	11	29	finally
    //   18	26	29	finally
  }
  
  private void submitPendingUpdateWithDelay(long paramLong)
  {
    if (paramLong > 0L)
    {
      final String str = this.pendingUpdateIdentifier;
      this.handler.postDelayed(new Runnable()
      {
        public void run()
        {
          UserUpdateBatcher.this.submitPendingUpdate(str);
        }
      }, paramLong);
      return;
    }
    submitPendingUpdate();
  }
  
  public void submitPendingUpdate()
  {
    try
    {
      submitPendingUpdate(this.pendingUpdate);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void updateUser(UserUpdateRequest paramUserUpdateRequest)
  {
    label88:
    for (;;)
    {
      try
      {
        if (!this.pendingUpdate.canMergeUpdate(paramUserUpdateRequest)) {
          submitPendingUpdate();
        }
        if (this.pendingUpdate.isValidUpdate()) {
          if (maxDelay(paramUserUpdateRequest) < maxDelay(this.pendingUpdate))
          {
            break label88;
            this.pendingUpdate = this.pendingUpdate.merge(paramUserUpdateRequest);
            if (i != 0) {
              submitPendingUpdateWithDelay(maxDelay(this.pendingUpdate));
            }
          }
          else
          {
            i = 0;
            continue;
          }
        }
        int i = 1;
      }
      finally {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/UserUpdateBatcher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */