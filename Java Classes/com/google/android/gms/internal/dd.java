package com.google.android.gms.internal;

import android.app.job.JobParameters;
import android.content.Context;
import android.os.Handler;
import com.google.android.gms.common.internal.ae;

public final class dd<T extends Context,  extends dg>
{
  private static Boolean aPm;
  public final T aPl;
  final Handler mHandler;
  
  public dd(T paramT)
  {
    ae.E(paramT);
    this.aPl = paramT;
    this.mHandler = new Handler();
  }
  
  public static boolean ad(Context paramContext)
  {
    ae.E(paramContext);
    if (aPm != null) {
      return aPm.booleanValue();
    }
    boolean bool = di.n(paramContext, "com.google.android.gms.analytics.AnalyticsService");
    aPm = Boolean.valueOf(bool);
    return bool;
  }
  
  /* Error */
  public final int a(android.content.Intent paramIntent, int paramInt)
  {
    // Byte code:
    //   0: getstatic 65	com/google/android/gms/internal/dc:AT	Ljava/lang/Object;
    //   3: astore 4
    //   5: aload 4
    //   7: monitorenter
    //   8: getstatic 69	com/google/android/gms/internal/dc:aPk	Lcom/google/android/gms/internal/mp;
    //   11: astore 5
    //   13: aload 5
    //   15: ifnull +158 -> 173
    //   18: aload 5
    //   20: getfield 75	com/google/android/gms/internal/mp:aZr	Landroid/os/PowerManager$WakeLock;
    //   23: invokevirtual 80	android/os/PowerManager$WakeLock:isHeld	()Z
    //   26: ifeq +147 -> 173
    //   29: aload 5
    //   31: getfield 84	com/google/android/gms/internal/mp:aZy	Ljava/util/concurrent/atomic/AtomicInteger;
    //   34: invokevirtual 90	java/util/concurrent/atomic/AtomicInteger:decrementAndGet	()I
    //   37: ifge +12 -> 49
    //   40: getstatic 94	com/google/android/gms/internal/mp:TAG	Ljava/lang/String;
    //   43: ldc 96
    //   45: invokestatic 102	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   48: pop
    //   49: aload 5
    //   51: invokevirtual 106	com/google/android/gms/internal/mp:sG	()Ljava/lang/String;
    //   54: astore 6
    //   56: aload 5
    //   58: monitorenter
    //   59: aload 5
    //   61: getfield 110	com/google/android/gms/internal/mp:aZv	Z
    //   64: ifeq +30 -> 94
    //   67: aload 5
    //   69: getfield 114	com/google/android/gms/internal/mp:aZw	Ljava/util/Map;
    //   72: aload 6
    //   74: invokeinterface 119 2 0
    //   79: checkcast 121	[Ljava/lang/Integer;
    //   82: astore 7
    //   84: aload 7
    //   86: ifnonnull +115 -> 201
    //   89: iconst_0
    //   90: istore_3
    //   91: goto +218 -> 309
    //   94: aload 5
    //   96: getfield 110	com/google/android/gms/internal/mp:aZv	Z
    //   99: ifne +66 -> 165
    //   102: aload 5
    //   104: getfield 125	com/google/android/gms/internal/mp:aZx	I
    //   107: iconst_1
    //   108: if_icmpne +57 -> 165
    //   111: invokestatic 131	com/google/android/gms/common/stats/e:oA	()Lcom/google/android/gms/common/stats/e;
    //   114: pop
    //   115: aload 5
    //   117: getfield 134	com/google/android/gms/internal/mp:mContext	Landroid/content/Context;
    //   120: aload 5
    //   122: getfield 75	com/google/android/gms/internal/mp:aZr	Landroid/os/PowerManager$WakeLock;
    //   125: aload 6
    //   127: invokestatic 139	com/google/android/gms/common/stats/c:a	(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;
    //   130: aload 5
    //   132: getfield 142	com/google/android/gms/internal/mp:aIO	Ljava/lang/String;
    //   135: aload 6
    //   137: aload 5
    //   139: getfield 145	com/google/android/gms/internal/mp:aZt	I
    //   142: aload 5
    //   144: getfield 149	com/google/android/gms/internal/mp:aZs	Landroid/os/WorkSource;
    //   147: invokestatic 155	com/google/android/gms/common/util/b:b	(Landroid/os/WorkSource;)Ljava/util/List;
    //   150: invokestatic 158	com/google/android/gms/common/stats/e:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    //   153: aload 5
    //   155: aload 5
    //   157: getfield 125	com/google/android/gms/internal/mp:aZx	I
    //   160: iconst_1
    //   161: isub
    //   162: putfield 125	com/google/android/gms/internal/mp:aZx	I
    //   165: aload 5
    //   167: monitorexit
    //   168: aload 5
    //   170: invokevirtual 161	com/google/android/gms/internal/mp:sF	()V
    //   173: aload 4
    //   175: monitorexit
    //   176: aload_0
    //   177: getfield 25	com/google/android/gms/internal/dd:aPl	Landroid/content/Context;
    //   180: invokestatic 167	com/google/android/gms/internal/bd:ab	(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;
    //   183: invokevirtual 171	com/google/android/gms/internal/bd:pg	()Lcom/google/android/gms/internal/cw;
    //   186: astore 4
    //   188: aload_1
    //   189: ifnonnull +83 -> 272
    //   192: aload 4
    //   194: ldc -83
    //   196: invokevirtual 179	com/google/android/gms/internal/ba:bz	(Ljava/lang/String;)V
    //   199: iconst_2
    //   200: ireturn
    //   201: aload 7
    //   203: iconst_0
    //   204: aaload
    //   205: invokevirtual 184	java/lang/Integer:intValue	()I
    //   208: iconst_1
    //   209: if_icmpne +21 -> 230
    //   212: aload 5
    //   214: getfield 114	com/google/android/gms/internal/mp:aZw	Ljava/util/Map;
    //   217: aload 6
    //   219: invokeinterface 187 2 0
    //   224: pop
    //   225: iconst_1
    //   226: istore_3
    //   227: goto +82 -> 309
    //   230: aload 7
    //   232: iconst_0
    //   233: aload 7
    //   235: iconst_0
    //   236: aaload
    //   237: invokevirtual 184	java/lang/Integer:intValue	()I
    //   240: iconst_1
    //   241: isub
    //   242: invokestatic 190	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   245: aastore
    //   246: iconst_0
    //   247: istore_3
    //   248: goto +61 -> 309
    //   251: astore 6
    //   253: aload 5
    //   255: monitorexit
    //   256: aload 6
    //   258: athrow
    //   259: astore 5
    //   261: aload 4
    //   263: monitorexit
    //   264: aload 5
    //   266: athrow
    //   267: astore 4
    //   269: goto -93 -> 176
    //   272: aload_1
    //   273: invokevirtual 195	android/content/Intent:getAction	()Ljava/lang/String;
    //   276: astore_1
    //   277: aload 4
    //   279: ldc -59
    //   281: iload_2
    //   282: invokestatic 190	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   285: aload_1
    //   286: invokevirtual 200	com/google/android/gms/internal/ba:a	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   289: ldc -54
    //   291: aload_1
    //   292: invokevirtual 208	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   295: ifeq -96 -> 199
    //   298: aload_0
    //   299: iload_2
    //   300: invokestatic 190	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   303: aconst_null
    //   304: invokevirtual 211	com/google/android/gms/internal/dd:a	(Ljava/lang/Integer;Landroid/app/job/JobParameters;)V
    //   307: iconst_2
    //   308: ireturn
    //   309: iload_3
    //   310: ifne -199 -> 111
    //   313: goto -219 -> 94
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	316	0	this	dd
    //   0	316	1	paramIntent	android.content.Intent
    //   0	316	2	paramInt	int
    //   90	220	3	i	int
    //   267	11	4	localSecurityException	SecurityException
    //   11	243	5	localmp	mp
    //   259	6	5	localObject2	Object
    //   54	164	6	str	String
    //   251	6	6	localObject3	Object
    //   82	152	7	arrayOfInteger	Integer[]
    // Exception table:
    //   from	to	target	type
    //   59	84	251	finally
    //   94	111	251	finally
    //   111	165	251	finally
    //   165	168	251	finally
    //   201	225	251	finally
    //   230	246	251	finally
    //   253	256	251	finally
    //   8	13	259	finally
    //   18	49	259	finally
    //   49	59	259	finally
    //   168	173	259	finally
    //   173	176	259	finally
    //   256	259	259	finally
    //   261	264	259	finally
    //   0	8	267	java/lang/SecurityException
    //   264	267	267	java/lang/SecurityException
  }
  
  public final void a(Integer paramInteger, JobParameters paramJobParameters)
  {
    bd localbd = bd.ab(this.aPl);
    cw localcw = localbd.pg();
    localbd.pi().a(new de(this, paramInteger, localbd, localcw, paramJobParameters));
  }
  
  public final void onCreate()
  {
    bd.ab(this.aPl).pg().bw("Local AnalyticsService is starting up");
  }
  
  public final void onDestroy()
  {
    bd.ab(this.aPl).pg().bw("Local AnalyticsService is shutting down");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/dd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */