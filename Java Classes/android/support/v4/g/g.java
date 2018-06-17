package android.support.v4.g;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.Set;

public class g<K, V>
{
  private final LinkedHashMap<K, V> ED;
  private int EE;
  private int EF;
  private int EG;
  private int hitCount;
  private int maxSize;
  private int size;
  
  public g(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    this.maxSize = paramInt;
    this.ED = new LinkedHashMap(0, 0.75F, true);
  }
  
  public void entryRemoved(boolean paramBoolean, K paramK, V paramV1, V paramV2) {}
  
  public final V get(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    try
    {
      paramK = this.ED.get(paramK);
      if (paramK != null)
      {
        this.hitCount += 1;
        return paramK;
      }
      this.EG += 1;
      return null;
    }
    finally {}
  }
  
  public final V put(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null)) {
      throw new NullPointerException("key == null || value == null");
    }
    try
    {
      this.EE += 1;
      this.size += 1;
      Object localObject = this.ED.put(paramK, paramV);
      if (localObject != null) {
        this.size -= 1;
      }
      if (localObject != null) {
        entryRemoved(false, paramK, localObject, paramV);
      }
      trimToSize(this.maxSize);
      return (V)localObject;
    }
    finally {}
  }
  
  public final int size()
  {
    try
    {
      int i = this.size;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final String toString()
  {
    int i = 0;
    try
    {
      int j = this.hitCount + this.EG;
      if (j != 0) {
        i = this.hitCount * 100 / j;
      }
      String str = String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[] { Integer.valueOf(this.maxSize), Integer.valueOf(this.hitCount), Integer.valueOf(this.EG), Integer.valueOf(i) });
      return str;
    }
    finally {}
  }
  
  public final void trimToSize(int paramInt)
  {
    Object localObject3;
    Object localObject2;
    try
    {
      if ((this.size < 0) || ((this.ED.isEmpty()) && (this.size != 0))) {
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
      }
    }
    finally
    {
      throw ((Throwable)localObject1);
      if ((this.size <= paramInt) || (this.ED.isEmpty())) {
        return;
      }
      localObject3 = (Map.Entry)this.ED.entrySet().iterator().next();
      localObject2 = ((Map.Entry)localObject3).getKey();
      localObject3 = ((Map.Entry)localObject3).getValue();
      this.ED.remove(localObject2);
      this.size -= 1;
      this.EF += 1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/g/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */