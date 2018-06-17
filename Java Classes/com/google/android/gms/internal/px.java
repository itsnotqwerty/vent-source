package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.d.a;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import java.util.Set;

public final class px
{
  final Date ayH;
  final Set<String> ayJ;
  final Location ayL;
  final boolean azG;
  final a bbA;
  final int bbB;
  final Set<String> bbC;
  final Bundle bbD;
  final Set<String> bbE;
  final boolean bbF;
  final String bbu;
  final int bbv;
  final Bundle bbw;
  public final Map<Class<? extends Object>, Object> bbx;
  final String bby;
  final String bbz;
  
  public px(py parampy)
  {
    this(parampy, (byte)0);
  }
  
  private px(py parampy, byte paramByte)
  {
    this.ayH = parampy.ayH;
    this.bbu = parampy.bbu;
    this.bbv = parampy.bbv;
    this.ayJ = Collections.unmodifiableSet(parampy.bbG);
    this.ayL = parampy.ayL;
    this.azG = parampy.azG;
    this.bbw = parampy.bbw;
    this.bbx = Collections.unmodifiableMap(parampy.bbH);
    this.bby = parampy.bby;
    this.bbz = parampy.bbz;
    this.bbA = null;
    this.bbB = parampy.bbB;
    this.bbC = Collections.unmodifiableSet(parampy.bbI);
    this.bbD = parampy.bbD;
    this.bbE = Collections.unmodifiableSet(parampy.bbJ);
    this.bbF = parampy.bbF;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/px.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */