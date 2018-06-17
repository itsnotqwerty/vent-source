package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.a.a;
import com.google.android.gms.a.c;
import com.google.android.gms.ads.b.c.b;
import com.google.android.gms.ads.i;
import com.google.android.gms.ads.mediation.f;
import com.google.android.gms.ads.mediation.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class uf
  extends tv
{
  private final h bdb;
  
  public uf(h paramh)
  {
    this.bdb = paramh;
  }
  
  public final void b(a parama1, a parama2, a parama3)
  {
    c.a(parama2);
    c.a(parama3);
    c.a(parama1);
  }
  
  public final String getBody()
  {
    return this.bdb.aAg;
  }
  
  public final Bundle getExtras()
  {
    return this.bdb.getExtras();
  }
  
  public final pp getVideoController()
  {
    if (this.bdb.aAc != null) {
      return this.bdb.aAc.lz();
    }
    return null;
  }
  
  public final List lD()
  {
    Object localObject = this.bdb.aAf;
    if (localObject != null)
    {
      ArrayList localArrayList = new ArrayList();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        c.b localb = (c.b)((Iterator)localObject).next();
        localArrayList.add(new rc(localb.getDrawable(), localb.getUri(), localb.lB()));
      }
      return localArrayList;
    }
    return null;
  }
  
  public final String lN()
  {
    return this.bdb.aAe;
  }
  
  public final String lO()
  {
    return this.bdb.aAi;
  }
  
  public final String lP()
  {
    return this.bdb.aAn;
  }
  
  public final boolean mt()
  {
    return this.bdb.mt();
  }
  
  public final boolean mu()
  {
    return this.bdb.mu();
  }
  
  public final void t(a parama)
  {
    c.a(parama);
  }
  
  public final rf tM()
  {
    return null;
  }
  
  public final rj tN()
  {
    c.b localb = this.bdb.aAm;
    if (localb != null) {
      return new rc(localb.getDrawable(), localb.getUri(), localb.lB());
    }
    return null;
  }
  
  public final void tP() {}
  
  public final a tR()
  {
    return null;
  }
  
  public final a tZ()
  {
    View localView = this.bdb.mv();
    if (localView == null) {
      return null;
    }
    return c.Q(localView);
  }
  
  public final void u(a parama)
  {
    this.bdb.bn((View)c.a(parama));
  }
  
  public final a ua()
  {
    View localView = this.bdb.aAb;
    if (localView == null) {
      return null;
    }
    return c.Q(localView);
  }
  
  public final void v(a parama)
  {
    c.a(parama);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/uf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */