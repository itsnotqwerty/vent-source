package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.ay;
import com.google.android.gms.common.m;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.mb;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;

final class cp
  implements aw
{
  private final Looper aCC;
  final Lock aDD;
  private final y aEU;
  final ad aGT;
  final ad aGU;
  private final Map<a.d<?>, ad> aGV;
  private final Set<Object> aGW = Collections.newSetFromMap(new WeakHashMap());
  private final a.f aGX;
  Bundle aGY;
  com.google.android.gms.common.a aGZ = null;
  com.google.android.gms.common.a aHa = null;
  boolean aHb = false;
  private int aHc = 0;
  private final Context mContext;
  
  private cp(Context paramContext, y paramy, Lock paramLock, Looper paramLooper, m paramm, Map<a.d<?>, a.f> paramMap1, Map<a.d<?>, a.f> paramMap2, ay paramay, a.b<? extends ma, mb> paramb, ArrayList<cn> paramArrayList1, ArrayList<cn> paramArrayList2, Map<com.google.android.gms.common.api.a<?>, Boolean> paramMap3, Map<com.google.android.gms.common.api.a<?>, Boolean> paramMap4)
  {
    this.mContext = paramContext;
    this.aEU = paramy;
    this.aDD = paramLock;
    this.aCC = paramLooper;
    this.aGX = null;
    this.aGT = new ad(paramContext, this.aEU, paramLock, paramLooper, paramm, paramMap2, null, paramMap4, null, paramArrayList2, new cq(this, (byte)0));
    this.aGU = new ad(paramContext, this.aEU, paramLock, paramLooper, paramm, paramMap1, paramay, paramMap3, paramb, paramArrayList1, new cr(this, (byte)0));
    paramContext = new android.support.v4.g.a();
    paramy = paramMap2.keySet().iterator();
    while (paramy.hasNext()) {
      paramContext.put((a.d)paramy.next(), this.aGT);
    }
    paramy = paramMap1.keySet().iterator();
    while (paramy.hasNext()) {
      paramContext.put((a.d)paramy.next(), this.aGU);
    }
    this.aGV = Collections.unmodifiableMap(paramContext);
  }
  
  public static cp a(Context paramContext, y paramy, Lock paramLock, Looper paramLooper, m paramm, Map<a.d<?>, a.f> paramMap, ay paramay, Map<com.google.android.gms.common.api.a<?>, Boolean> paramMap1, a.b<? extends ma, mb> paramb, ArrayList<cn> paramArrayList)
  {
    android.support.v4.g.a locala1 = new android.support.v4.g.a();
    android.support.v4.g.a locala2 = new android.support.v4.g.a();
    paramMap = paramMap.entrySet().iterator();
    Object localObject1;
    while (paramMap.hasNext())
    {
      localObject1 = (Map.Entry)paramMap.next();
      localObject2 = (a.f)((Map.Entry)localObject1).getValue();
      if (((a.f)localObject2).mX()) {
        locala1.put((a.d)((Map.Entry)localObject1).getKey(), localObject2);
      } else {
        locala2.put((a.d)((Map.Entry)localObject1).getKey(), localObject2);
      }
    }
    boolean bool;
    if (!locala1.isEmpty())
    {
      bool = true;
      ae.a(bool, "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
      paramMap = new android.support.v4.g.a();
      localObject1 = new android.support.v4.g.a();
      localObject2 = paramMap1.keySet().iterator();
    }
    Object localObject3;
    for (;;)
    {
      if (((Iterator)localObject2).hasNext())
      {
        localObject3 = (com.google.android.gms.common.api.a)((Iterator)localObject2).next();
        a.d locald = ((com.google.android.gms.common.api.a)localObject3).mU();
        if (locala1.containsKey(locald))
        {
          paramMap.put(localObject3, (Boolean)paramMap1.get(localObject3));
          continue;
          bool = false;
          break;
        }
        if (locala2.containsKey(locald)) {
          ((Map)localObject1).put(localObject3, (Boolean)paramMap1.get(localObject3));
        } else {
          throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
        }
      }
    }
    paramMap1 = new ArrayList();
    Object localObject2 = new ArrayList();
    paramArrayList = (ArrayList)paramArrayList;
    int j = paramArrayList.size();
    int i = 0;
    while (i < j)
    {
      localObject3 = paramArrayList.get(i);
      i += 1;
      localObject3 = (cn)localObject3;
      if (paramMap.containsKey(((cn)localObject3).aCz)) {
        paramMap1.add(localObject3);
      } else if (((Map)localObject1).containsKey(((cn)localObject3).aCz)) {
        ((ArrayList)localObject2).add(localObject3);
      } else {
        throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
      }
    }
    return new cp(paramContext, paramy, paramLock, paramLooper, paramm, locala1, locala2, paramay, paramb, paramMap1, (ArrayList)localObject2, paramMap, (Map)localObject1);
  }
  
  private final void i(com.google.android.gms.common.a parama)
  {
    switch (this.aHc)
    {
    default: 
      Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
    }
    for (;;)
    {
      this.aHc = 0;
      return;
      this.aEU.e(parama);
      nU();
    }
  }
  
  private static boolean j(com.google.android.gms.common.a parama)
  {
    return (parama != null) && (parama.mQ());
  }
  
  private final void nU()
  {
    Iterator localIterator = this.aGW.iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
    this.aGW.clear();
  }
  
  private final boolean nV()
  {
    return (this.aHa != null) && (this.aHa.aCj == 4);
  }
  
  public final <A extends a.c, T extends cg<? extends i, A>> T b(T paramT)
  {
    Object localObject = paramT.aGJ;
    ae.b(this.aGV.containsKey(localObject), "GoogleApiClient is not configured to use the API required for this call.");
    if (((ad)this.aGV.get(localObject)).equals(this.aGU))
    {
      if (nV())
      {
        if (this.aGX == null) {}
        for (localObject = null;; localObject = PendingIntent.getActivity(this.mContext, System.identityHashCode(this.aEU), this.aGX.mY(), 134217728))
        {
          paramT.g(new Status(4, null, (PendingIntent)localObject));
          return paramT;
        }
      }
      return this.aGU.b(paramT);
    }
    return this.aGT.b(paramT);
  }
  
  public final void connect()
  {
    this.aHc = 2;
    this.aHb = false;
    this.aHa = null;
    this.aGZ = null;
    this.aGT.connect();
    this.aGU.connect();
  }
  
  public final void disconnect()
  {
    this.aHa = null;
    this.aGZ = null;
    this.aHc = 0;
    this.aGT.disconnect();
    this.aGU.disconnect();
    nU();
  }
  
  public final void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.append(paramString).append("authClient").println(":");
    this.aGU.dump(String.valueOf(paramString).concat("  "), paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.append(paramString).append("anonClient").println(":");
    this.aGT.dump(String.valueOf(paramString).concat("  "), paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  /* Error */
  public final boolean isConnected()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_0
    //   3: getfield 64	com/google/android/gms/common/api/internal/cp:aDD	Ljava/util/concurrent/locks/Lock;
    //   6: invokeinterface 350 1 0
    //   11: aload_0
    //   12: getfield 80	com/google/android/gms/common/api/internal/cp:aGT	Lcom/google/android/gms/common/api/internal/ad;
    //   15: invokevirtual 352	com/google/android/gms/common/api/internal/ad:isConnected	()Z
    //   18: ifeq +47 -> 65
    //   21: iload_3
    //   22: istore_2
    //   23: aload_0
    //   24: getfield 85	com/google/android/gms/common/api/internal/cp:aGU	Lcom/google/android/gms/common/api/internal/ad;
    //   27: invokevirtual 352	com/google/android/gms/common/api/internal/ad:isConnected	()Z
    //   30: ifne +24 -> 54
    //   33: iload_3
    //   34: istore_2
    //   35: aload_0
    //   36: invokespecial 209	com/google/android/gms/common/api/internal/cp:nV	()Z
    //   39: ifne +15 -> 54
    //   42: aload_0
    //   43: getfield 58	com/google/android/gms/common/api/internal/cp:aHc	I
    //   46: istore_1
    //   47: iload_1
    //   48: iconst_1
    //   49: if_icmpne +16 -> 65
    //   52: iload_3
    //   53: istore_2
    //   54: aload_0
    //   55: getfield 64	com/google/android/gms/common/api/internal/cp:aDD	Ljava/util/concurrent/locks/Lock;
    //   58: invokeinterface 355 1 0
    //   63: iload_2
    //   64: ireturn
    //   65: iconst_0
    //   66: istore_2
    //   67: goto -13 -> 54
    //   70: astore 4
    //   72: aload_0
    //   73: getfield 64	com/google/android/gms/common/api/internal/cp:aDD	Ljava/util/concurrent/locks/Lock;
    //   76: invokeinterface 355 1 0
    //   81: aload 4
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	cp
    //   46	4	1	i	int
    //   22	45	2	bool1	boolean
    //   1	52	3	bool2	boolean
    //   70	12	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   11	21	70	finally
    //   23	33	70	finally
    //   35	47	70	finally
  }
  
  public final void nk()
  {
    this.aGT.nk();
    this.aGU.nk();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/cp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */