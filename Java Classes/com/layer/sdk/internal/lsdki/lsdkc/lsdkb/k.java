package com.layer.sdk.internal.lsdki.lsdkc.lsdkb;

import com.layer.a.c.d;
import com.layer.b.d.c;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdki.lsdkc.lsdka.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class k
  extends com.layer.a.a
{
  private final c.b a;
  private final com.layer.b.d.k b;
  
  public k(com.layer.a.b.a parama, c.b paramb, com.layer.b.d.k paramk)
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
    Object localObject1 = this.a.l();
    Object localObject2 = new ArrayList();
    Iterator localIterator = ((List)localObject1).iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if (localc.bvS != null) {
        switch (1.bqe[localc.bCE.ordinal()])
        {
        default: 
          break;
        case 1: 
        case 2: 
          ((List)localObject2).add(localc);
        }
      }
    }
    ((List)localObject1).clear();
    if (!((List)localObject2).isEmpty()) {
      a(new d[] { new j(this.b, this.a, (List)localObject2).b() });
    }
    if (c().isEmpty())
    {
      a(3);
      return false;
    }
    localObject1 = c().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (d)((Iterator)localObject1).next();
      if (((d)localObject2).g() == 1) {
        a((d)localObject2);
      }
    }
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdkb/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */