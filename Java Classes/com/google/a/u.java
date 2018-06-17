package com.google.a;

import com.google.a.b.a.f;
import com.google.a.d.a;
import com.google.a.d.b;
import com.google.a.d.c;
import java.io.IOException;

public abstract class u<T>
{
  public abstract T a(a parama)
    throws IOException;
  
  public abstract void a(c paramc, T paramT)
    throws IOException;
  
  public final k ad(T paramT)
  {
    try
    {
      f localf = new f();
      a(localf, paramT);
      paramT = localf.vz();
      return paramT;
    }
    catch (IOException paramT)
    {
      throw new l(paramT);
    }
  }
  
  public final u<T> vi()
  {
    new u()
    {
      public final T a(a paramAnonymousa)
        throws IOException
      {
        if (paramAnonymousa.vv() == b.bku)
        {
          paramAnonymousa.nextNull();
          return null;
        }
        return (T)u.this.a(paramAnonymousa);
      }
      
      public final void a(c paramAnonymousc, T paramAnonymousT)
        throws IOException
      {
        if (paramAnonymousT == null)
        {
          paramAnonymousc.vF();
          return;
        }
        u.this.a(paramAnonymousc, paramAnonymousT);
      }
    };
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */