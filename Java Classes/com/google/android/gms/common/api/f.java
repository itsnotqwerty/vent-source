package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.view.View;
import com.google.android.gms.common.api.internal.bt;
import com.google.android.gms.common.api.internal.cc;
import com.google.android.gms.common.api.internal.cg;
import com.google.android.gms.common.api.internal.cn;
import com.google.android.gms.common.api.internal.y;
import com.google.android.gms.common.c;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.ba;
import com.google.android.gms.internal.lx;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.mb;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;

public abstract class f
{
  private static final Set<f> aCH = Collections.newSetFromMap(new WeakHashMap());
  
  public <C extends a.f> C a(a.d<C> paramd)
  {
    throw new UnsupportedOperationException();
  }
  
  public abstract void a(b paramb);
  
  public abstract void a(c paramc);
  
  public void a(bt parambt)
  {
    throw new UnsupportedOperationException();
  }
  
  public <A extends a.c, T extends cg<? extends i, A>> T b(T paramT)
  {
    throw new UnsupportedOperationException();
  }
  
  public abstract void b(c paramc);
  
  public void b(bt parambt)
  {
    throw new UnsupportedOperationException();
  }
  
  public void cF(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public abstract void connect();
  
  public abstract void disconnect();
  
  public abstract void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
  
  public Looper getLooper()
  {
    throw new UnsupportedOperationException();
  }
  
  public abstract boolean isConnected();
  
  public static final class a
  {
    private Looper aCC;
    private Account aCI;
    private final Set<Scope> aCJ = new HashSet();
    private final Set<Scope> aCK = new HashSet();
    private int aCL;
    private View aCM;
    private String aCN;
    private String aCO;
    private final Map<a<?>, ba> aCP = new android.support.v4.g.a();
    private final Map<a<?>, a.a> aCQ = new android.support.v4.g.a();
    private com.google.android.gms.common.api.internal.ay aCR;
    private int aCS = -1;
    private f.c aCT;
    private c aCU = c.mR();
    private a.b<? extends ma, mb> aCV = lx.aYV;
    private final ArrayList<f.b> aCW = new ArrayList();
    private final ArrayList<f.c> aCX = new ArrayList();
    private boolean aCY = false;
    private final Context mContext;
    
    public a(Context paramContext)
    {
      this.mContext = paramContext;
      this.aCC = paramContext.getMainLooper();
      this.aCN = paramContext.getPackageName();
      this.aCO = paramContext.getClass().getName();
    }
    
    public final a a(a<? extends a.a.d> parama)
    {
      ae.g(parama, "Api must not be null");
      this.aCQ.put(parama, null);
      parama = Collections.emptyList();
      this.aCK.addAll(parama);
      this.aCJ.addAll(parama);
      return this;
    }
    
    public final a b(f.b paramb)
    {
      ae.g(paramb, "Listener must not be null");
      this.aCW.add(paramb);
      return this;
    }
    
    public final a c(f.c paramc)
    {
      ae.g(paramc, "Listener must not be null");
      this.aCX.add(paramc);
      return this;
    }
    
    public final f nc()
    {
      android.support.v4.g.a locala1;
      android.support.v4.g.a locala2;
      ArrayList localArrayList;
      label141:
      a locala;
      Object localObject4;
      if (!this.aCQ.isEmpty())
      {
        bool = true;
        ae.b(bool, "must call addApi() to add at least one API");
        ??? = mb.aZb;
        if (this.aCQ.containsKey(lx.aYZ)) {
          ??? = (mb)this.aCQ.get(lx.aYZ);
        }
        ??? = new com.google.android.gms.common.internal.ay(this.aCI, this.aCJ, this.aCP, this.aCL, this.aCM, this.aCN, this.aCO, (mb)???);
        localObject2 = ((com.google.android.gms.common.internal.ay)???).aIx;
        locala1 = new android.support.v4.g.a();
        locala2 = new android.support.v4.g.a();
        localArrayList = new ArrayList();
        Iterator localIterator = this.aCQ.keySet().iterator();
        if (!localIterator.hasNext()) {
          break label277;
        }
        locala = (a)localIterator.next();
        localObject4 = this.aCQ.get(locala);
        if (((Map)localObject2).get(locala) == null) {
          break label272;
        }
      }
      label272:
      for (boolean bool = true;; bool = false)
      {
        locala1.put(locala, Boolean.valueOf(bool));
        cn localcn = new cn(locala, bool);
        localArrayList.add(localcn);
        localObject4 = locala.mT().a(this.mContext, this.aCC, (com.google.android.gms.common.internal.ay)???, localObject4, localcn, localcn);
        locala2.put(locala.mU(), localObject4);
        break label141;
        bool = false;
        break;
      }
      label277:
      int i = y.e(locala2.values());
      Object localObject2 = new y(this.mContext, new ReentrantLock(), this.aCC, (com.google.android.gms.common.internal.ay)???, this.aCU, this.aCV, locala1, this.aCW, this.aCX, locala2, this.aCS, i, localArrayList);
      synchronized (f.nb())
      {
        f.nb().add(localObject2);
        if (this.aCS >= 0) {
          cc.a(this.aCR).a(this.aCS, (f)localObject2, this.aCT);
        }
        return (f)localObject2;
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void cG(int paramInt);
    
    public abstract void h(Bundle paramBundle);
  }
  
  public static abstract interface c
  {
    public abstract void a(com.google.android.gms.common.a parama);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */