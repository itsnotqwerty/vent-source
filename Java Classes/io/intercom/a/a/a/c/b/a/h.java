package io.intercom.a.a.a.c.b.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class h<K extends m, V>
{
  private final a<K, V> cLk = new a();
  private final Map<K, a<K, V>> cLl = new HashMap();
  
  private static <K, V> void a(a<K, V> parama)
  {
    parama.cLm.cLn = parama;
    parama.cLn.cLm = parama;
  }
  
  private static <K, V> void b(a<K, V> parama)
  {
    parama.cLn.cLm = parama.cLm;
    parama.cLm.cLn = parama.cLn;
  }
  
  public final void a(K paramK, V paramV)
  {
    a locala = (a)this.cLl.get(paramK);
    if (locala == null)
    {
      locala = new a(paramK);
      b(locala);
      locala.cLn = this.cLk.cLn;
      locala.cLm = this.cLk;
      a(locala);
      this.cLl.put(paramK, locala);
    }
    for (paramK = locala;; paramK = locala)
    {
      if (paramK.values == null) {
        paramK.values = new ArrayList();
      }
      paramK.values.add(paramV);
      return;
      paramK.Iy();
    }
  }
  
  public final V b(K paramK)
  {
    a locala = (a)this.cLl.get(paramK);
    if (locala == null)
    {
      locala = new a(paramK);
      this.cLl.put(paramK, locala);
    }
    for (paramK = locala;; paramK = locala)
    {
      b(paramK);
      paramK.cLn = this.cLk;
      paramK.cLm = this.cLk.cLm;
      a(paramK);
      return (V)paramK.removeLast();
      paramK.Iy();
    }
  }
  
  public final V removeLast()
  {
    for (a locala = this.cLk.cLn; !locala.equals(this.cLk); locala = locala.cLn)
    {
      Object localObject = locala.removeLast();
      if (localObject != null) {
        return (V)localObject;
      }
      b(locala);
      this.cLl.remove(locala.bhL);
      ((m)locala.bhL).Iy();
    }
    return null;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("GroupedLinkedMap( ");
    a locala = this.cLk.cLm;
    int i = 0;
    while (!locala.equals(this.cLk))
    {
      i = 1;
      localStringBuilder.append('{').append(locala.bhL).append(':').append(locala.size()).append("}, ");
      locala = locala.cLm;
    }
    if (i != 0) {
      localStringBuilder.delete(localStringBuilder.length() - 2, localStringBuilder.length());
    }
    return " )";
  }
  
  private static final class a<K, V>
  {
    final K bhL;
    a<K, V> cLm = this;
    a<K, V> cLn = this;
    List<V> values;
    
    a()
    {
      this(null);
    }
    
    a(K paramK)
    {
      this.bhL = paramK;
    }
    
    public final V removeLast()
    {
      int i = size();
      if (i > 0) {
        return (V)this.values.remove(i - 1);
      }
      return null;
    }
    
    public final int size()
    {
      if (this.values != null) {
        return this.values.size();
      }
      return 0;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */