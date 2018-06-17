package io.intercom.android.sdk.nexus;

import android.util.LruCache;
import io.intercom.android.sdk.twig.Twig;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

class NexusEventPropagator
  implements NexusListener
{
  private final LruCache<String, Boolean> cache = new LruCache(100);
  private final List<NexusListener> listeners = new CopyOnWriteArrayList();
  private final Twig twig;
  
  public NexusEventPropagator(Twig paramTwig)
  {
    this.twig = paramTwig;
  }
  
  void addListener(NexusListener paramNexusListener)
  {
    this.listeners.add(paramNexusListener);
  }
  
  void cacheEvent(NexusEvent paramNexusEvent)
  {
    this.cache.put(paramNexusEvent.getGuid(), Boolean.valueOf(true));
  }
  
  public void notifyEvent(NexusEvent paramNexusEvent)
  {
    if (paramNexusEvent.getEventType() != NexusEventType.UNKNOWN)
    {
      synchronized (this.cache)
      {
        if (this.cache.get(paramNexusEvent.getGuid()) == null)
        {
          this.cache.put(paramNexusEvent.getGuid(), Boolean.valueOf(true));
          this.twig.internal("notifying listeners of event: " + paramNexusEvent.getEventType());
          Iterator localIterator = this.listeners.iterator();
          if (!localIterator.hasNext()) {
            break label141;
          }
          ((NexusListener)localIterator.next()).notifyEvent(paramNexusEvent);
        }
      }
      this.twig.internal("dropping event, already in cache: " + paramNexusEvent.toStringEncodedJsonObject());
    }
    label141:
  }
  
  public void onConnect()
  {
    this.twig.d("notifying listeners that a connection opened", new Object[0]);
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext()) {
      ((NexusListener)localIterator.next()).onConnect();
    }
  }
  
  public void onConnectFailed()
  {
    this.twig.d("notifying listeners that a connection failed to open", new Object[0]);
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext()) {
      ((NexusListener)localIterator.next()).onConnectFailed();
    }
  }
  
  public void onShutdown()
  {
    this.twig.d("notifying listeners that a connection has shutdown", new Object[0]);
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext()) {
      ((NexusListener)localIterator.next()).onShutdown();
    }
  }
  
  void removeListener(NexusListener paramNexusListener)
  {
    this.listeners.remove(paramNexusListener);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/nexus/NexusEventPropagator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */