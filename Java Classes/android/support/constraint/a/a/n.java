package android.support.constraint.a.a;

import android.support.constraint.a.c;
import java.util.ArrayList;

public class n
  extends d
{
  protected ArrayList<d> ib = new ArrayList();
  
  public final void a(d paramd)
  {
    this.ib.add(paramd);
    if (paramd.gz != null) {
      ((n)paramd.gz).c(paramd);
    }
    paramd.gz = this;
  }
  
  public final void a(c paramc)
  {
    super.a(paramc);
    int j = this.ib.size();
    int i = 0;
    while (i < j)
    {
      ((d)this.ib.get(i)).a(paramc);
      i += 1;
    }
  }
  
  public final void aK()
  {
    super.aK();
    if (this.ib == null) {}
    for (;;)
    {
      return;
      int j = this.ib.size();
      int i = 0;
      while (i < j)
      {
        d locald = (d)this.ib.get(i);
        locald.b(aE(), aF());
        if (!(locald instanceof e)) {
          locald.aK();
        }
        i += 1;
      }
    }
  }
  
  public void aQ()
  {
    aK();
    if (this.ib == null) {}
    for (;;)
    {
      return;
      int j = this.ib.size();
      int i = 0;
      while (i < j)
      {
        d locald = (d)this.ib.get(i);
        if ((locald instanceof n)) {
          ((n)locald).aQ();
        }
        i += 1;
      }
    }
  }
  
  public final e aW()
  {
    Object localObject = this.gz;
    e locale;
    if ((this instanceof e)) {
      locale = (e)this;
    }
    for (;;)
    {
      d locald;
      if (localObject != null)
      {
        locald = ((d)localObject).gz;
        if ((localObject instanceof e))
        {
          locale = (e)localObject;
          localObject = locald;
        }
      }
      else
      {
        return locale;
      }
      localObject = locald;
      continue;
      locale = null;
    }
  }
  
  public final void aX()
  {
    this.ib.clear();
  }
  
  public final void b(int paramInt1, int paramInt2)
  {
    super.b(paramInt1, paramInt2);
    paramInt2 = this.ib.size();
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      ((d)this.ib.get(paramInt1)).b(aG(), aH());
      paramInt1 += 1;
    }
  }
  
  public final void c(d paramd)
  {
    this.ib.remove(paramd);
    paramd.gz = null;
  }
  
  public void reset()
  {
    this.ib.clear();
    super.reset();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/a/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */