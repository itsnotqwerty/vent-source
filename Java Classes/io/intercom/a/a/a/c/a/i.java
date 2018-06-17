package io.intercom.a.a.a.c.a;

import io.intercom.a.a.a.c.b.a.b;
import io.intercom.a.a.a.c.d.a.q;
import java.io.InputStream;

public final class i
  implements c<InputStream>
{
  private final q cIt;
  
  i(InputStream paramInputStream, b paramb)
  {
    this.cIt = new q(paramInputStream, paramb);
    this.cIt.mark(5242880);
  }
  
  public final void cleanup()
  {
    this.cIt.release();
  }
  
  public static final class a
    implements c.a<InputStream>
  {
    private final b cIu;
    
    public a(b paramb)
    {
      this.cIu = paramb;
    }
    
    public final Class<InputStream> HU()
    {
      return InputStream.class;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */