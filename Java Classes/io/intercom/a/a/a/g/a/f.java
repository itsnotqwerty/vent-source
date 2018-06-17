package io.intercom.a.a.a.g.a;

import io.intercom.a.a.a.i.i;

public abstract class f<Z>
  extends a<Z>
{
  private final int height;
  private final int width;
  
  public f()
  {
    this(Integer.MIN_VALUE, Integer.MIN_VALUE);
  }
  
  public f(int paramInt1, int paramInt2)
  {
    this.width = paramInt1;
    this.height = paramInt2;
  }
  
  public final void getSize(g paramg)
  {
    if (!i.aR(this.width, this.height)) {
      throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.width + " and height: " + this.height + ", either provide dimensions in the constructor or call override()");
    }
    paramg.aP(this.width, this.height);
  }
  
  public void removeCallback(g paramg) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/g/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */