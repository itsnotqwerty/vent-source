package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.a;
import com.google.android.gms.common.internal.ac;

public final class cb<O extends a.a>
{
  private final O aCA;
  public final a<O> aCz;
  private final boolean aGt = true;
  private final int aGu;
  
  public cb(a<O> parama)
  {
    this.aCz = parama;
    this.aCA = null;
    this.aGu = System.identityHashCode(this);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof cb)) {
        return false;
      }
      paramObject = (cb)paramObject;
    } while ((!this.aGt) && (!((cb)paramObject).aGt) && (ac.equal(this.aCz, ((cb)paramObject).aCz)) && (ac.equal(this.aCA, ((cb)paramObject).aCA)));
    return false;
  }
  
  public final int hashCode()
  {
    return this.aGu;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/cb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */