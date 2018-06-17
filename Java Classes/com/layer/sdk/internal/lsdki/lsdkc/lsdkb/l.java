package com.layer.sdk.internal.lsdki.lsdkc.lsdkb;

import android.database.sqlite.SQLiteDatabase;
import com.layer.b.d.c;
import com.layer.b.d.i;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdkk.k.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class l
  extends com.layer.a.a
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(h.class);
  private final c.b b;
  private final com.layer.b.d.k c;
  
  public l(com.layer.a.b.a parama, c.b paramb, com.layer.b.d.k paramk)
  {
    super(parama);
    this.b = paramb;
    this.c = paramk;
  }
  
  protected void a(com.layer.a.c.d paramd, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 1) {
      a(paramd);
    }
  }
  
  public boolean a()
  {
    for (;;)
    {
      try
      {
        localObject5 = this.b.e();
      }
      finally
      {
        Object localObject1;
        ArrayList localArrayList;
        Iterator localIterator2;
        i locali;
        Iterator localIterator1;
        Object localObject5 = null;
        continue;
        Object localObject4 = null;
        continue;
        continue;
      }
      try
      {
        localObject1 = this.b.k((SQLiteDatabase)localObject5);
        localArrayList = new ArrayList(((List)localObject1).size());
        localIterator2 = ((List)localObject1).iterator();
        if (!localIterator2.hasNext()) {
          continue;
        }
        locali = (i)localIterator2.next();
        localObject1 = this.b.b(locali.bwP);
        if (!((com.layer.b.d.h)localObject1).xG()) {
          continue;
        }
        locali.a(((com.layer.b.d.h)localObject1).b());
        localObject1 = locali.bwO;
        if (localObject1 == null) {
          continue;
        }
        localObject1 = this.b.l((SQLiteDatabase)localObject5, (Long)localObject1);
        switch (1.bqe[locali.bFz.ordinal()])
        {
        case 1: 
          if (localObject1 == null)
          {
            locali.dH(0);
            localArrayList.add(locali);
            continue;
          }
          if (!((c)localObject2).xE()) {
            continue;
          }
        }
      }
      finally
      {
        this.b.i((SQLiteDatabase)localObject5);
      }
      locali.dH(((com.layer.b.f.c.d)localObject2).d);
      localArrayList.add(locali);
      continue;
      if (localObject2 == null)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(a, "Mutation for event deletion doesn't have event. Mutation: " + locali.toString());
        }
        throw new IllegalStateException("Mutation for event deletion doesn't have event. Mutation: " + locali.toString());
      }
      if (((c)localObject2).xE())
      {
        locali.dH(((com.layer.b.f.c.d)localObject2).d);
        localArrayList.add(locali);
      }
    }
    if (!localArrayList.isEmpty()) {
      this.b.c(localArrayList);
    }
    ((SQLiteDatabase)localObject5).setTransactionSuccessful();
    this.b.i((SQLiteDatabase)localObject5);
    localIterator1 = this.b.j().iterator();
    while (localIterator1.hasNext())
    {
      localObject5 = (i)localIterator1.next();
      a(new com.layer.a.c.d[] { new com.layer.sdk.internal.lsdki.lsdkc.lsdka.l(this.c, this.b, (i)localObject5).b() });
    }
    if (c().isEmpty())
    {
      a(3);
      return false;
    }
    localIterator1 = c().iterator();
    while (localIterator1.hasNext())
    {
      localObject5 = (com.layer.a.c.d)localIterator1.next();
      if (((com.layer.a.c.d)localObject5).g() == 1) {
        a((com.layer.a.c.d)localObject5);
      }
    }
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdkb/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */