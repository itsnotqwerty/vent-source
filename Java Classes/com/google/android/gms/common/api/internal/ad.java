package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.internal.ay;
import com.google.android.gms.common.m;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.mb;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

public final class ad
  implements aw, co
{
  a.b<? extends ma, mb> aCV;
  Map<com.google.android.gms.common.api.a<?>, Boolean> aDB;
  final Lock aDD;
  final m aDE;
  ay aDG;
  final Map<a.d<?>, a.f> aEE;
  final Condition aEO;
  final af aEP;
  final Map<a.d<?>, com.google.android.gms.common.a> aEQ = new HashMap();
  volatile ac aER;
  private com.google.android.gms.common.a aES = null;
  int aET;
  final y aEU;
  final ax aEV;
  final Context mContext;
  
  public ad(Context paramContext, y paramy, Lock paramLock, Looper paramLooper, m paramm, Map<a.d<?>, a.f> paramMap, ay paramay, Map<com.google.android.gms.common.api.a<?>, Boolean> paramMap1, a.b<? extends ma, mb> paramb, ArrayList<cn> paramArrayList, ax paramax)
  {
    this.mContext = paramContext;
    this.aDD = paramLock;
    this.aDE = paramm;
    this.aEE = paramMap;
    this.aDG = paramay;
    this.aDB = paramMap1;
    this.aCV = paramb;
    this.aEU = paramy;
    this.aEV = paramax;
    paramContext = (ArrayList)paramArrayList;
    int j = paramContext.size();
    int i = 0;
    while (i < j)
    {
      paramy = paramContext.get(i);
      i += 1;
      ((cn)paramy).aGS = this;
    }
    this.aEP = new af(this, paramLooper);
    this.aEO = paramLock.newCondition();
    this.aER = new w(this);
  }
  
  public final void a(com.google.android.gms.common.a parama, com.google.android.gms.common.api.a<?> parama1, boolean paramBoolean)
  {
    this.aDD.lock();
    try
    {
      this.aER.a(parama, parama1, paramBoolean);
      return;
    }
    finally
    {
      this.aDD.unlock();
    }
  }
  
  final void a(ae paramae)
  {
    paramae = this.aEP.obtainMessage(1, paramae);
    this.aEP.sendMessage(paramae);
  }
  
  public final <A extends a.c, T extends cg<? extends com.google.android.gms.common.api.i, A>> T b(T paramT)
  {
    paramT.ni();
    return this.aER.b(paramT);
  }
  
  public final void cG(int paramInt)
  {
    this.aDD.lock();
    try
    {
      this.aER.cG(paramInt);
      return;
    }
    finally
    {
      this.aDD.unlock();
    }
  }
  
  public final void connect()
  {
    this.aER.connect();
  }
  
  public final void disconnect()
  {
    if (this.aER.disconnect()) {
      this.aEQ.clear();
    }
  }
  
  public final void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramFileDescriptor = String.valueOf(paramString).concat("  ");
    paramPrintWriter.append(paramString).append("mState=").println(this.aER);
    paramArrayOfString = this.aDB.keySet().iterator();
    while (paramArrayOfString.hasNext())
    {
      com.google.android.gms.common.api.a locala = (com.google.android.gms.common.api.a)paramArrayOfString.next();
      paramPrintWriter.append(paramString).append(locala.mName).println(":");
      ((a.f)this.aEE.get(locala.mU())).a(paramFileDescriptor, paramPrintWriter);
    }
  }
  
  final void f(com.google.android.gms.common.a parama)
  {
    this.aDD.lock();
    try
    {
      this.aES = parama;
      this.aER = new w(this);
      this.aER.begin();
      this.aEO.signalAll();
      return;
    }
    finally
    {
      this.aDD.unlock();
    }
  }
  
  public final void h(Bundle paramBundle)
  {
    this.aDD.lock();
    try
    {
      this.aER.h(paramBundle);
      return;
    }
    finally
    {
      this.aDD.unlock();
    }
  }
  
  public final boolean isConnected()
  {
    return this.aER instanceof i;
  }
  
  public final void nk()
  {
    if (isConnected())
    {
      i locali = (i)this.aER;
      if (locali.aDX)
      {
        locali.aDX = false;
        locali.aDW.aEU.aEK.release();
        locali.disconnect();
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */