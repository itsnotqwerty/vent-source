package com.layer.a.a;

import java.io.IOException;

public final class b
  implements a
{
  private final int bpD;
  private final int bpE;
  private final c bpF;
  long c;
  private int d;
  private final double f;
  private final double g;
  private final int i;
  
  public b()
  {
    this(new a());
  }
  
  protected b(a parama)
  {
    this.bpD = parama.a;
    this.f = parama.b;
    this.g = parama.c;
    this.bpE = parama.d;
    this.i = parama.bpD;
    this.bpF = parama.bpG;
    if (this.bpD > 0)
    {
      bool1 = true;
      d.a(bool1);
      if ((0.0D > this.f) || (this.f >= 1.0D)) {
        break label163;
      }
      bool1 = true;
      label87:
      d.a(bool1);
      if (this.g < 1.0D) {
        break label168;
      }
      bool1 = true;
      label102:
      d.a(bool1);
      if (this.bpE < this.bpD) {
        break label173;
      }
      bool1 = true;
      label119:
      d.a(bool1);
      if (this.i <= 0) {
        break label178;
      }
    }
    label163:
    label168:
    label173:
    label178:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      d.a(bool1);
      this.d = this.bpD;
      this.c = this.bpF.a();
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label87;
      bool1 = false;
      break label102;
      bool1 = false;
      break label119;
    }
  }
  
  public final long a()
    throws IOException
  {
    if ((this.bpF.a() - this.c) / 1000000L > this.i) {
      return -1L;
    }
    double d2 = this.f;
    double d1 = Math.random();
    int j = this.d;
    d2 *= j;
    double d3 = j - d2;
    j = (int)((d2 + j - d3 + 1.0D) * d1 + d3);
    if (this.d >= this.bpE / this.g) {}
    for (this.d = this.bpE;; this.d = ((int)(this.d * this.g))) {
      return j;
    }
  }
  
  public static final class a
  {
    int a = 500;
    double b = 0.5D;
    public int bpD = 900000;
    c bpG = c.a;
    double c = 1.5D;
    int d = 60000;
    
    public final b wo()
    {
      return new b(this);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/a/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */