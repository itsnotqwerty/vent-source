package com.layer.sdk.internal.lsdki.lsdkc.lsdka;

import com.b.a.h;
import com.layer.a.c.a;
import com.layer.a.c.e;
import com.layer.b.d.c;
import com.layer.b.d.k.14;
import com.layer.b.d.k.b;
import com.layer.b.d.k.c;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdkk.k.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;

public class j
  extends a<List<c>, Iterable<c>>
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(j.class);
  private final com.layer.b.d.k c;
  private final c.b d;
  
  public j(com.layer.b.d.k paramk, c.b paramb, List<c> paramList)
  {
    super(paramList);
    this.c = paramk;
    this.d = paramb;
  }
  
  protected Iterable<c> a(List<c> paramList)
    throws Exception
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("PostEventsTask: Run");
    }
    final ArrayList localArrayList = new ArrayList(paramList.size());
    final CountDownLatch localCountDownLatch = new CountDownLatch(paramList.size());
    ConcurrentLinkedQueue localConcurrentLinkedQueue = new ConcurrentLinkedQueue();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      final c localc = (c)paramList.next();
      Object localObject = new k.c()
      {
        /* Error */
        public final void a(com.layer.b.d.m paramAnonymousm)
        {
          // Byte code:
          //   0: bipush 6
          //   2: invokestatic 42	com/layer/sdk/internal/lsdkk/k:a	(I)Z
          //   5: ifeq +29 -> 34
          //   8: invokestatic 46	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j:wq	()Lcom/layer/sdk/internal/lsdkk/k$a;
          //   11: new 48	java/lang/StringBuilder
          //   14: dup
          //   15: ldc 50
          //   17: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
          //   20: aload_0
          //   21: getfield 26	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1:brr	Lcom/layer/b/d/c;
          //   24: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
          //   27: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   30: aload_1
          //   31: invokestatic 65	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
          //   34: getstatic 71	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$2:bqe	[I
          //   37: aload_1
          //   38: getfield 77	com/layer/b/d/m:bvU	Lcom/layer/b/d/f;
          //   41: invokevirtual 83	com/layer/b/d/f:ordinal	()I
          //   44: iaload
          //   45: istore_2
          //   46: iload_2
          //   47: tableswitch	default:+33->80, 1:+41->88, 2:+41->88, 3:+41->88, 4:+41->88, 5:+76->123
          //   80: aload_0
          //   81: getfield 30	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1:bsG	Ljava/util/concurrent/CountDownLatch;
          //   84: invokevirtual 88	java/util/concurrent/CountDownLatch:countDown	()V
          //   87: return
          //   88: aload_0
          //   89: getfield 24	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1:bsH	Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;
          //   92: new 90	com/layer/a/c/e
          //   95: dup
          //   96: aload_0
          //   97: getfield 24	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1:bsH	Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;
          //   100: aload_0
          //   101: getfield 26	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1:brr	Lcom/layer/b/d/c;
          //   104: aload_1
          //   105: invokevirtual 93	com/layer/b/d/m:getMessage	()Ljava/lang/String;
          //   108: aload_1
          //   109: invokespecial 96	com/layer/a/c/e:<init>	(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
          //   112: invokestatic 99	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j:b	(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;Lcom/layer/a/c/e;)V
          //   115: aload_0
          //   116: getfield 30	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1:bsG	Ljava/util/concurrent/CountDownLatch;
          //   119: invokevirtual 88	java/util/concurrent/CountDownLatch:countDown	()V
          //   122: return
          //   123: aload_0
          //   124: getfield 24	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1:bsH	Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;
          //   127: invokestatic 102	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;
          //   130: astore_3
          //   131: aload_3
          //   132: ifnull +22 -> 154
          //   135: aload_0
          //   136: getfield 24	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1:bsH	Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;
          //   139: invokestatic 102	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;
          //   142: aload_0
          //   143: getfield 26	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1:brr	Lcom/layer/b/d/c;
          //   146: getfield 108	com/layer/b/d/c:bvQ	Ljava/lang/Long;
          //   149: invokeinterface 114 2 0
          //   154: aload_0
          //   155: getfield 24	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1:bsH	Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;
          //   158: new 90	com/layer/a/c/e
          //   161: dup
          //   162: aload_0
          //   163: getfield 24	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1:bsH	Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;
          //   166: aload_0
          //   167: getfield 26	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1:brr	Lcom/layer/b/d/c;
          //   170: aload_1
          //   171: invokevirtual 93	com/layer/b/d/m:getMessage	()Ljava/lang/String;
          //   174: aload_1
          //   175: invokespecial 96	com/layer/a/c/e:<init>	(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
          //   178: invokestatic 117	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j:c	(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;Lcom/layer/a/c/e;)V
          //   181: aload_0
          //   182: getfield 30	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1:bsG	Ljava/util/concurrent/CountDownLatch;
          //   185: invokevirtual 88	java/util/concurrent/CountDownLatch:countDown	()V
          //   188: return
          //   189: astore_3
          //   190: bipush 6
          //   192: invokestatic 42	com/layer/sdk/internal/lsdkk/k:a	(I)Z
          //   195: ifeq -41 -> 154
          //   198: invokestatic 46	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j:wq	()Lcom/layer/sdk/internal/lsdkk/k$a;
          //   201: ldc 119
          //   203: aload_3
          //   204: invokestatic 65	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
          //   207: goto -53 -> 154
          //   210: astore_1
          //   211: aload_0
          //   212: getfield 30	com/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1:bsG	Ljava/util/concurrent/CountDownLatch;
          //   215: invokevirtual 88	java/util/concurrent/CountDownLatch:countDown	()V
          //   218: aload_1
          //   219: athrow
          // Local variable table:
          //   start	length	slot	name	signature
          //   0	220	0	this	1
          //   0	220	1	paramAnonymousm	com.layer.b.d.m
          //   45	2	2	i	int
          //   130	2	3	localb	c.b
          //   189	15	3	localException	Exception
          // Exception table:
          //   from	to	target	type
          //   135	154	189	java/lang/Exception
          //   34	46	210	finally
          //   88	115	210	finally
          //   123	131	210	finally
          //   135	154	210	finally
          //   154	181	210	finally
          //   190	207	210	finally
        }
      };
      try
      {
        com.layer.b.d.k localk = this.c;
        UUID localUUID = localc.bvS;
        localObject = new k.b(localk, (k.c)localObject).jdMethod_do(200).a(new k.14(localk, localc, localUUID));
        if (localObject != null) {
          localConcurrentLinkedQueue.add(localObject);
        }
      }
      catch (Exception localException)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(a, "Exception", localException);
        }
        a(new e(this, localc, localException.getMessage(), localException));
        localCountDownLatch.countDown();
      }
    }
    localCountDownLatch.await();
    paramList = localConcurrentLinkedQueue.iterator();
    while (paramList.hasNext()) {
      ((h)paramList.next()).c();
    }
    return localArrayList;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdka/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */