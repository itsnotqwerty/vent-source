package com.layer.sdk.internal.lsdki.lsdkc.lsdkb;

import com.layer.b.d.k;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import java.util.Iterator;
import java.util.Set;

public class d
  extends com.layer.a.a
{
  private final c.b a;
  private final k b;
  
  public d(com.layer.a.b.a parama, c.b paramb, k paramk)
  {
    super(parama);
    this.a = paramb;
    this.b = paramk;
  }
  
  protected void a(com.layer.a.c.d paramd, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 1) {
      a(paramd);
    }
  }
  
  public boolean a()
  {
    a(new com.layer.a.c.d[] { new com.layer.sdk.internal.lsdki.lsdkc.lsdka.d(this.a, this.b).b() });
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext())
    {
      com.layer.a.c.d locald = (com.layer.a.c.d)localIterator.next();
      if (locald.g() == 1) {
        a(locald);
      }
    }
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdkb/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */