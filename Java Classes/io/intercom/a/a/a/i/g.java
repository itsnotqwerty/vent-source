package io.intercom.a.a.a.i;

public final class g
{
  private Class<?> cQX;
  private Class<?> cQY;
  private Class<?> cQZ;
  
  public g() {}
  
  public g(Class<?> paramClass1, Class<?> paramClass2)
  {
    f(paramClass1, paramClass2, null);
  }
  
  public g(Class<?> paramClass1, Class<?> paramClass2, Class<?> paramClass3)
  {
    f(paramClass1, paramClass2, paramClass3);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (g)paramObject;
      if (!this.cQX.equals(((g)paramObject).cQX)) {
        return false;
      }
      if (!this.cQY.equals(((g)paramObject).cQY)) {
        return false;
      }
    } while (i.i(this.cQZ, ((g)paramObject).cQZ));
    return false;
  }
  
  public final void f(Class<?> paramClass1, Class<?> paramClass2, Class<?> paramClass3)
  {
    this.cQX = paramClass1;
    this.cQY = paramClass2;
    this.cQZ = paramClass3;
  }
  
  public final int hashCode()
  {
    int j = this.cQX.hashCode();
    int k = this.cQY.hashCode();
    if (this.cQZ != null) {}
    for (int i = this.cQZ.hashCode();; i = 0) {
      return i + (j * 31 + k) * 31;
    }
  }
  
  public final String toString()
  {
    return "MultiClassKey{first=" + this.cQX + ", second=" + this.cQY + '}';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/i/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */