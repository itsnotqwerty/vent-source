package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.a;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.ar;
import com.google.android.gms.common.m;
import com.google.android.gms.internal.ma;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class o
  extends v
{
  private final Map<a.f, n> aEp;
  
  public o(Map<a.f, n> paramMap)
  {
    super(paramMap, (byte)0);
    Map localMap;
    this.aEp = localMap;
  }
  
  private final int a(a.f paramf, Map<a.f, Integer> paramMap)
  {
    ae.E(paramf);
    ae.E(paramMap);
    if (paramMap.containsKey(paramf)) {
      return ((Integer)paramMap.get(paramf)).intValue();
    }
    Iterator localIterator = paramMap.keySet().iterator();
    if (localIterator.hasNext()) {}
    for (int i = ((Integer)paramMap.get((a.f)localIterator.next())).intValue();; i = -1)
    {
      int j = i;
      if (i == -1) {
        j = m.K(this.aEm.mContext);
      }
      paramMap.put(paramf, Integer.valueOf(j));
      return j;
    }
  }
  
  public final void nn()
  {
    int j = 0;
    Object localObject2 = new ArrayList();
    Object localObject3 = new ArrayList();
    Object localObject1 = this.aEp.keySet().iterator();
    Object localObject4;
    while (((Iterator)localObject1).hasNext())
    {
      localObject4 = (a.f)((Iterator)localObject1).next();
      if (!((n)this.aEp.get(localObject4)).aEo) {
        ((List)localObject2).add(localObject4);
      } else {
        ((List)localObject3).add(localObject4);
      }
    }
    localObject1 = new HashMap(this.aEp.size());
    int i = -1;
    int m;
    int k;
    if (((List)localObject2).isEmpty())
    {
      localObject2 = (ArrayList)localObject3;
      m = ((ArrayList)localObject2).size();
      while (j < m)
      {
        localObject3 = ((ArrayList)localObject2).get(j);
        j += 1;
        k = a((a.f)localObject3, (Map)localObject1);
        i = k;
        if (k == 0)
        {
          i = k;
          break label242;
        }
      }
      label186:
      if (i == 0) {
        break label283;
      }
      localObject1 = new a(i, null);
      this.aEm.aDW.a(new p(this, this.aEm, (a)localObject1));
    }
    for (;;)
    {
      return;
      localObject2 = (ArrayList)localObject2;
      m = ((ArrayList)localObject2).size();
      j = 0;
      label242:
      if (j >= m) {
        break label186;
      }
      localObject3 = ((ArrayList)localObject2).get(j);
      j += 1;
      k = a((a.f)localObject3, (Map)localObject1);
      i = k;
      if (k == 0) {
        break;
      }
      i = k;
      break label186;
      label283:
      if (this.aEm.aEg) {
        this.aEm.aEe.connect();
      }
      localObject2 = this.aEp.keySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (a.f)((Iterator)localObject2).next();
        localObject4 = (ar)this.aEp.get(localObject3);
        if (a((a.f)localObject3, (Map)localObject1) != 0) {
          this.aEm.aDW.a(new q(this.aEm, (ar)localObject4));
        } else {
          ((a.f)localObject3).a((ar)localObject4);
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */