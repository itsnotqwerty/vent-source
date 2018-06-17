package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.i;

public class f
{
  protected View aAa;
  public View aAb;
  public i aAc;
  public boolean aAd;
  protected boolean azY;
  protected boolean azZ;
  protected Bundle zp = new Bundle();
  
  @Deprecated
  public void bn(View paramView) {}
  
  public final Bundle getExtras()
  {
    return this.zp;
  }
  
  public final void mr()
  {
    this.azY = true;
  }
  
  public final void ms()
  {
    this.azZ = true;
  }
  
  public final boolean mt()
  {
    return this.azY;
  }
  
  public final boolean mu()
  {
    return this.azZ;
  }
  
  public final View mv()
  {
    return this.aAa;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/mediation/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */