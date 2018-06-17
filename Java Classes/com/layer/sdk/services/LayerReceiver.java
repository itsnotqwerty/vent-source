package com.layer.sdk.services;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.layer.sdk.internal.lsdkk.j.a;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class LayerReceiver
  extends BroadcastReceiver
{
  private static final k.a a = k.a(LayerReceiver.class);
  private static final ArrayList<WeakReference<Listener>> b = new ArrayList();
  private static volatile LayerReceiver c;
  
  public LayerReceiver()
  {
    c = this;
  }
  
  /* Error */
  public static void createAndRegister(android.app.Application paramApplication)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 42	com/layer/sdk/services/LayerReceiver:c	Lcom/layer/sdk/services/LayerReceiver;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: new 2	com/layer/sdk/services/LayerReceiver
    //   18: dup
    //   19: invokespecial 45	com/layer/sdk/services/LayerReceiver:<init>	()V
    //   22: astore_1
    //   23: new 47	android/content/IntentFilter
    //   26: dup
    //   27: invokespecial 48	android/content/IntentFilter:<init>	()V
    //   30: astore_2
    //   31: aload_2
    //   32: ldc 50
    //   34: invokevirtual 54	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   37: aload_2
    //   38: ldc 56
    //   40: invokevirtual 54	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   43: aload_0
    //   44: aload_1
    //   45: aload_2
    //   46: invokevirtual 62	android/app/Application:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   49: pop
    //   50: goto -39 -> 11
    //   53: astore_0
    //   54: ldc 2
    //   56: monitorexit
    //   57: aload_0
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	paramApplication	android.app.Application
    //   6	39	1	localLayerReceiver	LayerReceiver
    //   30	16	2	localIntentFilter	android.content.IntentFilter
    // Exception table:
    //   from	to	target	type
    //   3	7	53	finally
    //   15	50	53	finally
  }
  
  public static boolean isNetworkConnected(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((paramContext != null) && (paramContext.isConnectedOrConnecting())) {}
    for (boolean bool = true;; bool = false)
    {
      if (k.a(2))
      {
        k.a(a, "Network is connected: " + bool);
        if (paramContext != null) {
          k.a(a, "NetworkInfo: " + paramContext.toString());
        }
      }
      return bool;
    }
  }
  
  public static void register(Listener paramListener)
  {
    synchronized (b)
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext()) {
        if (((WeakReference)localIterator.next()).get() == paramListener) {
          return;
        }
      }
      b.add(new WeakReference(paramListener));
      return;
    }
  }
  
  public static void unregister(Listener paramListener)
  {
    ArrayList localArrayList2;
    synchronized (b)
    {
      localArrayList2 = new ArrayList(0);
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        Listener localListener = (Listener)localWeakReference.get();
        if ((localListener == null) || (localListener == paramListener)) {
          localArrayList2.add(localWeakReference);
        }
      }
    }
    b.removeAll(localArrayList2);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramIntent.getAction())) {
      if (!isNetworkConnected(paramContext)) {
        break label50;
      }
    }
    label50:
    for (paramContext = LayerReceiver.ServiceEvent.Type.CONNECTION_AVAILABLE;; paramContext = LayerReceiver.ServiceEvent.Type.CONNECTION_UNAVAILABLE)
    {
      new Thread(new Runnable()
      {
        public final void run()
        {
          if (k.a(2)) {
            k.a(LayerReceiver.wq(), this.btX.getType().name());
          }
          for (;;)
          {
            LayerReceiver.Listener localListener;
            synchronized (LayerReceiver.wL())
            {
              ArrayList localArrayList2 = new ArrayList(0);
              Iterator localIterator = LayerReceiver.wL().iterator();
              if (!localIterator.hasNext()) {
                break;
              }
              WeakReference localWeakReference = (WeakReference)localIterator.next();
              localListener = (LayerReceiver.Listener)localWeakReference.get();
              if (localListener == null) {
                localArrayList2.add(localWeakReference);
              }
            }
            localListener.onServiceEvent(this.btX);
          }
          LayerReceiver.wL().removeAll(localCollection);
        }
      }).start();
      return;
    }
  }
  
  public static abstract interface Listener
    extends j.a
  {
    public abstract void onServiceEvent(LayerReceiver.ServiceEvent paramServiceEvent);
  }
  
  public static class ServiceEvent
  {
    private final Type a;
    
    public ServiceEvent(Type paramType)
    {
      this.a = paramType;
    }
    
    public Type getType()
    {
      return this.a;
    }
    
    public static enum Type
    {
      CONNECTION_AVAILABLE,  CONNECTION_UNAVAILABLE;
      
      private Type() {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/services/LayerReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */