package com.layer.sdk.internal.lsdki.lsdkc.lsdkb;

import com.layer.a.c.d;
import com.layer.b.d.h;
import com.layer.b.d.k;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class a
  extends com.layer.a.a
{
  private final c.b a;
  private final k b;
  
  public a(com.layer.a.b.a parama, c.b paramb, k paramk)
  {
    super(parama);
    this.a = paramb;
    this.b = paramk;
  }
  
  protected void a(d paramd, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 1) {
      a(paramd);
    }
  }
  
  public boolean a()
  {
    Iterator localIterator = this.a.p().iterator();
    Object localObject;
    while (localIterator.hasNext())
    {
      localObject = (h)localIterator.next();
      a(new d[] { new com.layer.sdk.internal.lsdki.lsdkc.lsdka.a(this.b, this.a, (h)localObject).b() });
    }
    if (c().isEmpty())
    {
      a(3);
      return false;
    }
    localIterator = c().iterator();
    while (localIterator.hasNext())
    {
      localObject = (d)localIterator.next();
      if (((d)localObject).g() == 1) {
        a((d)localObject);
      }
    }
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdkb/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */