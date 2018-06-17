package com.google.android.gms.common.api.internal;

import com.google.android.gms.c.f;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

public final class e
{
  final Map<BasePendingResult<?>, Boolean> aDQ = Collections.synchronizedMap(new WeakHashMap());
  final Map<f<?>, Boolean> aDR = Collections.synchronizedMap(new WeakHashMap());
  
  final void a(boolean paramBoolean, Status paramStatus)
  {
    Object localObject2;
    synchronized (this.aDQ)
    {
      localObject2 = new HashMap(this.aDQ);
    }
    synchronized (this.aDR)
    {
      ??? = new HashMap(this.aDR);
      localObject2 = ((Map)localObject2).entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        ??? = (Map.Entry)((Iterator)localObject2).next();
        if ((paramBoolean) || (((Boolean)((Map.Entry)???).getValue()).booleanValue()))
        {
          ((BasePendingResult)((Map.Entry)???).getKey()).a(paramStatus);
          continue;
          paramStatus = finally;
          throw paramStatus;
        }
      }
    }
    ??? = ((Map)???).entrySet().iterator();
    while (((Iterator)???).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)???).next();
      if ((paramBoolean) || (((Boolean)((Map.Entry)localObject2).getValue()).booleanValue())) {
        ((f)((Map.Entry)localObject2).getKey()).f(new b(paramStatus));
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */