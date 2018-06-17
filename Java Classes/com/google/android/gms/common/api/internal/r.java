package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.internal.ay;
import com.google.android.gms.common.internal.ba;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class r
  extends v
{
  private final ArrayList<a.f> aEt;
  
  public r(ArrayList<a.f> paramArrayList)
  {
    super(paramArrayList, (byte)0);
    ArrayList localArrayList;
    this.aEt = localArrayList;
  }
  
  public final void nn()
  {
    Object localObject2 = this.aEm.aDW.aEU;
    l locall = this.aEm;
    Object localObject1;
    if (locall.aDG == null) {
      localObject1 = Collections.emptySet();
    }
    for (;;)
    {
      ((y)localObject2).aEF = ((Set)localObject1);
      localObject1 = (ArrayList)this.aEt;
      int j = ((ArrayList)localObject1).size();
      int i = 0;
      while (i < j)
      {
        localObject2 = ((ArrayList)localObject1).get(i);
        i += 1;
        ((a.f)localObject2).a(this.aEm.aEi, this.aEm.aDW.aEU.aEF);
      }
      localObject1 = new HashSet(locall.aDG.aCJ);
      Map localMap = locall.aDG.aIx;
      Iterator localIterator = localMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        if (!locall.aDW.aEQ.containsKey(locala.mU())) {
          ((Set)localObject1).addAll(((ba)localMap.get(locala)).aFx);
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */