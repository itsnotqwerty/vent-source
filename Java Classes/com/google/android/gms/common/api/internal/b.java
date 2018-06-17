package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.internal.ay;
import com.google.android.gms.common.m;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.mb;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

public final class b
  implements aw
{
  private final Looper aCC;
  private final ah aCF;
  final Map<a.d<?>, cs<?>> aDA = new HashMap();
  private final Map<com.google.android.gms.common.api.a<?>, Boolean> aDB;
  final y aDC;
  final Lock aDD;
  private final m aDE;
  final Condition aDF;
  private final ay aDG;
  private final boolean aDH;
  final boolean aDI;
  private final Queue<cg<?, ?>> aDJ = new LinkedList();
  boolean aDK;
  Map<cb<?>, com.google.android.gms.common.a> aDL;
  Map<cb<?>, com.google.android.gms.common.a> aDM;
  private d aDN;
  com.google.android.gms.common.a aDO;
  final Map<a.d<?>, cs<?>> aDz = new HashMap();
  
  public b(Context paramContext, Lock paramLock, Looper paramLooper, m paramm, Map<a.d<?>, a.f> paramMap, ay paramay, Map<com.google.android.gms.common.api.a<?>, Boolean> paramMap1, a.b<? extends ma, mb> paramb, ArrayList<cn> paramArrayList, y paramy, boolean paramBoolean)
  {
    this.aDD = paramLock;
    this.aCC = paramLooper;
    this.aDF = paramLock.newCondition();
    this.aDE = paramm;
    this.aDC = paramy;
    this.aDB = paramMap1;
    this.aDG = paramay;
    this.aDH = paramBoolean;
    paramLock = new HashMap();
    paramm = paramMap1.keySet().iterator();
    while (paramm.hasNext())
    {
      paramMap1 = (com.google.android.gms.common.api.a)paramm.next();
      paramLock.put(paramMap1.mU(), paramMap1);
    }
    paramm = new HashMap();
    paramMap1 = (ArrayList)paramArrayList;
    int j = paramMap1.size();
    int i = 0;
    while (i < j)
    {
      paramArrayList = paramMap1.get(i);
      i += 1;
      paramArrayList = (cn)paramArrayList;
      paramm.put(paramArrayList.aCz, paramArrayList);
    }
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      paramMap1 = (Map.Entry)paramMap.next();
      paramy = (com.google.android.gms.common.api.a)paramLock.get(paramMap1.getKey());
      paramArrayList = (a.f)paramMap1.getValue();
      ((Boolean)this.aDB.get(paramy)).booleanValue();
      paramy = new cs(paramContext, paramy, paramLooper, paramArrayList, (cn)paramm.get(paramy), paramay, paramb);
      this.aDz.put((a.d)paramMap1.getKey(), paramy);
      if (paramArrayList.mX()) {
        this.aDA.put((a.d)paramMap1.getKey(), paramy);
      }
    }
    this.aDI = false;
    this.aCF = ah.nz();
  }
  
  private final com.google.android.gms.common.a b(a.d<?> paramd)
  {
    this.aDD.lock();
    try
    {
      paramd = (cs)this.aDz.get(paramd);
      if ((this.aDL != null) && (paramd != null))
      {
        paramd = (com.google.android.gms.common.a)this.aDL.get(paramd.aCB);
        return paramd;
      }
      return null;
    }
    finally
    {
      this.aDD.unlock();
    }
  }
  
  public final <A extends a.c, T extends cg<? extends i, A>> T b(T paramT)
  {
    a.d locald = paramT.aGJ;
    if (this.aDH)
    {
      Object localObject1 = paramT.aGJ;
      Object localObject2 = b((a.d)localObject1);
      if ((localObject2 != null) && (((com.google.android.gms.common.a)localObject2).aCj == 4))
      {
        localObject2 = this.aCF;
        localObject1 = ((cs)this.aDz.get(localObject1)).aCB;
        i = System.identityHashCode(this.aDC);
        localObject1 = (aj)((ah)localObject2).aDz.get(localObject1);
        if (localObject1 == null)
        {
          localObject1 = null;
          paramT.g(new Status(4, null, (PendingIntent)localObject1));
        }
      }
      for (int i = 1;; i = 0)
      {
        if (i == 0) {
          break label169;
        }
        return paramT;
        if (((aj)localObject1).aFr == null) {}
        for (localObject1 = null;; localObject1 = ((aj)localObject1).aFr.aEe)
        {
          if (localObject1 != null) {
            break label142;
          }
          localObject1 = null;
          break;
        }
        label142:
        localObject1 = PendingIntent.getActivity(((ah)localObject2).mContext, i, ((ma)localObject1).mY(), 134217728);
        break;
      }
    }
    label169:
    this.aDC.aEK.b(paramT);
    return ((cs)this.aDz.get(locald)).a(paramT);
  }
  
  /* Error */
  public final void connect()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 59	com/google/android/gms/common/api/internal/b:aDD	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 214 1 0
    //   9: aload_0
    //   10: getfield 336	com/google/android/gms/common/api/internal/b:aDK	Z
    //   13: istore_1
    //   14: iload_1
    //   15: ifeq +13 -> 28
    //   18: aload_0
    //   19: getfield 59	com/google/android/gms/common/api/internal/b:aDD	Ljava/util/concurrent/locks/Lock;
    //   22: invokeinterface 217 1 0
    //   27: return
    //   28: aload_0
    //   29: iconst_1
    //   30: putfield 336	com/google/android/gms/common/api/internal/b:aDK	Z
    //   33: aload_0
    //   34: aconst_null
    //   35: putfield 189	com/google/android/gms/common/api/internal/b:aDL	Ljava/util/Map;
    //   38: aload_0
    //   39: aconst_null
    //   40: putfield 338	com/google/android/gms/common/api/internal/b:aDM	Ljava/util/Map;
    //   43: aload_0
    //   44: aconst_null
    //   45: putfield 340	com/google/android/gms/common/api/internal/b:aDN	Lcom/google/android/gms/common/api/internal/d;
    //   48: aload_0
    //   49: aconst_null
    //   50: putfield 342	com/google/android/gms/common/api/internal/b:aDO	Lcom/google/android/gms/common/a;
    //   53: aload_0
    //   54: getfield 168	com/google/android/gms/common/api/internal/b:aCF	Lcom/google/android/gms/common/api/internal/ah;
    //   57: invokevirtual 345	com/google/android/gms/common/api/internal/ah:nl	()V
    //   60: aload_0
    //   61: getfield 168	com/google/android/gms/common/api/internal/b:aCF	Lcom/google/android/gms/common/api/internal/ah;
    //   64: astore_2
    //   65: aload_0
    //   66: getfield 50	com/google/android/gms/common/api/internal/b:aDz	Ljava/util/Map;
    //   69: invokeinterface 177 1 0
    //   74: astore 4
    //   76: new 347	com/google/android/gms/common/api/internal/cd
    //   79: dup
    //   80: aload 4
    //   82: invokespecial 350	com/google/android/gms/common/api/internal/cd:<init>	(Ljava/lang/Iterable;)V
    //   85: astore_3
    //   86: aload 4
    //   88: invokeinterface 353 1 0
    //   93: astore 4
    //   95: aload 4
    //   97: invokeinterface 97 1 0
    //   102: ifeq +64 -> 166
    //   105: aload 4
    //   107: invokeinterface 101 1 0
    //   112: checkcast 182	com/google/android/gms/common/api/e
    //   115: astore 5
    //   117: aload_2
    //   118: getfield 283	com/google/android/gms/common/api/internal/ah:aDz	Ljava/util/Map;
    //   121: aload 5
    //   123: getfield 187	com/google/android/gms/common/api/e:aCB	Lcom/google/android/gms/common/api/internal/cb;
    //   126: invokeinterface 138 2 0
    //   131: checkcast 285	com/google/android/gms/common/api/internal/aj
    //   134: astore 6
    //   136: aload 6
    //   138: ifnull +11 -> 149
    //   141: aload 6
    //   143: invokevirtual 356	com/google/android/gms/common/api/internal/aj:isConnected	()Z
    //   146: ifne +61 -> 207
    //   149: aload_2
    //   150: getfield 360	com/google/android/gms/common/api/internal/ah:mHandler	Landroid/os/Handler;
    //   153: aload_2
    //   154: getfield 360	com/google/android/gms/common/api/internal/ah:mHandler	Landroid/os/Handler;
    //   157: iconst_2
    //   158: aload_3
    //   159: invokevirtual 366	android/os/Handler:obtainMessage	(ILjava/lang/Object;)Landroid/os/Message;
    //   162: invokevirtual 370	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   165: pop
    //   166: aload_3
    //   167: getfield 374	com/google/android/gms/common/api/internal/cd:aGB	Lcom/google/android/gms/c/f;
    //   170: getfield 380	com/google/android/gms/c/f:bdU	Lcom/google/android/gms/c/r;
    //   173: new 382	com/google/android/gms/internal/dz
    //   176: dup
    //   177: aload_0
    //   178: getfield 61	com/google/android/gms/common/api/internal/b:aCC	Landroid/os/Looper;
    //   181: invokespecial 385	com/google/android/gms/internal/dz:<init>	(Landroid/os/Looper;)V
    //   184: new 387	com/google/android/gms/common/api/internal/c
    //   187: dup
    //   188: aload_0
    //   189: iconst_0
    //   190: invokespecial 390	com/google/android/gms/common/api/internal/c:<init>	(Lcom/google/android/gms/common/api/internal/b;B)V
    //   193: invokevirtual 395	com/google/android/gms/c/e:a	(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/a;)Lcom/google/android/gms/c/e;
    //   196: pop
    //   197: aload_0
    //   198: getfield 59	com/google/android/gms/common/api/internal/b:aDD	Ljava/util/concurrent/locks/Lock;
    //   201: invokeinterface 217 1 0
    //   206: return
    //   207: aload_3
    //   208: aload 5
    //   210: getfield 187	com/google/android/gms/common/api/e:aCB	Lcom/google/android/gms/common/api/internal/cb;
    //   213: getstatic 398	com/google/android/gms/common/a:aCh	Lcom/google/android/gms/common/a;
    //   216: aload 6
    //   218: getfield 402	com/google/android/gms/common/api/internal/aj:aFl	Lcom/google/android/gms/common/api/a$f;
    //   221: invokeinterface 406 1 0
    //   226: invokevirtual 409	com/google/android/gms/common/api/internal/cd:a	(Lcom/google/android/gms/common/api/internal/cb;Lcom/google/android/gms/common/a;Ljava/lang/String;)V
    //   229: goto -134 -> 95
    //   232: astore_2
    //   233: aload_0
    //   234: getfield 59	com/google/android/gms/common/api/internal/b:aDD	Ljava/util/concurrent/locks/Lock;
    //   237: invokeinterface 217 1 0
    //   242: aload_2
    //   243: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	244	0	this	b
    //   13	2	1	bool	boolean
    //   64	90	2	localah	ah
    //   232	11	2	localObject1	Object
    //   85	123	3	localcd	cd
    //   74	32	4	localObject2	Object
    //   115	94	5	locale	e
    //   134	83	6	localaj	aj
    // Exception table:
    //   from	to	target	type
    //   9	14	232	finally
    //   28	95	232	finally
    //   95	136	232	finally
    //   141	149	232	finally
    //   149	166	232	finally
    //   166	197	232	finally
    //   207	229	232	finally
  }
  
  public final void disconnect()
  {
    this.aDD.lock();
    try
    {
      this.aDK = false;
      this.aDL = null;
      this.aDM = null;
      if (this.aDN != null) {
        this.aDN = null;
      }
      this.aDO = null;
      while (!this.aDJ.isEmpty())
      {
        cg localcg = (cg)this.aDJ.remove();
        localcg.a(null);
        localcg.cancel();
      }
      this.aDF.signalAll();
    }
    finally
    {
      this.aDD.unlock();
    }
    this.aDD.unlock();
  }
  
  public final void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  /* Error */
  public final boolean isConnected()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 59	com/google/android/gms/common/api/internal/b:aDD	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 214 1 0
    //   9: aload_0
    //   10: getfield 189	com/google/android/gms/common/api/internal/b:aDL	Ljava/util/Map;
    //   13: ifnull +25 -> 38
    //   16: aload_0
    //   17: getfield 342	com/google/android/gms/common/api/internal/b:aDO	Lcom/google/android/gms/common/a;
    //   20: astore_2
    //   21: aload_2
    //   22: ifnonnull +16 -> 38
    //   25: iconst_1
    //   26: istore_1
    //   27: aload_0
    //   28: getfield 59	com/google/android/gms/common/api/internal/b:aDD	Ljava/util/concurrent/locks/Lock;
    //   31: invokeinterface 217 1 0
    //   36: iload_1
    //   37: ireturn
    //   38: iconst_0
    //   39: istore_1
    //   40: goto -13 -> 27
    //   43: astore_2
    //   44: aload_0
    //   45: getfield 59	com/google/android/gms/common/api/internal/b:aDD	Ljava/util/concurrent/locks/Lock;
    //   48: invokeinterface 217 1 0
    //   53: aload_2
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	b
    //   26	14	1	bool	boolean
    //   20	2	2	locala	com.google.android.gms.common.a
    //   43	11	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   9	21	43	finally
  }
  
  public final void nk() {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */