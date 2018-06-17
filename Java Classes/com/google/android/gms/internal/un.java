package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.a.a;
import com.google.android.gms.a.c;
import com.google.android.gms.ads.b.c.b;
import com.google.android.gms.ads.i;
import com.google.android.gms.ads.mediation.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class un
  extends ty
{
  private final k bdl;
  
  public un(k paramk)
  {
    this.bdl = paramk;
  }
  
  public final void b(a parama1, a parama2, a parama3)
  {
    c.a(parama2);
    c.a(parama3);
    this.bdl.bo((View)c.a(parama1));
  }
  
  public final String getBody()
  {
    return this.bdl.body;
  }
  
  public final Bundle getExtras()
  {
    return this.bdl.extras;
  }
  
  public final pp getVideoController()
  {
    if (this.bdl.aAC != null) {
      return this.bdl.aAC.lz();
    }
    return null;
  }
  
  public final List lD()
  {
    Object localObject = this.bdl.aAv;
    ArrayList localArrayList = new ArrayList();
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        c.b localb = (c.b)((Iterator)localObject).next();
        localArrayList.add(new rc(localb.getDrawable(), localb.getUri(), localb.lB()));
      }
    }
    return localArrayList;
  }
  
  public final String lN()
  {
    return this.bdl.aAu;
  }
  
  public final String lO()
  {
    return this.bdl.aAx;
  }
  
  public final String lP()
  {
    return this.bdl.aAy;
  }
  
  public final String lQ()
  {
    return this.bdl.aAA;
  }
  
  public final String lR()
  {
    return this.bdl.aAB;
  }
  
  public final boolean mt()
  {
    return this.bdl.aAE;
  }
  
  public final boolean mu()
  {
    return this.bdl.aAF;
  }
  
  public final void t(a parama)
  {
    c.a(parama);
  }
  
  public final rj tK()
  {
    c.b localb = this.bdl.aAw;
    if (localb != null) {
      return new rc(localb.getDrawable(), localb.getUri(), localb.lB());
    }
    return null;
  }
  
  public final double tL()
  {
    if (this.bdl.aAz != null) {
      return this.bdl.aAz.doubleValue();
    }
    return -1.0D;
  }
  
  public final rf tM()
  {
    return null;
  }
  
  public final void tP() {}
  
  public final a tR()
  {
    Object localObject = this.bdl.aAD;
    if (localObject == null) {
      return null;
    }
    return c.Q(localObject);
  }
  
  public final a tZ()
  {
    return null;
  }
  
  public final a ua()
  {
    return null;
  }
  
  public final void v(a parama)
  {
    c.a(parama);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/un.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */