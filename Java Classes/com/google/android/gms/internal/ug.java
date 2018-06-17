package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.b.d;
import com.google.android.gms.ads.b.d.a;
import com.google.android.gms.ads.j;
import com.google.android.gms.ads.mediation.i;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ug
  implements i
{
  private final Date ayH;
  private final Set<String> ayJ;
  private final boolean ayK;
  private final Location ayL;
  private final boolean bbF;
  private final int bbv;
  private final int bcT;
  private final rd bdc;
  private final List<String> bdd;
  private final Map<String, Boolean> bde;
  
  public ug(Date paramDate, int paramInt1, Set<String> paramSet, Location paramLocation, boolean paramBoolean1, int paramInt2, rd paramrd, List<String> paramList, boolean paramBoolean2)
  {
    this.ayH = paramDate;
    this.bbv = paramInt1;
    this.ayJ = paramSet;
    this.ayL = paramLocation;
    this.ayK = paramBoolean1;
    this.bcT = paramInt2;
    this.bdc = paramrd;
    this.bbF = paramBoolean2;
    this.bdd = new ArrayList();
    this.bde = new HashMap();
    if (paramList != null)
    {
      paramDate = paramList.iterator();
      while (paramDate.hasNext())
      {
        paramSet = (String)paramDate.next();
        if (paramSet.startsWith("custom:"))
        {
          paramSet = paramSet.split(":", 3);
          if (paramSet.length == 3) {
            if ("true".equals(paramSet[2])) {
              this.bde.put(paramSet[1], Boolean.valueOf(true));
            } else if ("false".equals(paramSet[2])) {
              this.bde.put(paramSet[1], Boolean.valueOf(false));
            }
          }
        }
        else
        {
          this.bdd.add(paramSet);
        }
      }
    }
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
  
  public final boolean mA()
  {
    return (this.bdd != null) && (this.bdd.contains("3"));
  }
  
  public final Map<String, Boolean> mB()
  {
    return this.bde;
  }
  
  public final boolean ma()
  {
    return this.ayK;
  }
  
  public final boolean mb()
  {
    return this.bbF;
  }
  
  public final d mw()
  {
    if (this.bdc == null) {
      return null;
    }
    d.a locala = new d.a();
    locala.azw = this.bdc.bct;
    locala.azx = this.bdc.bcu;
    locala.azy = this.bdc.bcv;
    if (this.bdc.versionCode >= 2) {
      locala.azz = this.bdc.bcw;
    }
    if ((this.bdc.versionCode >= 3) && (this.bdc.bcx != null)) {
      locala.azA = new j(this.bdc.bcx);
    }
    return new d(locala, (byte)0);
  }
  
  public final boolean mx()
  {
    return (this.bdd != null) && (this.bdd.contains("2"));
  }
  
  public final boolean my()
  {
    return (this.bdd != null) && (this.bdd.contains("6"));
  }
  
  public final boolean mz()
  {
    return (this.bdd != null) && (this.bdd.contains("1"));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ug.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */