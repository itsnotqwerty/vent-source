package c.a.a;

import c.a.a.b.b.a;
import c.a.a.b.j;
import c.a.a.d.a;
import java.io.ByteArrayOutputStream;

public final class h
{
  private final ByteArrayOutputStream cUW = new ByteArrayOutputStream();
  private final a cUX = new a(this.cUW);
  private c.a.a.b.h cUY;
  
  public h()
  {
    this(new b.a());
  }
  
  public h(j paramj)
  {
    this.cUY = paramj.a(this.cUX);
  }
  
  public final byte[] a(c paramc)
    throws g
  {
    this.cUW.reset();
    paramc.b(this.cUY);
    return this.cUW.toByteArray();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */