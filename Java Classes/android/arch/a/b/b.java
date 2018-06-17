package android.arch.a.b;

import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

public class b<K, V>
  implements Iterable<Map.Entry<K, V>>
{
  public c<K, V> af;
  public c<K, V> ag;
  public WeakHashMap<f<K, V>, Boolean> ah = new WeakHashMap();
  public int ai = 0;
  
  public final b<K, V>.d W()
  {
    d locald = new d((byte)0);
    this.ah.put(locald, Boolean.valueOf(false));
    return locald;
  }
  
  protected final c<K, V> b(K paramK, V paramV)
  {
    paramK = new c(paramK, paramV);
    this.ai += 1;
    if (this.ag == null)
    {
      this.af = paramK;
      this.ag = this.af;
      return paramK;
    }
    this.ag.ak = paramK;
    paramK.al = this.ag;
    this.ag = paramK;
    return paramK;
  }
  
  protected c<K, V> e(K paramK)
  {
    for (c localc = this.af; (localc != null) && (!localc.aj.equals(paramK)); localc = localc.ak) {}
    return localc;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof b)) {
      return false;
    }
    Object localObject1 = (b)paramObject;
    if (this.ai != ((b)localObject1).ai) {
      return false;
    }
    paramObject = iterator();
    localObject1 = ((b)localObject1).iterator();
    while ((((Iterator)paramObject).hasNext()) && (((Iterator)localObject1).hasNext()))
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)paramObject).next();
      Object localObject2 = ((Iterator)localObject1).next();
      if (((localEntry == null) && (localObject2 != null)) || ((localEntry != null) && (!localEntry.equals(localObject2)))) {
        return false;
      }
    }
    return (!((Iterator)paramObject).hasNext()) && (!((Iterator)localObject1).hasNext());
  }
  
  public Iterator<Map.Entry<K, V>> iterator()
  {
    a locala = new a(this.af, this.ag);
    this.ah.put(locala, Boolean.valueOf(false));
    return locala;
  }
  
  public V putIfAbsent(K paramK, V paramV)
  {
    c localc = e(paramK);
    if (localc != null) {
      return (V)localc.mValue;
    }
    b(paramK, paramV);
    return null;
  }
  
  public V remove(K paramK)
  {
    paramK = e(paramK);
    if (paramK == null) {
      return null;
    }
    this.ai -= 1;
    if (!this.ah.isEmpty())
    {
      Iterator localIterator = this.ah.keySet().iterator();
      while (localIterator.hasNext()) {
        ((f)localIterator.next()).c(paramK);
      }
    }
    if (paramK.al != null)
    {
      paramK.al.ak = paramK.ak;
      if (paramK.ak == null) {
        break label134;
      }
      paramK.ak.al = paramK.al;
    }
    for (;;)
    {
      paramK.ak = null;
      paramK.al = null;
      return (V)paramK.mValue;
      this.af = paramK.ak;
      break;
      label134:
      this.ag = paramK.al;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    Iterator localIterator = iterator();
    while (localIterator.hasNext())
    {
      localStringBuilder.append(((Map.Entry)localIterator.next()).toString());
      if (localIterator.hasNext()) {
        localStringBuilder.append(", ");
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  static final class a<K, V>
    extends b.e<K, V>
  {
    a(b.c<K, V> paramc1, b.c<K, V> paramc2)
    {
      super(paramc2);
    }
    
    final b.c<K, V> a(b.c<K, V> paramc)
    {
      return paramc.ak;
    }
    
    final b.c<K, V> b(b.c<K, V> paramc)
    {
      return paramc.al;
    }
  }
  
  private static final class b<K, V>
    extends b.e<K, V>
  {
    public b(b.c<K, V> paramc1, b.c<K, V> paramc2)
    {
      super(paramc2);
    }
    
    final b.c<K, V> a(b.c<K, V> paramc)
    {
      return paramc.al;
    }
    
    final b.c<K, V> b(b.c<K, V> paramc)
    {
      return paramc.ak;
    }
  }
  
  public static final class c<K, V>
    implements Map.Entry<K, V>
  {
    final K aj;
    c<K, V> ak;
    public c<K, V> al;
    final V mValue;
    
    c(K paramK, V paramV)
    {
      this.aj = paramK;
      this.mValue = paramV;
    }
    
    public final boolean equals(Object paramObject)
    {
      if (paramObject == this) {}
      do
      {
        return true;
        if (!(paramObject instanceof c)) {
          return false;
        }
        paramObject = (c)paramObject;
      } while ((this.aj.equals(((c)paramObject).aj)) && (this.mValue.equals(((c)paramObject).mValue)));
      return false;
    }
    
    public final K getKey()
    {
      return (K)this.aj;
    }
    
    public final V getValue()
    {
      return (V)this.mValue;
    }
    
    public final V setValue(V paramV)
    {
      throw new UnsupportedOperationException("An entry modification is not supported");
    }
    
    public final String toString()
    {
      return this.aj + "=" + this.mValue;
    }
  }
  
  private final class d
    implements b.f<K, V>, Iterator<Map.Entry<K, V>>
  {
    private b.c<K, V> am;
    private boolean an = true;
    
    private d() {}
    
    public final void c(b.c<K, V> paramc)
    {
      if (paramc == this.am)
      {
        this.am = this.am.al;
        if (this.am != null) {
          break label34;
        }
      }
      label34:
      for (boolean bool = true;; bool = false)
      {
        this.an = bool;
        return;
      }
    }
    
    public final boolean hasNext()
    {
      if (this.an) {
        if (b.a(b.this) == null) {}
      }
      while ((this.am != null) && (this.am.ak != null))
      {
        return true;
        return false;
      }
      return false;
    }
  }
  
  private static abstract class e<K, V>
    implements b.f<K, V>, Iterator<Map.Entry<K, V>>
  {
    b.c<K, V> ak;
    b.c<K, V> ap;
    
    e(b.c<K, V> paramc1, b.c<K, V> paramc2)
    {
      this.ap = paramc2;
      this.ak = paramc1;
    }
    
    private b.c<K, V> X()
    {
      if ((this.ak == this.ap) || (this.ap == null)) {
        return null;
      }
      return a(this.ak);
    }
    
    abstract b.c<K, V> a(b.c<K, V> paramc);
    
    abstract b.c<K, V> b(b.c<K, V> paramc);
    
    public final void c(b.c<K, V> paramc)
    {
      if ((this.ap == paramc) && (paramc == this.ak))
      {
        this.ak = null;
        this.ap = null;
      }
      if (this.ap == paramc) {
        this.ap = b(this.ap);
      }
      if (this.ak == paramc) {
        this.ak = X();
      }
    }
    
    public boolean hasNext()
    {
      return this.ak != null;
    }
  }
  
  static abstract interface f<K, V>
  {
    public abstract void c(b.c<K, V> paramc);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/arch/a/b/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */