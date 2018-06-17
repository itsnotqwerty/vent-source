package io.intercom.android.sdk.store;

import io.intercom.android.sdk.actions.Action;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class Store<S>
{
  S currentState;
  final Middleware<S> dispatcher = new Middleware()
  {
    public void dispatch(Store<S> paramAnonymousStore, Action<?> paramAnonymousAction, Store.NextDispatcher paramAnonymousNextDispatcher)
    {
      try
      {
        Store.this.currentState = paramAnonymousStore.reducer.reduce(paramAnonymousAction, Store.this.currentState);
        int i = 0;
        while (i < Store.this.subscribers.size())
        {
          ((Store.Subscriber)paramAnonymousStore.subscribers.get(i)).onStateChange(Store.this.currentState);
          i += 1;
        }
        return;
      }
      finally {}
    }
  };
  private final List<NextDispatcher> next = new ArrayList();
  final Reducer<S> reducer;
  final List<Subscriber<S>> subscribers = new CopyOnWriteArrayList();
  
  @SafeVarargs
  public Store(final Reducer<S> paramReducer, final S paramS, Middleware<S>... paramVarArgs)
  {
    this.reducer = paramReducer;
    this.currentState = paramS;
    this.next.add(new NextDispatcher()
    {
      public void dispatch(Action<?> paramAnonymousAction)
      {
        Store.this.dispatcher.dispatch(Store.this, paramAnonymousAction, null);
      }
    });
    int i = paramVarArgs.length - 1;
    while (i >= 0)
    {
      paramReducer = paramVarArgs[i];
      paramS = (NextDispatcher)this.next.get(0);
      this.next.add(0, new NextDispatcher()
      {
        public void dispatch(Action<?> paramAnonymousAction)
        {
          paramReducer.dispatch(Store.this, paramAnonymousAction, paramS);
        }
      });
      i -= 1;
    }
  }
  
  public S dispatch(Action<?> paramAction)
  {
    ((NextDispatcher)this.next.get(0)).dispatch(paramAction);
    return (S)state();
  }
  
  public <T> T select(Selector<S, T> paramSelector)
  {
    return (T)paramSelector.transform(state());
  }
  
  public S state()
  {
    return (S)this.currentState;
  }
  
  public Subscription subscribe(final Subscriber<S> paramSubscriber)
  {
    this.subscribers.add(paramSubscriber);
    paramSubscriber.onStateChange(state());
    new Subscription()
    {
      public void unsubscribe()
      {
        Store.this.subscribers.remove(paramSubscriber);
      }
    };
  }
  
  public <T1, T2> Subscription subscribeToChanges(Selector<S, T1> paramSelector, Selector<S, T2> paramSelector1, Subscriber2<T1, T2> paramSubscriber2)
  {
    return subscribe(new TwoParamChangeSubscriber(paramSelector, paramSelector1, paramSubscriber2));
  }
  
  public <T> Subscription subscribeToChanges(Selector<S, T> paramSelector, Subscriber<T> paramSubscriber)
  {
    return subscribe(new ChangeSubscriber(paramSelector, paramSubscriber));
  }
  
  public static abstract interface Middleware<S>
  {
    public abstract void dispatch(Store<S> paramStore, Action<?> paramAction, Store.NextDispatcher paramNextDispatcher);
  }
  
  public static abstract interface NextDispatcher
  {
    public abstract void dispatch(Action<?> paramAction);
  }
  
  public static abstract interface Reducer<S>
  {
    public abstract S reduce(Action<?> paramAction, S paramS);
  }
  
  public static abstract interface Selector<S, T>
  {
    public abstract T transform(S paramS);
  }
  
  public static abstract interface Subscriber<T>
  {
    public abstract void onStateChange(T paramT);
  }
  
  public static abstract interface Subscriber2<T1, T2>
  {
    public abstract void onStateChange(T1 paramT1, T2 paramT2);
  }
  
  public static abstract interface Subscription
  {
    public abstract void unsubscribe();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/Store.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */