package io.intercom.a.b.a.b.a;

import io.intercom.a.b.a.d.c;
import io.intercom.a.b.a.e;
import io.intercom.a.b.a.r;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class m<T>
  extends r<T>
{
  private final Type biJ;
  private final r<T> cRs;
  private final e cSs;
  
  m(e parame, r<T> paramr, Type paramType)
  {
    this.cSs = parame;
    this.cRs = paramr;
    this.biJ = paramType;
  }
  
  public final T a(io.intercom.a.b.a.d.a parama)
    throws IOException
  {
    return (T)this.cRs.a(parama);
  }
  
  public final void a(c paramc, T paramT)
    throws IOException
  {
    r localr = this.cRs;
    Type localType = this.biJ;
    Object localObject = localType;
    if (paramT != null) {
      if ((localType != Object.class) && (!(localType instanceof TypeVariable)))
      {
        localObject = localType;
        if (!(localType instanceof Class)) {}
      }
      else
      {
        localObject = paramT.getClass();
      }
    }
    if (localObject != this.biJ)
    {
      localr = this.cSs.a(io.intercom.a.b.a.c.a.f((Type)localObject));
      localObject = localr;
      if ((localr instanceof i.a))
      {
        localObject = localr;
        if ((this.cRs instanceof i.a)) {}
      }
    }
    for (localObject = this.cRs;; localObject = localr)
    {
      ((r)localObject).a(paramc, paramT);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/a/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */