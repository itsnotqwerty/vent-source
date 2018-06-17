package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.aj;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class i
  implements ac
{
  final ad aDW;
  boolean aDX = false;
  
  public i(ad paramad)
  {
    this.aDW = paramad;
  }
  
  public final void a(com.google.android.gms.common.a parama, com.google.android.gms.common.api.a<?> parama1, boolean paramBoolean) {}
  
  public final <A extends a.c, T extends cg<? extends com.google.android.gms.common.api.i, A>> T b(T paramT)
  {
    try
    {
      this.aDW.aEU.aEK.b(paramT);
      Object localObject1 = this.aDW.aEU;
      Object localObject2 = paramT.aGJ;
      localObject2 = (a.f)((y)localObject1).aEE.get(localObject2);
      ae.g(localObject2, "Appropriate Api was not requested.");
      if ((!((a.f)localObject2).isConnected()) && (this.aDW.aEQ.containsKey(paramT.aGJ)))
      {
        paramT.g(new Status(17));
        return paramT;
      }
      localObject1 = localObject2;
      if ((localObject2 instanceof aj)) {
        localObject1 = aj.ol();
      }
      paramT.a((a.c)localObject1);
      return paramT;
    }
    catch (DeadObjectException localDeadObjectException)
    {
      this.aDW.a(new j(this, this));
    }
    return paramT;
  }
  
  public final void begin() {}
  
  public final void cG(int paramInt)
  {
    this.aDW.f(null);
    this.aDW.aEV.h(paramInt, this.aDX);
  }
  
  public final void connect()
  {
    if (this.aDX)
    {
      this.aDX = false;
      this.aDW.a(new k(this, this));
    }
  }
  
  public final boolean disconnect()
  {
    if (this.aDX) {
      return false;
    }
    if (this.aDW.aEU.nv())
    {
      this.aDX = true;
      Iterator localIterator = this.aDW.aEU.aEJ.iterator();
      while (localIterator.hasNext()) {
        ((bt)localIterator.next()).aGg = null;
      }
      return false;
    }
    this.aDW.f(null);
    return true;
  }
  
  public final void h(Bundle paramBundle) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */