package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.android.gms.common.internal.ae;

public final class hn
{
  private boolean aUb;
  private final long aUd;
  private final String key;
  private long value;
  
  public hn(hl paramhl, String paramString, long paramLong)
  {
    ae.bf(paramString);
    this.key = paramString;
    this.aUd = paramLong;
  }
  
  public final long get()
  {
    if (!this.aUb)
    {
      this.aUb = true;
      this.value = hl.a(this.aUc).getLong(this.key, this.aUd);
    }
    return this.value;
  }
  
  public final void set(long paramLong)
  {
    SharedPreferences.Editor localEditor = hl.a(this.aUc).edit();
    localEditor.putLong(this.key, paramLong);
    localEditor.apply();
    this.value = paramLong;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */