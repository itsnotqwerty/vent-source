package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.api.i;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

public final class w
  implements ac
{
  private final ad aDW;
  
  public w(ad paramad)
  {
    this.aDW = paramad;
  }
  
  public final void a(com.google.android.gms.common.a parama, com.google.android.gms.common.api.a<?> parama1, boolean paramBoolean) {}
  
  public final <A extends a.c, T extends cg<? extends i, A>> T b(T paramT)
  {
    throw new IllegalStateException("GoogleApiClient is not connected yet.");
  }
  
  public final void begin()
  {
    Iterator localIterator = this.aDW.aEE.values().iterator();
    while (localIterator.hasNext()) {
      ((a.f)localIterator.next()).disconnect();
    }
    this.aDW.aEU.aEF = Collections.emptySet();
  }
  
  public final void cG(int paramInt) {}
  
  public final void connect()
  {
    ad localad = this.aDW;
    localad.aDD.lock();
    try
    {
      localad.aER = new l(localad, localad.aDG, localad.aDB, localad.aDE, localad.aCV, localad.aDD, localad.mContext);
      localad.aER.begin();
      localad.aEO.signalAll();
      return;
    }
    finally
    {
      localad.aDD.unlock();
    }
  }
  
  public final boolean disconnect()
  {
    return true;
  }
  
  public final void h(Bundle paramBundle) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */