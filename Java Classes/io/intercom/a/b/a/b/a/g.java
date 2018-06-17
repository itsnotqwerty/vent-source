package io.intercom.a.b.a.b.a;

import io.intercom.a.b.a.b.b;
import io.intercom.a.b.a.b.c;
import io.intercom.a.b.a.b.h;
import io.intercom.a.b.a.c.a;
import io.intercom.a.b.a.e;
import io.intercom.a.b.a.r;
import io.intercom.a.b.a.s;
import java.lang.reflect.Type;
import java.util.Map;

public final class g
  implements s
{
  final boolean bgA;
  private final c cRm;
  
  public g(c paramc)
  {
    this.cRm = paramc;
    this.bgA = false;
  }
  
  public final <T> r<T> a(e parame, a<T> parama)
  {
    Object localObject = parama.biJ;
    if (!Map.class.isAssignableFrom(parama.bkb)) {
      return null;
    }
    Type[] arrayOfType = b.b((Type)localObject, b.getRawType((Type)localObject));
    localObject = arrayOfType[0];
    if ((localObject == Boolean.TYPE) || (localObject == Boolean.class)) {}
    for (localObject = n.cSy;; localObject = parame.a(a.f((Type)localObject)))
    {
      r localr = parame.a(a.f(arrayOfType[1]));
      parama = this.cRm.b(parama);
      return new a(parame, arrayOfType[0], (r)localObject, arrayOfType[1], localr, parama);
    }
  }
  
  private final class a<K, V>
    extends r<Map<K, V>>
  {
    private final h<? extends Map<K, V>> cRZ;
    private final r<K> cSe;
    private final r<V> cSf;
    
    public a(Type paramType1, r<K> paramr, Type paramType2, r<V> paramr1, h<? extends Map<K, V>> paramh)
    {
      this.cSe = new m(paramType1, paramType2, paramr);
      this.cSf = new m(paramType1, paramh, paramr1);
      h localh;
      this.cRZ = localh;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */