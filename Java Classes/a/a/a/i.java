package a.a.a;

import java.io.IOException;

public abstract class i
  extends IOException
{
  protected i(String paramString)
  {
    super(paramString);
  }
  
  public static final class a
    extends i
  {
    private final d cqQ;
    private final d cqR;
    
    static
    {
      if (!i.class.desiredAssertionStatus()) {}
      for (boolean bool = true;; bool = false)
      {
        $assertionsDisabled = bool;
        return;
      }
    }
    
    public a(d paramd1, d paramd2)
    {
      super();
      assert (paramd1.id != paramd2.id);
      this.cqQ = paramd1;
      this.cqR = paramd2;
    }
  }
  
  public static final class b
    extends i
  {
    private final d cqQ;
    
    public b(d paramd)
    {
      super();
      this.cqQ = paramd;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */