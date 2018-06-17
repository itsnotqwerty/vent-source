package com.google.android.gms.common.api.internal;

import android.util.Log;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

final class c
  implements com.google.android.gms.c.a<Map<cb<?>, String>>
{
  private c(b paramb) {}
  
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
        this.aDP.aDL = new android.support.v4.g.a(this.aDP.aDz.size());
        parame = this.aDP.aDz.values().iterator();
        while (parame.hasNext())
        {
          localObject = (cs)parame.next();
          this.aDP.aDL.put(((com.google.android.gms.common.api.e)localObject).aCB, com.google.android.gms.common.a.aCh);
        }
      }
      if (!(parame.getException() instanceof com.google.android.gms.common.api.c)) {
        break label430;
      }
    }
    finally
    {
      this.aDP.aDD.unlock();
    }
    parame = (com.google.android.gms.common.api.c)parame.getException();
    if (this.aDP.aDI)
    {
      this.aDP.aDL = new android.support.v4.g.a(this.aDP.aDz.size());
      localObject = this.aDP.aDz.values().iterator();
      while (((Iterator)localObject).hasNext())
      {
        cs localcs = (cs)((Iterator)localObject).next();
        cb localcb = localcs.aCB;
        com.google.android.gms.common.a locala = parame.a(localcs);
        if (b.a(this.aDP, localcs, locala)) {
          this.aDP.aDL.put(localcb, new com.google.android.gms.common.a(16));
        } else {
          this.aDP.aDL.put(localcb, locala);
        }
      }
    }
    this.aDP.aDL = parame.aCy;
    this.aDP.aDO = b.a(this.aDP);
    if (this.aDP.aDM != null)
    {
      this.aDP.aDL.putAll(this.aDP.aDM);
      this.aDP.aDO = b.a(this.aDP);
    }
    if (this.aDP.aDO == null)
    {
      b.b(this.aDP);
      b.c(this.aDP);
    }
    for (;;)
    {
      this.aDP.aDF.signalAll();
      this.aDP.aDD.unlock();
      return;
      label430:
      Log.e("ConnectionlessGAC", "Unexpected availability exception", parame.getException());
      this.aDP.aDL = Collections.emptyMap();
      this.aDP.aDO = new com.google.android.gms.common.a(8);
      break;
      this.aDP.aDK = false;
      this.aDP.aDC.e(this.aDP.aDO);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */