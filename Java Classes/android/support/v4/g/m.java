package android.support.v4.g;

import java.util.ConcurrentModificationException;
import java.util.Map;

public class m<K, V>
{
  static Object[] EP;
  static int EQ;
  static Object[] ER;
  static int ES;
  int[] Es;
  Object[] Et;
  int ai;
  
  public m()
  {
    this.Es = c.Ev;
    this.Et = c.Ex;
    this.ai = 0;
  }
  
  public m(int paramInt)
  {
    if (paramInt == 0)
    {
      this.Es = c.Ev;
      this.Et = c.Ex;
    }
    for (;;)
    {
      this.ai = 0;
      return;
      ao(paramInt);
    }
  }
  
  public m(m<K, V> paramm)
  {
    this();
    if (paramm != null) {
      a(paramm);
    }
  }
  
  private static void a(int[] paramArrayOfInt, Object[] paramArrayOfObject, int paramInt)
  {
    if (paramArrayOfInt.length == 8) {
      try
      {
        if (ES < 10)
        {
          paramArrayOfObject[0] = ER;
          paramArrayOfObject[1] = paramArrayOfInt;
          paramInt = (paramInt << 1) - 1;
          break label117;
          ER = paramArrayOfObject;
          ES += 1;
        }
        return;
      }
      finally {}
    }
    if (paramArrayOfInt.length == 4) {}
    for (;;)
    {
      try
      {
        if (EQ < 10)
        {
          paramArrayOfObject[0] = EP;
          paramArrayOfObject[1] = paramArrayOfInt;
          paramInt = (paramInt << 1) - 1;
          break label134;
          EP = paramArrayOfObject;
          EQ += 1;
        }
        return;
      }
      finally {}
      label117:
      while (paramInt >= 2)
      {
        paramArrayOfObject[paramInt] = null;
        paramInt -= 1;
      }
      break;
      return;
      label134:
      while (paramInt >= 2)
      {
        paramArrayOfObject[paramInt] = null;
        paramInt -= 1;
      }
    }
  }
  
  private void ao(int paramInt)
  {
    if (paramInt == 8) {}
    for (;;)
    {
      try
      {
        if (ER != null)
        {
          Object[] arrayOfObject1 = ER;
          this.Et = arrayOfObject1;
          ER = (Object[])arrayOfObject1[0];
          this.Es = ((int[])arrayOfObject1[1]);
          arrayOfObject1[1] = null;
          arrayOfObject1[0] = null;
          ES -= 1;
          return;
        }
        this.Es = new int[paramInt];
        this.Et = new Object[paramInt << 1];
        return;
      }
      finally {}
      if (paramInt == 4) {
        try
        {
          if (EP != null)
          {
            Object[] arrayOfObject2 = EP;
            this.Et = arrayOfObject2;
            EP = (Object[])arrayOfObject2[0];
            this.Es = ((int[])arrayOfObject2[1]);
            arrayOfObject2[1] = null;
            arrayOfObject2[0] = null;
            EQ -= 1;
            return;
          }
        }
        finally {}
      }
    }
  }
  
  private static int b(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    try
    {
      paramInt1 = c.a(paramArrayOfInt, paramInt1, paramInt2);
      return paramInt1;
    }
    catch (ArrayIndexOutOfBoundsException paramArrayOfInt)
    {
      throw new ConcurrentModificationException();
    }
  }
  
  private int dG()
  {
    int m = this.ai;
    int i;
    if (m == 0) {
      i = -1;
    }
    int j;
    do
    {
      do
      {
        return i;
        j = b(this.Es, m, 0);
        i = j;
      } while (j < 0);
      i = j;
    } while (this.Et[(j << 1)] == null);
    int k = j + 1;
    while ((k < m) && (this.Es[k] == 0))
    {
      if (this.Et[(k << 1)] == null) {
        return k;
      }
      k += 1;
    }
    j -= 1;
    for (;;)
    {
      if ((j < 0) || (this.Es[j] != 0)) {
        break label121;
      }
      i = j;
      if (this.Et[(j << 1)] == null) {
        break;
      }
      j -= 1;
    }
    label121:
    return k ^ 0xFFFFFFFF;
  }
  
  private int indexOf(Object paramObject, int paramInt)
  {
    int m = this.ai;
    int i;
    if (m == 0) {
      i = -1;
    }
    int j;
    do
    {
      do
      {
        return i;
        j = b(this.Es, m, paramInt);
        i = j;
      } while (j < 0);
      i = j;
    } while (paramObject.equals(this.Et[(j << 1)]));
    int k = j + 1;
    while ((k < m) && (this.Es[k] == paramInt))
    {
      if (paramObject.equals(this.Et[(k << 1)])) {
        return k;
      }
      k += 1;
    }
    j -= 1;
    for (;;)
    {
      if ((j < 0) || (this.Es[j] != paramInt)) {
        break label156;
      }
      i = j;
      if (paramObject.equals(this.Et[(j << 1)])) {
        break;
      }
      j -= 1;
    }
    label156:
    return k ^ 0xFFFFFFFF;
  }
  
  public final void a(m<? extends K, ? extends V> paramm)
  {
    int i = 0;
    int j = paramm.ai;
    ensureCapacity(this.ai + j);
    if (this.ai == 0) {
      if (j > 0)
      {
        System.arraycopy(paramm.Es, 0, this.Es, 0, j);
        System.arraycopy(paramm.Et, 0, this.Et, 0, j << 1);
        this.ai = j;
      }
    }
    for (;;)
    {
      return;
      while (i < j)
      {
        put(paramm.keyAt(i), paramm.valueAt(i));
        i += 1;
      }
    }
  }
  
  public void clear()
  {
    if (this.ai > 0)
    {
      int[] arrayOfInt = this.Es;
      Object[] arrayOfObject = this.Et;
      int i = this.ai;
      this.Es = c.Ev;
      this.Et = c.Ex;
      this.ai = 0;
      a(arrayOfInt, arrayOfObject, i);
    }
    if (this.ai > 0) {
      throw new ConcurrentModificationException();
    }
  }
  
  public boolean containsKey(Object paramObject)
  {
    return indexOfKey(paramObject) >= 0;
  }
  
  public boolean containsValue(Object paramObject)
  {
    return indexOfValue(paramObject) >= 0;
  }
  
  public final void ensureCapacity(int paramInt)
  {
    int i = this.ai;
    if (this.Es.length < paramInt)
    {
      int[] arrayOfInt = this.Es;
      Object[] arrayOfObject = this.Et;
      ao(paramInt);
      if (this.ai > 0)
      {
        System.arraycopy(arrayOfInt, 0, this.Es, 0, i);
        System.arraycopy(arrayOfObject, 0, this.Et, 0, i << 1);
      }
      a(arrayOfInt, arrayOfObject, i);
    }
    if (this.ai != i) {
      throw new ConcurrentModificationException();
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    for (;;)
    {
      return true;
      int i;
      Object localObject1;
      Object localObject2;
      Object localObject3;
      boolean bool;
      if ((paramObject instanceof m))
      {
        paramObject = (m)paramObject;
        if (size() != ((m)paramObject).size()) {
          return false;
        }
        i = 0;
        try
        {
          while (i < this.ai)
          {
            localObject1 = keyAt(i);
            localObject2 = valueAt(i);
            localObject3 = ((m)paramObject).get(localObject1);
            if (localObject2 == null)
            {
              if (localObject3 != null) {
                break label227;
              }
              if (!((m)paramObject).containsKey(localObject1)) {
                break label227;
              }
            }
            else
            {
              bool = localObject2.equals(localObject3);
              if (!bool) {
                return false;
              }
            }
            i += 1;
          }
          if (!(paramObject instanceof Map)) {
            break;
          }
        }
        catch (NullPointerException paramObject)
        {
          return false;
        }
        catch (ClassCastException paramObject)
        {
          return false;
        }
      }
      else
      {
        paramObject = (Map)paramObject;
        if (size() != ((Map)paramObject).size()) {
          return false;
        }
        i = 0;
        try
        {
          while (i < this.ai)
          {
            localObject1 = keyAt(i);
            localObject2 = valueAt(i);
            localObject3 = ((Map)paramObject).get(localObject1);
            if (localObject2 == null)
            {
              if (localObject3 != null) {
                break label229;
              }
              if (!((Map)paramObject).containsKey(localObject1)) {
                break label229;
              }
            }
            else
            {
              bool = localObject2.equals(localObject3);
              if (!bool) {
                return false;
              }
            }
            i += 1;
          }
          return false;
        }
        catch (NullPointerException paramObject)
        {
          return false;
        }
        catch (ClassCastException paramObject)
        {
          return false;
        }
      }
    }
    label227:
    return false;
    label229:
    return false;
  }
  
  public V get(Object paramObject)
  {
    int i = indexOfKey(paramObject);
    if (i >= 0) {
      return (V)this.Et[((i << 1) + 1)];
    }
    return null;
  }
  
  public int hashCode()
  {
    int[] arrayOfInt = this.Es;
    Object[] arrayOfObject = this.Et;
    int n = this.ai;
    int i = 1;
    int j = 0;
    int k = 0;
    if (j < n)
    {
      Object localObject = arrayOfObject[i];
      int i1 = arrayOfInt[j];
      if (localObject == null) {}
      for (int m = 0;; m = localObject.hashCode())
      {
        k += (m ^ i1);
        j += 1;
        i += 2;
        break;
      }
    }
    return k;
  }
  
  public final int indexOfKey(Object paramObject)
  {
    if (paramObject == null) {
      return dG();
    }
    return indexOf(paramObject, paramObject.hashCode());
  }
  
  final int indexOfValue(Object paramObject)
  {
    int i = 1;
    int j = 1;
    int k = this.ai * 2;
    Object[] arrayOfObject = this.Et;
    if (paramObject == null)
    {
      i = j;
      while (i < k)
      {
        if (arrayOfObject[i] == null) {
          return i >> 1;
        }
        i += 2;
      }
    }
    do
    {
      i += 2;
      if (i >= k) {
        break;
      }
    } while (!paramObject.equals(arrayOfObject[i]));
    return i >> 1;
    return -1;
  }
  
  public boolean isEmpty()
  {
    return this.ai <= 0;
  }
  
  public final K keyAt(int paramInt)
  {
    return (K)this.Et[(paramInt << 1)];
  }
  
  public V put(K paramK, V paramV)
  {
    int k = 8;
    int m = this.ai;
    int i;
    int j;
    if (paramK == null)
    {
      i = dG();
      j = 0;
    }
    while (i >= 0)
    {
      i = (i << 1) + 1;
      paramK = this.Et[i];
      this.Et[i] = paramV;
      return paramK;
      j = paramK.hashCode();
      i = indexOf(paramK, j);
    }
    int n = i ^ 0xFFFFFFFF;
    if (m >= this.Es.length)
    {
      if (m >= 8) {
        i = (m >> 1) + m;
      }
      int[] arrayOfInt;
      Object[] arrayOfObject;
      for (;;)
      {
        arrayOfInt = this.Es;
        arrayOfObject = this.Et;
        ao(i);
        if (m == this.ai) {
          break;
        }
        throw new ConcurrentModificationException();
        i = k;
        if (m < 4) {
          i = 4;
        }
      }
      if (this.Es.length > 0)
      {
        System.arraycopy(arrayOfInt, 0, this.Es, 0, arrayOfInt.length);
        System.arraycopy(arrayOfObject, 0, this.Et, 0, arrayOfObject.length);
      }
      a(arrayOfInt, arrayOfObject, m);
    }
    if (n < m)
    {
      System.arraycopy(this.Es, n, this.Es, n + 1, m - n);
      System.arraycopy(this.Et, n << 1, this.Et, n + 1 << 1, this.ai - n << 1);
    }
    if ((m != this.ai) || (n >= this.Es.length)) {
      throw new ConcurrentModificationException();
    }
    this.Es[n] = j;
    this.Et[(n << 1)] = paramK;
    this.Et[((n << 1) + 1)] = paramV;
    this.ai += 1;
    return null;
  }
  
  public V remove(Object paramObject)
  {
    int i = indexOfKey(paramObject);
    if (i >= 0) {
      return (V)removeAt(i);
    }
    return null;
  }
  
  public final V removeAt(int paramInt)
  {
    int j = 8;
    Object localObject = this.Et[((paramInt << 1) + 1)];
    int k = this.ai;
    if (k <= 1)
    {
      a(this.Es, this.Et, k);
      this.Es = c.Ev;
      this.Et = c.Ex;
      paramInt = 0;
    }
    while (k != this.ai)
    {
      throw new ConcurrentModificationException();
      int i = k - 1;
      if ((this.Es.length > 8) && (this.ai < this.Es.length / 3))
      {
        if (k > 8) {
          j = (k >> 1) + k;
        }
        int[] arrayOfInt = this.Es;
        Object[] arrayOfObject = this.Et;
        ao(j);
        if (k != this.ai) {
          throw new ConcurrentModificationException();
        }
        if (paramInt > 0)
        {
          System.arraycopy(arrayOfInt, 0, this.Es, 0, paramInt);
          System.arraycopy(arrayOfObject, 0, this.Et, 0, paramInt << 1);
        }
        if (paramInt < i)
        {
          System.arraycopy(arrayOfInt, paramInt + 1, this.Es, paramInt, i - paramInt);
          System.arraycopy(arrayOfObject, paramInt + 1 << 1, this.Et, paramInt << 1, i - paramInt << 1);
        }
        paramInt = i;
      }
      else
      {
        if (paramInt < i)
        {
          System.arraycopy(this.Es, paramInt + 1, this.Es, paramInt, i - paramInt);
          System.arraycopy(this.Et, paramInt + 1 << 1, this.Et, paramInt << 1, i - paramInt << 1);
        }
        this.Et[(i << 1)] = null;
        this.Et[((i << 1) + 1)] = null;
        paramInt = i;
      }
    }
    this.ai = paramInt;
    return (V)localObject;
  }
  
  public int size()
  {
    return this.ai;
  }
  
  public String toString()
  {
    if (isEmpty()) {
      return "{}";
    }
    StringBuilder localStringBuilder = new StringBuilder(this.ai * 28);
    localStringBuilder.append('{');
    int i = 0;
    if (i < this.ai)
    {
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      Object localObject = keyAt(i);
      if (localObject != this)
      {
        localStringBuilder.append(localObject);
        label70:
        localStringBuilder.append('=');
        localObject = valueAt(i);
        if (localObject == this) {
          break label111;
        }
        localStringBuilder.append(localObject);
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append("(this Map)");
        break label70;
        label111:
        localStringBuilder.append("(this Map)");
      }
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public final V valueAt(int paramInt)
  {
    return (V)this.Et[((paramInt << 1) + 1)];
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/g/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */