package com.layer.sdk.internal.lsdki.lsdkc.lsdkb;

import com.layer.a.c.d;
import com.layer.b.d.k;
import com.layer.sdk.internal.lsdki.a.e;
import com.layer.sdk.internal.lsdki.b;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdki.lsdkc.c.c;
import com.layer.sdk.internal.lsdki.lsdkc.lsdka.c.a;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public class c
  extends com.layer.a.a
{
  private final c.b a;
  private final k b;
  private final Integer c;
  private final int d;
  private final c.c e;
  private final a.e f;
  private final boolean g;
  private final AtomicReference<b> h;
  
  public c(com.layer.a.b.a parama, c.b paramb, k paramk, int paramInt1, int paramInt2, a.e parame, boolean paramBoolean, AtomicReference<b> paramAtomicReference, c.c paramc)
  {
    super(parama);
    this.a = paramb;
    this.b = paramk;
    this.c = Integer.valueOf(paramInt1);
    this.d = paramInt2;
    this.f = parame;
    this.g = paramBoolean;
    this.h = paramAtomicReference;
    this.e = paramc;
  }
  
  protected void a(d paramd, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 1) {
      a(paramd);
    }
  }
  
  public boolean a()
  {
    a(new d[] { new com.layer.sdk.internal.lsdki.lsdkc.lsdka.c(this.b, this.a, this.e, new c.a(this.c.intValue(), this.d, this.f, this.g, this.h)).b() });
    if (c().isEmpty())
    {
      a(3);
      return false;
    }
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if (locald.g() == 1) {
        a(locald);
      }
    }
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdkb/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */