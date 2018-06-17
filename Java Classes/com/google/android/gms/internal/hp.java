package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.android.gms.common.internal.ae;

public final class hp
{
  boolean aUb;
  private final String aUi;
  final String key;
  String value;
  
  public hp(hl paramhl, String paramString)
  {
    ae.bf(paramString);
    this.key = paramString;
    this.aUi = null;
  }
  
  public final void cp(String paramString)
  {
    if (le.H(paramString, this.value)) {
      return;
    }
    SharedPreferences.Editor localEditor = hl.a(this.aUc).edit();
    localEditor.putString(this.key, paramString);
    localEditor.apply();
    this.value = paramString;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */