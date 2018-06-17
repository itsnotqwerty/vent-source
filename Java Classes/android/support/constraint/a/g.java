package android.support.constraint.a;

final class g
{
  static abstract interface a<T>
  {
    public abstract void a(T[] paramArrayOfT, int paramInt);
    
    public abstract T as();
    
    public abstract boolean j(T paramT);
  }
  
  static final class b<T>
    implements g.a<T>
  {
    private final Object[] eW = new Object['Ā'];
    private int eX;
    
    public final void a(T[] paramArrayOfT, int paramInt)
    {
      int i = paramInt;
      if (paramInt > paramArrayOfT.length) {
        i = paramArrayOfT.length;
      }
      paramInt = 0;
      while (paramInt < i)
      {
        T ? = paramArrayOfT[paramInt];
        if (this.eX < this.eW.length)
        {
          this.eW[this.eX] = ?;
          this.eX += 1;
        }
        paramInt += 1;
      }
    }
    
    public final T as()
    {
      if (this.eX > 0)
      {
        int i = this.eX - 1;
        Object localObject = this.eW[i];
        this.eW[i] = null;
        this.eX -= 1;
        return (T)localObject;
      }
      return null;
    }
    
    public final boolean j(T paramT)
    {
      if (this.eX < this.eW.length)
      {
        this.eW[this.eX] = paramT;
        this.eX += 1;
        return true;
      }
      return false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */