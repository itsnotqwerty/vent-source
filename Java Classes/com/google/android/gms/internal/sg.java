package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.b.b;
import java.util.WeakHashMap;

public final class sg
  implements com.google.android.gms.ads.b.i
{
  private static WeakHashMap<IBinder, sg> bcI = new WeakHashMap();
  private final com.google.android.gms.ads.i aAc;
  final sd bcJ;
  private final b bcK;
  
  /* Error */
  private sg(sd paramsd)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: invokespecial 31	java/lang/Object:<init>	()V
    //   7: aload_0
    //   8: new 33	com/google/android/gms/ads/i
    //   11: dup
    //   12: invokespecial 34	com/google/android/gms/ads/i:<init>	()V
    //   15: putfield 36	com/google/android/gms/internal/sg:aAc	Lcom/google/android/gms/ads/i;
    //   18: aload_0
    //   19: aload_1
    //   20: putfield 38	com/google/android/gms/internal/sg:bcJ	Lcom/google/android/gms/internal/sd;
    //   23: aload_1
    //   24: invokeinterface 44 1 0
    //   29: invokestatic 50	com/google/android/gms/a/c:a	(Lcom/google/android/gms/a/a;)Ljava/lang/Object;
    //   32: checkcast 52	android/content/Context
    //   35: astore_1
    //   36: aload 4
    //   38: astore_3
    //   39: aload_1
    //   40: ifnull +34 -> 74
    //   43: new 54	com/google/android/gms/ads/b/b
    //   46: dup
    //   47: aload_1
    //   48: invokespecial 57	com/google/android/gms/ads/b/b:<init>	(Landroid/content/Context;)V
    //   51: astore_1
    //   52: aload_0
    //   53: getfield 38	com/google/android/gms/internal/sg:bcJ	Lcom/google/android/gms/internal/sd;
    //   56: aload_1
    //   57: invokestatic 61	com/google/android/gms/a/c:Q	(Ljava/lang/Object;)Lcom/google/android/gms/a/a;
    //   60: invokeinterface 65 2 0
    //   65: istore_2
    //   66: iload_2
    //   67: ifne +5 -> 72
    //   70: aconst_null
    //   71: astore_1
    //   72: aload_1
    //   73: astore_3
    //   74: aload_0
    //   75: aload_3
    //   76: putfield 67	com/google/android/gms/internal/sg:bcK	Lcom/google/android/gms/ads/b/b;
    //   79: return
    //   80: astore_1
    //   81: ldc 69
    //   83: aload_1
    //   84: invokestatic 75	com/google/android/gms/internal/af:c	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   87: aconst_null
    //   88: astore_1
    //   89: goto -53 -> 36
    //   92: astore_1
    //   93: ldc 77
    //   95: aload_1
    //   96: invokestatic 75	com/google/android/gms/internal/af:c	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   99: aload 4
    //   101: astore_3
    //   102: goto -28 -> 74
    //   105: astore_1
    //   106: goto -25 -> 81
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	sg
    //   0	109	1	paramsd	sd
    //   65	2	2	bool	boolean
    //   38	64	3	localObject1	Object
    //   1	99	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   23	36	80	android/os/RemoteException
    //   52	66	92	android/os/RemoteException
    //   23	36	105	java/lang/NullPointerException
  }
  
  public static sg a(sd paramsd)
  {
    synchronized (bcI)
    {
      sg localsg = (sg)bcI.get(paramsd.asBinder());
      if (localsg != null) {
        return localsg;
      }
      localsg = new sg(paramsd);
      bcI.put(paramsd.asBinder(), localsg);
      return localsg;
    }
  }
  
  public final String lM()
  {
    try
    {
      String str = this.bcJ.lM();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get custom template id.", localRemoteException);
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/sg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */