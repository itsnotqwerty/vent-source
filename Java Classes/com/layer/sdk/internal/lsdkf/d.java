package com.layer.sdk.internal.lsdkf;

import com.layer.sdk.internal.b;
import com.layer.sdk.internal.lsdke.g;
import com.layer.sdk.internal.lsdkk.j;
import com.layer.sdk.policy.Policy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public class d
  extends com.layer.a.a
{
  private final com.layer.b.d.k a;
  private final g b;
  private final c c;
  
  public d(com.layer.a.b.a parama, com.layer.b.d.k paramk, g paramg, c paramc)
  {
    super(parama);
    this.a = paramk;
    this.b = paramg;
    this.c = paramc;
  }
  
  protected void a(com.layer.a.c.d arg1, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 1) {
      a(???);
    }
    do
    {
      do
      {
        c localc;
        do
        {
          do
          {
            return;
            if ((!(??? instanceof a)) || (paramInt2 != 3)) {
              break;
            }
            localObject2 = (List)((a)???).h();
          } while (localObject2 == null);
          localc = this.c;
        } while ((localc.d) || (localObject2 == null));
        LinkedHashSet localLinkedHashSet = new LinkedHashSet((Collection)localObject2);
        synchronized (localc.bsc)
        {
          if (((((List)localObject2).isEmpty()) && (localc.bsc.isEmpty())) || (localLinkedHashSet.equals(localc.bsc))) {
            return;
          }
        }
        Object localObject3 = new LinkedHashSet(localLinkedHashSet);
        Object localObject2 = new LinkedHashSet(((c)localObject1).bsc);
        ((LinkedHashSet)localObject3).removeAll(((c)localObject1).bsc);
        ((LinkedHashSet)localObject2).removeAll(localLinkedHashSet);
        Object localObject4 = c.v(((c)localObject1).bsb.k().t());
        ((LinkedHashSet)localObject3).removeAll(c.v(((c)localObject1).bsb.k().u()));
        ((LinkedHashSet)localObject2).removeAll((Collection)localObject4);
        if ((((LinkedHashSet)localObject3).isEmpty()) && (((LinkedHashSet)localObject2).isEmpty()))
        {
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(c.b, "Nothing new in toBlockSet and toUnblockSet, bailing");
          }
          return;
        }
        localObject3 = ((LinkedHashSet)localObject3).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          localObject4 = (Policy)((Iterator)localObject3).next();
          if ((localObject4 != null) && (((Policy)localObject4).getSentByUserID() != null))
          {
            if (com.layer.sdk.internal.lsdkk.k.a(2)) {
              com.layer.sdk.internal.lsdkk.k.a(c.b, "Persisting block for: " + ((Policy)localObject4).getSentByUserID());
            }
            ((c)localObject1).bsb.k().a(((Policy)localObject4).getSentByUserID(), Boolean.valueOf(true));
          }
        }
        localObject2 = ((LinkedHashSet)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (Policy)((Iterator)localObject2).next();
          if ((localObject3 != null) && (((Policy)localObject3).getSentByUserID() != null))
          {
            if (com.layer.sdk.internal.lsdkk.k.a(2)) {
              com.layer.sdk.internal.lsdkk.k.a(c.b, "Persisting unblock for: " + ((Policy)localObject3).getSentByUserID());
            }
            ((c)localObject1).bsb.k().b(((Policy)localObject3).getSentByUserID(), Boolean.valueOf(true));
          }
        }
        localObject2 = new ArrayList(((c)localObject1).bsc);
        localObject3 = new ArrayList(localLinkedHashSet);
        ((c)localObject1).bsc.clear();
        ((c)localObject1).bsc.addAll(localLinkedHashSet);
        Iterator localIterator = ((c)localObject1).bsd.iterator();
        while (localIterator.hasNext()) {
          ((c.a)localIterator.next()).a((List)localObject2, (List)localObject3);
        }
        return;
      } while ((!(??? instanceof e)) || (paramInt2 != 3));
      ??? = (e.a)((e)???).h();
    } while (??? == null);
    this.c.b(???);
  }
  
  public boolean a()
  {
    Object localObject1 = this.b.t();
    Object localObject2 = this.b.u();
    Iterator localIterator;
    String str;
    e.a locala;
    if (!((List)localObject1).isEmpty())
    {
      localIterator = ((List)localObject1).iterator();
      while (localIterator.hasNext())
      {
        str = (String)localIterator.next();
        locala = new e.a();
        locala.a = str;
        locala.bry = Boolean.valueOf(true);
        a(new com.layer.a.c.d[] { new e(this.a, this.b, locala).b() });
      }
    }
    if (!((List)localObject2).isEmpty())
    {
      localIterator = ((List)localObject2).iterator();
      while (localIterator.hasNext())
      {
        str = (String)localIterator.next();
        locala = new e.a();
        locala.a = str;
        locala.bry = Boolean.valueOf(false);
        a(new com.layer.a.c.d[] { new e(this.a, this.b, locala).b() });
      }
    }
    if ((((List)localObject1).isEmpty()) && (((List)localObject2).isEmpty())) {
      a(new com.layer.a.c.d[] { new a(this.a, null).b() });
    }
    if (c().isEmpty())
    {
      a(3);
      return false;
    }
    localObject1 = c().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (com.layer.a.c.d)((Iterator)localObject1).next();
      if (((com.layer.a.c.d)localObject2).g() == 1) {
        a((com.layer.a.c.d)localObject2);
      }
    }
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkf/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */