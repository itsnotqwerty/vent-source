package io.intercom.a.b.a.b.a;

import io.intercom.a.b.a.b.c;
import io.intercom.a.b.a.b.h;
import io.intercom.a.b.a.c.a;
import io.intercom.a.b.a.e;
import io.intercom.a.b.a.r;
import io.intercom.a.b.a.s;
import java.lang.reflect.Type;
import java.util.Collection;

public final class b
  implements s
{
  private final c cRm;
  
  public b(c paramc)
  {
    this.cRm = paramc;
  }
  
  public final <T> r<T> a(e parame, a<T> parama)
  {
    Type localType = parama.biJ;
    Class localClass = parama.bkb;
    if (!Collection.class.isAssignableFrom(localClass)) {
      return null;
    }
    localType = io.intercom.a.b.a.b.b.a(localType, localClass);
    return new a(parame, localType, parame.a(a.f(localType)), this.cRm.b(parama));
  }
  
  private static final class a<E>
    extends r<Collection<E>>
  {
    private final r<E> cRY;
    private final h<? extends Collection<E>> cRZ;
    
    public a(e parame, Type paramType, r<E> paramr, h<? extends Collection<E>> paramh)
    {
      this.cRY = new m(parame, paramr, paramType);
      this.cRZ = paramh;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */