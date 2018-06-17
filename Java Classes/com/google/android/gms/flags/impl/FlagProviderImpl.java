package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import com.google.android.gms.a.a;
import com.google.android.gms.a.c;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.internal.eg;

@DynamiteApi
public class FlagProviderImpl
  extends eg
{
  private boolean aAL = false;
  private SharedPreferences aKF;
  
  public boolean getBooleanFlagValue(String paramString, boolean paramBoolean, int paramInt)
  {
    if (!this.aAL) {
      return paramBoolean;
    }
    return b.a(this.aKF, paramString, Boolean.valueOf(paramBoolean)).booleanValue();
  }
  
  public int getIntFlagValue(String paramString, int paramInt1, int paramInt2)
  {
    if (!this.aAL) {
      return paramInt1;
    }
    return d.a(this.aKF, paramString, Integer.valueOf(paramInt1)).intValue();
  }
  
  public long getLongFlagValue(String paramString, long paramLong, int paramInt)
  {
    if (!this.aAL) {
      return paramLong;
    }
    return f.a(this.aKF, paramString, Long.valueOf(paramLong)).longValue();
  }
  
  public String getStringFlagValue(String paramString1, String paramString2, int paramInt)
  {
    if (!this.aAL) {
      return paramString2;
    }
    return h.a(this.aKF, paramString1, paramString2);
  }
  
  public void init(a parama)
  {
    parama = (Context)c.a(parama);
    if (this.aAL) {
      return;
    }
    try
    {
      this.aKF = j.T(parama.createPackageContext("com.google.android.gms", 0));
      this.aAL = true;
      return;
    }
    catch (PackageManager.NameNotFoundException parama)
    {
      return;
    }
    catch (Exception parama)
    {
      parama = String.valueOf(parama.getMessage());
      if (parama.length() == 0) {}
    }
    for (parama = "Could not retrieve sdk flags, continuing with defaults: ".concat(parama);; parama = new String("Could not retrieve sdk flags, continuing with defaults: "))
    {
      Log.w("FlagProviderImpl", parama);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/flags/impl/FlagProviderImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */