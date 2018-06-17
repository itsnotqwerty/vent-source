package android.support.constraint.a;

import java.util.Arrays;

public final class h
{
  private static int eY = 1;
  private static int eZ = 1;
  private static int fa = 1;
  private static int fb = 1;
  private static int fc = 1;
  int fd = -1;
  public int fe = 0;
  public float ff;
  float[] fg = new float[7];
  int fh;
  b[] fi = new b[8];
  int fj = 0;
  public int fk = 0;
  public int id = -1;
  private String mName;
  
  public h(int paramInt)
  {
    this.fh = paramInt;
  }
  
  static void at()
  {
    eZ += 1;
  }
  
  public final void d(b paramb)
  {
    int i = 0;
    while (i < this.fj)
    {
      if (this.fi[i] == paramb) {
        return;
      }
      i += 1;
    }
    if (this.fj >= this.fi.length) {
      this.fi = ((b[])Arrays.copyOf(this.fi, this.fi.length * 2));
    }
    this.fi[this.fj] = paramb;
    this.fj += 1;
  }
  
  public final void e(b paramb)
  {
    int j = 0;
    int k = this.fj;
    int i = 0;
    for (;;)
    {
      if (i < k)
      {
        if (this.fi[i] == paramb)
        {
          while (j < k - i - 1)
          {
            this.fi[(i + j)] = this.fi[(i + j + 1)];
            j += 1;
          }
          this.fj -= 1;
        }
      }
      else {
        return;
      }
      i += 1;
    }
  }
  
  public final void f(b paramb)
  {
    int m = this.fj;
    int k = 0;
    while (k < m)
    {
      a locala1 = this.fi[k].dW;
      b localb = this.fi[k];
      int j = locala1.dQ;
      int i = 0;
      while ((j != -1) && (i < locala1.dI)) {
        if (locala1.dN[j] == paramb.dT.id)
        {
          float f = locala1.dP[j];
          locala1.a(paramb.dT, false);
          a locala2 = (a)paramb.dW;
          j = locala2.dQ;
          i = 0;
          while ((j != -1) && (i < locala2.dI))
          {
            locala1.a(locala1.dK.ea[locala2.dN[j]], locala2.dP[j] * f, false);
            j = locala2.dO[j];
            i += 1;
          }
          localb.dU += paramb.dU * f;
          j = locala1.dQ;
          i = 0;
        }
        else
        {
          j = locala1.dO[j];
          i += 1;
        }
      }
      k += 1;
    }
    this.fj = 0;
  }
  
  public final void reset()
  {
    this.mName = null;
    this.fh = a.fp;
    this.fe = 0;
    this.id = -1;
    this.fd = -1;
    this.ff = 0.0F;
    this.fj = 0;
    this.fk = 0;
  }
  
  public final String toString()
  {
    return "" + this.mName;
  }
  
  public static enum a
  {
    public static final int fl = 1;
    public static final int fm = 2;
    public static final int fn = 3;
    public static final int fo = 4;
    public static final int fp = 5;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */