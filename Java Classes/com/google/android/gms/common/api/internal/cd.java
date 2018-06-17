package com.google.android.gms.common.api.internal;

import com.google.android.gms.c.f;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.e;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class cd
{
  final android.support.v4.g.a<cb<?>, com.google.android.gms.common.a> aCy = new android.support.v4.g.a();
  private final android.support.v4.g.a<cb<?>, String> aGA = new android.support.v4.g.a();
  final f<Map<cb<?>, String>> aGB = new f();
  private int aGC;
  private boolean aGD = false;
  
  public cd(Iterable<? extends e<?>> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      e locale = (e)paramIterable.next();
      this.aCy.put(locale.aCB, null);
    }
    this.aGC = this.aCy.keySet().size();
  }
  
  public final void a(cb<?> paramcb, com.google.android.gms.common.a parama, String paramString)
  {
    this.aCy.put(paramcb, parama);
    this.aGA.put(paramcb, paramString);
    this.aGC -= 1;
    if (!parama.mQ()) {
      this.aGD = true;
    }
    if (this.aGC == 0)
    {
      if (this.aGD)
      {
        paramcb = new c(this.aCy);
        this.aGB.e(paramcb);
      }
    }
    else {
      return;
    }
    this.aGB.N(this.aGA);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/cd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */