package io.intercom.a.a.a.i.a;

public abstract class b
{
  public abstract void JX();
  
  abstract void bw(boolean paramBoolean);
  
  private static final class a
    extends b
  {
    private volatile boolean cJJ;
    
    public a()
    {
      super();
    }
    
    public final void JX()
    {
      if (this.cJJ) {
        throw new IllegalStateException("Already released");
      }
    }
    
    public final void bw(boolean paramBoolean)
    {
      this.cJJ = paramBoolean;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/i/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */