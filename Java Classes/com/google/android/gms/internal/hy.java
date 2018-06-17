package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ae;
import java.util.concurrent.BlockingQueue;

final class hy
  extends Thread
{
  private final Object aUJ;
  private final BlockingQueue<hx<?>> aUK;
  
  public hy(String paramString, BlockingQueue<hx<?>> paramBlockingQueue)
  {
    ae.E(paramBlockingQueue);
    Object localObject;
    ae.E(localObject);
    this.aUJ = new Object();
    this.aUK = ((BlockingQueue)localObject);
    setName(paramBlockingQueue);
  }
  
  private final void a(InterruptedException paramInterruptedException)
  {
    this.aUG.qP().aTd.j(String.valueOf(getName()).concat(" was interrupted"), paramInterruptedException);
  }
  
  public final void rU()
  {
    synchronized (this.aUJ)
    {
      this.aUJ.notifyAll();
      return;
    }
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: iload_1
    //   3: ifne +29 -> 32
    //   6: aload_0
    //   7: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   10: invokestatic 86	com/google/android/gms/internal/hu:a	(Lcom/google/android/gms/internal/hu;)Ljava/util/concurrent/Semaphore;
    //   13: invokevirtual 91	java/util/concurrent/Semaphore:acquire	()V
    //   16: iconst_1
    //   17: istore_1
    //   18: goto -16 -> 2
    //   21: astore 4
    //   23: aload_0
    //   24: aload 4
    //   26: invokespecial 93	com/google/android/gms/internal/hy:a	(Ljava/lang/InterruptedException;)V
    //   29: goto -27 -> 2
    //   32: invokestatic 99	android/os/Process:myTid	()I
    //   35: invokestatic 103	android/os/Process:getThreadPriority	(I)I
    //   38: istore_2
    //   39: aload_0
    //   40: getfield 31	com/google/android/gms/internal/hy:aUK	Ljava/util/concurrent/BlockingQueue;
    //   43: invokeinterface 109 1 0
    //   48: checkcast 111	com/google/android/gms/internal/hx
    //   51: astore 4
    //   53: aload 4
    //   55: ifnull +90 -> 145
    //   58: aload 4
    //   60: getfield 115	com/google/android/gms/internal/hx:aUI	Z
    //   63: ifeq +76 -> 139
    //   66: iload_2
    //   67: istore_1
    //   68: iload_1
    //   69: invokestatic 119	android/os/Process:setThreadPriority	(I)V
    //   72: aload 4
    //   74: invokevirtual 121	com/google/android/gms/internal/hx:run	()V
    //   77: goto -38 -> 39
    //   80: astore 5
    //   82: aload_0
    //   83: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   86: invokestatic 125	com/google/android/gms/internal/hu:c	(Lcom/google/android/gms/internal/hu;)Ljava/lang/Object;
    //   89: astore 4
    //   91: aload 4
    //   93: monitorenter
    //   94: aload_0
    //   95: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   98: invokestatic 86	com/google/android/gms/internal/hu:a	(Lcom/google/android/gms/internal/hu;)Ljava/util/concurrent/Semaphore;
    //   101: invokevirtual 128	java/util/concurrent/Semaphore:release	()V
    //   104: aload_0
    //   105: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   108: invokestatic 125	com/google/android/gms/internal/hu:c	(Lcom/google/android/gms/internal/hu;)Ljava/lang/Object;
    //   111: invokevirtual 78	java/lang/Object:notifyAll	()V
    //   114: aload_0
    //   115: aload_0
    //   116: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   119: invokestatic 132	com/google/android/gms/internal/hu:d	(Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/hy;
    //   122: if_acmpne +232 -> 354
    //   125: aload_0
    //   126: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   129: invokestatic 135	com/google/android/gms/internal/hu:e	(Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/hy;
    //   132: pop
    //   133: aload 4
    //   135: monitorexit
    //   136: aload 5
    //   138: athrow
    //   139: bipush 10
    //   141: istore_1
    //   142: goto -74 -> 68
    //   145: aload_0
    //   146: getfield 29	com/google/android/gms/internal/hy:aUJ	Ljava/lang/Object;
    //   149: astore 4
    //   151: aload 4
    //   153: monitorenter
    //   154: aload_0
    //   155: getfield 31	com/google/android/gms/internal/hy:aUK	Ljava/util/concurrent/BlockingQueue;
    //   158: invokeinterface 138 1 0
    //   163: ifnonnull +25 -> 188
    //   166: aload_0
    //   167: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   170: invokestatic 142	com/google/android/gms/internal/hu:b	(Lcom/google/android/gms/internal/hu;)Z
    //   173: istore_3
    //   174: iload_3
    //   175: ifne +13 -> 188
    //   178: aload_0
    //   179: getfield 29	com/google/android/gms/internal/hy:aUJ	Ljava/lang/Object;
    //   182: ldc2_w 143
    //   185: invokevirtual 148	java/lang/Object:wait	(J)V
    //   188: aload 4
    //   190: monitorexit
    //   191: aload_0
    //   192: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   195: invokestatic 125	com/google/android/gms/internal/hu:c	(Lcom/google/android/gms/internal/hu;)Ljava/lang/Object;
    //   198: astore 4
    //   200: aload 4
    //   202: monitorenter
    //   203: aload_0
    //   204: getfield 31	com/google/android/gms/internal/hy:aUK	Ljava/util/concurrent/BlockingQueue;
    //   207: invokeinterface 138 1 0
    //   212: ifnonnull +128 -> 340
    //   215: aload 4
    //   217: monitorexit
    //   218: aload_0
    //   219: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   222: invokestatic 125	com/google/android/gms/internal/hu:c	(Lcom/google/android/gms/internal/hu;)Ljava/lang/Object;
    //   225: astore 4
    //   227: aload 4
    //   229: monitorenter
    //   230: aload_0
    //   231: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   234: invokestatic 86	com/google/android/gms/internal/hu:a	(Lcom/google/android/gms/internal/hu;)Ljava/util/concurrent/Semaphore;
    //   237: invokevirtual 128	java/util/concurrent/Semaphore:release	()V
    //   240: aload_0
    //   241: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   244: invokestatic 125	com/google/android/gms/internal/hu:c	(Lcom/google/android/gms/internal/hu;)Ljava/lang/Object;
    //   247: invokevirtual 78	java/lang/Object:notifyAll	()V
    //   250: aload_0
    //   251: aload_0
    //   252: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   255: invokestatic 132	com/google/android/gms/internal/hu:d	(Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/hy;
    //   258: if_acmpne +34 -> 292
    //   261: aload_0
    //   262: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   265: invokestatic 135	com/google/android/gms/internal/hu:e	(Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/hy;
    //   268: pop
    //   269: aload 4
    //   271: monitorexit
    //   272: return
    //   273: astore 5
    //   275: aload_0
    //   276: aload 5
    //   278: invokespecial 93	com/google/android/gms/internal/hy:a	(Ljava/lang/InterruptedException;)V
    //   281: goto -93 -> 188
    //   284: astore 5
    //   286: aload 4
    //   288: monitorexit
    //   289: aload 5
    //   291: athrow
    //   292: aload_0
    //   293: aload_0
    //   294: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   297: invokestatic 151	com/google/android/gms/internal/hu:f	(Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/hy;
    //   300: if_acmpne +22 -> 322
    //   303: aload_0
    //   304: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   307: invokestatic 154	com/google/android/gms/internal/hu:g	(Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/hy;
    //   310: pop
    //   311: goto -42 -> 269
    //   314: astore 5
    //   316: aload 4
    //   318: monitorexit
    //   319: aload 5
    //   321: athrow
    //   322: aload_0
    //   323: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   326: invokevirtual 46	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   329: getfield 157	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   332: ldc -97
    //   334: invokevirtual 162	com/google/android/gms/internal/hd:bq	(Ljava/lang/String;)V
    //   337: goto -68 -> 269
    //   340: aload 4
    //   342: monitorexit
    //   343: goto -304 -> 39
    //   346: astore 5
    //   348: aload 4
    //   350: monitorexit
    //   351: aload 5
    //   353: athrow
    //   354: aload_0
    //   355: aload_0
    //   356: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   359: invokestatic 151	com/google/android/gms/internal/hu:f	(Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/hy;
    //   362: if_acmpne +22 -> 384
    //   365: aload_0
    //   366: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   369: invokestatic 154	com/google/android/gms/internal/hu:g	(Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/hy;
    //   372: pop
    //   373: goto -240 -> 133
    //   376: astore 5
    //   378: aload 4
    //   380: monitorexit
    //   381: aload 5
    //   383: athrow
    //   384: aload_0
    //   385: getfield 15	com/google/android/gms/internal/hy:aUG	Lcom/google/android/gms/internal/hu;
    //   388: invokevirtual 46	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   391: getfield 157	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   394: ldc -97
    //   396: invokevirtual 162	com/google/android/gms/internal/hd:bq	(Ljava/lang/String;)V
    //   399: goto -266 -> 133
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	402	0	this	hy
    //   1	141	1	i	int
    //   38	29	2	j	int
    //   173	2	3	bool	boolean
    //   21	4	4	localInterruptedException1	InterruptedException
    //   80	57	5	localObject2	Object
    //   273	4	5	localInterruptedException2	InterruptedException
    //   284	6	5	localObject3	Object
    //   314	6	5	localObject4	Object
    //   346	6	5	localObject5	Object
    //   376	6	5	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   6	16	21	java/lang/InterruptedException
    //   32	39	80	finally
    //   39	53	80	finally
    //   58	66	80	finally
    //   68	77	80	finally
    //   145	154	80	finally
    //   191	203	80	finally
    //   289	292	80	finally
    //   351	354	80	finally
    //   178	188	273	java/lang/InterruptedException
    //   154	174	284	finally
    //   178	188	284	finally
    //   188	191	284	finally
    //   275	281	284	finally
    //   286	289	284	finally
    //   230	269	314	finally
    //   269	272	314	finally
    //   292	311	314	finally
    //   316	319	314	finally
    //   322	337	314	finally
    //   203	218	346	finally
    //   340	343	346	finally
    //   348	351	346	finally
    //   94	133	376	finally
    //   133	136	376	finally
    //   354	373	376	finally
    //   378	381	376	finally
    //   384	399	376	finally
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */