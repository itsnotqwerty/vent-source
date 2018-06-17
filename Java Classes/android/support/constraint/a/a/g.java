package android.support.constraint.a.a;

import java.util.Arrays;

public class g
  extends d
{
  protected d[] hJ = new d[4];
  protected int hK = 0;
  
  public final void a(d paramd)
  {
    if (this.hK + 1 > this.hJ.length) {
      this.hJ = ((d[])Arrays.copyOf(this.hJ, this.hJ.length * 2));
    }
    this.hJ[this.hK] = paramd;
    this.hK += 1;
  }
  
  public final void aT()
  {
    this.hK = 0;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */