package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.api.c;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

final class d
  implements com.google.android.gms.c.a<Map<cb<?>, String>>
{
  public final void a(com.google.android.gms.c.e<Map<cb<?>, String>> parame)
  {
    this.aDP.aDD.lock();
    Object localObject;
    try
    {
      boolean bool = this.aDP.aDK;
      if (!bool) {
        return;
      }
      if (parame.isSuccessful())
      {
        this.aDP.aDM = new android.support.v4.g.a(this.aDP.aDA.size());
        parame = this.aDP.aDA.values().iterator();
        while (parame.hasNext())
        {
          localObject = (cs)parame.next();
          this.aDP.aDM.put(((com.google.android.gms.common.api.e)localObject).aCB, com.google.android.gms.common.a.aCh);
        }
      }
      if (!(parame.getException() instanceof c)) {
        break label402;
      }
    }
    finally
    {
      this.aDP.aDD.unlock();
    }
    parame = (c)parame.getException();
    if (this.aDP.aDI)
    {
      this.aDP.aDM = new android.support.v4.g.a(this.aDP.aDA.size());
      localObject = this.aDP.aDA.values().iterator();
      while (((Iterator)localObject).hasNext())
      {
        cs localcs = (cs)((Iterator)localObject).next();
        cb localcb = localcs.aCB;
        com.google.android.gms.common.a locala = parame.a(localcs);
        if (b.a(this.aDP, localcs, locala)) {
          this.aDP.aDM.put(localcb, new com.google.android.gms.common.a(16));
        } else {
          this.aDP.aDM.put(localcb, locala);
        }
      }
    }
    for (this.aDP.aDM = parame.aCy;; this.aDP.aDM = Collections.emptyMap())
    {
      if (this.aDP.isConnected())
      {
        this.aDP.aDL.putAll(this.aDP.aDM);
        if (b.a(this.aDP) == null)
        {
          b.b(this.aDP);
          b.c(this.aDP);
          this.aDP.aDF.signalAll();
        }
      }
      this.aDP.aDD.unlock();
      return;
      label402:
      Log.e("ConnectionlessGAC", "Unexpected availability exception", parame.getException());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */