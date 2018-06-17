package io.intercom.a.b.a;

import io.intercom.a.b.a.b.a.f;
import io.intercom.a.b.a.d.a;
import io.intercom.a.b.a.d.b;
import io.intercom.a.b.a.d.c;
import java.io.IOException;
import java.util.List;

public abstract class r<T>
{
  public final r<T> Kc()
  {
    new r()
    {
      public final T a(a paramAnonymousa)
        throws IOException
      {
        if (paramAnonymousa.Kh() == b.cTE)
        {
          paramAnonymousa.nextNull();
          return null;
        }
        return (T)r.this.a(paramAnonymousa);
      }
      
      public final void a(c paramAnonymousc, T paramAnonymousT)
        throws IOException
      {
        if (paramAnonymousT == null)
        {
          paramAnonymousc.Kn();
          return;
        }
        r.this.a(paramAnonymousc, paramAnonymousT);
      }
    };
  }
  
  public abstract T a(a parama)
    throws IOException;
  
  public abstract void a(c paramc, T paramT)
    throws IOException;
  
  public final i aC(T paramT)
  {
    f localf;
    try
    {
      localf = new f();
      a(localf, paramT);
      if (!localf.bif.isEmpty()) {
        throw new IllegalStateException("Expected one JSON element but was " + localf.bif);
      }
    }
    catch (IOException paramT)
    {
      throw new j(paramT);
    }
    paramT = localf.cSd;
    return paramT;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */