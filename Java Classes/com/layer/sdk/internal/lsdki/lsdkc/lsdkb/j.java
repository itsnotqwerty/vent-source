package com.layer.sdk.internal.lsdki.lsdkc.lsdkb;

import com.layer.a.c.d;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class j
  extends com.layer.a.a
{
  private final c.b a;
  private final com.layer.b.d.k b;
  
  public j(com.layer.a.b.a parama, c.b paramb, com.layer.b.d.k paramk)
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
    Object localObject = new HashSet(this.a.q());
    if (((Set)localObject).isEmpty())
    {
      a(3);
      return false;
    }
    a(new d[] { new com.layer.sdk.internal.lsdki.lsdkc.lsdka.k(this.b, this.a, (Set)localObject).b() });
    localObject = c().iterator();
    while (((Iterator)localObject).hasNext())
    {
      d locald = (d)((Iterator)localObject).next();
      if (locald.g() == 1) {
        a(locald);
      }
    }
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdkb/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */