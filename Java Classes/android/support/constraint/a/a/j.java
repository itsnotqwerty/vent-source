package android.support.constraint.a.a;

import android.support.constraint.a.e;
import android.support.constraint.a.f;
import android.support.constraint.a.h;

public final class j
  extends l
{
  float ff;
  c hM;
  j hN;
  float hO;
  j hP;
  public float hQ;
  private j hR;
  private float hS;
  private k hT = null;
  private int hU = 1;
  private k hV = null;
  private int hW = 1;
  int type = 0;
  
  public j(c paramc)
  {
    this.hM = paramc;
  }
  
  private static String o(int paramInt)
  {
    if (paramInt == 1) {
      return "DIRECT";
    }
    if (paramInt == 2) {
      return "CENTER";
    }
    if (paramInt == 3) {
      return "MATCH";
    }
    if (paramInt == 4) {
      return "CHAIN";
    }
    if (paramInt == 5) {
      return "BARRIER";
    }
    return "UNCONNECTED";
  }
  
  public final void a(j paramj, float paramFloat)
  {
    if ((this.state == 0) || ((this.hP != paramj) && (this.hQ != paramFloat)))
    {
      this.hP = paramj;
      this.hQ = paramFloat;
      if (this.state == 1) {
        invalidate();
      }
      aU();
    }
  }
  
  public final void a(j paramj, int paramInt)
  {
    this.type = 1;
    this.hN = paramj;
    this.hO = paramInt;
    this.hN.a(this);
  }
  
  public final void a(j paramj, int paramInt, k paramk)
  {
    this.hN = paramj;
    this.hN.a(this);
    this.hT = paramk;
    this.hU = paramInt;
    this.hT.a(this);
  }
  
  public final void aw()
  {
    if (this.state == 1) {}
    label8:
    label355:
    label510:
    label538:
    do
    {
      do
      {
        do
        {
          break label8;
          do
          {
            return;
          } while (this.type == 4);
          if (this.hT == null) {
            break;
          }
        } while (this.hT.state != 1);
        this.hO = (this.hU * this.hT.value);
        if (this.hV == null) {
          break;
        }
      } while (this.hV.state != 1);
      this.hS = (this.hW * this.hV.value);
      if ((this.type == 1) && ((this.hN == null) || (this.hN.state == 1)))
      {
        if (this.hN == null) {
          this.hP = this;
        }
        for (this.hQ = this.hO;; this.hQ = (this.hN.hQ + this.hO))
        {
          aU();
          return;
          this.hP = this.hN.hP;
        }
      }
      Object localObject;
      if ((this.type == 2) && (this.hN != null) && (this.hN.state == 1) && (this.hR != null) && (this.hR.hN != null) && (this.hR.hN.state == 1))
      {
        if (e.am() != null)
        {
          localObject = e.am();
          ((f)localObject).eO += 1L;
        }
        this.hP = this.hN.hP;
        this.hR.hP = this.hR.hN.hP;
        float f1;
        float f2;
        int j;
        int i;
        if (this.hS > 0.0F)
        {
          f1 = this.hN.hQ - this.hR.hN.hQ;
          if ((this.hM.fw != c.c.fN) && (this.hM.fw != c.c.fP)) {
            break label510;
          }
          f2 = f1 - this.hM.fv.getWidth();
          f1 = this.hM.fv.gO;
          j = this.hM.ay();
          i = this.hR.hM.ay();
          if (this.hM.fx == this.hR.hM.fx)
          {
            f1 = 0.5F;
            i = 0;
            j = 0;
          }
          f2 = f2 - j - i;
          if (this.hS <= 0.0F) {
            break label538;
          }
          localObject = this.hR;
          float f3 = this.hR.hN.hQ;
          ((j)localObject).hQ = (i + f3 + f2 * f1);
        }
        for (this.hQ = (this.hN.hQ - j - (1.0F - f1) * f2);; this.hR.hQ = (this.hR.hN.hQ - i - (1.0F - f1) * f2))
        {
          aU();
          this.hR.aU();
          return;
          f1 = this.hR.hN.hQ - this.hN.hQ;
          break;
          f2 = f1 - this.hM.fv.getHeight();
          f1 = this.hM.fv.gP;
          break label355;
          this.hQ = (this.hN.hQ + j + f2 * f1);
        }
      }
      if ((this.type == 3) && (this.hN != null) && (this.hN.state == 1) && (this.hR != null) && (this.hR.hN != null) && (this.hR.hN.state == 1))
      {
        if (e.am() != null)
        {
          localObject = e.am();
          ((f)localObject).eP += 1L;
        }
        this.hP = this.hN.hP;
        this.hR.hP = this.hR.hN.hP;
        this.hQ = (this.hN.hQ + this.hO);
        this.hR.hQ = (this.hR.hN.hQ + this.hR.hO);
        aU();
        this.hR.aU();
        return;
      }
    } while (this.type != 5);
    this.hM.fv.aw();
  }
  
  public final void b(j paramj, float paramFloat)
  {
    this.hR = paramj;
    this.hS = paramFloat;
  }
  
  public final void b(j paramj, int paramInt)
  {
    this.hN = paramj;
    this.hO = paramInt;
    this.hN.a(this);
  }
  
  public final void b(j paramj, int paramInt, k paramk)
  {
    this.hR = paramj;
    this.hV = paramk;
    this.hW = paramInt;
  }
  
  final void b(e parame)
  {
    h localh = this.hM.fD;
    if (this.hP == null)
    {
      parame.a(localh, (int)this.hQ);
      return;
    }
    parame.c(localh, parame.h(this.hP.hM), (int)this.hQ, 6);
  }
  
  public final void reset()
  {
    super.reset();
    this.hN = null;
    this.hO = 0.0F;
    this.hT = null;
    this.hU = 1;
    this.hV = null;
    this.hW = 1;
    this.hP = null;
    this.hQ = 0.0F;
    this.ff = 0.0F;
    this.hR = null;
    this.hS = 0.0F;
    this.type = 0;
  }
  
  public final String toString()
  {
    if (this.state == 1)
    {
      if (this.hP == this) {
        return "[" + this.hM + ", RESOLVED: " + this.hQ + "]  type: " + o(this.type);
      }
      return "[" + this.hM + ", RESOLVED: " + this.hP + ":" + this.hQ + "] type: " + o(this.type);
    }
    return "{ " + this.hM + " UNRESOLVED} type: " + o(this.type);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/a/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */