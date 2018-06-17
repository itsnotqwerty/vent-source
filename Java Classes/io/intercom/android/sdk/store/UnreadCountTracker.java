package io.intercom.android.sdk.store;

import io.intercom.android.sdk.UnreadConversationCountListener;
import io.intercom.android.sdk.state.State;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class UnreadCountTracker
{
  final Map<UnreadConversationCountListener, Store.Subscription> listeners = new ConcurrentHashMap();
  private final Store<State> store;
  
  public UnreadCountTracker(Store<State> paramStore)
  {
    this.store = paramStore;
  }
  
  public void addListener(final UnreadConversationCountListener paramUnreadConversationCountListener)
  {
    Object localObject = new Store.Subscriber()
    {
      public void onStateChange(Integer paramAnonymousInteger)
      {
        paramUnreadConversationCountListener.onCountUpdate(paramAnonymousInteger.intValue());
      }
    };
    localObject = this.store.subscribeToChanges(Selectors.UNREAD_COUNT, (Store.Subscriber)localObject);
    this.listeners.put(paramUnreadConversationCountListener, localObject);
  }
  
  public void removeListener(UnreadConversationCountListener paramUnreadConversationCountListener)
  {
    if (this.listeners.containsKey(paramUnreadConversationCountListener)) {
      ((Store.Subscription)this.listeners.remove(paramUnreadConversationCountListener)).unsubscribe();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/UnreadCountTracker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */