package android.support.constraint.a.a;

import android.support.constraint.a.h;
import java.util.ArrayList;

public final class f
  extends d
{
  protected float hA = -1.0F;
  protected int hB = -1;
  protected int hC = -1;
  private c hD = this.gp;
  private int hE = 0;
  private boolean hF = false;
  private int hG = 0;
  private i hH = new i();
  private int hI = 8;
  
  public f()
  {
    this.gx.clear();
    this.gx.add(this.hD);
    int j = this.gw.length;
    while (i < j)
    {
      this.gw[i] = this.hD;
      i += 1;
    }
  }
  
  public final c a(c.c paramc)
  {
    switch (1.fE[paramc.ordinal()])
    {
    default: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
      do
      {
        do
        {
          throw new AssertionError(paramc.name());
        } while (this.hE != 1);
        return this.hD;
      } while (this.hE != 0);
      return this.hD;
    }
    return null;
  }
  
  public final void a(float paramFloat)
  {
    if (paramFloat > -1.0F)
    {
      this.hA = paramFloat;
      this.hB = -1;
      this.hC = -1;
    }
  }
  
  public final void a(android.support.constraint.a.e parame)
  {
    int j = 1;
    Object localObject2 = (e)this.gz;
    if (localObject2 == null) {
      return;
    }
    c localc = ((e)localObject2).a(c.c.fN);
    Object localObject1 = ((e)localObject2).a(c.c.fP);
    int i;
    if (this.gz != null) {
      if (this.gz.gy[0] == d.a.hi)
      {
        i = 1;
        label61:
        if (this.hE != 0) {
          break label306;
        }
        localc = ((e)localObject2).a(c.c.fO);
        localObject1 = ((e)localObject2).a(c.c.fQ);
        if (this.gz == null) {
          break label183;
        }
        if (this.gz.gy[1] != d.a.hi) {
          break label178;
        }
        i = j;
      }
    }
    label178:
    label183:
    label306:
    for (;;)
    {
      if (this.hB != -1)
      {
        localObject2 = parame.h(this.hD);
        parame.c((h)localObject2, parame.h(localc), this.hB, 6);
        if (i == 0) {
          break;
        }
        parame.a(parame.h(localObject1), (h)localObject2, 0, 5);
        return;
        i = 0;
        break label61;
        i = 0;
        break label61;
        i = 0;
        continue;
        i = 0;
        continue;
      }
      if (this.hC != -1)
      {
        localObject2 = parame.h(this.hD);
        localObject1 = parame.h(localObject1);
        parame.c((h)localObject2, (h)localObject1, -this.hC, 6);
        if (i == 0) {
          break;
        }
        parame.a((h)localObject2, parame.h(localc), 0, 5);
        parame.a((h)localObject1, (h)localObject2, 0, 5);
        return;
      }
      if (this.hA == -1.0F) {
        break;
      }
      parame.b(android.support.constraint.a.e.a(parame, parame.h(this.hD), parame.h(localc), parame.h(localObject1), this.hA, this.hF));
      return;
    }
  }
  
  public final ArrayList<c> aJ()
  {
    return this.gx;
  }
  
  public final void aO()
  {
    if (this.gz == null) {
      return;
    }
    int i = android.support.constraint.a.e.i(this.hD);
    if (this.hE == 1)
    {
      setX(i);
      setY(0);
      setHeight(this.gz.getHeight());
      setWidth(0);
      return;
    }
    setX(0);
    setY(i);
    setWidth(this.gz.getWidth());
    setHeight(0);
  }
  
  public final boolean au()
  {
    return true;
  }
  
  public final void i(int paramInt)
  {
    d locald = this.gz;
    if (locald == null) {}
    do
    {
      do
      {
        return;
        if (this.hE != 1) {
          break;
        }
        this.gp.fu.a(locald.gp.fu, 0);
        this.gr.fu.a(locald.gp.fu, 0);
        if (this.hB != -1)
        {
          this.go.fu.a(locald.go.fu, this.hB);
          this.gq.fu.a(locald.go.fu, this.hB);
          return;
        }
        if (this.hC != -1)
        {
          this.go.fu.a(locald.gq.fu, -this.hC);
          this.gq.fu.a(locald.gq.fu, -this.hC);
          return;
        }
      } while ((this.hA == -1.0F) || (locald.aM() != d.a.hh));
      paramInt = (int)(locald.db * this.hA);
      this.go.fu.a(locald.go.fu, paramInt);
      this.gq.fu.a(locald.go.fu, paramInt);
      return;
      this.go.fu.a(locald.go.fu, 0);
      this.gq.fu.a(locald.go.fu, 0);
      if (this.hB != -1)
      {
        this.gp.fu.a(locald.gp.fu, this.hB);
        this.gr.fu.a(locald.gp.fu, this.hB);
        return;
      }
      if (this.hC != -1)
      {
        this.gp.fu.a(locald.gr.fu, -this.hC);
        this.gr.fu.a(locald.gr.fu, -this.hC);
        return;
      }
    } while ((this.hA == -1.0F) || (locald.aN() != d.a.hh));
    paramInt = (int)(locald.dc * this.hA);
    this.gp.fu.a(locald.gp.fu, paramInt);
    this.gr.fu.a(locald.gp.fu, paramInt);
  }
  
  public final void m(int paramInt)
  {
    if (paramInt >= 0)
    {
      this.hA = -1.0F;
      this.hB = paramInt;
      this.hC = -1;
    }
  }
  
  public final void n(int paramInt)
  {
    if (paramInt >= 0)
    {
      this.hA = -1.0F;
      this.hB = -1;
      this.hC = paramInt;
    }
  }
  
  public final void setOrientation(int paramInt)
  {
    if (this.hE == paramInt) {
      return;
    }
    this.hE = paramInt;
    this.gx.clear();
    if (this.hE == 1) {}
    for (this.hD = this.go;; this.hD = this.gp)
    {
      this.gx.add(this.hD);
      int i = this.gw.length;
      paramInt = 0;
      while (paramInt < i)
      {
        this.gw[paramInt] = this.hD;
        paramInt += 1;
      }
      break;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */