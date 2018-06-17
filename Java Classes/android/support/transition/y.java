package android.support.transition;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

public class y
  extends u
{
  ArrayList<u> uV = new ArrayList();
  boolean uW = true;
  private int uX;
  private boolean uY = false;
  
  public final u U(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.uV.size())) {
      return null;
    }
    return (u)this.uV.get(paramInt);
  }
  
  public final void a(u.b paramb)
  {
    super.a(paramb);
    int j = this.uV.size();
    int i = 0;
    while (i < j)
    {
      ((u)this.uV.get(i)).a(paramb);
      i += 1;
    }
  }
  
  protected final void a(ViewGroup paramViewGroup, aa paramaa1, aa paramaa2, ArrayList<z> paramArrayList1, ArrayList<z> paramArrayList2)
  {
    long l1 = this.uf;
    int j = this.uV.size();
    int i = 0;
    if (i < j)
    {
      u localu = (u)this.uV.get(i);
      if ((l1 > 0L) && ((this.uW) || (i == 0)))
      {
        long l2 = localu.uf;
        if (l2 <= 0L) {
          break label104;
        }
        localu.d(l2 + l1);
      }
      for (;;)
      {
        localu.a(paramViewGroup, paramaa1, paramaa2, paramArrayList1, paramArrayList2);
        i += 1;
        break;
        label104:
        localu.d(l1);
      }
    }
  }
  
  public final void b(z paramz)
  {
    if (u(paramz.view))
    {
      Iterator localIterator = this.uV.iterator();
      while (localIterator.hasNext())
      {
        u localu = (u)localIterator.next();
        if (localu.u(paramz.view))
        {
          localu.b(paramz);
          paramz.vc.add(localu);
        }
      }
    }
  }
  
  public final void c(z paramz)
  {
    if (u(paramz.view))
    {
      Iterator localIterator = this.uV.iterator();
      while (localIterator.hasNext())
      {
        u localu = (u)localIterator.next();
        if (localu.u(paramz.view))
        {
          localu.c(paramz);
          paramz.vc.add(localu);
        }
      }
    }
  }
  
  protected final void cq()
  {
    if (this.uV.isEmpty())
    {
      start();
      end();
    }
    for (;;)
    {
      return;
      Object localObject = new a(this);
      Iterator localIterator = this.uV.iterator();
      while (localIterator.hasNext()) {
        ((u)localIterator.next()).a((u.c)localObject);
      }
      this.uX = this.uV.size();
      if (!this.uW)
      {
        int i = 1;
        while (i < this.uV.size())
        {
          ((u)this.uV.get(i - 1)).a(new v()
          {
            public final void a(u paramAnonymousu)
            {
              this.uZ.cq();
              paramAnonymousu.b(this);
            }
          });
          i += 1;
        }
        localObject = (u)this.uV.get(0);
        if (localObject != null) {
          ((u)localObject).cq();
        }
      }
      else
      {
        localObject = this.uV.iterator();
        while (((Iterator)localObject).hasNext()) {
          ((u)((Iterator)localObject).next()).cq();
        }
      }
    }
  }
  
  public final u cr()
  {
    y localy = (y)super.cr();
    localy.uV = new ArrayList();
    int j = this.uV.size();
    int i = 0;
    while (i < j)
    {
      localy.d(((u)this.uV.get(i)).cr());
      i += 1;
    }
    return localy;
  }
  
  public final y d(u paramu)
  {
    this.uV.add(paramu);
    paramu.uw = this;
    if (this.ug >= 0L) {
      paramu.c(this.ug);
    }
    return this;
  }
  
  final void d(z paramz)
  {
    super.d(paramz);
    int j = this.uV.size();
    int i = 0;
    while (i < j)
    {
      ((u)this.uV.get(i)).d(paramz);
      i += 1;
    }
  }
  
  final String toString(String paramString)
  {
    String str = super.toString(paramString);
    int i = 0;
    while (i < this.uV.size())
    {
      str = str + "\n" + ((u)this.uV.get(i)).toString(new StringBuilder().append(paramString).append("  ").toString());
      i += 1;
    }
    return str;
  }
  
  public final void x(View paramView)
  {
    super.x(paramView);
    int j = this.uV.size();
    int i = 0;
    while (i < j)
    {
      ((u)this.uV.get(i)).x(paramView);
      i += 1;
    }
  }
  
  public final void y(View paramView)
  {
    super.y(paramView);
    int j = this.uV.size();
    int i = 0;
    while (i < j)
    {
      ((u)this.uV.get(i)).y(paramView);
      i += 1;
    }
  }
  
  static final class a
    extends v
  {
    y vb;
    
    a(y paramy)
    {
      this.vb = paramy;
    }
    
    public final void a(u paramu)
    {
      y.b(this.vb);
      if (y.c(this.vb) == 0)
      {
        y.a(this.vb, false);
        this.vb.end();
      }
      paramu.b(this);
    }
    
    public final void co()
    {
      if (!y.a(this.vb))
      {
        this.vb.start();
        y.a(this.vb, true);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */