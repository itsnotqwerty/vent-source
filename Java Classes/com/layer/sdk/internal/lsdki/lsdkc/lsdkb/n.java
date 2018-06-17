package com.layer.sdk.internal.lsdki.lsdkc.lsdkb;

import com.layer.a.c.d;
import com.layer.b.f.a.i;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.messaging.Presence.PresenceStatus;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

public class n
  extends com.layer.a.a
{
  private final c.b a;
  private final com.layer.b.d.k b;
  
  public n(com.layer.a.b.a parama, c.b paramb, com.layer.b.d.k paramk)
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
    Object localObject2 = this.a.r();
    if (localObject2 != null)
    {
      if (((LinkedHashSet)localObject2).size() > 1)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e("ContentValues", "Presence updates found for more than one user: " + localObject2);
        }
        throw new IllegalStateException("Presence updates found for more than one user: " + localObject2);
      }
      localObject1 = null;
      if (((LinkedHashSet)localObject2).iterator().hasNext()) {
        localObject1 = (com.layer.sdk.internal.lsdkd.lsdka.n)((LinkedHashSet)localObject2).iterator().next();
      }
      if (localObject1 != null)
      {
        localObject2 = com.layer.b.f.a.m.ds(((com.layer.sdk.internal.lsdkd.lsdka.n)localObject1).b().getValue());
        localObject1 = new i(((com.layer.sdk.internal.lsdkd.lsdka.n)localObject1).a(), (com.layer.b.f.a.m)localObject2);
        a(new d[] { new com.layer.sdk.internal.lsdki.lsdkc.lsdka.m(this.b, (i)localObject1).b() });
      }
    }
    if (c().isEmpty())
    {
      a(3);
      return false;
    }
    Object localObject1 = c().iterator();
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdkb/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */