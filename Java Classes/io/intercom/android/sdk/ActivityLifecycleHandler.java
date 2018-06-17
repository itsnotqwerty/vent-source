package io.intercom.android.sdk;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;

class ActivityLifecycleHandler
  extends Handler
{
  private static final int ESTIMATED_ACTIVITY_TRANSITION_DURATION_MS = 500;
  static final int PAUSED_CODE = 2;
  static final int READY_FOR_VIEW_CODE = 1;
  static final int RESUMED_CODE = 0;
  static final int STOPPED_CODE = 3;
  private final long readyForViewDelayMs;
  private final Store<State> store;
  
  ActivityLifecycleHandler(Looper paramLooper, Store<State> paramStore, float paramFloat)
  {
    super(paramLooper);
    this.store = paramStore;
    this.readyForViewDelayMs = ((500.0F * paramFloat));
  }
  
  static Message getMessage(int paramInt, Activity paramActivity)
  {
    Message localMessage = Message.obtain();
    localMessage.what = paramInt;
    localMessage.obj = paramActivity;
    return localMessage;
  }
  
  public void handleMessage(Message paramMessage)
  {
    Activity localActivity = (Activity)paramMessage.obj;
    switch (paramMessage.what)
    {
    default: 
      return;
    case 0: 
      sendMessageAfterDelay(getMessage(1, localActivity), this.readyForViewDelayMs);
      return;
    case 1: 
      this.store.dispatch(Actions.activityReadyForViewAttachment(localActivity));
      return;
    case 2: 
      this.store.dispatch(Actions.activityPaused(localActivity));
      return;
    }
    this.store.dispatch(Actions.activityStopped(localActivity));
  }
  
  void sendMessageAfterDelay(Message paramMessage, long paramLong)
  {
    sendMessageDelayed(paramMessage, paramLong);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/ActivityLifecycleHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */