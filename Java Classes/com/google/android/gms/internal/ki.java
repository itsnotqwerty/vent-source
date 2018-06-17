package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import com.google.android.gms.common.a;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.an;
import com.google.android.gms.common.internal.ao;

public final class ki
  implements ServiceConnection, an, ao
{
  volatile boolean aWN;
  volatile ha aWO;
  
  protected ki(ju paramju) {}
  
  public final void a(a parama)
  {
    Object localObject2 = null;
    ae.bg("MeasurementServiceConnection.onConnectionFailed");
    hz localhz = this.aWG.zzjev;
    Object localObject1 = localObject2;
    if (localhz.aUP != null)
    {
      localObject1 = localObject2;
      if (localhz.aUP.isInitialized()) {
        localObject1 = localhz.aUP;
      }
    }
    if (localObject1 != null) {
      ((hb)localObject1).aTd.j("Service connection failed", parama);
    }
    try
    {
      this.aWN = false;
      this.aWO = null;
      this.aWG.qO().i(new kn(this));
      return;
    }
    finally {}
  }
  
  public final void cG(int paramInt)
  {
    ae.bg("MeasurementServiceConnection.onConnectionSuspended");
    this.aWG.qP().aTh.bq("Service connection suspended");
    this.aWG.qO().i(new km(this));
  }
  
  /* Error */
  public final void nY()
  {
    // Byte code:
    //   0: ldc 114
    //   2: invokestatic 37	com/google/android/gms/common/internal/ae:bg	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 71	com/google/android/gms/internal/ki:aWO	Lcom/google/android/gms/internal/ha;
    //   11: invokevirtual 120	com/google/android/gms/common/internal/al:or	()Landroid/os/IInterface;
    //   14: checkcast 122	com/google/android/gms/internal/gt
    //   17: astore_1
    //   18: aload_0
    //   19: aconst_null
    //   20: putfield 71	com/google/android/gms/internal/ki:aWO	Lcom/google/android/gms/internal/ha;
    //   23: aload_0
    //   24: getfield 20	com/google/android/gms/internal/ki:aWG	Lcom/google/android/gms/internal/ju;
    //   27: invokevirtual 77	com/google/android/gms/internal/ix:qO	()Lcom/google/android/gms/internal/hu;
    //   30: new 124	com/google/android/gms/internal/kl
    //   33: dup
    //   34: aload_0
    //   35: aload_1
    //   36: invokespecial 127	com/google/android/gms/internal/kl:<init>	(Lcom/google/android/gms/internal/ki;Lcom/google/android/gms/internal/gt;)V
    //   39: invokevirtual 88	com/google/android/gms/internal/hu:i	(Ljava/lang/Runnable;)V
    //   42: aload_0
    //   43: monitorexit
    //   44: return
    //   45: aload_0
    //   46: aconst_null
    //   47: putfield 71	com/google/android/gms/internal/ki:aWO	Lcom/google/android/gms/internal/ha;
    //   50: aload_0
    //   51: iconst_0
    //   52: putfield 28	com/google/android/gms/internal/ki:aWN	Z
    //   55: goto -13 -> 42
    //   58: astore_1
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_1
    //   62: athrow
    //   63: astore_1
    //   64: goto -19 -> 45
    //   67: astore_1
    //   68: goto -23 -> 45
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	this	ki
    //   17	19	1	localgt	gt
    //   58	4	1	localObject	Object
    //   63	1	1	localDeadObjectException	android.os.DeadObjectException
    //   67	1	1	localIllegalStateException	IllegalStateException
    // Exception table:
    //   from	to	target	type
    //   7	42	58	finally
    //   42	44	58	finally
    //   45	55	58	finally
    //   59	61	58	finally
    //   7	42	63	android/os/DeadObjectException
    //   7	42	67	java/lang/IllegalStateException
  }
  
  /* Error */
  public final void onServiceConnected(ComponentName paramComponentName, android.os.IBinder paramIBinder)
  {
    // Byte code:
    //   0: ldc -121
    //   2: invokestatic 37	com/google/android/gms/common/internal/ae:bg	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_2
    //   8: ifnonnull +26 -> 34
    //   11: aload_0
    //   12: iconst_0
    //   13: putfield 28	com/google/android/gms/internal/ki:aWN	Z
    //   16: aload_0
    //   17: getfield 20	com/google/android/gms/internal/ki:aWG	Lcom/google/android/gms/internal/ju;
    //   20: invokevirtual 96	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   23: getfield 138	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   26: ldc -116
    //   28: invokevirtual 104	com/google/android/gms/internal/hd:bq	(Ljava/lang/String;)V
    //   31: aload_0
    //   32: monitorexit
    //   33: return
    //   34: aload_2
    //   35: invokeinterface 146 1 0
    //   40: astore_1
    //   41: ldc -108
    //   43: aload_1
    //   44: invokevirtual 154	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   47: istore_3
    //   48: iload_3
    //   49: ifeq +119 -> 168
    //   52: aload_2
    //   53: ifnonnull +58 -> 111
    //   56: aconst_null
    //   57: astore_1
    //   58: aload_0
    //   59: getfield 20	com/google/android/gms/internal/ki:aWG	Lcom/google/android/gms/internal/ju;
    //   62: invokevirtual 96	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   65: getfield 157	com/google/android/gms/internal/hb:aTi	Lcom/google/android/gms/internal/hd;
    //   68: ldc -97
    //   70: invokevirtual 104	com/google/android/gms/internal/hd:bq	(Ljava/lang/String;)V
    //   73: aload_1
    //   74: ifnonnull +115 -> 189
    //   77: aload_0
    //   78: iconst_0
    //   79: putfield 28	com/google/android/gms/internal/ki:aWN	Z
    //   82: invokestatic 165	com/google/android/gms/common/stats/a:oz	()Lcom/google/android/gms/common/stats/a;
    //   85: pop
    //   86: aload_0
    //   87: getfield 20	com/google/android/gms/internal/ki:aWG	Lcom/google/android/gms/internal/ju;
    //   90: invokevirtual 169	com/google/android/gms/internal/ix:getContext	()Landroid/content/Context;
    //   93: aload_0
    //   94: getfield 20	com/google/android/gms/internal/ki:aWG	Lcom/google/android/gms/internal/ju;
    //   97: getfield 173	com/google/android/gms/internal/ju:aWz	Lcom/google/android/gms/internal/ki;
    //   100: invokevirtual 179	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   103: aload_0
    //   104: monitorexit
    //   105: return
    //   106: astore_1
    //   107: aload_0
    //   108: monitorexit
    //   109: aload_1
    //   110: athrow
    //   111: aload_2
    //   112: ldc -108
    //   114: invokeinterface 183 2 0
    //   119: astore_1
    //   120: aload_1
    //   121: instanceof 122
    //   124: ifeq +11 -> 135
    //   127: aload_1
    //   128: checkcast 122	com/google/android/gms/internal/gt
    //   131: astore_1
    //   132: goto -74 -> 58
    //   135: new 185	com/google/android/gms/internal/gv
    //   138: dup
    //   139: aload_2
    //   140: invokespecial 188	com/google/android/gms/internal/gv:<init>	(Landroid/os/IBinder;)V
    //   143: astore_1
    //   144: goto -86 -> 58
    //   147: astore_1
    //   148: aconst_null
    //   149: astore_1
    //   150: aload_0
    //   151: getfield 20	com/google/android/gms/internal/ki:aWG	Lcom/google/android/gms/internal/ju;
    //   154: invokevirtual 96	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   157: getfield 138	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   160: ldc -66
    //   162: invokevirtual 104	com/google/android/gms/internal/hd:bq	(Ljava/lang/String;)V
    //   165: goto -92 -> 73
    //   168: aload_0
    //   169: getfield 20	com/google/android/gms/internal/ki:aWG	Lcom/google/android/gms/internal/ju;
    //   172: invokevirtual 96	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   175: getfield 138	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   178: ldc -64
    //   180: aload_1
    //   181: invokevirtual 69	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   184: aconst_null
    //   185: astore_1
    //   186: goto -113 -> 73
    //   189: aload_0
    //   190: getfield 20	com/google/android/gms/internal/ki:aWG	Lcom/google/android/gms/internal/ju;
    //   193: invokevirtual 77	com/google/android/gms/internal/ix:qO	()Lcom/google/android/gms/internal/hu;
    //   196: new 194	com/google/android/gms/internal/kj
    //   199: dup
    //   200: aload_0
    //   201: aload_1
    //   202: invokespecial 195	com/google/android/gms/internal/kj:<init>	(Lcom/google/android/gms/internal/ki;Lcom/google/android/gms/internal/gt;)V
    //   205: invokevirtual 88	com/google/android/gms/internal/hu:i	(Ljava/lang/Runnable;)V
    //   208: goto -105 -> 103
    //   211: astore_1
    //   212: goto -109 -> 103
    //   215: astore_2
    //   216: goto -66 -> 150
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	219	0	this	ki
    //   0	219	1	paramComponentName	ComponentName
    //   0	219	2	paramIBinder	android.os.IBinder
    //   47	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   11	33	106	finally
    //   34	48	106	finally
    //   58	73	106	finally
    //   77	82	106	finally
    //   82	103	106	finally
    //   103	105	106	finally
    //   107	109	106	finally
    //   111	132	106	finally
    //   135	144	106	finally
    //   150	165	106	finally
    //   168	184	106	finally
    //   189	208	106	finally
    //   34	48	147	android/os/RemoteException
    //   111	132	147	android/os/RemoteException
    //   135	144	147	android/os/RemoteException
    //   168	184	147	android/os/RemoteException
    //   82	103	211	java/lang/IllegalArgumentException
    //   58	73	215	android/os/RemoteException
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    ae.bg("MeasurementServiceConnection.onServiceDisconnected");
    this.aWG.qP().aTh.bq("Service disconnected");
    this.aWG.qO().i(new kk(this, paramComponentName));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */