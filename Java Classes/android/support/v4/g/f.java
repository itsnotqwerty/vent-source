package android.support.v4.g;

public final class f<E>
  implements Cloneable
{
  public static final Object Ez = new Object();
  public boolean EA = false;
  public long[] EB;
  public Object[] EC;
  public int ai;
  
  public f()
  {
    this((byte)0);
  }
  
  private f(byte paramByte)
  {
    paramByte = c.aq(10);
    this.EB = new long[paramByte];
    this.EC = new Object[paramByte];
    this.ai = 0;
  }
  
  private f<E> dI()
  {
    try
    {
      f localf = (f)super.clone();
      return localCloneNotSupportedException1;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException1)
    {
      try
      {
        localf.EB = ((long[])this.EB.clone());
        localf.EC = ((Object[])this.EC.clone());
        return localf;
      }
      catch (CloneNotSupportedException localCloneNotSupportedException2) {}
      localCloneNotSupportedException1 = localCloneNotSupportedException1;
      return null;
    }
  }
  
  public final void clear()
  {
    int j = this.ai;
    Object[] arrayOfObject = this.EC;
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = null;
      i += 1;
    }
    this.ai = 0;
    this.EA = false;
  }
  
  public final void gc()
  {
    int m = this.ai;
    long[] arrayOfLong = this.EB;
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
          arrayOfLong[j] = arrayOfLong[i];
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
  
  public final E get(long paramLong)
  {
    int i = c.a(this.EB, this.ai, paramLong);
    if ((i < 0) || (this.EC[i] == Ez)) {
      return null;
    }
    return (E)this.EC[i];
  }
  
  public final long keyAt(int paramInt)
  {
    if (this.EA) {
      gc();
    }
    return this.EB[paramInt];
  }
  
  public final void put(long paramLong, E paramE)
  {
    int i = c.a(this.EB, this.ai, paramLong);
    if (i >= 0)
    {
      this.EC[i] = paramE;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < this.ai) && (this.EC[j] == Ez))
    {
      this.EB[j] = paramLong;
      this.EC[j] = paramE;
      return;
    }
    i = j;
    if (this.EA)
    {
      i = j;
      if (this.ai >= this.EB.length)
      {
        gc();
        i = c.a(this.EB, this.ai, paramLong) ^ 0xFFFFFFFF;
      }
    }
    if (this.ai >= this.EB.length)
    {
      j = c.aq(this.ai + 1);
      long[] arrayOfLong = new long[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(this.EB, 0, arrayOfLong, 0, this.EB.length);
      System.arraycopy(this.EC, 0, arrayOfObject, 0, this.EC.length);
      this.EB = arrayOfLong;
      this.EC = arrayOfObject;
    }
    if (this.ai - i != 0)
    {
      System.arraycopy(this.EB, i, this.EB, i + 1, this.ai - i);
      System.arraycopy(this.EC, i, this.EC, i + 1, this.ai - i);
    }
    this.EB[i] = paramLong;
    this.EC[i] = paramE;
    this.ai += 1;
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/g/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */