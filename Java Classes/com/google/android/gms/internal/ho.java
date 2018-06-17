package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;

public final class ho
{
  private String aUe;
  final String aUf;
  final String aUg;
  final long aUh;
  
  private ho(hl paramhl, String paramString, long paramLong)
  {
    ae.bf(paramString);
    if (paramLong > 0L) {}
    for (boolean bool = true;; bool = false)
    {
      ae.au(bool);
      this.aUe = String.valueOf(paramString).concat(":start");
      this.aUf = String.valueOf(paramString).concat(":count");
      this.aUg = String.valueOf(paramString).concat(":value");
      this.aUh = paramLong;
      return;
    }
  }
  
  final void ql()
  {
    this.aUc.mN();
    long l = this.aUc.qH().currentTimeMillis();
    SharedPreferences.Editor localEditor = hl.a(this.aUc).edit();
    localEditor.remove(this.aUf);
    localEditor.remove(this.aUg);
    localEditor.putLong(this.aUe, l);
    localEditor.apply();
  }
  
  final long qm()
  {
    return hl.a(this.aUc).getLong(this.aUe, 0L);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ho.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */