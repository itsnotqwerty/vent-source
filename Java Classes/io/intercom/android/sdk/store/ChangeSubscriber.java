package io.intercom.android.sdk.store;

import android.os.Handler;
import android.os.Looper;

class ChangeSubscriber<S, T>
  implements Store.Subscriber<S>
{
  private T last = null;
  private final Handler mainHandler;
  private final Store.Selector<S, T> selector;
  final Store.Subscriber<T> subscriber;
  
  ChangeSubscriber(Store.Selector<S, T> paramSelector, Store.Subscriber<T> paramSubscriber)
  {
    this(paramSelector, paramSubscriber, new Handler(Looper.getMainLooper()));
  }
  
  ChangeSubscriber(Store.Selector<S, T> paramSelector, Store.Subscriber<T> paramSubscriber, Handler paramHandler)
  {
    this.selector = paramSelector;
    this.subscriber = paramSubscriber;
    this.mainHandler = paramHandler;
  }
  
  static void runOnMainThread(Runnable paramRunnable, Handler paramHandler)
  {
    if (Looper.myLooper() == Looper.getMainLooper())
    {
      paramRunnable.run();
      return;
    }
    paramHandler.post(paramRunnable);
  }
  
  public void onStateChange(final S paramS)
  {
    paramS = this.selector.transform(paramS);
    if (this.last != paramS)
    {
      this.last = paramS;
      runOnMainThread(new Runnable()
      {
        public void run()
        {
          ChangeSubscriber.this.subscriber.onStateChange(paramS);
        }
      }, this.mainHandler);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/ChangeSubscriber.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */