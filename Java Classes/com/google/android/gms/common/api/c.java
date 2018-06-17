package com.google.android.gms.common.api;

import android.text.TextUtils;
import com.google.android.gms.common.api.internal.cb;
import com.google.android.gms.common.internal.ae;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class c
  extends Exception
{
  public final android.support.v4.g.a<cb<?>, com.google.android.gms.common.a> aCy;
  
  public c(android.support.v4.g.a<cb<?>, com.google.android.gms.common.a> parama)
  {
    this.aCy = parama;
  }
  
  public final com.google.android.gms.common.a a(e<? extends a.a> parame)
  {
    parame = parame.aCB;
    if (this.aCy.get(parame) != null) {}
    for (boolean bool = true;; bool = false)
    {
      ae.b(bool, "The given API was not part of the availability request.");
      return (com.google.android.gms.common.a)this.aCy.get(parame);
    }
  }
  
  public final String getMessage()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject1 = this.aCy.keySet().iterator();
    int i = 1;
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject3 = (cb)((Iterator)localObject1).next();
      Object localObject2 = (com.google.android.gms.common.a)this.aCy.get(localObject3);
      if (((com.google.android.gms.common.a)localObject2).mQ()) {
        i = 0;
      }
      localObject3 = ((cb)localObject3).aCz.mName;
      localObject2 = String.valueOf(localObject2);
      localArrayList.add(String.valueOf(localObject3).length() + 2 + String.valueOf(localObject2).length() + (String)localObject3 + ": " + (String)localObject2);
    }
    localObject1 = new StringBuilder();
    if (i != 0) {
      ((StringBuilder)localObject1).append("None of the queried APIs are available. ");
    }
    for (;;)
    {
      ((StringBuilder)localObject1).append(TextUtils.join("; ", localArrayList));
      return ((StringBuilder)localObject1).toString();
      ((StringBuilder)localObject1).append("Some of the queried APIs are unavailable. ");
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */