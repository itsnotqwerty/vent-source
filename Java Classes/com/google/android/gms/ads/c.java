package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.b;
import com.google.android.gms.internal.px;
import com.google.android.gms.internal.py;
import java.util.HashSet;

public final class c
{
  public final px ayZ;
  
  private c(a parama)
  {
    this.ayZ = new px(parama.aza);
  }
  
  public static final class a
  {
    public final py aza = new py();
    
    public a()
    {
      this.aza.cN("B3EEABB8EE11C2BE770B684D95219ECB");
    }
    
    public final a a(Location paramLocation)
    {
      this.aza.ayL = paramLocation;
      return this;
    }
    
    public final a a(Class<? extends b> paramClass, Bundle paramBundle)
    {
      this.aza.bbw.putBundle(paramClass.getName(), paramBundle);
      if ((paramClass.equals(AdMobAdapter.class)) && (paramBundle.getBoolean("_emulatorLiveAds"))) {
        this.aza.bbI.remove("B3EEABB8EE11C2BE770B684D95219ECB");
      }
      return this;
    }
    
    public final c ly()
    {
      return new c(this, (byte)0);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */