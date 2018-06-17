package com.layer.sdk.internal.lsdki;

import android.database.sqlite.SQLiteException;
import com.layer.b.d.m;
import com.layer.sdk.LayerClient.Options.HistoricSyncPolicy;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.internal.lsdkd.f;
import com.layer.sdk.internal.lsdkd.h;
import com.layer.sdk.internal.lsdke.g;
import com.layer.sdk.internal.lsdki.lsdka.b.a;
import com.layer.sdk.internal.lsdki.lsdka.b.b;
import com.layer.sdk.internal.lsdki.lsdkc.c.a;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdki.lsdkc.c.c;
import com.layer.sdk.internal.lsdki.lsdkc.c.d;
import com.layer.sdk.internal.lsdki.lsdkc.c.e;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.internal.lsdkk.q.a;
import com.layer.sdk.internal.lsdkk.q.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class a
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(a.class);
  private volatile boolean b = false;
  private volatile Boolean c = new Boolean(false);
  private volatile boolean d = false;
  private final AtomicBoolean e = new AtomicBoolean(false);
  private final AtomicReference<HashSet<UUID>> f = new AtomicReference(new HashSet());
  private final AtomicBoolean g = new AtomicBoolean(false);
  private com.layer.a.b.a h = e();
  private com.layer.a.b.a i = f();
  
  /* Error */
  private void a(a parama, b paramb, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 47	com/layer/sdk/internal/lsdki/a:b	Z
    //   6: istore 5
    //   8: iload 5
    //   10: ifeq +6 -> 16
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: aload_1
    //   17: invokevirtual 87	com/layer/sdk/internal/lsdki/a$a:t	()Lcom/layer/sdk/internal/lsdki/a$e;
    //   20: astore 6
    //   22: iconst_2
    //   23: invokestatic 90	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   26: ifeq +26 -> 52
    //   29: getstatic 41	com/layer/sdk/internal/lsdki/a:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   32: new 92	java/lang/StringBuilder
    //   35: dup
    //   36: ldc 94
    //   38: invokespecial 97	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   41: aload 6
    //   43: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   46: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   49: invokestatic 108	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   52: aload_0
    //   53: getfield 61	com/layer/sdk/internal/lsdki/a:e	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   56: invokevirtual 112	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   59: ifeq +11 -> 70
    //   62: aload_1
    //   63: invokevirtual 116	com/layer/sdk/internal/lsdki/a$a:u	()Ljava/util/concurrent/atomic/AtomicBoolean;
    //   66: iconst_1
    //   67: invokevirtual 119	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   70: aload_0
    //   71: getfield 71	com/layer/sdk/internal/lsdki/a:f	Ljava/util/concurrent/atomic/AtomicReference;
    //   74: invokevirtual 122	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   77: checkcast 65	java/util/HashSet
    //   80: invokevirtual 126	java/util/HashSet:size	()I
    //   83: ifle +27 -> 110
    //   86: aload_1
    //   87: invokestatic 129	com/layer/sdk/internal/lsdki/a$a:b	(Lcom/layer/sdk/internal/lsdki/a$a;)Ljava/util/concurrent/atomic/AtomicReference;
    //   90: invokevirtual 122	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   93: checkcast 65	java/util/HashSet
    //   96: aload_0
    //   97: getfield 71	com/layer/sdk/internal/lsdki/a:f	Ljava/util/concurrent/atomic/AtomicReference;
    //   100: invokevirtual 122	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   103: checkcast 131	java/util/Collection
    //   106: invokevirtual 135	java/util/HashSet:addAll	(Ljava/util/Collection;)Z
    //   109: pop
    //   110: aload_0
    //   111: getfield 73	com/layer/sdk/internal/lsdki/a:g	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   114: invokevirtual 112	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   117: ifeq +11 -> 128
    //   120: aload_1
    //   121: invokestatic 138	com/layer/sdk/internal/lsdki/a$a:c	(Lcom/layer/sdk/internal/lsdki/a$a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    //   124: iconst_1
    //   125: invokevirtual 119	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   128: aload_0
    //   129: getfield 82	com/layer/sdk/internal/lsdki/a:h	Lcom/layer/a/b/a;
    //   132: new 15	com/layer/sdk/internal/lsdki/a$d
    //   135: dup
    //   136: aload_0
    //   137: aload_1
    //   138: aload_2
    //   139: iload_3
    //   140: iload 4
    //   142: aload_0
    //   143: getfield 78	com/layer/sdk/internal/lsdki/a:i	Lcom/layer/a/b/a;
    //   146: iconst_0
    //   147: invokespecial 141	com/layer/sdk/internal/lsdki/a$d:<init>	(Lcom/layer/sdk/internal/lsdki/a;Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/a$b;ZZLcom/layer/a/b/a;B)V
    //   150: invokevirtual 147	com/layer/a/b/a:execute	(Ljava/lang/Runnable;)V
    //   153: aload_0
    //   154: getfield 61	com/layer/sdk/internal/lsdki/a:e	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   157: iconst_0
    //   158: invokevirtual 119	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   161: aload_0
    //   162: getfield 71	com/layer/sdk/internal/lsdki/a:f	Ljava/util/concurrent/atomic/AtomicReference;
    //   165: invokevirtual 122	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   168: checkcast 65	java/util/HashSet
    //   171: invokevirtual 150	java/util/HashSet:clear	()V
    //   174: aload_0
    //   175: iconst_0
    //   176: putfield 56	com/layer/sdk/internal/lsdki/a:d	Z
    //   179: aload_0
    //   180: iconst_1
    //   181: invokestatic 154	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   184: putfield 54	com/layer/sdk/internal/lsdki/a:c	Ljava/lang/Boolean;
    //   187: aload_0
    //   188: getfield 73	com/layer/sdk/internal/lsdki/a:g	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   191: iconst_0
    //   192: invokevirtual 119	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   195: goto -182 -> 13
    //   198: astore_1
    //   199: aload_0
    //   200: monitorexit
    //   201: aload_1
    //   202: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	203	0	this	a
    //   0	203	1	parama	a
    //   0	203	2	paramb	b
    //   0	203	3	paramBoolean1	boolean
    //   0	203	4	paramBoolean2	boolean
    //   6	3	5	bool	boolean
    //   20	22	6	locale	e
    // Exception table:
    //   from	to	target	type
    //   2	8	198	finally
    //   16	52	198	finally
    //   52	70	198	finally
    //   70	110	198	finally
    //   110	128	198	finally
    //   128	195	198	finally
  }
  
  private void a(a parama, com.layer.sdk.internal.lsdki.lsdkc.c paramc, b paramb, boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool = true;
    for (;;)
    {
      try
      {
        this.c = Boolean.valueOf(false);
        if (parama.p() != null) {
          parama.p().a(paramc);
        }
        if (parama.t() == e.d)
        {
          if (parama.o() != null) {
            parama.o().a(paramb, parama.t(), false);
          }
          return;
        }
        if ((!paramb.f()) || (this.d))
        {
          if (com.layer.sdk.internal.lsdkk.k.a(2))
          {
            com.layer.sdk.internal.lsdkk.k.a(a, "Kicking off new sync due to: results.isSyncReconComplete: " + paramb.f() + " mNextSyncRequired: " + this.d);
            com.layer.sdk.internal.lsdkk.k.a(a, "Results: " + paramb.toString());
          }
          parama.A().set(false);
          if (this.d)
          {
            if (com.layer.sdk.internal.lsdkk.k.a(2)) {
              com.layer.sdk.internal.lsdkk.k.a(a, "Clearing the sync contract's cache to prepare for subsequent run");
            }
            parama.m().a();
            if (this.g.get()) {
              parama.A().set(true);
            }
          }
          int j = ((b)parama.x().get()).b();
          if (com.layer.sdk.internal.lsdkk.k.d()) {
            com.layer.sdk.internal.lsdkk.k.c("SyncRecon: Cycle " + parama.e().get() + " completed. Progress: " + j + "%.");
          }
          parama.o().a(parama.t(), j);
          parama.e().getAndIncrement();
          if (!paramb.a().get())
          {
            parama.u().set(false);
            ((HashSet)a.b(parama).get()).clear();
          }
          parama.s().clear();
          a(parama, new b(), paramBoolean1, paramBoolean2);
          paramBoolean1 = false;
          if (parama.o() == null) {
            continue;
          }
          parama.o().a(paramb, parama.t(), paramBoolean1);
          continue;
        }
        if (parama.t() != e.b) {
          break label400;
        }
      }
      finally {}
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "Historic Sync complete");
      }
      label400:
      paramBoolean1 = bool;
      if (com.layer.sdk.internal.lsdkk.k.d())
      {
        com.layer.sdk.internal.lsdkk.k.c("SyncRecon: Sync complete");
        paramBoolean1 = bool;
      }
    }
  }
  
  private void a(a parama, com.layer.sdk.internal.lsdki.lsdkc.c paramc, c.d paramd)
  {
    try
    {
      if (parama.p() != null) {
        parama.p().a(paramc, paramd);
      }
      return;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  private void a(a parama, com.layer.sdk.internal.lsdki.lsdkc.c paramc, Error paramError)
  {
    try
    {
      if (parama.p() != null) {
        parama.p().a(paramc, paramError);
      }
      this.e.set(true);
      ((HashSet)this.f.get()).clear();
      return;
    }
    finally {}
  }
  
  private com.layer.a.b.a e()
  {
    return new q.a("Sync-Recon-Executor", 1000L, TimeUnit.MILLISECONDS, 10);
  }
  
  private com.layer.a.b.a f()
  {
    return new q.b("SyncExecutor", 256, 1000L, TimeUnit.MILLISECONDS, 10);
  }
  
  public void a()
  {
    try
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "Pausing SyncRecon");
      }
      if (this.i != null) {
        this.i.a();
      }
      if (this.h != null) {
        this.h.a();
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  public void a(a parama, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual 116	com/layer/sdk/internal/lsdki/a$a:u	()Ljava/util/concurrent/atomic/AtomicBoolean;
    //   6: invokevirtual 112	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   9: ifne +43 -> 52
    //   12: aload_1
    //   13: invokevirtual 303	com/layer/sdk/internal/lsdki/a$a:v	()Ljava/util/concurrent/atomic/AtomicReference;
    //   16: invokevirtual 122	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   19: checkcast 65	java/util/HashSet
    //   22: invokevirtual 126	java/util/HashSet:size	()I
    //   25: ifne +27 -> 52
    //   28: aload_0
    //   29: getfield 71	com/layer/sdk/internal/lsdki/a:f	Ljava/util/concurrent/atomic/AtomicReference;
    //   32: invokevirtual 122	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   35: checkcast 65	java/util/HashSet
    //   38: invokevirtual 126	java/util/HashSet:size	()I
    //   41: ifne +11 -> 52
    //   44: aload_1
    //   45: invokevirtual 116	com/layer/sdk/internal/lsdki/a$a:u	()Ljava/util/concurrent/atomic/AtomicBoolean;
    //   48: iconst_1
    //   49: invokevirtual 119	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   52: aload_0
    //   53: getfield 54	com/layer/sdk/internal/lsdki/a:c	Ljava/lang/Boolean;
    //   56: invokevirtual 306	java/lang/Boolean:booleanValue	()Z
    //   59: ifeq +93 -> 152
    //   62: aload_0
    //   63: getfield 61	com/layer/sdk/internal/lsdki/a:e	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   66: invokevirtual 112	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   69: ifne +17 -> 86
    //   72: aload_0
    //   73: getfield 61	com/layer/sdk/internal/lsdki/a:e	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   76: aload_1
    //   77: invokestatic 308	com/layer/sdk/internal/lsdki/a$a:a	(Lcom/layer/sdk/internal/lsdki/a$a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    //   80: invokevirtual 112	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   83: invokevirtual 119	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   86: aload_0
    //   87: getfield 71	com/layer/sdk/internal/lsdki/a:f	Ljava/util/concurrent/atomic/AtomicReference;
    //   90: invokevirtual 122	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   93: checkcast 65	java/util/HashSet
    //   96: aload_1
    //   97: invokevirtual 303	com/layer/sdk/internal/lsdki/a$a:v	()Ljava/util/concurrent/atomic/AtomicReference;
    //   100: invokevirtual 122	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   103: checkcast 131	java/util/Collection
    //   106: invokevirtual 135	java/util/HashSet:addAll	(Ljava/util/Collection;)Z
    //   109: pop
    //   110: aload_1
    //   111: invokevirtual 192	com/layer/sdk/internal/lsdki/a$a:A	()Ljava/util/concurrent/atomic/AtomicBoolean;
    //   114: invokevirtual 112	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   117: ifeq +11 -> 128
    //   120: aload_0
    //   121: getfield 73	com/layer/sdk/internal/lsdki/a:g	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   124: iconst_1
    //   125: invokevirtual 119	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   128: aload_0
    //   129: iconst_1
    //   130: putfield 56	com/layer/sdk/internal/lsdki/a:d	Z
    //   133: iconst_2
    //   134: invokestatic 90	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   137: ifeq +12 -> 149
    //   140: getstatic 41	com/layer/sdk/internal/lsdki/a:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   143: ldc_w 310
    //   146: invokestatic 108	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   149: aload_0
    //   150: monitorexit
    //   151: return
    //   152: aload_0
    //   153: aload_1
    //   154: new 9	com/layer/sdk/internal/lsdki/a$b
    //   157: dup
    //   158: invokespecial 246	com/layer/sdk/internal/lsdki/a$b:<init>	()V
    //   161: iload_2
    //   162: iload_3
    //   163: invokespecial 248	com/layer/sdk/internal/lsdki/a:a	(Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/a$b;ZZ)V
    //   166: goto -17 -> 149
    //   169: astore_1
    //   170: aload_0
    //   171: monitorexit
    //   172: aload_1
    //   173: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	174	0	this	a
    //   0	174	1	parama	a
    //   0	174	2	paramBoolean1	boolean
    //   0	174	3	paramBoolean2	boolean
    // Exception table:
    //   from	to	target	type
    //   2	52	169	finally
    //   52	86	169	finally
    //   86	128	169	finally
    //   128	149	169	finally
    //   152	166	169	finally
  }
  
  public void b()
  {
    try
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "Resuming SyncRecon");
      }
      if ((this.h == null) || (this.h.isTerminating()) || (this.h.isTerminated())) {
        this.h = e();
      }
      if ((this.i == null) || (this.i.isTerminating()) || (this.i.isTerminated())) {
        this.i = f();
      }
      this.i.b();
      this.h.b();
      return;
    }
    finally {}
  }
  
  /* Error */
  public void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_2
    //   3: invokestatic 90	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   6: ifeq +12 -> 18
    //   9: getstatic 41	com/layer/sdk/internal/lsdki/a:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   12: ldc_w 322
    //   15: invokestatic 108	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   18: aload_0
    //   19: getfield 47	com/layer/sdk/internal/lsdki/a:b	Z
    //   22: istore_1
    //   23: iload_1
    //   24: ifeq +6 -> 30
    //   27: aload_0
    //   28: monitorexit
    //   29: return
    //   30: aload_0
    //   31: iconst_1
    //   32: putfield 47	com/layer/sdk/internal/lsdki/a:b	Z
    //   35: aload_0
    //   36: getfield 82	com/layer/sdk/internal/lsdki/a:h	Lcom/layer/a/b/a;
    //   39: invokestatic 327	com/layer/sdk/internal/lsdkk/q:a	(Ljava/util/concurrent/ThreadPoolExecutor;)Z
    //   42: ifne +29 -> 71
    //   45: getstatic 41	com/layer/sdk/internal/lsdki/a:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   48: new 92	java/lang/StringBuilder
    //   51: dup
    //   52: ldc_w 329
    //   55: invokespecial 97	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   58: aload_0
    //   59: getfield 82	com/layer/sdk/internal/lsdki/a:h	Lcom/layer/a/b/a;
    //   62: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   65: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: invokestatic 331	com/layer/sdk/internal/lsdkk/k:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   71: aload_0
    //   72: getfield 78	com/layer/sdk/internal/lsdki/a:i	Lcom/layer/a/b/a;
    //   75: invokestatic 327	com/layer/sdk/internal/lsdkk/q:a	(Ljava/util/concurrent/ThreadPoolExecutor;)Z
    //   78: ifne +29 -> 107
    //   81: getstatic 41	com/layer/sdk/internal/lsdki/a:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   84: new 92	java/lang/StringBuilder
    //   87: dup
    //   88: ldc_w 329
    //   91: invokespecial 97	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   94: aload_0
    //   95: getfield 78	com/layer/sdk/internal/lsdki/a:i	Lcom/layer/a/b/a;
    //   98: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   101: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   104: invokestatic 331	com/layer/sdk/internal/lsdkk/k:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   107: aload_0
    //   108: getfield 82	com/layer/sdk/internal/lsdki/a:h	Lcom/layer/a/b/a;
    //   111: invokestatic 333	com/layer/sdk/internal/lsdkk/q:b	(Ljava/util/concurrent/ThreadPoolExecutor;)Z
    //   114: ifne +29 -> 143
    //   117: getstatic 41	com/layer/sdk/internal/lsdki/a:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   120: new 92	java/lang/StringBuilder
    //   123: dup
    //   124: ldc_w 335
    //   127: invokespecial 97	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   130: aload_0
    //   131: getfield 82	com/layer/sdk/internal/lsdki/a:h	Lcom/layer/a/b/a;
    //   134: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   137: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: invokestatic 331	com/layer/sdk/internal/lsdkk/k:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   143: aload_0
    //   144: getfield 78	com/layer/sdk/internal/lsdki/a:i	Lcom/layer/a/b/a;
    //   147: invokestatic 333	com/layer/sdk/internal/lsdkk/q:b	(Ljava/util/concurrent/ThreadPoolExecutor;)Z
    //   150: ifne +29 -> 179
    //   153: getstatic 41	com/layer/sdk/internal/lsdki/a:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   156: new 92	java/lang/StringBuilder
    //   159: dup
    //   160: ldc_w 335
    //   163: invokespecial 97	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   166: aload_0
    //   167: getfield 78	com/layer/sdk/internal/lsdki/a:i	Lcom/layer/a/b/a;
    //   170: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   173: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   176: invokestatic 331	com/layer/sdk/internal/lsdkk/k:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   179: aload_0
    //   180: aconst_null
    //   181: putfield 78	com/layer/sdk/internal/lsdki/a:i	Lcom/layer/a/b/a;
    //   184: aload_0
    //   185: aconst_null
    //   186: putfield 82	com/layer/sdk/internal/lsdki/a:h	Lcom/layer/a/b/a;
    //   189: goto -162 -> 27
    //   192: astore_2
    //   193: aload_0
    //   194: monitorexit
    //   195: aload_2
    //   196: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	197	0	this	a
    //   22	2	1	bool	boolean
    //   192	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	18	192	finally
    //   18	23	192	finally
    //   30	71	192	finally
    //   71	107	192	finally
    //   107	143	192	finally
    //   143	179	192	finally
    //   179	189	192	finally
  }
  
  public static class a
    implements com.layer.sdk.internal.lsdki.lsdka.a.a, b.a, c.a
  {
    private AtomicInteger a = new AtomicInteger(0);
    private final AtomicInteger b = new AtomicInteger(0);
    private final UUID c;
    private final String d;
    private final com.layer.b.d.k e;
    private final g f;
    private final h g;
    private final com.layer.sdk.internal.lsdka.b h;
    private final a.c i;
    private final ConcurrentSkipListSet<Long> j;
    private final ConcurrentLinkedQueue<Error> k;
    private final com.layer.sdk.internal.lsdkf.c l;
    private final a.e m;
    private com.layer.sdk.internal.lsdkd.k n;
    private final AtomicBoolean o = new AtomicBoolean(false);
    private final AtomicReference<HashSet<UUID>> p = new AtomicReference(new HashSet());
    private final AtomicReference<LayerClient.Options.HistoricSyncPolicy> q = new AtomicReference();
    private final AtomicReference<b> r = new AtomicReference(new b());
    private final AtomicBoolean s = new AtomicBoolean(false);
    private final AtomicBoolean t = new AtomicBoolean(false);
    
    public a(a.e parame, int paramInt, UUID paramUUID, String paramString, com.layer.b.d.k paramk, g paramg, h paramh, com.layer.sdk.internal.lsdka.b paramb, a.c paramc, com.layer.sdk.internal.lsdkf.c paramc1, LayerClient.Options.HistoricSyncPolicy paramHistoricSyncPolicy, boolean paramBoolean1, HashSet<UUID> paramHashSet, boolean paramBoolean2, boolean paramBoolean3)
    {
      this.m = parame;
      this.a.set(paramInt);
      this.c = paramUUID;
      this.d = paramString;
      this.e = paramk;
      this.f = paramg;
      this.g = paramh;
      this.h = paramb;
      this.i = paramc;
      this.j = new ConcurrentSkipListSet();
      this.k = new ConcurrentLinkedQueue();
      this.l = paramc1;
      this.q.set(paramHistoricSyncPolicy);
      this.o.set(paramBoolean1);
      this.p.set(paramHashSet);
      this.b.set(1);
      this.s.set(paramBoolean2);
      this.t.set(paramBoolean3);
    }
    
    public AtomicBoolean A()
    {
      return this.t;
    }
    
    public b.b a()
    {
      return this.f;
    }
    
    public void a(com.layer.sdk.internal.lsdkd.k paramk)
    {
      this.n = paramk;
    }
    
    public c.b b()
    {
      return this.f;
    }
    
    public com.layer.sdk.internal.lsdki.lsdka.a.b c()
    {
      return this.f;
    }
    
    public com.layer.sdk.internal.lsdki.lsdkb.a.a d()
    {
      return this.f;
    }
    
    public AtomicInteger e()
    {
      return this.b;
    }
    
    public Integer f()
    {
      return Integer.valueOf(15);
    }
    
    public AtomicInteger g()
    {
      return this.a;
    }
    
    public UUID h()
    {
      return this.c;
    }
    
    public String i()
    {
      return this.d;
    }
    
    public com.layer.b.d.k j()
    {
      return this.e;
    }
    
    public g k()
    {
      return this.f;
    }
    
    public h l()
    {
      return this.g;
    }
    
    public f m()
    {
      return this.g.m();
    }
    
    public com.layer.sdk.internal.lsdkd.k n()
    {
      return this.n;
    }
    
    public com.layer.sdk.internal.lsdka.b o()
    {
      return this.h;
    }
    
    public a.c p()
    {
      return this.i;
    }
    
    public ConcurrentSkipListSet<Long> q()
    {
      return this.j;
    }
    
    public Set<String> r()
    {
      if (this.l != null) {
        return com.layer.sdk.internal.lsdkf.c.a(this.l.a());
      }
      return new HashSet();
    }
    
    public ConcurrentLinkedQueue<Error> s()
    {
      return this.k;
    }
    
    public a.e t()
    {
      return this.m;
    }
    
    public AtomicBoolean u()
    {
      return this.o;
    }
    
    public AtomicReference<HashSet<UUID>> v()
    {
      return this.p;
    }
    
    public AtomicReference<LayerClient.Options.HistoricSyncPolicy> w()
    {
      return this.q;
    }
    
    public AtomicReference<b> x()
    {
      return this.r;
    }
    
    public boolean y()
    {
      return (this.m == a.e.b) && (this.b.get() == 1);
    }
    
    public AtomicBoolean z()
    {
      return this.s;
    }
  }
  
  public static class b
    implements com.layer.sdk.internal.lsdki.lsdka.a.c, c.c
  {
    private AtomicBoolean a = new AtomicBoolean(false);
    private AtomicBoolean b = new AtomicBoolean(false);
    private AtomicInteger c = new AtomicInteger(0);
    private AtomicBoolean d = new AtomicBoolean(false);
    
    public AtomicBoolean a()
    {
      return this.b;
    }
    
    public AtomicBoolean b()
    {
      return this.a;
    }
    
    public AtomicInteger c()
    {
      return this.c;
    }
    
    public AtomicBoolean d()
    {
      return this.d;
    }
    
    public AtomicBoolean e()
    {
      if ((!d().get()) && (!a().get()) && (!b().get())) {}
      for (boolean bool = true;; bool = false) {
        return new AtomicBoolean(bool);
      }
    }
    
    public boolean f()
    {
      return (!b().get()) && (!a().get()) && (!d().get()) && (c().get() <= 0);
    }
    
    public String toString()
    {
      return "Results: SkippedEventsDueToCap: " + b() + " SkippedStreams: " + a() + " HasMoreDataToProcess: " + d() + " GeneratedEvents: " + c();
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(com.layer.sdk.internal.lsdki.lsdkc.c paramc);
    
    public abstract void a(com.layer.sdk.internal.lsdki.lsdkc.c paramc, c.d paramd);
    
    public abstract void a(com.layer.sdk.internal.lsdki.lsdkc.c paramc, Error paramError);
  }
  
  private final class d
    implements Runnable
  {
    private final a.a bsp;
    private final a.b bsq;
    private final boolean d;
    private final boolean e;
    private final com.layer.a.b.a f;
    
    private d(a.a parama, a.b paramb, boolean paramBoolean1, boolean paramBoolean2, com.layer.a.b.a parama1)
    {
      this.bsp = parama;
      this.bsq = paramb;
      this.d = paramBoolean1;
      this.e = paramBoolean2;
      this.f = parama1;
    }
    
    private void a(com.layer.sdk.internal.lsdki.lsdkc.c paramc)
    {
      if (!this.bsp.s().isEmpty())
      {
        Object localObject = this.bsp.s();
        ArrayList localArrayList = new ArrayList(((Collection)localObject).size());
        localObject = ((Collection)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          Error localError = (Error)((Iterator)localObject).next();
          if (localError.getCause() == null) {
            localArrayList.add(new LayerException(LayerException.Type.UNKNOWN, localError.getMessage(), localError));
          } else if ((localError.getCause() instanceof m)) {
            localArrayList.add(LayerException.fromTransportException((m)localError.getCause(), localError.getMessage()));
          } else if ((localError.getCause() instanceof SQLiteException)) {
            localArrayList.add(new LayerException(LayerException.Type.DEVICE_PERSISTENCE_FAILURE, localError.getMessage(), localError.getCause()));
          } else {
            localArrayList.add(new LayerException(LayerException.Type.UNKNOWN, localError.getMessage(), localError));
          }
        }
        if ((this.bsp.o() != null) && (!localArrayList.isEmpty())) {
          this.bsp.o().a(localArrayList);
        }
      }
      a.a(a.this, this.bsp, paramc, this.bsq, this.d, this.e);
    }
    
    private void a(com.layer.sdk.internal.lsdki.lsdkc.c paramc, com.layer.sdk.internal.lsdki.lsdkc.b paramb)
    {
      this.bsp.s().add(paramb);
      a.a(a.this, this.bsp, paramc, paramb);
    }
    
    /* Error */
    public final void run()
    {
      // Byte code:
      //   0: iconst_1
      //   1: istore_1
      //   2: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   5: ifeq +8 -> 13
      //   8: ldc -102
      //   10: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   13: aload_0
      //   14: getfield 25	com/layer/sdk/internal/lsdki/a$d:bsr	Lcom/layer/sdk/internal/lsdki/a;
      //   17: invokestatic 161	com/layer/sdk/internal/lsdki/a:a	(Lcom/layer/sdk/internal/lsdki/a;)Z
      //   20: ifeq +4 -> 24
      //   23: return
      //   24: new 163	java/util/concurrent/CountDownLatch
      //   27: dup
      //   28: iconst_1
      //   29: invokespecial 164	java/util/concurrent/CountDownLatch:<init>	(I)V
      //   32: astore_2
      //   33: aload_0
      //   34: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   37: invokevirtual 130	com/layer/sdk/internal/lsdki/a$a:o	()Lcom/layer/sdk/internal/lsdka/b;
      //   40: ifnull +43 -> 83
      //   43: aload_0
      //   44: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   47: invokevirtual 130	com/layer/sdk/internal/lsdki/a$a:o	()Lcom/layer/sdk/internal/lsdka/b;
      //   50: astore_3
      //   51: aload_0
      //   52: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   55: invokevirtual 168	com/layer/sdk/internal/lsdki/a$a:t	()Lcom/layer/sdk/internal/lsdki/a$e;
      //   58: astore 4
      //   60: aload_0
      //   61: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   64: invokevirtual 171	com/layer/sdk/internal/lsdki/a$a:e	()Ljava/util/concurrent/atomic/AtomicInteger;
      //   67: invokevirtual 176	java/util/concurrent/atomic/AtomicInteger:get	()I
      //   70: iconst_1
      //   71: if_icmpne +117 -> 188
      //   74: aload_3
      //   75: aload 4
      //   77: iload_1
      //   78: invokeinterface 179 3 0
      //   83: aload_0
      //   84: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   87: invokevirtual 182	com/layer/sdk/internal/lsdki/a$a:y	()Z
      //   90: ifeq +18 -> 108
      //   93: iconst_2
      //   94: invokestatic 185	com/layer/sdk/internal/lsdkk/k:a	(I)Z
      //   97: ifeq +11 -> 108
      //   100: invokestatic 189	com/layer/sdk/internal/lsdki/a:wz	()Lcom/layer/sdk/internal/lsdkk/k$a;
      //   103: ldc -65
      //   105: invokestatic 194	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
      //   108: aload_0
      //   109: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   112: aload_0
      //   113: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   116: invokevirtual 198	com/layer/sdk/internal/lsdki/a$a:m	()Lcom/layer/sdk/internal/lsdkd/f;
      //   119: getstatic 203	com/layer/sdk/internal/lsdkd/k$a:c	Lcom/layer/sdk/internal/lsdkd/k$a;
      //   122: invokevirtual 208	com/layer/sdk/internal/lsdkd/f:a	(Lcom/layer/sdk/internal/lsdkd/k$a;)Lcom/layer/sdk/internal/lsdkd/k;
      //   125: invokevirtual 211	com/layer/sdk/internal/lsdki/a$a:a	(Lcom/layer/sdk/internal/lsdkd/k;)V
      //   128: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   131: ifeq +8 -> 139
      //   134: ldc -43
      //   136: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   139: aload_0
      //   140: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   143: invokevirtual 182	com/layer/sdk/internal/lsdki/a$a:y	()Z
      //   146: ifne +90 -> 236
      //   149: aload_0
      //   150: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   153: invokestatic 218	com/layer/sdk/internal/lsdki/lsdka/b:a	(Lcom/layer/sdk/internal/lsdki/lsdka/b$a;)I
      //   156: pop
      //   157: aload_0
      //   158: getfield 34	com/layer/sdk/internal/lsdki/a$d:d	Z
      //   161: ifne +75 -> 236
      //   164: aload_0
      //   165: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   168: invokevirtual 198	com/layer/sdk/internal/lsdki/a$a:m	()Lcom/layer/sdk/internal/lsdkd/f;
      //   171: aload_0
      //   172: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   175: invokevirtual 222	com/layer/sdk/internal/lsdki/a$a:n	()Lcom/layer/sdk/internal/lsdkd/k;
      //   178: iconst_0
      //   179: invokevirtual 225	com/layer/sdk/internal/lsdkd/f:a	(Lcom/layer/sdk/internal/lsdkd/k;Z)V
      //   182: aload_0
      //   183: aconst_null
      //   184: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   187: return
      //   188: iconst_0
      //   189: istore_1
      //   190: goto -116 -> 74
      //   193: astore_2
      //   194: aload_0
      //   195: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   198: invokevirtual 198	com/layer/sdk/internal/lsdki/a$a:m	()Lcom/layer/sdk/internal/lsdkd/f;
      //   201: aload_0
      //   202: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   205: invokevirtual 222	com/layer/sdk/internal/lsdki/a$a:n	()Lcom/layer/sdk/internal/lsdkd/k;
      //   208: iconst_0
      //   209: invokevirtual 225	com/layer/sdk/internal/lsdkd/f:a	(Lcom/layer/sdk/internal/lsdkd/k;Z)V
      //   212: aload_0
      //   213: aconst_null
      //   214: new 229	com/layer/sdk/internal/lsdki/lsdkc/b
      //   217: dup
      //   218: aconst_null
      //   219: aload_2
      //   220: aload_2
      //   221: invokevirtual 230	java/lang/Throwable:getMessage	()Ljava/lang/String;
      //   224: invokespecial 233	com/layer/sdk/internal/lsdki/lsdkc/b:<init>	(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V
      //   227: invokespecial 47	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
      //   230: aload_0
      //   231: aconst_null
      //   232: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   235: return
      //   236: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   239: ifeq +8 -> 247
      //   242: ldc -21
      //   244: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   247: aload_0
      //   248: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   251: invokevirtual 222	com/layer/sdk/internal/lsdki/a$a:n	()Lcom/layer/sdk/internal/lsdkd/k;
      //   254: getstatic 238	com/layer/sdk/internal/lsdkd/k$a:h	Lcom/layer/sdk/internal/lsdkd/k$a;
      //   257: invokevirtual 243	com/layer/sdk/internal/lsdkd/k:a	(Lcom/layer/sdk/internal/lsdkd/k$a;)V
      //   260: new 245	com/layer/sdk/internal/lsdki/lsdkc/c
      //   263: dup
      //   264: aload_0
      //   265: getfield 38	com/layer/sdk/internal/lsdki/a$d:f	Lcom/layer/a/b/a;
      //   268: aload_0
      //   269: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   272: aload_0
      //   273: getfield 32	com/layer/sdk/internal/lsdki/a$d:bsq	Lcom/layer/sdk/internal/lsdki/a$b;
      //   276: invokespecial 248	com/layer/sdk/internal/lsdki/lsdkc/c:<init>	(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V
      //   279: astore 5
      //   281: aload 5
      //   283: new 11	com/layer/sdk/internal/lsdki/a$d$1
      //   286: dup
      //   287: aload_0
      //   288: aload_2
      //   289: invokespecial 251	com/layer/sdk/internal/lsdki/a$d$1:<init>	(Lcom/layer/sdk/internal/lsdki/a$d;Ljava/util/concurrent/CountDownLatch;)V
      //   292: invokevirtual 254	com/layer/sdk/internal/lsdki/lsdkc/c:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c$e;)Lcom/layer/sdk/internal/lsdki/lsdkc/c;
      //   295: invokevirtual 256	com/layer/sdk/internal/lsdki/lsdkc/c:a	()V
      //   298: aload_2
      //   299: ldc2_w 257
      //   302: getstatic 264	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
      //   305: invokevirtual 268	java/util/concurrent/CountDownLatch:await	(JLjava/util/concurrent/TimeUnit;)Z
      //   308: pop
      //   309: aload 5
      //   311: invokevirtual 272	com/layer/sdk/internal/lsdki/lsdkc/c:b	()Lcom/layer/a/b/a;
      //   314: invokevirtual 276	com/layer/a/b/a:c	()Z
      //   317: ifeq +37 -> 354
      //   320: aload_0
      //   321: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   324: invokevirtual 198	com/layer/sdk/internal/lsdki/a$a:m	()Lcom/layer/sdk/internal/lsdkd/f;
      //   327: aload_0
      //   328: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   331: invokevirtual 222	com/layer/sdk/internal/lsdki/a$a:n	()Lcom/layer/sdk/internal/lsdkd/k;
      //   334: iconst_0
      //   335: invokevirtual 225	com/layer/sdk/internal/lsdkd/f:a	(Lcom/layer/sdk/internal/lsdkd/k;Z)V
      //   338: aload_0
      //   339: aconst_null
      //   340: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   343: return
      //   344: astore_2
      //   345: invokestatic 189	com/layer/sdk/internal/lsdki/a:wz	()Lcom/layer/sdk/internal/lsdkk/k$a;
      //   348: ldc_w 278
      //   351: invokestatic 194	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
      //   354: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   357: ifeq +9 -> 366
      //   360: ldc_w 280
      //   363: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   366: aload_0
      //   367: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   370: invokevirtual 222	com/layer/sdk/internal/lsdki/a$a:n	()Lcom/layer/sdk/internal/lsdkd/k;
      //   373: getstatic 282	com/layer/sdk/internal/lsdkd/k$a:b	Lcom/layer/sdk/internal/lsdkd/k$a;
      //   376: invokevirtual 243	com/layer/sdk/internal/lsdkd/k:a	(Lcom/layer/sdk/internal/lsdkd/k$a;)V
      //   379: aload_0
      //   380: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   383: invokevirtual 285	com/layer/sdk/internal/lsdki/a$a:c	()Lcom/layer/sdk/internal/lsdki/lsdka/a$b;
      //   386: checkcast 287	com/layer/sdk/internal/lsdke/g
      //   389: invokevirtual 290	com/layer/sdk/internal/lsdke/g:e	()Landroid/database/sqlite/SQLiteDatabase;
      //   392: astore_3
      //   393: aload_3
      //   394: astore_2
      //   395: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   398: ifeq +11 -> 409
      //   401: aload_3
      //   402: astore_2
      //   403: ldc_w 292
      //   406: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   409: aload_3
      //   410: astore_2
      //   411: aload_0
      //   412: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   415: aload_0
      //   416: getfield 32	com/layer/sdk/internal/lsdki/a$d:bsq	Lcom/layer/sdk/internal/lsdki/a$b;
      //   419: aload_3
      //   420: aload_0
      //   421: getfield 36	com/layer/sdk/internal/lsdki/a$d:e	Z
      //   424: invokestatic 297	com/layer/sdk/internal/lsdki/lsdka/a:a	(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$c;Landroid/database/sqlite/SQLiteDatabase;Z)I
      //   427: pop
      //   428: aload_3
      //   429: astore_2
      //   430: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   433: ifeq +11 -> 444
      //   436: aload_3
      //   437: astore_2
      //   438: ldc_w 299
      //   441: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   444: aload_3
      //   445: astore_2
      //   446: aload_3
      //   447: aload_0
      //   448: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   451: invokevirtual 303	com/layer/sdk/internal/lsdki/a$a:q	()Ljava/util/concurrent/ConcurrentSkipListSet;
      //   454: aload_0
      //   455: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   458: invokevirtual 306	com/layer/sdk/internal/lsdki/a$a:d	()Lcom/layer/sdk/internal/lsdki/lsdkb/a$a;
      //   461: aload_0
      //   462: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   465: invokevirtual 198	com/layer/sdk/internal/lsdki/a$a:m	()Lcom/layer/sdk/internal/lsdkd/f;
      //   468: aload_0
      //   469: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   472: invokevirtual 222	com/layer/sdk/internal/lsdki/a$a:n	()Lcom/layer/sdk/internal/lsdkd/k;
      //   475: invokestatic 311	com/layer/sdk/internal/lsdki/lsdkb/a:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Lcom/layer/sdk/internal/lsdki/lsdkb/a$a;Lcom/layer/sdk/internal/lsdkd/f;Lcom/layer/sdk/internal/lsdkd/k;)V
      //   478: aload_3
      //   479: astore_2
      //   480: aload_0
      //   481: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   484: invokevirtual 303	com/layer/sdk/internal/lsdki/a$a:q	()Ljava/util/concurrent/ConcurrentSkipListSet;
      //   487: invokevirtual 316	java/util/concurrent/ConcurrentSkipListSet:clear	()V
      //   490: aload_3
      //   491: astore_2
      //   492: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   495: ifeq +11 -> 506
      //   498: aload_3
      //   499: astore_2
      //   500: ldc_w 318
      //   503: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   506: aload_3
      //   507: astore_2
      //   508: aload_3
      //   509: aload_0
      //   510: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   513: invokevirtual 321	com/layer/sdk/internal/lsdki/a$a:i	()Ljava/lang/String;
      //   516: aload_0
      //   517: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   520: invokevirtual 325	com/layer/sdk/internal/lsdki/a$a:k	()Lcom/layer/sdk/internal/lsdke/g;
      //   523: invokestatic 330	com/layer/sdk/internal/lsdki/lsdkb/b:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/layer/sdk/internal/lsdki/lsdkb/b$a;)V
      //   526: aload_3
      //   527: astore_2
      //   528: aload_3
      //   529: invokevirtual 335	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
      //   532: aload_3
      //   533: ifnull +17 -> 550
      //   536: aload_0
      //   537: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   540: invokevirtual 285	com/layer/sdk/internal/lsdki/a$a:c	()Lcom/layer/sdk/internal/lsdki/lsdka/a$b;
      //   543: checkcast 287	com/layer/sdk/internal/lsdke/g
      //   546: aload_3
      //   547: invokevirtual 338	com/layer/sdk/internal/lsdke/g:i	(Landroid/database/sqlite/SQLiteDatabase;)V
      //   550: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   553: ifeq +9 -> 562
      //   556: ldc_w 340
      //   559: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   562: aload_0
      //   563: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   566: invokevirtual 198	com/layer/sdk/internal/lsdki/a$a:m	()Lcom/layer/sdk/internal/lsdkd/f;
      //   569: aload_0
      //   570: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   573: invokevirtual 222	com/layer/sdk/internal/lsdki/a$a:n	()Lcom/layer/sdk/internal/lsdkd/k;
      //   576: iconst_1
      //   577: invokevirtual 225	com/layer/sdk/internal/lsdkd/f:a	(Lcom/layer/sdk/internal/lsdkd/k;Z)V
      //   580: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   583: ifeq +9 -> 592
      //   586: ldc_w 342
      //   589: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   592: aload_0
      //   593: aload 5
      //   595: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   598: return
      //   599: astore_2
      //   600: aload_0
      //   601: aconst_null
      //   602: new 229	com/layer/sdk/internal/lsdki/lsdkc/b
      //   605: dup
      //   606: aconst_null
      //   607: aload_2
      //   608: aload_2
      //   609: invokevirtual 230	java/lang/Throwable:getMessage	()Ljava/lang/String;
      //   612: invokespecial 233	com/layer/sdk/internal/lsdki/lsdkc/b:<init>	(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V
      //   615: invokespecial 47	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
      //   618: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   621: ifeq +9 -> 630
      //   624: ldc_w 342
      //   627: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   630: aload_0
      //   631: aload 5
      //   633: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   636: return
      //   637: astore_2
      //   638: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   641: ifeq +9 -> 650
      //   644: ldc_w 342
      //   647: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   650: aload_0
      //   651: aload 5
      //   653: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   656: aload_2
      //   657: athrow
      //   658: astore_2
      //   659: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   662: ifeq +9 -> 671
      //   665: ldc_w 340
      //   668: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   671: aload_0
      //   672: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   675: invokevirtual 198	com/layer/sdk/internal/lsdki/a$a:m	()Lcom/layer/sdk/internal/lsdkd/f;
      //   678: aload_0
      //   679: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   682: invokevirtual 222	com/layer/sdk/internal/lsdki/a$a:n	()Lcom/layer/sdk/internal/lsdkd/k;
      //   685: iconst_1
      //   686: invokevirtual 225	com/layer/sdk/internal/lsdkd/f:a	(Lcom/layer/sdk/internal/lsdkd/k;Z)V
      //   689: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   692: ifeq +9 -> 701
      //   695: ldc_w 342
      //   698: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   701: aload_0
      //   702: aload 5
      //   704: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   707: aload_2
      //   708: athrow
      //   709: astore_3
      //   710: aload_0
      //   711: aconst_null
      //   712: new 229	com/layer/sdk/internal/lsdki/lsdkc/b
      //   715: dup
      //   716: aconst_null
      //   717: aload_3
      //   718: aload_3
      //   719: invokevirtual 230	java/lang/Throwable:getMessage	()Ljava/lang/String;
      //   722: invokespecial 233	com/layer/sdk/internal/lsdki/lsdkc/b:<init>	(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V
      //   725: invokespecial 47	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
      //   728: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   731: ifeq +9 -> 740
      //   734: ldc_w 342
      //   737: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   740: aload_0
      //   741: aload 5
      //   743: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   746: goto -39 -> 707
      //   749: astore_2
      //   750: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   753: ifeq +9 -> 762
      //   756: ldc_w 342
      //   759: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   762: aload_0
      //   763: aload 5
      //   765: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   768: aload_2
      //   769: athrow
      //   770: astore 4
      //   772: aconst_null
      //   773: astore_3
      //   774: aload_3
      //   775: astore_2
      //   776: bipush 6
      //   778: invokestatic 185	com/layer/sdk/internal/lsdkk/k:a	(I)Z
      //   781: ifeq +16 -> 797
      //   784: aload_3
      //   785: astore_2
      //   786: invokestatic 189	com/layer/sdk/internal/lsdki/a:wz	()Lcom/layer/sdk/internal/lsdkk/k$a;
      //   789: ldc_w 344
      //   792: aload 4
      //   794: invokestatic 347	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   797: aload_3
      //   798: astore_2
      //   799: aload_0
      //   800: aconst_null
      //   801: new 229	com/layer/sdk/internal/lsdki/lsdkc/b
      //   804: dup
      //   805: aconst_null
      //   806: aload 4
      //   808: aload 4
      //   810: invokevirtual 230	java/lang/Throwable:getMessage	()Ljava/lang/String;
      //   813: invokespecial 233	com/layer/sdk/internal/lsdki/lsdkc/b:<init>	(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V
      //   816: invokespecial 47	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
      //   819: aload_3
      //   820: ifnull +17 -> 837
      //   823: aload_0
      //   824: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   827: invokevirtual 285	com/layer/sdk/internal/lsdki/a$a:c	()Lcom/layer/sdk/internal/lsdki/lsdka/a$b;
      //   830: checkcast 287	com/layer/sdk/internal/lsdke/g
      //   833: aload_3
      //   834: invokevirtual 338	com/layer/sdk/internal/lsdke/g:i	(Landroid/database/sqlite/SQLiteDatabase;)V
      //   837: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   840: ifeq +9 -> 849
      //   843: ldc_w 340
      //   846: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   849: aload_0
      //   850: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   853: invokevirtual 198	com/layer/sdk/internal/lsdki/a$a:m	()Lcom/layer/sdk/internal/lsdkd/f;
      //   856: aload_0
      //   857: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   860: invokevirtual 222	com/layer/sdk/internal/lsdki/a$a:n	()Lcom/layer/sdk/internal/lsdkd/k;
      //   863: iconst_0
      //   864: invokevirtual 225	com/layer/sdk/internal/lsdkd/f:a	(Lcom/layer/sdk/internal/lsdkd/k;Z)V
      //   867: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   870: ifeq +9 -> 879
      //   873: ldc_w 342
      //   876: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   879: aload_0
      //   880: aload 5
      //   882: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   885: return
      //   886: astore_2
      //   887: aload_0
      //   888: aconst_null
      //   889: new 229	com/layer/sdk/internal/lsdki/lsdkc/b
      //   892: dup
      //   893: aconst_null
      //   894: aload_2
      //   895: aload_2
      //   896: invokevirtual 230	java/lang/Throwable:getMessage	()Ljava/lang/String;
      //   899: invokespecial 233	com/layer/sdk/internal/lsdki/lsdkc/b:<init>	(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V
      //   902: invokespecial 47	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
      //   905: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   908: ifeq +9 -> 917
      //   911: ldc_w 342
      //   914: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   917: aload_0
      //   918: aload 5
      //   920: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   923: return
      //   924: astore_2
      //   925: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   928: ifeq +9 -> 937
      //   931: ldc_w 342
      //   934: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   937: aload_0
      //   938: aload 5
      //   940: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   943: aload_2
      //   944: athrow
      //   945: astore_2
      //   946: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   949: ifeq +9 -> 958
      //   952: ldc_w 340
      //   955: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   958: aload_0
      //   959: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   962: invokevirtual 198	com/layer/sdk/internal/lsdki/a$a:m	()Lcom/layer/sdk/internal/lsdkd/f;
      //   965: aload_0
      //   966: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   969: invokevirtual 222	com/layer/sdk/internal/lsdki/a$a:n	()Lcom/layer/sdk/internal/lsdkd/k;
      //   972: iconst_0
      //   973: invokevirtual 225	com/layer/sdk/internal/lsdkd/f:a	(Lcom/layer/sdk/internal/lsdkd/k;Z)V
      //   976: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   979: ifeq +9 -> 988
      //   982: ldc_w 342
      //   985: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   988: aload_0
      //   989: aload 5
      //   991: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   994: aload_2
      //   995: athrow
      //   996: astore_3
      //   997: aload_0
      //   998: aconst_null
      //   999: new 229	com/layer/sdk/internal/lsdki/lsdkc/b
      //   1002: dup
      //   1003: aconst_null
      //   1004: aload_3
      //   1005: aload_3
      //   1006: invokevirtual 230	java/lang/Throwable:getMessage	()Ljava/lang/String;
      //   1009: invokespecial 233	com/layer/sdk/internal/lsdki/lsdkc/b:<init>	(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V
      //   1012: invokespecial 47	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
      //   1015: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   1018: ifeq +9 -> 1027
      //   1021: ldc_w 342
      //   1024: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   1027: aload_0
      //   1028: aload 5
      //   1030: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   1033: goto -39 -> 994
      //   1036: astore_2
      //   1037: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   1040: ifeq +9 -> 1049
      //   1043: ldc_w 342
      //   1046: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   1049: aload_0
      //   1050: aload 5
      //   1052: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   1055: aload_2
      //   1056: athrow
      //   1057: astore_2
      //   1058: aconst_null
      //   1059: astore_3
      //   1060: aload_3
      //   1061: ifnull +17 -> 1078
      //   1064: aload_0
      //   1065: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   1068: invokevirtual 285	com/layer/sdk/internal/lsdki/a$a:c	()Lcom/layer/sdk/internal/lsdki/lsdka/a$b;
      //   1071: checkcast 287	com/layer/sdk/internal/lsdke/g
      //   1074: aload_3
      //   1075: invokevirtual 338	com/layer/sdk/internal/lsdke/g:i	(Landroid/database/sqlite/SQLiteDatabase;)V
      //   1078: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   1081: ifeq +9 -> 1090
      //   1084: ldc_w 340
      //   1087: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   1090: aload_0
      //   1091: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   1094: invokevirtual 198	com/layer/sdk/internal/lsdki/a$a:m	()Lcom/layer/sdk/internal/lsdkd/f;
      //   1097: aload_0
      //   1098: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   1101: invokevirtual 222	com/layer/sdk/internal/lsdki/a$a:n	()Lcom/layer/sdk/internal/lsdkd/k;
      //   1104: iconst_0
      //   1105: invokevirtual 225	com/layer/sdk/internal/lsdkd/f:a	(Lcom/layer/sdk/internal/lsdkd/k;Z)V
      //   1108: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   1111: ifeq +9 -> 1120
      //   1114: ldc_w 342
      //   1117: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   1120: aload_0
      //   1121: aload 5
      //   1123: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   1126: aload_2
      //   1127: athrow
      //   1128: astore_3
      //   1129: aload_0
      //   1130: aconst_null
      //   1131: new 229	com/layer/sdk/internal/lsdki/lsdkc/b
      //   1134: dup
      //   1135: aconst_null
      //   1136: aload_3
      //   1137: aload_3
      //   1138: invokevirtual 230	java/lang/Throwable:getMessage	()Ljava/lang/String;
      //   1141: invokespecial 233	com/layer/sdk/internal/lsdki/lsdkc/b:<init>	(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V
      //   1144: invokespecial 47	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
      //   1147: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   1150: ifeq +9 -> 1159
      //   1153: ldc_w 342
      //   1156: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   1159: aload_0
      //   1160: aload 5
      //   1162: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   1165: goto -39 -> 1126
      //   1168: astore_2
      //   1169: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   1172: ifeq +9 -> 1181
      //   1175: ldc_w 342
      //   1178: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   1181: aload_0
      //   1182: aload 5
      //   1184: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   1187: aload_2
      //   1188: athrow
      //   1189: astore_2
      //   1190: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   1193: ifeq +9 -> 1202
      //   1196: ldc_w 340
      //   1199: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   1202: aload_0
      //   1203: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   1206: invokevirtual 198	com/layer/sdk/internal/lsdki/a$a:m	()Lcom/layer/sdk/internal/lsdkd/f;
      //   1209: aload_0
      //   1210: getfield 30	com/layer/sdk/internal/lsdki/a$d:bsp	Lcom/layer/sdk/internal/lsdki/a$a;
      //   1213: invokevirtual 222	com/layer/sdk/internal/lsdki/a$a:n	()Lcom/layer/sdk/internal/lsdkd/k;
      //   1216: iconst_0
      //   1217: invokevirtual 225	com/layer/sdk/internal/lsdkd/f:a	(Lcom/layer/sdk/internal/lsdkd/k;Z)V
      //   1220: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   1223: ifeq +9 -> 1232
      //   1226: ldc_w 342
      //   1229: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   1232: aload_0
      //   1233: aload 5
      //   1235: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   1238: aload_2
      //   1239: athrow
      //   1240: astore_3
      //   1241: aload_0
      //   1242: aconst_null
      //   1243: new 229	com/layer/sdk/internal/lsdki/lsdkc/b
      //   1246: dup
      //   1247: aconst_null
      //   1248: aload_3
      //   1249: aload_3
      //   1250: invokevirtual 230	java/lang/Throwable:getMessage	()Ljava/lang/String;
      //   1253: invokespecial 233	com/layer/sdk/internal/lsdki/lsdkc/b:<init>	(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V
      //   1256: invokespecial 47	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
      //   1259: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   1262: ifeq +9 -> 1271
      //   1265: ldc_w 342
      //   1268: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   1271: aload_0
      //   1272: aload 5
      //   1274: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   1277: goto -39 -> 1238
      //   1280: astore_2
      //   1281: invokestatic 152	com/layer/sdk/internal/lsdkk/k:d	()Z
      //   1284: ifeq +9 -> 1293
      //   1287: ldc_w 342
      //   1290: invokestatic 158	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
      //   1293: aload_0
      //   1294: aload 5
      //   1296: invokespecial 227	com/layer/sdk/internal/lsdki/a$d:a	(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
      //   1299: aload_2
      //   1300: athrow
      //   1301: astore 4
      //   1303: aload_2
      //   1304: astore_3
      //   1305: aload 4
      //   1307: astore_2
      //   1308: goto -248 -> 1060
      //   1311: astore 4
      //   1313: goto -539 -> 774
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	1316	0	this	d
      //   1	189	1	bool	boolean
      //   32	1	2	localCountDownLatch	CountDownLatch
      //   193	106	2	localThrowable1	Throwable
      //   344	1	2	localInterruptedException	InterruptedException
      //   394	134	2	localObject1	Object
      //   599	10	2	localThrowable2	Throwable
      //   637	20	2	localObject2	Object
      //   658	50	2	localObject3	Object
      //   749	20	2	localObject4	Object
      //   775	24	2	localObject5	Object
      //   886	10	2	localThrowable3	Throwable
      //   924	20	2	localObject6	Object
      //   945	50	2	localObject7	Object
      //   1036	20	2	localObject8	Object
      //   1057	70	2	localObject9	Object
      //   1168	20	2	localObject10	Object
      //   1189	50	2	localObject11	Object
      //   1280	24	2	localObject12	Object
      //   1307	1	2	localObject13	Object
      //   50	497	3	localObject14	Object
      //   709	10	3	localThrowable4	Throwable
      //   773	61	3	localSQLiteDatabase1	android.database.sqlite.SQLiteDatabase
      //   996	10	3	localThrowable5	Throwable
      //   1059	16	3	localSQLiteDatabase2	android.database.sqlite.SQLiteDatabase
      //   1128	10	3	localThrowable6	Throwable
      //   1240	10	3	localThrowable7	Throwable
      //   1304	1	3	localObject15	Object
      //   58	18	4	locale	a.e
      //   770	39	4	localThrowable8	Throwable
      //   1301	5	4	localObject16	Object
      //   1311	1	4	localThrowable9	Throwable
      //   279	1016	5	localc	com.layer.sdk.internal.lsdki.lsdkc.c
      // Exception table:
      //   from	to	target	type
      //   149	157	193	java/lang/Throwable
      //   298	343	344	java/lang/InterruptedException
      //   550	562	599	java/lang/Throwable
      //   562	580	599	java/lang/Throwable
      //   550	562	637	finally
      //   562	580	637	finally
      //   600	618	637	finally
      //   536	550	658	finally
      //   659	671	709	java/lang/Throwable
      //   671	689	709	java/lang/Throwable
      //   659	671	749	finally
      //   671	689	749	finally
      //   710	728	749	finally
      //   379	393	770	java/lang/Throwable
      //   837	849	886	java/lang/Throwable
      //   849	867	886	java/lang/Throwable
      //   837	849	924	finally
      //   849	867	924	finally
      //   887	905	924	finally
      //   823	837	945	finally
      //   946	958	996	java/lang/Throwable
      //   958	976	996	java/lang/Throwable
      //   946	958	1036	finally
      //   958	976	1036	finally
      //   997	1015	1036	finally
      //   379	393	1057	finally
      //   1078	1090	1128	java/lang/Throwable
      //   1090	1108	1128	java/lang/Throwable
      //   1078	1090	1168	finally
      //   1090	1108	1168	finally
      //   1129	1147	1168	finally
      //   1064	1078	1189	finally
      //   1190	1202	1240	java/lang/Throwable
      //   1202	1220	1240	java/lang/Throwable
      //   1190	1202	1280	finally
      //   1202	1220	1280	finally
      //   1241	1259	1280	finally
      //   395	401	1301	finally
      //   403	409	1301	finally
      //   411	428	1301	finally
      //   430	436	1301	finally
      //   438	444	1301	finally
      //   446	478	1301	finally
      //   480	490	1301	finally
      //   492	498	1301	finally
      //   500	506	1301	finally
      //   508	526	1301	finally
      //   528	532	1301	finally
      //   776	784	1301	finally
      //   786	797	1301	finally
      //   799	819	1301	finally
      //   395	401	1311	java/lang/Throwable
      //   403	409	1311	java/lang/Throwable
      //   411	428	1311	java/lang/Throwable
      //   430	436	1311	java/lang/Throwable
      //   438	444	1311	java/lang/Throwable
      //   446	478	1311	java/lang/Throwable
      //   480	490	1311	java/lang/Throwable
      //   492	498	1311	java/lang/Throwable
      //   500	506	1311	java/lang/Throwable
      //   508	526	1311	java/lang/Throwable
      //   528	532	1311	java/lang/Throwable
    }
  }
  
  public static enum e
  {
    private e() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */