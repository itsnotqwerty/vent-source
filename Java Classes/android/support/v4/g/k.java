package android.support.v4.g;

public final class k
{
  public static abstract interface a<T>
  {
    public abstract T as();
    
    public abstract boolean j(T paramT);
  }
  
  public static class b<T>
    implements k.a<T>
  {
    private final Object[] eW;
    private int eX;
    
    public b(int paramInt)
    {
      if (paramInt <= 0) {
        throw new IllegalArgumentException("The max pool size must be > 0");
      }
      this.eW = new Object[paramInt];
    }
    
    public T as()
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
    
    public boolean j(T paramT)
    {
      boolean bool = false;
      int i = 0;
      if (i < this.eX) {
        if (this.eW[i] != paramT) {}
      }
      for (i = 1;; i = 0)
      {
        if (i == 0) {
          break label50;
        }
        throw new IllegalStateException("Already in the pool!");
        i += 1;
        break;
      }
      label50:
      if (this.eX < this.eW.length)
      {
        this.eW[this.eX] = paramT;
        this.eX += 1;
        bool = true;
      }
      return bool;
    }
  }
  
  public static final class c<T>
    extends k.b<T>
  {
    private final Object mLock = new Object();
    
    public c(int paramInt)
    {
      super();
    }
    
    public final T as()
    {
      synchronized (this.mLock)
      {
        Object localObject2 = super.as();
        return (T)localObject2;
      }
    }
    
    public final boolean j(T paramT)
    {
      synchronized (this.mLock)
      {
        boolean bool = super.j(paramT);
        return bool;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/g/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */