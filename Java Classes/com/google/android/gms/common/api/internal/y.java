package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.api.f.b;
import com.google.android.gms.common.api.f.c;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.c;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.ay;
import com.google.android.gms.common.m;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.mb;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Lock;

public final class y
  extends com.google.android.gms.common.api.f
  implements ax
{
  private final Looper aCC;
  private final int aCS;
  private final c aCU;
  private a.b<? extends ma, mb> aCV;
  private boolean aCY;
  private Map<com.google.android.gms.common.api.a<?>, Boolean> aDB;
  private final Lock aDD;
  private ay aDG;
  final Queue<cg<?, ?>> aDJ = new LinkedList();
  private long aEA = 120000L;
  private long aEB = 5000L;
  private final aa aEC;
  private as aED;
  final Map<a.d<?>, a.f> aEE;
  Set<Scope> aEF = new HashSet();
  private final bg aEG = new bg();
  private final ArrayList<cn> aEH;
  private Integer aEI = null;
  Set<bt> aEJ = null;
  final bw aEK;
  private final com.google.android.gms.common.internal.g aEL = new z(this);
  private final com.google.android.gms.common.internal.f aEx;
  private aw aEy = null;
  private volatile boolean aEz;
  private final Context mContext;
  
  public y(Context arg1, Lock paramLock, Looper paramLooper, ay paramay, c paramc, a.b<? extends ma, mb> paramb, Map<com.google.android.gms.common.api.a<?>, Boolean> paramMap, List<f.b> paramList, List<f.c> paramList1, Map<a.d<?>, a.f> paramMap1, int paramInt1, int paramInt2, ArrayList<cn> paramArrayList)
  {
    this.mContext = ???;
    this.aDD = paramLock;
    this.aCY = false;
    this.aEx = new com.google.android.gms.common.internal.f(paramLooper, this.aEL);
    this.aCC = paramLooper;
    this.aEC = new aa(this, paramLooper);
    this.aCU = paramc;
    this.aCS = paramInt1;
    if (this.aCS >= 0) {
      this.aEI = Integer.valueOf(paramInt2);
    }
    this.aDB = paramMap;
    this.aEE = paramMap1;
    this.aEH = paramArrayList;
    this.aEK = new bw(this.aEE);
    paramLock = paramList.iterator();
    while (paramLock.hasNext())
    {
      paramLooper = (f.b)paramLock.next();
      paramc = this.aEx;
      ae.E(paramLooper);
      synchronized (paramc.mLock)
      {
        if (paramc.aHi.contains(paramLooper))
        {
          paramMap = String.valueOf(paramLooper);
          Log.w("GmsClientEvents", String.valueOf(paramMap).length() + 62 + "registerConnectionCallbacks(): listener " + paramMap + " is already registered");
          if (paramc.aHh.isConnected()) {
            paramc.mHandler.sendMessage(paramc.mHandler.obtainMessage(1, paramLooper));
          }
        }
        else
        {
          paramc.aHi.add(paramLooper);
        }
      }
    }
    ??? = paramList1.iterator();
    while (???.hasNext())
    {
      paramLock = (f.c)???.next();
      this.aEx.a(paramLock);
    }
    this.aDG = paramay;
    this.aCV = paramb;
  }
  
  private final void cJ(int paramInt)
  {
    if (this.aEI == null) {
      this.aEI = Integer.valueOf(paramInt);
    }
    while (this.aEy != null)
    {
      return;
      if (this.aEI.intValue() != paramInt)
      {
        localObject = cK(paramInt);
        String str = cK(this.aEI.intValue());
        throw new IllegalStateException(String.valueOf(localObject).length() + 51 + String.valueOf(str).length() + "Cannot use sign-in mode: " + (String)localObject + ". Mode was already set to " + str);
      }
    }
    Object localObject = this.aEE.values().iterator();
    paramInt = 0;
    if (((Iterator)localObject).hasNext())
    {
      if (!((a.f)((Iterator)localObject).next()).mX()) {
        break label416;
      }
      paramInt = 1;
    }
    label416:
    for (;;)
    {
      break;
      switch (this.aEI.intValue())
      {
      }
      while (this.aCY)
      {
        this.aEy = new b(this.mContext, this.aDD, this.aCC, this.aCU, this.aEE, this.aDG, this.aDB, this.aCV, this.aEH, this, false);
        return;
        if (paramInt == 0)
        {
          throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
          if (paramInt != 0)
          {
            if (this.aCY)
            {
              this.aEy = new b(this.mContext, this.aDD, this.aCC, this.aCU, this.aEE, this.aDG, this.aDB, this.aCV, this.aEH, this, true);
              return;
            }
            this.aEy = cp.a(this.mContext, this, this.aDD, this.aCC, this.aCU, this.aEE, this.aDG, this.aDB, this.aCV, this.aEH);
            return;
          }
        }
      }
      this.aEy = new ad(this.mContext, this, this.aDD, this.aCC, this.aCU, this.aEE, this.aDG, this.aDB, this.aCV, this.aEH, this);
      return;
    }
  }
  
  private static String cK(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "UNKNOWN";
    case 3: 
      return "SIGN_IN_MODE_NONE";
    case 1: 
      return "SIGN_IN_MODE_REQUIRED";
    }
    return "SIGN_IN_MODE_OPTIONAL";
  }
  
  public static int e(Iterable<a.f> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    int i = 0;
    if (paramIterable.hasNext())
    {
      if (!((a.f)paramIterable.next()).mX()) {
        break label48;
      }
      i = 1;
    }
    label48:
    for (;;)
    {
      break;
      if (i != 0) {
        return 1;
      }
      return 3;
    }
  }
  
  private final void nt()
  {
    this.aEx.aHl = true;
    this.aEy.connect();
  }
  
  public final <C extends a.f> C a(a.d<C> paramd)
  {
    paramd = (a.f)this.aEE.get(paramd);
    ae.g(paramd, "Appropriate Api was not requested.");
    return paramd;
  }
  
  public final void a(f.b paramb)
  {
    com.google.android.gms.common.internal.f localf = this.aEx;
    ae.E(paramb);
    synchronized (localf.mLock)
    {
      if (!localf.aHi.remove(paramb))
      {
        paramb = String.valueOf(paramb);
        Log.w("GmsClientEvents", String.valueOf(paramb).length() + 52 + "unregisterConnectionCallbacks(): listener " + paramb + " not found");
      }
      while (!localf.aHn) {
        return;
      }
      localf.aHj.add(paramb);
    }
  }
  
  public final void a(f.c paramc)
  {
    this.aEx.a(paramc);
  }
  
  public final void a(bt parambt)
  {
    this.aDD.lock();
    try
    {
      if (this.aEJ == null) {
        this.aEJ = new HashSet();
      }
      this.aEJ.add(parambt);
      return;
    }
    finally
    {
      this.aDD.unlock();
    }
  }
  
  public final <A extends a.c, T extends cg<? extends i, A>> T b(T paramT)
  {
    boolean bool;
    if (paramT.aGJ != null)
    {
      bool = true;
      ae.b(bool, "This task can not be executed (it's probably a Batch or malformed)");
      bool = this.aEE.containsKey(paramT.aGJ);
      if (paramT.aCz == null) {
        break label129;
      }
    }
    label129:
    for (Object localObject = paramT.aCz.mName;; localObject = "the API")
    {
      ae.b(bool, String.valueOf(localObject).length() + 65 + "GoogleApiClient is not configured to use " + (String)localObject + " required for this call.");
      this.aDD.lock();
      try
      {
        if (this.aEy != null) {
          break label136;
        }
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
      }
      finally
      {
        this.aDD.unlock();
      }
      bool = false;
      break;
    }
    label136:
    if (this.aEz)
    {
      this.aDJ.add(paramT);
      while (!this.aDJ.isEmpty())
      {
        localObject = (cg)this.aDJ.remove();
        this.aEK.b((BasePendingResult)localObject);
        ((cg)localObject).g(Status.aDc);
      }
      this.aDD.unlock();
      return paramT;
    }
    paramT = this.aEy.b(paramT);
    this.aDD.unlock();
    return paramT;
  }
  
  public final void b(f.c paramc)
  {
    com.google.android.gms.common.internal.f localf = this.aEx;
    ae.E(paramc);
    synchronized (localf.mLock)
    {
      if (!localf.aHk.remove(paramc))
      {
        paramc = String.valueOf(paramc);
        Log.w("GmsClientEvents", String.valueOf(paramc).length() + 57 + "unregisterConnectionFailedListener(): listener " + paramc + " not found");
      }
      return;
    }
  }
  
  public final void b(bt parambt)
  {
    this.aDD.lock();
    for (;;)
    {
      try
      {
        if (this.aEJ == null)
        {
          Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", new Exception());
          return;
        }
        if (!this.aEJ.remove(parambt))
        {
          Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", new Exception());
          continue;
        }
        if (nv()) {
          continue;
        }
      }
      finally
      {
        this.aDD.unlock();
      }
      this.aEy.nk();
    }
  }
  
  /* Error */
  public final void cF(int paramInt)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_0
    //   3: getfield 104	com/google/android/gms/common/api/internal/y:aDD	Ljava/util/concurrent/locks/Lock;
    //   6: invokeinterface 259 1 0
    //   11: iload_3
    //   12: istore_2
    //   13: iload_1
    //   14: iconst_3
    //   15: if_icmpeq +17 -> 32
    //   18: iload_3
    //   19: istore_2
    //   20: iload_1
    //   21: iconst_1
    //   22: if_icmpeq +10 -> 32
    //   25: iload_1
    //   26: iconst_2
    //   27: if_icmpne +50 -> 77
    //   30: iload_3
    //   31: istore_2
    //   32: iload_2
    //   33: new 191	java/lang/StringBuilder
    //   36: dup
    //   37: bipush 33
    //   39: invokespecial 198	java/lang/StringBuilder:<init>	(I)V
    //   42: ldc_w 454
    //   45: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: iload_1
    //   49: invokevirtual 457	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   52: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokestatic 382	com/google/android/gms/common/internal/ae:b	(ZLjava/lang/Object;)V
    //   58: aload_0
    //   59: iload_1
    //   60: invokespecial 459	com/google/android/gms/common/api/internal/y:cJ	(I)V
    //   63: aload_0
    //   64: invokespecial 264	com/google/android/gms/common/api/internal/y:nt	()V
    //   67: aload_0
    //   68: getfield 104	com/google/android/gms/common/api/internal/y:aDD	Ljava/util/concurrent/locks/Lock;
    //   71: invokeinterface 267 1 0
    //   76: return
    //   77: iconst_0
    //   78: istore_2
    //   79: goto -47 -> 32
    //   82: astore 4
    //   84: aload_0
    //   85: getfield 104	com/google/android/gms/common/api/internal/y:aDD	Ljava/util/concurrent/locks/Lock;
    //   88: invokeinterface 267 1 0
    //   93: aload 4
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	y
    //   0	96	1	paramInt	int
    //   12	67	2	bool1	boolean
    //   1	30	3	bool2	boolean
    //   82	12	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   32	67	82	finally
  }
  
  public final void connect()
  {
    this.aDD.lock();
    try
    {
      boolean bool;
      if (this.aCS >= 0) {
        if (this.aEI != null)
        {
          bool = true;
          ae.a(bool, "Sign-in mode should have been set explicitly by auto-manage.");
        }
      }
      do
      {
        for (;;)
        {
          cF(this.aEI.intValue());
          return;
          bool = false;
          break;
          if (this.aEI != null) {
            break label99;
          }
          this.aEI = Integer.valueOf(e(this.aEE.values()));
        }
      } while (this.aEI.intValue() != 2);
    }
    finally
    {
      this.aDD.unlock();
    }
    label99:
    throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
  }
  
  public final void disconnect()
  {
    this.aDD.lock();
    Object localObject3;
    try
    {
      this.aEK.release();
      if (this.aEy != null) {
        this.aEy.disconnect();
      }
      bg localbg = this.aEG;
      localObject3 = localbg.aFU.iterator();
      while (((Iterator)localObject3).hasNext()) {
        ((bc)((Iterator)localObject3).next()).aFQ = null;
      }
      ((bg)localObject1).aFU.clear();
    }
    finally
    {
      this.aDD.unlock();
    }
    Object localObject2 = this.aDJ.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (cg)((Iterator)localObject2).next();
      ((BasePendingResult)localObject3).a(null);
      ((com.google.android.gms.common.api.g)localObject3).cancel();
    }
    this.aDJ.clear();
    localObject2 = this.aEy;
    if (localObject2 == null)
    {
      this.aDD.unlock();
      return;
    }
    nu();
    this.aEx.nZ();
    this.aDD.unlock();
  }
  
  public final void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.append(paramString).append("mContext=").println(this.mContext);
    paramPrintWriter.append(paramString).append("mResuming=").print(this.aEz);
    paramPrintWriter.append(" mWorkQueue.size()=").print(this.aDJ.size());
    bw localbw = this.aEK;
    paramPrintWriter.append(" mUnconsumedApiCalls.size()=").println(localbw.aGp.size());
    if (this.aEy != null) {
      this.aEy.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  public final void e(com.google.android.gms.common.a parama)
  {
    int i = 0;
    if (!m.t(this.mContext, parama.aCj)) {
      nu();
    }
    com.google.android.gms.common.internal.f localf;
    boolean bool;
    if (!this.aEz)
    {
      localf = this.aEx;
      if (Looper.myLooper() != localf.mHandler.getLooper()) {
        break label173;
      }
      bool = true;
      ae.a(bool, "onConnectionFailure must only be called on the Handler thread");
      localf.mHandler.removeMessages(1);
    }
    for (;;)
    {
      synchronized (localf.mLock)
      {
        ArrayList localArrayList = new ArrayList(localf.aHk);
        int k = localf.aHm.get();
        localArrayList = (ArrayList)localArrayList;
        int m = localArrayList.size();
        if (i < m)
        {
          Object localObject2 = localArrayList.get(i);
          int j = i + 1;
          localObject2 = (f.c)localObject2;
          if ((!localf.aHl) || (localf.aHm.get() != k))
          {
            this.aEx.nZ();
            return;
            label173:
            bool = false;
            break;
          }
          i = j;
          if (!localf.aHk.contains(localObject2)) {
            continue;
          }
          ((f.c)localObject2).a(parama);
          i = j;
        }
      }
    }
  }
  
  public final Looper getLooper()
  {
    return this.aCC;
  }
  
  public final void h(int paramInt, boolean paramBoolean)
  {
    int j = 0;
    if ((paramInt == 1) && (!paramBoolean) && (!this.aEz))
    {
      this.aEz = true;
      if (this.aED == null) {
        this.aED = c.a(this.mContext.getApplicationContext(), new ab(this));
      }
      this.aEC.sendMessageDelayed(this.aEC.obtainMessage(1), this.aEA);
      this.aEC.sendMessageDelayed(this.aEC.obtainMessage(2), this.aEB);
    }
    ??? = (BasePendingResult[])this.aEK.aGp.toArray(bw.aGo);
    int k = ???.length;
    int i = 0;
    while (i < k)
    {
      ???[i].a(bw.aGn);
      i += 1;
    }
    com.google.android.gms.common.internal.f localf = this.aEx;
    if (Looper.myLooper() == localf.mHandler.getLooper()) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      ae.a(paramBoolean, "onUnintentionalDisconnection must only be called on the Handler thread");
      localf.mHandler.removeMessages(1);
      synchronized (localf.mLock)
      {
        localf.aHn = true;
        ArrayList localArrayList = new ArrayList(localf.aHi);
        k = localf.aHm.get();
        localArrayList = (ArrayList)localArrayList;
        int m = localArrayList.size();
        i = j;
        Object localObject3;
        do
        {
          if (i >= m) {
            break;
          }
          localObject3 = localArrayList.get(i);
          j = i + 1;
          localObject3 = (f.b)localObject3;
          if ((!localf.aHl) || (localf.aHm.get() != k)) {
            break;
          }
          i = j;
        } while (!localf.aHi.contains(localObject3));
        ((f.b)localObject3).cG(paramInt);
        i = j;
      }
    }
    ((com.google.android.gms.common.internal.f)localObject2).aHj.clear();
    ((com.google.android.gms.common.internal.f)localObject2).aHn = false;
    this.aEx.nZ();
    if (paramInt == 2) {
      nt();
    }
  }
  
  public final void i(Bundle paramBundle)
  {
    boolean bool2 = true;
    int i = 0;
    while (!this.aDJ.isEmpty()) {
      b((cg)this.aDJ.remove());
    }
    com.google.android.gms.common.internal.f localf = this.aEx;
    boolean bool1;
    if (Looper.myLooper() == localf.mHandler.getLooper())
    {
      bool1 = true;
      ae.a(bool1, "onConnectionSuccess must only be called on the Handler thread");
    }
    for (;;)
    {
      synchronized (localf.mLock)
      {
        if (localf.aHn) {
          break label266;
        }
        bool1 = true;
        ae.at(bool1);
        localf.mHandler.removeMessages(1);
        localf.aHn = true;
        if (localf.aHj.size() != 0) {
          break label272;
        }
        bool1 = bool2;
        ae.at(bool1);
        ArrayList localArrayList = new ArrayList(localf.aHi);
        int k = localf.aHm.get();
        localArrayList = (ArrayList)localArrayList;
        int m = localArrayList.size();
        if (i >= m) {
          break label278;
        }
        Object localObject2 = localArrayList.get(i);
        int j = i + 1;
        localObject2 = (f.b)localObject2;
        if ((!localf.aHl) || (!localf.aHh.isConnected()) || (localf.aHm.get() != k)) {
          break label278;
        }
        i = j;
        if (localf.aHj.contains(localObject2)) {
          continue;
        }
        ((f.b)localObject2).h(paramBundle);
        i = j;
      }
      bool1 = false;
      break;
      label266:
      bool1 = false;
      continue;
      label272:
      bool1 = false;
    }
    label278:
    localf.aHj.clear();
    localf.aHn = false;
  }
  
  public final boolean isConnected()
  {
    return (this.aEy != null) && (this.aEy.isConnected());
  }
  
  final boolean nu()
  {
    if (!this.aEz) {
      return false;
    }
    this.aEz = false;
    this.aEC.removeMessages(2);
    this.aEC.removeMessages(1);
    if (this.aED != null)
    {
      this.aED.unregister();
      this.aED = null;
    }
    return true;
  }
  
  final boolean nv()
  {
    boolean bool1 = false;
    this.aDD.lock();
    try
    {
      Set localSet = this.aEJ;
      if (localSet == null) {
        return false;
      }
      boolean bool2 = this.aEJ.isEmpty();
      if (!bool2) {
        bool1 = true;
      }
      return bool1;
    }
    finally
    {
      this.aDD.unlock();
    }
  }
  
  final String nw()
  {
    StringWriter localStringWriter = new StringWriter();
    dump("", null, new PrintWriter(localStringWriter), null);
    return localStringWriter.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */