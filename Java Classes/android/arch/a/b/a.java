package android.arch.a.b;

import java.util.HashMap;

public final class a<K, V>
  extends b<K, V>
{
  public HashMap<K, b.c<K, V>> ae = new HashMap();
  
  public final boolean contains(K paramK)
  {
    return this.ae.containsKey(paramK);
  }
  
  protected final b.c<K, V> e(K paramK)
  {
    return (b.c)this.ae.get(paramK);
  }
  
  public final V putIfAbsent(K paramK, V paramV)
  {
    b.c localc = e(paramK);
    if (localc != null) {
      return (V)localc.mValue;
    }
    this.ae.put(paramK, b(paramK, paramV));
    return null;
  }
  
  public final V remove(K paramK)
  {
    Object localObject = super.remove(paramK);
    this.ae.remove(paramK);
    return (V)localObject;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/arch/a/b/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */