package android.support.v4.g;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class b<E>
  implements Collection<E>, Set<E>
{
  private static final int[] Em = new int[0];
  private static final Object[] En = new Object[0];
  private static Object[] Eo;
  private static int Ep;
  private static Object[] Eq;
  private static int Er;
  private h<E, E> Ek;
  private int[] Es;
  public Object[] Et;
  private int ai;
  
  public b()
  {
    this(0);
  }
  
  public b(int paramInt)
  {
    if (paramInt == 0)
    {
      this.Es = Em;
      this.Et = En;
    }
    for (;;)
    {
      this.ai = 0;
      return;
      ao(paramInt);
    }
  }
  
  public b(Collection<E> paramCollection)
  {
    this();
    if (paramCollection != null) {
      addAll(paramCollection);
    }
  }
  
  private static void a(int[] paramArrayOfInt, Object[] paramArrayOfObject, int paramInt)
  {
    if (paramArrayOfInt.length == 8) {
      try
      {
        if (Er < 10)
        {
          paramArrayOfObject[0] = Eq;
          paramArrayOfObject[1] = paramArrayOfInt;
          paramInt -= 1;
          break label113;
          Eq = paramArrayOfObject;
          Er += 1;
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
        if (Ep < 10)
        {
          paramArrayOfObject[0] = Eo;
          paramArrayOfObject[1] = paramArrayOfInt;
          paramInt -= 1;
          break label130;
          Eo = paramArrayOfObject;
          Ep += 1;
        }
        return;
      }
      finally {}
      label113:
      while (paramInt >= 2)
      {
        paramArrayOfObject[paramInt] = null;
        paramInt -= 1;
      }
      break;
      return;
      label130:
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
        if (Eq != null)
        {
          Object[] arrayOfObject1 = Eq;
          this.Et = arrayOfObject1;
          Eq = (Object[])arrayOfObject1[0];
          this.Es = ((int[])arrayOfObject1[1]);
          arrayOfObject1[1] = null;
          arrayOfObject1[0] = null;
          Er -= 1;
          return;
        }
        this.Es = new int[paramInt];
        this.Et = new Object[paramInt];
        return;
      }
      finally {}
      if (paramInt == 4) {
        try
        {
          if (Eo != null)
          {
            Object[] arrayOfObject2 = Eo;
            this.Et = arrayOfObject2;
            Eo = (Object[])arrayOfObject2[0];
            this.Es = ((int[])arrayOfObject2[1]);
            arrayOfObject2[1] = null;
            arrayOfObject2[0] = null;
            Ep -= 1;
            return;
          }
        }
        finally {}
      }
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
        j = c.a(this.Es, m, 0);
        i = j;
      } while (j < 0);
      i = j;
    } while (this.Et[j] == null);
    int k = j + 1;
    while ((k < m) && (this.Es[k] == 0))
    {
      if (this.Et[k] == null) {
        return k;
      }
      k += 1;
    }
    j -= 1;
    for (;;)
    {
      if ((j < 0) || (this.Es[j] != 0)) {
        break label115;
      }
      i = j;
      if (this.Et[j] == null) {
        break;
      }
      j -= 1;
    }
    label115:
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
        j = c.a(this.Es, m, paramInt);
        i = j;
      } while (j < 0);
      i = j;
    } while (paramObject.equals(this.Et[j]));
    int k = j + 1;
    while ((k < m) && (this.Es[k] == paramInt))
    {
      if (paramObject.equals(this.Et[k])) {
        return k;
      }
      k += 1;
    }
    j -= 1;
    for (;;)
    {
      if ((j < 0) || (this.Es[j] != paramInt)) {
        break label150;
      }
      i = j;
      if (paramObject.equals(this.Et[j])) {
        break;
      }
      j -= 1;
    }
    label150:
    return k ^ 0xFFFFFFFF;
  }
  
  public final boolean add(E paramE)
  {
    int k = 8;
    int i;
    int j;
    if (paramE == null)
    {
      i = dG();
      j = 0;
    }
    while (i >= 0)
    {
      return false;
      j = paramE.hashCode();
      i = indexOf(paramE, j);
    }
    int m = i ^ 0xFFFFFFFF;
    if (this.ai >= this.Es.length)
    {
      if (this.ai < 8) {
        break label223;
      }
      i = this.ai + (this.ai >> 1);
    }
    for (;;)
    {
      int[] arrayOfInt = this.Es;
      Object[] arrayOfObject = this.Et;
      ao(i);
      if (this.Es.length > 0)
      {
        System.arraycopy(arrayOfInt, 0, this.Es, 0, arrayOfInt.length);
        System.arraycopy(arrayOfObject, 0, this.Et, 0, arrayOfObject.length);
      }
      a(arrayOfInt, arrayOfObject, this.ai);
      if (m < this.ai)
      {
        System.arraycopy(this.Es, m, this.Es, m + 1, this.ai - m);
        System.arraycopy(this.Et, m, this.Et, m + 1, this.ai - m);
      }
      this.Es[m] = j;
      this.Et[m] = paramE;
      this.ai += 1;
      return true;
      label223:
      i = k;
      if (this.ai < 4) {
        i = 4;
      }
    }
  }
  
  public final boolean addAll(Collection<? extends E> paramCollection)
  {
    boolean bool = false;
    int i = this.ai + paramCollection.size();
    if (this.Es.length < i)
    {
      int[] arrayOfInt = this.Es;
      Object[] arrayOfObject = this.Et;
      ao(i);
      if (this.ai > 0)
      {
        System.arraycopy(arrayOfInt, 0, this.Es, 0, this.ai);
        System.arraycopy(arrayOfObject, 0, this.Et, 0, this.ai);
      }
      a(arrayOfInt, arrayOfObject, this.ai);
    }
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      bool |= add(paramCollection.next());
    }
    return bool;
  }
  
  public final void clear()
  {
    if (this.ai != 0)
    {
      a(this.Es, this.Et, this.ai);
      this.Es = Em;
      this.Et = En;
      this.ai = 0;
    }
  }
  
  public final boolean contains(Object paramObject)
  {
    return indexOf(paramObject) >= 0;
  }
  
  public final boolean containsAll(Collection<?> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (!contains(paramCollection.next())) {
        return false;
      }
    }
    return true;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    for (;;)
    {
      return true;
      if ((paramObject instanceof Set))
      {
        paramObject = (Set)paramObject;
        if (size() != ((Set)paramObject).size()) {
          return false;
        }
        int i = 0;
        try
        {
          while (i < this.ai)
          {
            boolean bool = ((Set)paramObject).contains(this.Et[i]);
            if (!bool) {
              return false;
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
  }
  
  public final int hashCode()
  {
    int[] arrayOfInt = this.Es;
    int k = this.ai;
    int j = 0;
    int m;
    for (int i = 0; j < k; i = m + i)
    {
      m = arrayOfInt[j];
      j += 1;
    }
    return i;
  }
  
  public final int indexOf(Object paramObject)
  {
    if (paramObject == null) {
      return dG();
    }
    return indexOf(paramObject, paramObject.hashCode());
  }
  
  public final boolean isEmpty()
  {
    return this.ai <= 0;
  }
  
  public final Iterator<E> iterator()
  {
    if (this.Ek == null) {
      this.Ek = new h()
      {
        protected final int C(Object paramAnonymousObject)
        {
          return b.this.indexOf(paramAnonymousObject);
        }
        
        protected final int D(Object paramAnonymousObject)
        {
          return b.this.indexOf(paramAnonymousObject);
        }
        
        protected final E a(int paramAnonymousInt, E paramAnonymousE)
        {
          throw new UnsupportedOperationException("not a map");
        }
        
        protected final void an(int paramAnonymousInt)
        {
          b.this.removeAt(paramAnonymousInt);
        }
        
        protected final void d(E paramAnonymousE1, E paramAnonymousE2)
        {
          b.this.add(paramAnonymousE1);
        }
        
        protected final int dD()
        {
          return b.c(b.this);
        }
        
        protected final Map<E, E> dE()
        {
          throw new UnsupportedOperationException("not a map");
        }
        
        protected final void dF()
        {
          b.this.clear();
        }
        
        protected final Object o(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          return b.d(b.this)[paramAnonymousInt1];
        }
      };
    }
    return this.Ek.dJ().iterator();
  }
  
  public final boolean remove(Object paramObject)
  {
    int i = indexOf(paramObject);
    if (i >= 0)
    {
      removeAt(i);
      return true;
    }
    return false;
  }
  
  public final boolean removeAll(Collection<?> paramCollection)
  {
    boolean bool = false;
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      bool |= remove(paramCollection.next());
    }
    return bool;
  }
  
  public final E removeAt(int paramInt)
  {
    int i = 8;
    Object localObject = this.Et[paramInt];
    if (this.ai <= 1)
    {
      a(this.Es, this.Et, this.ai);
      this.Es = Em;
      this.Et = En;
      this.ai = 0;
    }
    int[] arrayOfInt;
    Object[] arrayOfObject;
    do
    {
      return (E)localObject;
      if ((this.Es.length <= 8) || (this.ai >= this.Es.length / 3)) {
        break;
      }
      if (this.ai > 8) {
        i = this.ai + (this.ai >> 1);
      }
      arrayOfInt = this.Es;
      arrayOfObject = this.Et;
      ao(i);
      this.ai -= 1;
      if (paramInt > 0)
      {
        System.arraycopy(arrayOfInt, 0, this.Es, 0, paramInt);
        System.arraycopy(arrayOfObject, 0, this.Et, 0, paramInt);
      }
    } while (paramInt >= this.ai);
    System.arraycopy(arrayOfInt, paramInt + 1, this.Es, paramInt, this.ai - paramInt);
    System.arraycopy(arrayOfObject, paramInt + 1, this.Et, paramInt, this.ai - paramInt);
    return (E)localObject;
    this.ai -= 1;
    if (paramInt < this.ai)
    {
      System.arraycopy(this.Es, paramInt + 1, this.Es, paramInt, this.ai - paramInt);
      System.arraycopy(this.Et, paramInt + 1, this.Et, paramInt, this.ai - paramInt);
    }
    this.Et[this.ai] = null;
    return (E)localObject;
  }
  
  public final boolean retainAll(Collection<?> paramCollection)
  {
    boolean bool = false;
    int i = this.ai - 1;
    while (i >= 0)
    {
      if (!paramCollection.contains(this.Et[i]))
      {
        removeAt(i);
        bool = true;
      }
      i -= 1;
    }
    return bool;
  }
  
  public final int size()
  {
    return this.ai;
  }
  
  public final Object[] toArray()
  {
    Object[] arrayOfObject = new Object[this.ai];
    System.arraycopy(this.Et, 0, arrayOfObject, 0, this.ai);
    return arrayOfObject;
  }
  
  public final <T> T[] toArray(T[] paramArrayOfT)
  {
    if (paramArrayOfT.length < this.ai) {
      paramArrayOfT = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), this.ai);
    }
    for (;;)
    {
      System.arraycopy(this.Et, 0, paramArrayOfT, 0, this.ai);
      if (paramArrayOfT.length > this.ai) {
        paramArrayOfT[this.ai] = null;
      }
      return paramArrayOfT;
    }
  }
  
  public final String toString()
  {
    if (isEmpty()) {
      return "{}";
    }
    StringBuilder localStringBuilder = new StringBuilder(this.ai * 14);
    localStringBuilder.append('{');
    int i = 0;
    if (i < this.ai)
    {
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      Object localObject = this.Et[i];
      if (localObject != this) {
        localStringBuilder.append(localObject);
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append("(this Set)");
      }
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/g/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */