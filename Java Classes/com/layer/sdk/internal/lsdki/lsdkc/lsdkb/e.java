package com.layer.sdk.internal.lsdki.lsdkc.lsdkb;

import com.layer.a.c.d;
import com.layer.sdk.internal.lsdke.lsdka.a.a;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdkk.k.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;

public class e
  extends com.layer.a.a
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(h.class);
  private final c.b b;
  private final com.layer.b.d.k c;
  private final Iterable<UUID> d;
  
  public e(com.layer.a.b.a parama, c.b paramb, com.layer.b.d.k paramk, Iterable<UUID> paramIterable)
  {
    super(parama);
    this.b = paramb;
    this.c = paramk;
    this.d = paramIterable;
  }
  
  protected static List<int[]> a(c.b paramb, com.layer.sdk.internal.lsdke.lsdka.a parama)
  {
    ArrayList localArrayList = new ArrayList();
    if (parama.d == null) {}
    do
    {
      return localArrayList;
      if ((parama.e == null) || (parama.f == null))
      {
        paramb = paramb.a(parama.a, parama.b, Integer.valueOf(0), Integer.valueOf(0));
        a(parama.g.intValue(), parama.d.intValue() + 1, paramb, localArrayList);
        return localArrayList;
      }
    } while ((parama.e.equals(parama.g)) && (parama.f.equals(Integer.valueOf(parama.d.intValue() + 1))));
    paramb = paramb.a(parama.a, parama.b, parama.e, parama.f);
    a(parama.g.intValue(), parama.e.intValue(), paramb, localArrayList);
    a(parama.f.intValue(), parama.d.intValue() + 1, paramb, localArrayList);
    return localArrayList;
  }
  
  private static void a(int paramInt1, int paramInt2, Set<Integer> paramSet, List<int[]> paramList)
  {
    if (paramInt1 > paramInt2) {
      return;
    }
    int[] arrayOfInt = new int[2];
    arrayOfInt[0] = paramInt1;
    arrayOfInt[1] = paramInt1;
    for (;;)
    {
      if (paramSet.contains(Integer.valueOf(arrayOfInt[0])))
      {
        arrayOfInt[0] += 1;
      }
      else
      {
        if (arrayOfInt[0] >= paramInt2) {
          break;
        }
        arrayOfInt[1] = (arrayOfInt[0] + 1);
        while ((!paramSet.contains(Integer.valueOf(arrayOfInt[1]))) && (arrayOfInt[1] < paramInt2)) {
          arrayOfInt[1] += 1;
        }
        paramList.add(arrayOfInt);
        arrayOfInt = new int[] { arrayOfInt[1] + 1, 0 };
      }
    }
  }
  
  protected void a(d paramd, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 1) {
      a(paramd);
    }
  }
  
  public boolean a()
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("GetMutationsTaskMaster: execute");
    }
    Iterator localIterator1 = this.b.a(a.a.b, this.d).iterator();
    Object localObject;
    while (localIterator1.hasNext())
    {
      localObject = (com.layer.sdk.internal.lsdke.lsdka.a)localIterator1.next();
      Iterator localIterator2 = a(this.b, (com.layer.sdk.internal.lsdke.lsdka.a)localObject).iterator();
      while (localIterator2.hasNext())
      {
        int[] arrayOfInt = (int[])localIterator2.next();
        a(new d[] { new com.layer.sdk.internal.lsdki.lsdkc.lsdka.e(this.c, this.b, ((com.layer.sdk.internal.lsdke.lsdka.a)localObject).b, Integer.valueOf(arrayOfInt[0]), Integer.valueOf(arrayOfInt[1] - 1)).b() });
      }
    }
    if (c().isEmpty())
    {
      a(3);
      return false;
    }
    localIterator1 = c().iterator();
    while (localIterator1.hasNext())
    {
      localObject = (d)localIterator1.next();
      if (((d)localObject).g() == 1) {
        a((d)localObject);
      }
    }
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdkb/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */