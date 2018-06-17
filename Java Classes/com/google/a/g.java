package com.google.a;

import com.google.a.b.a.l.b;
import com.google.a.b.a.n;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class g
{
  private boolean bgA = false;
  private boolean bgB = false;
  private boolean bgD = false;
  private boolean bgE = false;
  private boolean bgF = false;
  public String bgG;
  private int bgH = 2;
  private int bgI = 2;
  private t bgJ = t.bgW;
  public e bgP = d.bgj;
  private final List<v> bgQ = new ArrayList();
  public boolean bgR = true;
  private final List<v> bgv = new ArrayList();
  private com.google.a.b.d bgw = com.google.a.b.d.bhi;
  private final Map<Type, h<?>> bgy = new HashMap();
  public boolean bgz = false;
  
  public final g a(Type paramType, Object paramObject)
  {
    com.google.a.b.a.au(true);
    if ((paramObject instanceof h)) {
      this.bgy.put(paramType, (h)paramObject);
    }
    com.google.a.c.a locala = com.google.a.c.a.e(paramType);
    List localList = this.bgv;
    if (locala.biJ == locala.bkb) {}
    for (boolean bool = true;; bool = false)
    {
      localList.add(new l.b(paramObject, locala, bool));
      if ((paramObject instanceof u)) {
        this.bgv.add(n.a(com.google.a.c.a.e(paramType), (u)paramObject));
      }
      return this;
    }
  }
  
  public final f vc()
  {
    ArrayList localArrayList = new ArrayList(this.bgv.size() + this.bgQ.size() + 3);
    localArrayList.addAll(this.bgv);
    Collections.reverse(localArrayList);
    Object localObject1 = new ArrayList(this.bgQ);
    Collections.reverse((List)localObject1);
    localArrayList.addAll((Collection)localObject1);
    Object localObject2 = this.bgG;
    int i = this.bgH;
    int j = this.bgI;
    a locala;
    if ((localObject2 != null) && (!"".equals(((String)localObject2).trim())))
    {
      locala = new a(java.util.Date.class, (String)localObject2);
      localObject1 = new a(Timestamp.class, (String)localObject2);
    }
    for (localObject2 = new a(java.sql.Date.class, (String)localObject2);; localObject2 = new a(java.sql.Date.class, i, j))
    {
      localArrayList.add(n.a(java.util.Date.class, locala));
      localArrayList.add(n.a(Timestamp.class, (u)localObject1));
      localArrayList.add(n.a(java.sql.Date.class, (u)localObject2));
      do
      {
        return new f(this.bgw, this.bgP, this.bgy, this.bgz, this.bgA, this.bgB, this.bgR, this.bgD, this.bgE, this.bgF, this.bgJ, this.bgG, this.bgH, this.bgI, this.bgv, this.bgQ, localArrayList);
      } while ((i == 2) || (j == 2));
      locala = new a(java.util.Date.class, i, j);
      localObject1 = new a(Timestamp.class, i, j);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */