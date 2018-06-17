package io.intercom.android.sdk.store;

import android.os.Handler;
import android.os.Looper;

class TwoParamChangeSubscriber<S, T1, T2>
  implements Store.Subscriber<S>
{
  private T1 last1 = null;
  private T2 last2 = null;
  private final Handler mainHandler;
  private final Store.Selector<S, T1> selector1;
  private final Store.Selector<S, T2> selector2;
  final Store.Subscriber2<T1, T2> subscriber;
  
  TwoParamChangeSubscriber(Store.Selector<S, T1> paramSelector, Store.Selector<S, T2> paramSelector1, Store.Subscriber2<T1, T2> paramSubscriber2)
  {
    this(paramSelector, paramSelector1, paramSubscriber2, new Handler(Looper.getMainLooper()));
  }
  
  TwoParamChangeSubscriber(Store.Selector<S, T1> paramSelector, Store.Selector<S, T2> paramSelector1, Store.Subscriber2<T1, T2> paramSubscriber2, Handler paramHandler)
  {
    this.selector1 = paramSelector;
    this.selector2 = paramSelector1;
    this.subscriber = paramSubscriber2;
    this.mainHandler = paramHandler;
  }
  
  public void onStateChange(final S paramS)
  {
    final Object localObject = this.selector1.transform(paramS);
    paramS = this.selector2.transform(paramS);
    if ((this.last1 != localObject) || (this.last2 != paramS))
    {
      this.last1 = localObject;
      this.last2 = paramS;
      ChangeSubscriber.runOnMainThread(new Runnable()
      {
        public void run()
        {
          TwoParamChangeSubscriber.this.subscriber.onStateChange(localObject, paramS);
        }
      }, this.mainHandler);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/TwoParamChangeSubscriber.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */