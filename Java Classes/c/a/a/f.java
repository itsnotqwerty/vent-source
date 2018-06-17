package c.a.a;

import c.a.a.b.b.a;
import c.a.a.b.h;
import c.a.a.b.j;
import c.a.a.d.b;

public final class f
{
  private final h cUU;
  private final b cUV = new b();
  
  public f()
  {
    this(new b.a());
  }
  
  public f(j paramj)
  {
    this.cUU = paramj.a(this.cUV);
  }
  
  public final void a(c paramc, byte[] paramArrayOfByte)
    throws g
  {
    try
    {
      b localb = this.cUV;
      int i = paramArrayOfByte.length;
      localb.bIG = paramArrayOfByte;
      localb.b = 0;
      localb.c = (i + 0);
      paramc.a(this.cUU);
      return;
    }
    finally
    {
      this.cUV.bIG = null;
      this.cUU.LE();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */