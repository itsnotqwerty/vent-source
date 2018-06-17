package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.f.b;
import com.google.android.gms.common.api.f.c;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.internal.ay;
import com.google.android.gms.common.m;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.mb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

public final class l
  implements ac
{
  private final a.b<? extends ma, mb> aCV;
  private final Map<com.google.android.gms.common.api.a<?>, Boolean> aDB;
  final Lock aDD;
  private final m aDE;
  final ay aDG;
  private com.google.android.gms.common.a aDO;
  final ad aDW;
  private int aDZ;
  private int aEa = 0;
  private int aEb;
  private final Bundle aEc = new Bundle();
  private final Set<a.d> aEd = new HashSet();
  ma aEe;
  private boolean aEf;
  boolean aEg;
  boolean aEh;
  com.google.android.gms.common.internal.n aEi;
  boolean aEj;
  boolean aEk;
  private ArrayList<Future<?>> aEl = new ArrayList();
  final Context mContext;
  
  public l(ad paramad, ay paramay, Map<com.google.android.gms.common.api.a<?>, Boolean> paramMap, m paramm, a.b<? extends ma, mb> paramb, Lock paramLock, Context paramContext)
  {
    this.aDW = paramad;
    this.aDG = paramay;
    this.aDB = paramMap;
    this.aDE = paramm;
    this.aCV = paramb;
    this.aDD = paramLock;
    this.mContext = paramContext;
  }
  
  private final void ar(boolean paramBoolean)
  {
    if (this.aEe != null)
    {
      if ((this.aEe.isConnected()) && (paramBoolean)) {
        this.aEe.sE();
      }
      this.aEe.disconnect();
      this.aEi = null;
    }
  }
  
  private static String cI(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "UNKNOWN";
    case 0: 
      return "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
    }
    return "STEP_GETTING_REMOTE_SERVICE";
  }
  
  /* Error */
  private final void nq()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 70	com/google/android/gms/common/api/internal/l:aDW	Lcom/google/android/gms/common/api/internal/ad;
    //   4: astore_1
    //   5: aload_1
    //   6: getfield 115	com/google/android/gms/common/api/internal/ad:aDD	Ljava/util/concurrent/locks/Lock;
    //   9: invokeinterface 120 1 0
    //   14: aload_1
    //   15: getfield 124	com/google/android/gms/common/api/internal/ad:aEU	Lcom/google/android/gms/common/api/internal/y;
    //   18: invokevirtual 129	com/google/android/gms/common/api/internal/y:nu	()Z
    //   21: pop
    //   22: aload_1
    //   23: new 131	com/google/android/gms/common/api/internal/i
    //   26: dup
    //   27: aload_1
    //   28: invokespecial 134	com/google/android/gms/common/api/internal/i:<init>	(Lcom/google/android/gms/common/api/internal/ad;)V
    //   31: putfield 138	com/google/android/gms/common/api/internal/ad:aER	Lcom/google/android/gms/common/api/internal/ac;
    //   34: aload_1
    //   35: getfield 138	com/google/android/gms/common/api/internal/ad:aER	Lcom/google/android/gms/common/api/internal/ac;
    //   38: invokeinterface 141 1 0
    //   43: aload_1
    //   44: getfield 145	com/google/android/gms/common/api/internal/ad:aEO	Ljava/util/concurrent/locks/Condition;
    //   47: invokeinterface 150 1 0
    //   52: aload_1
    //   53: getfield 115	com/google/android/gms/common/api/internal/ad:aDD	Ljava/util/concurrent/locks/Lock;
    //   56: invokeinterface 153 1 0
    //   61: invokestatic 159	com/google/android/gms/common/api/internal/ag:ny	()Ljava/util/concurrent/ExecutorService;
    //   64: new 161	com/google/android/gms/common/api/internal/m
    //   67: dup
    //   68: aload_0
    //   69: invokespecial 164	com/google/android/gms/common/api/internal/m:<init>	(Lcom/google/android/gms/common/api/internal/l;)V
    //   72: invokeinterface 170 2 0
    //   77: aload_0
    //   78: getfield 89	com/google/android/gms/common/api/internal/l:aEe	Lcom/google/android/gms/internal/ma;
    //   81: ifnull +32 -> 113
    //   84: aload_0
    //   85: getfield 172	com/google/android/gms/common/api/internal/l:aEj	Z
    //   88: ifeq +20 -> 108
    //   91: aload_0
    //   92: getfield 89	com/google/android/gms/common/api/internal/l:aEe	Lcom/google/android/gms/internal/ma;
    //   95: aload_0
    //   96: getfield 103	com/google/android/gms/common/api/internal/l:aEi	Lcom/google/android/gms/common/internal/n;
    //   99: aload_0
    //   100: getfield 174	com/google/android/gms/common/api/internal/l:aEk	Z
    //   103: invokeinterface 178 3 0
    //   108: aload_0
    //   109: iconst_0
    //   110: invokespecial 180	com/google/android/gms/common/api/internal/l:ar	(Z)V
    //   113: aload_0
    //   114: getfield 70	com/google/android/gms/common/api/internal/l:aDW	Lcom/google/android/gms/common/api/internal/ad;
    //   117: getfield 183	com/google/android/gms/common/api/internal/ad:aEQ	Ljava/util/Map;
    //   120: invokeinterface 189 1 0
    //   125: invokeinterface 195 1 0
    //   130: astore_1
    //   131: aload_1
    //   132: invokeinterface 200 1 0
    //   137: ifeq +49 -> 186
    //   140: aload_1
    //   141: invokeinterface 204 1 0
    //   146: checkcast 206	com/google/android/gms/common/api/a$d
    //   149: astore_2
    //   150: aload_0
    //   151: getfield 70	com/google/android/gms/common/api/internal/l:aDW	Lcom/google/android/gms/common/api/internal/ad;
    //   154: getfield 209	com/google/android/gms/common/api/internal/ad:aEE	Ljava/util/Map;
    //   157: aload_2
    //   158: invokeinterface 213 2 0
    //   163: checkcast 215	com/google/android/gms/common/api/a$f
    //   166: invokeinterface 216 1 0
    //   171: goto -40 -> 131
    //   174: astore_2
    //   175: aload_1
    //   176: getfield 115	com/google/android/gms/common/api/internal/ad:aDD	Ljava/util/concurrent/locks/Lock;
    //   179: invokeinterface 153 1 0
    //   184: aload_2
    //   185: athrow
    //   186: aload_0
    //   187: getfield 58	com/google/android/gms/common/api/internal/l:aEc	Landroid/os/Bundle;
    //   190: invokevirtual 219	android/os/Bundle:isEmpty	()Z
    //   193: ifeq +19 -> 212
    //   196: aconst_null
    //   197: astore_1
    //   198: aload_0
    //   199: getfield 70	com/google/android/gms/common/api/internal/l:aDW	Lcom/google/android/gms/common/api/internal/ad;
    //   202: getfield 223	com/google/android/gms/common/api/internal/ad:aEV	Lcom/google/android/gms/common/api/internal/ax;
    //   205: aload_1
    //   206: invokeinterface 229 2 0
    //   211: return
    //   212: aload_0
    //   213: getfield 58	com/google/android/gms/common/api/internal/l:aEc	Landroid/os/Bundle;
    //   216: astore_1
    //   217: goto -19 -> 198
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	220	0	this	l
    //   4	213	1	localObject1	Object
    //   149	9	2	locald	a.d
    //   174	11	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   14	52	174	finally
  }
  
  private final void ns()
  {
    ArrayList localArrayList = (ArrayList)this.aEl;
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      Object localObject = localArrayList.get(i);
      i += 1;
      ((Future)localObject).cancel(true);
    }
    this.aEl.clear();
  }
  
  public final void a(com.google.android.gms.common.a parama, com.google.android.gms.common.api.a<?> parama1, boolean paramBoolean)
  {
    if (!cH(1)) {}
    do
    {
      return;
      b(parama, parama1, paramBoolean);
    } while (!no());
    nq();
  }
  
  public final <A extends a.c, T extends cg<? extends i, A>> T b(T paramT)
  {
    throw new IllegalStateException("GoogleApiClient is not connected yet.");
  }
  
  final void b(com.google.android.gms.common.a parama, com.google.android.gms.common.api.a<?> parama1, boolean paramBoolean)
  {
    int j = 1;
    if (paramBoolean)
    {
      if (parama.mP())
      {
        i = 1;
        if (i == 0) {
          break label105;
        }
      }
    }
    else
    {
      i = j;
      if (this.aDO != null) {
        if (Integer.MAX_VALUE >= this.aDZ) {
          break label105;
        }
      }
    }
    label105:
    for (int i = j;; i = 0)
    {
      if (i != 0)
      {
        this.aDO = parama;
        this.aDZ = Integer.MAX_VALUE;
      }
      this.aDW.aEQ.put(parama1.mU(), parama);
      return;
      if (m.cN(parama.aCj) != null)
      {
        i = 1;
        break;
      }
      i = 0;
      break;
    }
  }
  
  final boolean b(com.google.android.gms.common.a parama)
  {
    return (this.aEf) && (!parama.mP());
  }
  
  public final void begin()
  {
    this.aDW.aEQ.clear();
    this.aEg = false;
    this.aDO = null;
    this.aEa = 0;
    this.aEf = true;
    this.aEh = false;
    this.aEj = false;
    HashMap localHashMap = new HashMap();
    Object localObject = this.aDB.keySet().iterator();
    if (((Iterator)localObject).hasNext())
    {
      com.google.android.gms.common.api.a locala = (com.google.android.gms.common.api.a)((Iterator)localObject).next();
      a.f localf = (a.f)this.aDW.aEE.get(locala.mU());
      boolean bool = ((Boolean)this.aDB.get(locala)).booleanValue();
      if (localf.mX())
      {
        this.aEg = true;
        if (!bool) {
          break label182;
        }
        this.aEd.add(locala.mU());
      }
      for (;;)
      {
        localHashMap.put(localf, new n(this, locala, bool));
        break;
        label182:
        this.aEf = false;
      }
    }
    if (this.aEg)
    {
      this.aDG.aIz = Integer.valueOf(System.identityHashCode(this.aDW.aEU));
      localObject = new u(this, (byte)0);
      this.aEe = ((ma)this.aCV.a(this.mContext, this.aDW.aEU.getLooper(), this.aDG, this.aDG.aIy, (f.b)localObject, (f.c)localObject));
    }
    this.aEb = this.aDW.aEE.size();
    this.aEl.add(ag.ny().submit(new o(this, localHashMap)));
  }
  
  final void c(com.google.android.gms.common.a parama)
  {
    ns();
    if (!parama.mP()) {}
    for (boolean bool = true;; bool = false)
    {
      ar(bool);
      this.aDW.f(parama);
      this.aDW.aEV.e(parama);
      return;
    }
  }
  
  public final void cG(int paramInt)
  {
    c(new com.google.android.gms.common.a(8, null));
  }
  
  final boolean cH(int paramInt)
  {
    if (this.aEa != paramInt)
    {
      Log.w("GoogleApiClientConnecting", this.aDW.aEU.nw());
      String str1 = String.valueOf(this);
      Log.w("GoogleApiClientConnecting", String.valueOf(str1).length() + 23 + "Unexpected callback in " + str1);
      int i = this.aEb;
      Log.w("GoogleApiClientConnecting", 33 + "mRemainingConnections=" + i);
      str1 = cI(this.aEa);
      String str2 = cI(paramInt);
      Log.wtf("GoogleApiClientConnecting", String.valueOf(str1).length() + 70 + String.valueOf(str2).length() + "GoogleApiClient connecting is in step " + str1 + " but received callback for step " + str2, new Exception());
      c(new com.google.android.gms.common.a(8, null));
      return false;
    }
    return true;
  }
  
  public final void connect() {}
  
  public final boolean disconnect()
  {
    ns();
    ar(true);
    this.aDW.f(null);
    return true;
  }
  
  public final void h(Bundle paramBundle)
  {
    if (!cH(1)) {}
    do
    {
      return;
      if (paramBundle != null) {
        this.aEc.putAll(paramBundle);
      }
    } while (!no());
    nq();
  }
  
  final boolean no()
  {
    this.aEb -= 1;
    if (this.aEb > 0) {
      return false;
    }
    if (this.aEb < 0)
    {
      Log.w("GoogleApiClientConnecting", this.aDW.aEU.nw());
      Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
      c(new com.google.android.gms.common.a(8, null));
      return false;
    }
    if (this.aDO != null)
    {
      this.aDW.aET = this.aDZ;
      c(this.aDO);
      return false;
    }
    return true;
  }
  
  final void np()
  {
    if (this.aEb != 0) {}
    ArrayList localArrayList;
    do
    {
      do
      {
        return;
      } while ((this.aEg) && (!this.aEh));
      localArrayList = new ArrayList();
      this.aEa = 1;
      this.aEb = this.aDW.aEE.size();
      Iterator localIterator = this.aDW.aEE.keySet().iterator();
      while (localIterator.hasNext())
      {
        a.d locald = (a.d)localIterator.next();
        if (this.aDW.aEQ.containsKey(locald))
        {
          if (no()) {
            nq();
          }
        }
        else {
          localArrayList.add((a.f)this.aDW.aEE.get(locald));
        }
      }
    } while (localArrayList.isEmpty());
    this.aEl.add(ag.ny().submit(new r(this, localArrayList)));
  }
  
  final void nr()
  {
    this.aEg = false;
    this.aDW.aEU.aEF = Collections.emptySet();
    Iterator localIterator = this.aEd.iterator();
    while (localIterator.hasNext())
    {
      a.d locald = (a.d)localIterator.next();
      if (!this.aDW.aEQ.containsKey(locald)) {
        this.aDW.aEQ.put(locald, new com.google.android.gms.common.a(17, null));
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */