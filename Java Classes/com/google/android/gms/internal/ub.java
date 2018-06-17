package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.mediation.a;
import java.util.Date;
import java.util.Set;

public final class ub
  implements a
{
  private final Date ayH;
  private final Set<String> ayJ;
  private final boolean ayK;
  private final Location ayL;
  private final boolean bbF;
  private final int bbv;
  private final int bcT;
  
  public ub(Date paramDate, int paramInt1, Set<String> paramSet, Location paramLocation, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    this.ayH = paramDate;
    this.bbv = paramInt1;
    this.ayJ = paramSet;
    this.ayL = paramLocation;
    this.ayK = paramBoolean1;
    this.bcT = paramInt2;
    this.bbF = paramBoolean2;
  }
  
  public final Set<String> getKeywords()
  {
    return this.ayJ;
  }
  
  public final Date lW()
  {
    return this.ayH;
  }
  
  public final int lX()
  {
    return this.bbv;
  }
  
  public final Location lY()
  {
    return this.ayL;
  }
  
  public final int lZ()
  {
    return this.bcT;
  }
  
  public final boolean ma()
  {
    return this.ayK;
  }
  
  public final boolean mb()
  {
    return this.bbF;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */