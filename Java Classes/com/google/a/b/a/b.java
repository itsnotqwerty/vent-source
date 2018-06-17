package com.google.a.b.a;

import com.google.a.b.c;
import com.google.a.b.i;
import com.google.a.c.a;
import com.google.a.f;
import com.google.a.u;
import com.google.a.v;
import java.lang.reflect.Type;
import java.util.Collection;

public final class b
  implements v
{
  private final c bgt;
  
  public b(c paramc)
  {
    this.bgt = paramc;
  }
  
  public final <T> u<T> a(f paramf, a<T> parama)
  {
    Type localType = parama.biJ;
    Class localClass = parama.bkb;
    if (!Collection.class.isAssignableFrom(localClass)) {
      return null;
    }
    localType = com.google.a.b.b.a(localType, localClass);
    return new a(paramf, localType, paramf.a(a.e(localType)), this.bgt.b(parama));
  }
  
  private static final class a<E>
    extends u<Collection<E>>
  {
    private final u<E> bhV;
    private final i<? extends Collection<E>> bhW;
    
    public a(f paramf, Type paramType, u<E> paramu, i<? extends Collection<E>> parami)
    {
      this.bhV = new m(paramf, paramu, paramType);
      this.bhW = parami;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */