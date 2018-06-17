package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.i;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public final class bw
{
  public static final Status aGn = new Status(8, "The connection to Google Play services was lost");
  static final BasePendingResult<?>[] aGo = new BasePendingResult[0];
  private final Map<a.d<?>, a.f> aEE;
  final Set<BasePendingResult<?>> aGp = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
  private final by aGq = new bx(this);
  
  public bw(Map<a.d<?>, a.f> paramMap)
  {
    this.aEE = paramMap;
  }
  
  final void b(BasePendingResult<? extends i> paramBasePendingResult)
  {
    this.aGp.add(paramBasePendingResult);
    paramBasePendingResult.a(this.aGq);
  }
  
  public final void release()
  {
    BasePendingResult[] arrayOfBasePendingResult = (BasePendingResult[])this.aGp.toArray(aGo);
    int j = arrayOfBasePendingResult.length;
    int i = 0;
    while (i < j)
    {
      BasePendingResult localBasePendingResult = arrayOfBasePendingResult[i];
      localBasePendingResult.a(null);
      localBasePendingResult.nd();
      if (localBasePendingResult.nh()) {
        this.aGp.remove(localBasePendingResult);
      }
      i += 1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/bw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */