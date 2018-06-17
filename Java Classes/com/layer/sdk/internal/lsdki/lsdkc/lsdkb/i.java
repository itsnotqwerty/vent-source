package com.layer.sdk.internal.lsdki.lsdkc.lsdkb;

import com.layer.a.c.d;
import com.layer.b.d.h;
import com.layer.b.d.k;
import com.layer.b.f.c.m;
import com.layer.sdk.internal.lsdkd.lsdka.o;
import com.layer.sdk.internal.lsdki.lsdkc.c;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class i
  extends com.layer.a.a
{
  private final c.b a;
  private final k b;
  private final String c;
  
  public i(com.layer.a.b.a parama, String paramString, c.b paramb, k paramk)
  {
    super(parama);
    this.c = paramString;
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
    Object localObject1 = this.a.m();
    if (((List)localObject1).isEmpty())
    {
      a(3);
      return false;
    }
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    Iterator localIterator = ((List)localObject1).iterator();
    Object localObject3;
    while (localIterator.hasNext())
    {
      o localo = (o)localIterator.next();
      localObject3 = localo.d();
      localObject2 = (h)localHashMap2.get(localObject3);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = this.a.b((Long)localObject3);
        if ((localObject1 != null) && (((m)localObject1).c != null) && (((m)localObject1).c.contains(this.c))) {
          localHashMap2.put(localObject3, localObject1);
        }
      }
      else
      {
        localObject3 = (List)localHashMap1.get(localObject1);
        localObject2 = localObject3;
        if (localObject3 == null)
        {
          localObject2 = new ArrayList();
          localHashMap1.put(localObject1, localObject2);
        }
        ((List)localObject2).add(localo);
      }
    }
    Object localObject2 = localHashMap1.entrySet().iterator();
    if (((Iterator)localObject2).hasNext())
    {
      localObject3 = (Map.Entry)((Iterator)localObject2).next();
      localObject1 = (h)((Map.Entry)localObject3).getKey();
      if (((h)localObject1).xp()) {}
      for (localObject1 = Long.valueOf(((m)localObject1).f - c.a.longValue());; localObject1 = null)
      {
        a(new d[] { new com.layer.sdk.internal.lsdki.lsdkc.lsdka.i((h)((Map.Entry)localObject3).getKey(), (Iterable)((Map.Entry)localObject3).getValue(), (Long)localObject1, this.b, this.a).b() });
        break;
      }
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdkb/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */