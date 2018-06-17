package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;

public final class db
{
  final long aPi;
  private final String mName;
  
  private db(da paramda, String paramString, long paramLong)
  {
    ae.bf(paramString);
    if (paramLong > 0L) {}
    for (boolean bool = true;; bool = false)
    {
      ae.au(bool);
      this.mName = paramString;
      this.aPi = paramLong;
      return;
    }
  }
  
  private final String qn()
  {
    return String.valueOf(this.mName).concat(":start");
  }
  
  final void ql()
  {
    long l = this.aPj.aMq.aBm.currentTimeMillis();
    SharedPreferences.Editor localEditor = this.aPj.aPe.edit();
    localEditor.remove(qo());
    localEditor.remove(qp());
    localEditor.putLong(qn(), l);
    localEditor.commit();
  }
  
  final long qm()
  {
    return this.aPj.aPe.getLong(qn(), 0L);
  }
  
  final String qo()
  {
    return String.valueOf(this.mName).concat(":count");
  }
  
  final String qp()
  {
    return String.valueOf(this.mName).concat(":value");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/db.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */