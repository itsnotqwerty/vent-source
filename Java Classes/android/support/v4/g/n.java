package android.support.v4.g;

public final class n<E>
  implements Cloneable
{
  private static final Object Ez = new Object();
  public boolean EA = false;
  public Object[] EC;
  public int[] ET;
  public int ai;
  
  public n()
  {
    this(10);
  }
  
  public n(int paramInt)
  {
    if (paramInt == 0) {
      this.ET = c.Ev;
    }
    for (this.EC = c.Ex;; this.EC = new Object[paramInt])
    {
      this.ai = 0;
      return;
      paramInt = c.ap(paramInt);
      this.ET = new int[paramInt];
    }
  }
  
  private n<E> dK()
  {
    try
    {
      n localn = (n)super.clone();
      return localCloneNotSupportedException1;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException1)
    {
      try
      {
        localn.ET = ((int[])this.ET.clone());
        localn.EC = ((Object[])this.EC.clone());
        return localn;
      }
      catch (CloneNotSupportedException localCloneNotSupportedException2) {}
      localCloneNotSupportedException1 = localCloneNotSupportedException1;
      return null;
    }
  }
  
  public final void append(int paramInt, E paramE)
  {
    if ((this.ai != 0) && (paramInt <= this.ET[(this.ai - 1)]))
    {
      put(paramInt, paramE);
      return;
    }
    if ((this.EA) && (this.ai >= this.ET.length)) {
      gc();
    }
    int i = this.ai;
    if (i >= this.ET.length)
    {
      int j = c.ap(i + 1);
      int[] arrayOfInt = new int[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(this.ET, 0, arrayOfInt, 0, this.ET.length);
      System.arraycopy(this.EC, 0, arrayOfObject, 0, this.EC.length);
      this.ET = arrayOfInt;
      this.EC = arrayOfObject;
    }
    this.ET[i] = paramInt;
    this.EC[i] = paramE;
    this.ai = (i + 1);
  }
  
  public final void gc()
  {
    int m = this.ai;
    int[] arrayOfInt = this.ET;
    Object[] arrayOfObject = this.EC;
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      Object localObject = arrayOfObject[i];
      k = j;
      if (localObject != Ez)
      {
        if (i != j)
        {
          arrayOfInt[j] = arrayOfInt[i];
          arrayOfObject[j] = localObject;
          arrayOfObject[i] = null;
        }
        k = j + 1;
      }
      i += 1;
    }
    this.EA = false;
    this.ai = j;
  }
  
  public final E get(int paramInt)
  {
    paramInt = c.a(this.ET, this.ai, paramInt);
    if ((paramInt < 0) || (this.EC[paramInt] == Ez)) {
      return null;
    }
    return (E)this.EC[paramInt];
  }
  
  public final int keyAt(int paramInt)
  {
    if (this.EA) {
      gc();
    }
    return this.ET[paramInt];
  }
  
  public final void put(int paramInt, E paramE)
  {
    int i = c.a(this.ET, this.ai, paramInt);
    if (i >= 0)
    {
      this.EC[i] = paramE;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < this.ai) && (this.EC[j] == Ez))
    {
      this.ET[j] = paramInt;
      this.EC[j] = paramE;
      return;
    }
    i = j;
    if (this.EA)
    {
      i = j;
      if (this.ai >= this.ET.length)
      {
        gc();
        i = c.a(this.ET, this.ai, paramInt) ^ 0xFFFFFFFF;
      }
    }
    if (this.ai >= this.ET.length)
    {
      j = c.ap(this.ai + 1);
      int[] arrayOfInt = new int[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(this.ET, 0, arrayOfInt, 0, this.ET.length);
      System.arraycopy(this.EC, 0, arrayOfObject, 0, this.EC.length);
      this.ET = arrayOfInt;
      this.EC = arrayOfObject;
    }
    if (this.ai - i != 0)
    {
      System.arraycopy(this.ET, i, this.ET, i + 1, this.ai - i);
      System.arraycopy(this.EC, i, this.EC, i + 1, this.ai - i);
    }
    this.ET[i] = paramInt;
    this.EC[i] = paramE;
    this.ai += 1;
  }
  
  public final void remove(int paramInt)
  {
    paramInt = c.a(this.ET, this.ai, paramInt);
    if ((paramInt >= 0) && (this.EC[paramInt] != Ez))
    {
      this.EC[paramInt] = Ez;
      this.EA = true;
    }
  }
  
  public final int size()
  {
    if (this.EA) {
      gc();
    }
    return this.ai;
  }
  
  public final String toString()
  {
    if (size() <= 0) {
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
      localStringBuilder.append(keyAt(i));
      localStringBuilder.append('=');
      Object localObject = valueAt(i);
      if (localObject != this) {
        localStringBuilder.append(localObject);
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append("(this Map)");
      }
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public final E valueAt(int paramInt)
  {
    if (this.EA) {
      gc();
    }
    return (E)this.EC[paramInt];
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/g/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */