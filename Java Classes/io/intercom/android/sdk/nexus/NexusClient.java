package io.intercom.android.sdk.nexus;

import io.intercom.android.sdk.twig.Twig;
import io.intercom.okhttp3.OkHttpClient;
import io.intercom.okhttp3.OkHttpClient.Builder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

public class NexusClient
  implements NexusTopicProvider
{
  private ScheduledExecutorService backgroundTaskExecutor;
  private final OkHttpClient client;
  private final NexusEventPropagator eventPropagator;
  private ScheduledFuture future;
  private long presenceInterval;
  private final List<NexusSocket> sockets = new ArrayList();
  private final List<String> topics = new ArrayList();
  private final Twig twig;
  
  public NexusClient(Twig paramTwig)
  {
    this(paramTwig, defaultOkHttpClientBuilder().build());
  }
  
  public NexusClient(Twig paramTwig, OkHttpClient paramOkHttpClient)
  {
    this(paramTwig, paramOkHttpClient, new NexusEventPropagator(paramTwig));
  }
  
  NexusClient(Twig paramTwig, OkHttpClient paramOkHttpClient, NexusEventPropagator paramNexusEventPropagator)
  {
    this.twig = paramTwig;
    this.eventPropagator = paramNexusEventPropagator;
    this.client = paramOkHttpClient;
  }
  
  public static OkHttpClient.Builder defaultOkHttpClientBuilder()
  {
    return new OkHttpClient.Builder().readTimeout(130L, TimeUnit.SECONDS).writeTimeout(130L, TimeUnit.SECONDS).connectTimeout(20L, TimeUnit.SECONDS);
  }
  
  private void schedulePresence()
  {
    if (this.presenceInterval > 0L) {
      this.future = this.backgroundTaskExecutor.schedule(new Runnable()
      {
        public void run()
        {
          NexusClient.this.fire(NexusEvent.getUserPresenceEvent());
          NexusClient.this.schedulePresence();
        }
      }, this.presenceInterval, TimeUnit.SECONDS);
    }
  }
  
  private void subscribeToTopics(List<String> paramList)
  {
    if (!paramList.isEmpty()) {
      fire(NexusEvent.getSubscribeEvent(paramList));
    }
  }
  
  private void unSubscribeFromTopics(List<String> paramList)
  {
    if (!paramList.isEmpty()) {
      fire(NexusEvent.getUnsubscribeEvent(paramList));
    }
  }
  
  public void addEventListener(NexusListener paramNexusListener)
  {
    this.eventPropagator.addListener(paramNexusListener);
  }
  
  public void addTopics(List<String> paramList)
  {
    try
    {
      paramList = new ArrayList(paramList);
      paramList.removeAll(this.topics);
      subscribeToTopics(paramList);
      this.topics.addAll(paramList);
      return;
    }
    finally
    {
      paramList = finally;
      throw paramList;
    }
  }
  
  public void clearTopics()
  {
    try
    {
      unSubscribeFromTopics(this.topics);
      this.topics.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void connect(NexusConfig paramNexusConfig, boolean paramBoolean)
  {
    if (paramNexusConfig.getEndpoints().isEmpty()) {
      this.twig.e("No endpoints present", new Object[0]);
    }
    do
    {
      return;
      if (this.backgroundTaskExecutor == null)
      {
        localObject1 = new NexusThreadFactory(null);
        this.backgroundTaskExecutor = Executors.newScheduledThreadPool(paramNexusConfig.getEndpoints().size() + 1, (ThreadFactory)localObject1);
      }
      Object localObject1 = paramNexusConfig.getEndpoints().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (String)((Iterator)localObject1).next();
        this.twig.i("Adding socket", new Object[0]);
        localObject2 = new NexusSocket((String)localObject2, paramNexusConfig.getConnectionTimeout(), paramBoolean, this.twig, this.backgroundTaskExecutor, this.client, this.eventPropagator, this);
        ((NexusSocket)localObject2).connect();
        this.sockets.add(localObject2);
      }
      this.presenceInterval = paramNexusConfig.getPresenceHeartbeatInterval();
    } while (!paramBoolean);
    schedulePresence();
  }
  
  public void disconnect()
  {
    try
    {
      if (this.sockets.isEmpty()) {
        break label90;
      }
      Iterator localIterator = this.sockets.iterator();
      while (localIterator.hasNext())
      {
        NexusSocket localNexusSocket = (NexusSocket)localIterator.next();
        this.twig.i("disconnecting socket", new Object[0]);
        localNexusSocket.disconnect();
      }
      this.sockets.clear();
    }
    finally {}
    this.twig.i("client disconnected", new Object[0]);
    label90:
    if (this.future != null) {
      this.future.cancel(true);
    }
  }
  
  public void fire(NexusEvent paramNexusEvent)
  {
    try
    {
      this.eventPropagator.cacheEvent(paramNexusEvent);
      paramNexusEvent = paramNexusEvent.toStringEncodedJsonObject();
      if (!paramNexusEvent.isEmpty())
      {
        Iterator localIterator = this.sockets.iterator();
        while (localIterator.hasNext()) {
          ((NexusSocket)localIterator.next()).fire(paramNexusEvent);
        }
      }
    }
    finally {}
  }
  
  public List<String> getTopics()
  {
    try
    {
      List localList = this.topics;
      return localList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public boolean isConnected()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 59	io/intercom/android/sdk/nexus/NexusClient:sockets	Ljava/util/List;
    //   6: invokeinterface 188 1 0
    //   11: astore_2
    //   12: aload_2
    //   13: invokeinterface 193 1 0
    //   18: ifeq +26 -> 44
    //   21: aload_2
    //   22: invokeinterface 197 1 0
    //   27: checkcast 206	io/intercom/android/sdk/nexus/NexusSocket
    //   30: invokevirtual 250	io/intercom/android/sdk/nexus/NexusSocket:isConnected	()Z
    //   33: istore_1
    //   34: iload_1
    //   35: ifeq -23 -> 12
    //   38: iconst_1
    //   39: istore_1
    //   40: aload_0
    //   41: monitorexit
    //   42: iload_1
    //   43: ireturn
    //   44: iconst_0
    //   45: istore_1
    //   46: goto -6 -> 40
    //   49: astore_2
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_2
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	NexusClient
    //   33	13	1	bool	boolean
    //   11	11	2	localIterator	Iterator
    //   49	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	12	49	finally
    //   12	34	49	finally
  }
  
  public void localUpdate(NexusEvent paramNexusEvent)
  {
    try
    {
      this.eventPropagator.notifyEvent(paramNexusEvent);
      return;
    }
    finally
    {
      paramNexusEvent = finally;
      throw paramNexusEvent;
    }
  }
  
  public void removeEventListener(NexusListener paramNexusListener)
  {
    this.eventPropagator.removeListener(paramNexusListener);
  }
  
  public void removeTopics(List<String> paramList)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        String str = (String)paramList.next();
        if (this.topics.contains(str)) {
          localArrayList.add(str);
        }
      }
      unSubscribeFromTopics(localArrayList);
    }
    finally {}
    this.topics.removeAll(localArrayList);
  }
  
  public void setTopics(List<String> paramList)
  {
    try
    {
      ArrayList localArrayList1 = new ArrayList(paramList);
      localArrayList1.removeAll(this.topics);
      ArrayList localArrayList2 = new ArrayList(this.topics);
      localArrayList2.removeAll(paramList);
      subscribeToTopics(localArrayList1);
      unSubscribeFromTopics(localArrayList2);
      this.topics.clear();
      this.topics.addAll(paramList);
      return;
    }
    finally
    {
      paramList = finally;
      throw paramList;
    }
  }
  
  private static class NexusThreadFactory
    implements ThreadFactory
  {
    private final ThreadFactory defaultFactory = Executors.defaultThreadFactory();
    private int threadCount = 0;
    
    public Thread newThread(Runnable paramRunnable)
    {
      paramRunnable = this.defaultFactory.newThread(paramRunnable);
      this.threadCount += 1;
      paramRunnable.setName("IntercomNexus-" + this.threadCount);
      return paramRunnable;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/nexus/NexusClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */