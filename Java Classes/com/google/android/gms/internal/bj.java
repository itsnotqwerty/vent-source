package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import com.google.android.gms.analytics.n;
import com.google.android.gms.common.internal.ae;

public final class bj
  implements ServiceConnection
{
  private volatile cs aMR;
  private volatile boolean aMS;
  
  protected bj(bh parambh) {}
  
  /* Error */
  public final void onServiceConnected(ComponentName paramComponentName, android.os.IBinder paramIBinder)
  {
    // Byte code:
    //   0: ldc 28
    //   2: invokestatic 34	com/google/android/gms/common/internal/ae:bg	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_2
    //   8: ifnonnull +19 -> 27
    //   11: aload_0
    //   12: getfield 16	com/google/android/gms/internal/bj:aMQ	Lcom/google/android/gms/internal/bh;
    //   15: ldc 36
    //   17: invokevirtual 41	com/google/android/gms/internal/ba:bA	(Ljava/lang/String;)V
    //   20: aload_0
    //   21: invokevirtual 44	java/lang/Object:notifyAll	()V
    //   24: aload_0
    //   25: monitorexit
    //   26: return
    //   27: aload_2
    //   28: invokeinterface 50 1 0
    //   33: astore_1
    //   34: ldc 52
    //   36: aload_1
    //   37: invokevirtual 58	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   40: istore_3
    //   41: iload_3
    //   42: ifeq +116 -> 158
    //   45: aload_2
    //   46: ifnonnull +54 -> 100
    //   49: aconst_null
    //   50: astore_1
    //   51: aload_0
    //   52: getfield 16	com/google/android/gms/internal/bj:aMQ	Lcom/google/android/gms/internal/bh;
    //   55: ldc 60
    //   57: invokevirtual 63	com/google/android/gms/internal/ba:bw	(Ljava/lang/String;)V
    //   60: aload_1
    //   61: ifnonnull +112 -> 173
    //   64: invokestatic 69	com/google/android/gms/common/stats/a:oz	()Lcom/google/android/gms/common/stats/a;
    //   67: pop
    //   68: aload_0
    //   69: getfield 16	com/google/android/gms/internal/bj:aMQ	Lcom/google/android/gms/internal/bh;
    //   72: getfield 73	com/google/android/gms/internal/ba:aMq	Lcom/google/android/gms/internal/bd;
    //   75: getfield 79	com/google/android/gms/internal/bd:mContext	Landroid/content/Context;
    //   78: aload_0
    //   79: getfield 16	com/google/android/gms/internal/bj:aMQ	Lcom/google/android/gms/internal/bh;
    //   82: getfield 85	com/google/android/gms/internal/bh:aMM	Lcom/google/android/gms/internal/bj;
    //   85: invokevirtual 91	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   88: aload_0
    //   89: invokevirtual 44	java/lang/Object:notifyAll	()V
    //   92: aload_0
    //   93: monitorexit
    //   94: return
    //   95: astore_1
    //   96: aload_0
    //   97: monitorexit
    //   98: aload_1
    //   99: athrow
    //   100: aload_2
    //   101: ldc 52
    //   103: invokeinterface 95 2 0
    //   108: astore_1
    //   109: aload_1
    //   110: instanceof 97
    //   113: ifeq +11 -> 124
    //   116: aload_1
    //   117: checkcast 97	com/google/android/gms/internal/cs
    //   120: astore_1
    //   121: goto -70 -> 51
    //   124: new 99	com/google/android/gms/internal/ct
    //   127: dup
    //   128: aload_2
    //   129: invokespecial 102	com/google/android/gms/internal/ct:<init>	(Landroid/os/IBinder;)V
    //   132: astore_1
    //   133: goto -82 -> 51
    //   136: astore_1
    //   137: aconst_null
    //   138: astore_1
    //   139: aload_0
    //   140: getfield 16	com/google/android/gms/internal/bj:aMQ	Lcom/google/android/gms/internal/bh;
    //   143: ldc 104
    //   145: invokevirtual 41	com/google/android/gms/internal/ba:bA	(Ljava/lang/String;)V
    //   148: goto -88 -> 60
    //   151: astore_1
    //   152: aload_0
    //   153: invokevirtual 44	java/lang/Object:notifyAll	()V
    //   156: aload_1
    //   157: athrow
    //   158: aload_0
    //   159: getfield 16	com/google/android/gms/internal/bj:aMQ	Lcom/google/android/gms/internal/bh;
    //   162: ldc 106
    //   164: aload_1
    //   165: invokevirtual 110	com/google/android/gms/internal/ba:h	(Ljava/lang/String;Ljava/lang/Object;)V
    //   168: aconst_null
    //   169: astore_1
    //   170: goto -110 -> 60
    //   173: aload_0
    //   174: getfield 112	com/google/android/gms/internal/bj:aMS	Z
    //   177: ifne +37 -> 214
    //   180: aload_0
    //   181: getfield 16	com/google/android/gms/internal/bj:aMQ	Lcom/google/android/gms/internal/bh;
    //   184: ldc 114
    //   186: invokevirtual 117	com/google/android/gms/internal/ba:bz	(Ljava/lang/String;)V
    //   189: aload_0
    //   190: getfield 16	com/google/android/gms/internal/bj:aMQ	Lcom/google/android/gms/internal/bh;
    //   193: getfield 73	com/google/android/gms/internal/ba:aMq	Lcom/google/android/gms/internal/bd;
    //   196: invokevirtual 121	com/google/android/gms/internal/bd:ph	()Lcom/google/android/gms/analytics/n;
    //   199: new 123	com/google/android/gms/internal/bk
    //   202: dup
    //   203: aload_0
    //   204: aload_1
    //   205: invokespecial 126	com/google/android/gms/internal/bk:<init>	(Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/cs;)V
    //   208: invokevirtual 131	com/google/android/gms/analytics/n:h	(Ljava/lang/Runnable;)V
    //   211: goto -123 -> 88
    //   214: aload_0
    //   215: aload_1
    //   216: putfield 133	com/google/android/gms/internal/bj:aMR	Lcom/google/android/gms/internal/cs;
    //   219: goto -131 -> 88
    //   222: astore_1
    //   223: goto -135 -> 88
    //   226: astore_2
    //   227: goto -88 -> 139
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	230	0	this	bj
    //   0	230	1	paramComponentName	ComponentName
    //   0	230	2	paramIBinder	android.os.IBinder
    //   40	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   20	26	95	finally
    //   88	94	95	finally
    //   96	98	95	finally
    //   152	158	95	finally
    //   27	41	136	android/os/RemoteException
    //   100	121	136	android/os/RemoteException
    //   124	133	136	android/os/RemoteException
    //   158	168	136	android/os/RemoteException
    //   11	20	151	finally
    //   27	41	151	finally
    //   51	60	151	finally
    //   64	88	151	finally
    //   100	121	151	finally
    //   124	133	151	finally
    //   139	148	151	finally
    //   158	168	151	finally
    //   173	211	151	finally
    //   214	219	151	finally
    //   64	88	222	java/lang/IllegalArgumentException
    //   51	60	226	android/os/RemoteException
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    ae.bg("AnalyticsServiceConnection.onServiceDisconnected");
    this.aMQ.aMq.ph().h(new bl(this, paramComponentName));
  }
  
  /* Error */
  public final cs pp()
  {
    // Byte code:
    //   0: invokestatic 149	com/google/android/gms/analytics/n:mN	()V
    //   3: new 151	android/content/Intent
    //   6: dup
    //   7: ldc -103
    //   9: invokespecial 155	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   12: astore_2
    //   13: aload_2
    //   14: new 157	android/content/ComponentName
    //   17: dup
    //   18: ldc -97
    //   20: ldc -95
    //   22: invokespecial 164	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   25: invokevirtual 168	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   28: pop
    //   29: aload_0
    //   30: getfield 16	com/google/android/gms/internal/bj:aMQ	Lcom/google/android/gms/internal/bh;
    //   33: getfield 73	com/google/android/gms/internal/ba:aMq	Lcom/google/android/gms/internal/bd;
    //   36: getfield 79	com/google/android/gms/internal/bd:mContext	Landroid/content/Context;
    //   39: astore_3
    //   40: aload_2
    //   41: ldc -86
    //   43: aload_3
    //   44: invokevirtual 173	android/content/Context:getPackageName	()Ljava/lang/String;
    //   47: invokevirtual 177	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   50: pop
    //   51: invokestatic 69	com/google/android/gms/common/stats/a:oz	()Lcom/google/android/gms/common/stats/a;
    //   54: pop
    //   55: aload_0
    //   56: monitorenter
    //   57: aload_0
    //   58: aconst_null
    //   59: putfield 133	com/google/android/gms/internal/bj:aMR	Lcom/google/android/gms/internal/cs;
    //   62: aload_0
    //   63: iconst_1
    //   64: putfield 112	com/google/android/gms/internal/bj:aMS	Z
    //   67: aload_3
    //   68: aload_2
    //   69: aload_0
    //   70: getfield 16	com/google/android/gms/internal/bj:aMQ	Lcom/google/android/gms/internal/bh;
    //   73: getfield 85	com/google/android/gms/internal/bh:aMM	Lcom/google/android/gms/internal/bj;
    //   76: sipush 129
    //   79: invokestatic 181	com/google/android/gms/common/stats/a:b	(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   82: istore_1
    //   83: aload_0
    //   84: getfield 16	com/google/android/gms/internal/bj:aMQ	Lcom/google/android/gms/internal/bh;
    //   87: ldc -73
    //   89: iload_1
    //   90: invokestatic 189	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   93: invokevirtual 192	com/google/android/gms/internal/ba:d	(Ljava/lang/String;Ljava/lang/Object;)V
    //   96: iload_1
    //   97: ifne +12 -> 109
    //   100: aload_0
    //   101: iconst_0
    //   102: putfield 112	com/google/android/gms/internal/bj:aMS	Z
    //   105: aload_0
    //   106: monitorexit
    //   107: aconst_null
    //   108: areturn
    //   109: aload_0
    //   110: getstatic 198	com/google/android/gms/internal/cm:aOy	Lcom/google/android/gms/internal/cn;
    //   113: getfield 204	com/google/android/gms/internal/cn:aOE	Ljava/lang/Object;
    //   116: checkcast 206	java/lang/Long
    //   119: invokevirtual 210	java/lang/Long:longValue	()J
    //   122: invokevirtual 214	java/lang/Object:wait	(J)V
    //   125: aload_0
    //   126: iconst_0
    //   127: putfield 112	com/google/android/gms/internal/bj:aMS	Z
    //   130: aload_0
    //   131: getfield 133	com/google/android/gms/internal/bj:aMR	Lcom/google/android/gms/internal/cs;
    //   134: astore_2
    //   135: aload_0
    //   136: aconst_null
    //   137: putfield 133	com/google/android/gms/internal/bj:aMR	Lcom/google/android/gms/internal/cs;
    //   140: aload_2
    //   141: ifnonnull +12 -> 153
    //   144: aload_0
    //   145: getfield 16	com/google/android/gms/internal/bj:aMQ	Lcom/google/android/gms/internal/bh;
    //   148: ldc -40
    //   150: invokevirtual 41	com/google/android/gms/internal/ba:bA	(Ljava/lang/String;)V
    //   153: aload_0
    //   154: monitorexit
    //   155: aload_2
    //   156: areturn
    //   157: astore_2
    //   158: aload_0
    //   159: monitorexit
    //   160: aload_2
    //   161: athrow
    //   162: astore_2
    //   163: aload_0
    //   164: getfield 16	com/google/android/gms/internal/bj:aMQ	Lcom/google/android/gms/internal/bh;
    //   167: ldc -38
    //   169: invokevirtual 117	com/google/android/gms/internal/ba:bz	(Ljava/lang/String;)V
    //   172: goto -47 -> 125
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	175	0	this	bj
    //   82	15	1	bool	boolean
    //   12	144	2	localObject1	Object
    //   157	4	2	localObject2	Object
    //   162	1	2	localInterruptedException	InterruptedException
    //   39	29	3	localContext	android.content.Context
    // Exception table:
    //   from	to	target	type
    //   57	96	157	finally
    //   100	107	157	finally
    //   109	125	157	finally
    //   125	140	157	finally
    //   144	153	157	finally
    //   153	155	157	finally
    //   158	160	157	finally
    //   163	172	157	finally
    //   109	125	162	java/lang/InterruptedException
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/bj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */