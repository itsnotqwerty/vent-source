package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.a.b;
import com.google.android.gms.ads.a.d;
import com.google.android.gms.ads.g;
import com.google.android.gms.ads.reward.c;

public final class qb
{
  private final nt ayW;
  public com.google.android.gms.ads.a baA;
  public com.google.android.gms.ads.a.a baY;
  public nm baz;
  public final ti bbK = new ti();
  public g bbO;
  public ow bbP;
  public b bbQ;
  public String bbR;
  private d bbV;
  public boolean bbW;
  public boolean bbX;
  public final Context mContext;
  public c zzgy;
  
  public qb(Context paramContext)
  {
    this(paramContext, nt.baR);
  }
  
  private qb(Context paramContext, nt paramnt)
  {
    this.mContext = paramContext;
    this.ayW = paramnt;
    this.bbV = null;
  }
  
  public final void cO(String paramString)
  {
    if (this.bbP == null) {
      throw new IllegalStateException(String.valueOf(paramString).length() + 63 + "The ad unit ID must be set on InterstitialAd before " + paramString + " is called.");
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/qb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */