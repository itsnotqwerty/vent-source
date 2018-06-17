package android.support.v4.g;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a<K, V>
  extends m<K, V>
  implements Map<K, V>
{
  h<K, V> Ek;
  
  public a() {}
  
  public a(int paramInt)
  {
    super(paramInt);
  }
  
  public a(m paramm)
  {
    super(paramm);
  }
  
  private h<K, V> dC()
  {
    if (this.Ek == null) {
      this.Ek = new h()
      {
        protected final int C(Object paramAnonymousObject)
        {
          return a.this.indexOfKey(paramAnonymousObject);
        }
        
        protected final int D(Object paramAnonymousObject)
        {
          return a.this.indexOfValue(paramAnonymousObject);
        }
        
        protected final V a(int paramAnonymousInt, V paramAnonymousV)
        {
          a locala = a.this;
          paramAnonymousInt = (paramAnonymousInt << 1) + 1;
          Object localObject = locala.Et[paramAnonymousInt];
          locala.Et[paramAnonymousInt] = paramAnonymousV;
          return (V)localObject;
        }
        
        protected final void an(int paramAnonymousInt)
        {
          a.this.removeAt(paramAnonymousInt);
        }
        
        protected final void d(K paramAnonymousK, V paramAnonymousV)
        {
          a.this.put(paramAnonymousK, paramAnonymousV);
        }
        
        protected final int dD()
        {
          return a.this.ai;
        }
        
        protected final Map<K, V> dE()
        {
          return a.this;
        }
        
        protected final void dF()
        {
          a.this.clear();
        }
        
        protected final Object o(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          return a.this.Et[((paramAnonymousInt1 << 1) + paramAnonymousInt2)];
        }
      };
    }
    return this.Ek;
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    h localh = dC();
    if (localh.EH == null) {
      localh.EH = new h.b(localh);
    }
    return localh.EH;
  }
  
  public Set<K> keySet()
  {
    return dC().dJ();
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    ensureCapacity(this.ai + paramMap.size());
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }
  
  public Collection<V> values()
  {
    h localh = dC();
    if (localh.EJ == null) {
      localh.EJ = new h.e(localh);
    }
    return localh.EJ;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/g/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */