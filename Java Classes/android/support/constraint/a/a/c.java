package android.support.constraint.a.a;

import android.support.constraint.a.h;
import android.support.constraint.a.h.a;

public final class c
{
  int fA = b.fI;
  private int fB = a.fF;
  int fC = 0;
  public h fD;
  public j fu = new j(this);
  final d fv;
  final c fw;
  public c fx;
  public int fy = 0;
  int fz = -1;
  
  public c(d paramd, c paramc)
  {
    this.fv = paramd;
    this.fw = paramc;
  }
  
  public final boolean a(c paramc, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    if (paramc == null)
    {
      this.fx = null;
      this.fy = 0;
      this.fz = -1;
      this.fA = b.fI;
      this.fC = 2;
      return true;
    }
    if (!paramBoolean)
    {
      int i;
      if (paramc == null) {
        i = 0;
      }
      while (i == 0)
      {
        return false;
        c localc = paramc.fw;
        if (localc == this.fw)
        {
          if ((this.fw == c.fR) && ((!paramc.fv.aI()) || (!this.fv.aI()))) {
            i = 0;
          } else {
            i = 1;
          }
        }
        else
        {
          int j;
          switch (1.fE[this.fw.ordinal()])
          {
          default: 
            throw new AssertionError(this.fw.name());
          case 1: 
            if ((localc != c.fR) && (localc != c.fT) && (localc != c.fU)) {
              i = 1;
            } else {
              i = 0;
            }
            break;
          case 2: 
          case 3: 
            if ((localc == c.fN) || (localc == c.fP)) {}
            for (j = 1;; j = 0)
            {
              i = j;
              if (!(paramc.fv instanceof f)) {
                break;
              }
              if ((j == 0) && (localc != c.fT)) {
                break label281;
              }
              i = 1;
              break;
            }
            i = 0;
            break;
          case 4: 
          case 5: 
            if ((localc == c.fO) || (localc == c.fQ)) {}
            for (j = 1;; j = 0)
            {
              i = j;
              if (!(paramc.fv instanceof f)) {
                break;
              }
              if ((j == 0) && (localc != c.fU)) {
                break label345;
              }
              i = 1;
              break;
            }
            i = 0;
            break;
          case 6: 
          case 7: 
          case 8: 
          case 9: 
            label281:
            label345:
            i = 0;
          }
        }
      }
    }
    this.fx = paramc;
    if (paramInt1 > 0) {}
    for (this.fy = paramInt1;; this.fy = 0)
    {
      this.fz = paramInt2;
      this.fA = paramInt3;
      this.fC = paramInt4;
      return true;
    }
  }
  
  public final void ax()
  {
    if (this.fD == null)
    {
      this.fD = new h(h.a.fl);
      return;
    }
    this.fD.reset();
  }
  
  public final int ay()
  {
    if (this.fv.gS == 8) {
      return 0;
    }
    if ((this.fz >= 0) && (this.fx != null) && (this.fx.fv.gS == 8)) {
      return this.fz;
    }
    return this.fy;
  }
  
  public final boolean isConnected()
  {
    return this.fx != null;
  }
  
  public final void reset()
  {
    this.fx = null;
    this.fy = 0;
    this.fz = -1;
    this.fA = b.fJ;
    this.fC = 0;
    this.fB = a.fF;
    this.fu.reset();
  }
  
  public final String toString()
  {
    return this.fv.gT + ":" + this.fw.toString();
  }
  
  public static enum a
  {
    public static final int fF = 1;
    public static final int fG = 2;
  }
  
  public static enum b
  {
    public static final int fI = 1;
    public static final int fJ = 2;
    public static final int fK = 3;
  }
  
  public static enum c
  {
    private c() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */