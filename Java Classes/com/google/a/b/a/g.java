package com.google.a.b.a;

import com.google.a.b.b;
import com.google.a.b.c;
import com.google.a.b.i;
import com.google.a.c.a;
import com.google.a.f;
import com.google.a.u;
import com.google.a.v;
import java.lang.reflect.Type;
import java.util.Map;

public final class g
  implements v
{
  final boolean bgA;
  private final c bgt;
  
  public g(c paramc, boolean paramBoolean)
  {
    this.bgt = paramc;
    this.bgA = paramBoolean;
  }
  
  public final <T> u<T> a(f paramf, a<T> parama)
  {
    Object localObject = parama.biJ;
    if (!Map.class.isAssignableFrom(parama.bkb)) {
      return null;
    }
    Type[] arrayOfType = b.b((Type)localObject, b.getRawType((Type)localObject));
    localObject = arrayOfType[0];
    if ((localObject == Boolean.TYPE) || (localObject == Boolean.class)) {}
    for (localObject = n.biP;; localObject = paramf.a(a.e((Type)localObject)))
    {
      u localu = paramf.a(a.e(arrayOfType[1]));
      parama = this.bgt.b(parama);
      return new a(paramf, arrayOfType[0], (u)localObject, arrayOfType[1], localu, parama);
    }
  }
  
  private final class a<K, V>
    extends u<Map<K, V>>
  {
    private final i<? extends Map<K, V>> bhW;
    private final u<K> bii;
    private final u<V> bij;
    
    public a(Type paramType1, u<K> paramu, Type paramType2, u<V> paramu1, i<? extends Map<K, V>> parami)
    {
      this.bii = new m(paramType1, paramType2, paramu);
      this.bij = new m(paramType1, parami, paramu1);
      i locali;
      this.bhW = locali;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */