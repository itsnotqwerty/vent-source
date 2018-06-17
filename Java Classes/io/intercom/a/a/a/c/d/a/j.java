package io.intercom.a.a.a.c.d.a;

public abstract class j
{
  public static final j cNF = new e();
  public static final j cNG = new d();
  public static final j cNH = new a();
  public static final j cNI = new b();
  public static final j cNJ = new c();
  public static final j cNK = new f();
  public static final j cNL = cNG;
  
  public abstract int IY();
  
  public abstract float l(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  private static final class a
    extends j
  {
    public final int IY()
    {
      return j.g.cNN;
    }
    
    public final float l(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramInt1 = Math.min(paramInt2 / paramInt4, paramInt1 / paramInt3);
      if (paramInt1 == 0) {
        return 1.0F;
      }
      return 1.0F / Integer.highestOneBit(paramInt1);
    }
  }
  
  private static final class b
    extends j
  {
    public final int IY()
    {
      return j.g.cNM;
    }
    
    public final float l(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      int i = 1;
      paramInt1 = (int)Math.ceil(Math.max(paramInt2 / paramInt4, paramInt1 / paramInt3));
      paramInt2 = Math.max(1, Integer.highestOneBit(paramInt1));
      if (paramInt2 < paramInt1) {}
      for (paramInt1 = i;; paramInt1 = 0) {
        return 1.0F / (paramInt2 << paramInt1);
      }
    }
  }
  
  private static final class c
    extends j
  {
    public final int IY()
    {
      return j.g.cNN;
    }
    
    public final float l(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return Math.min(1.0F, cNF.l(paramInt1, paramInt2, paramInt3, paramInt4));
    }
  }
  
  private static final class d
    extends j
  {
    public final int IY()
    {
      return j.g.cNN;
    }
    
    public final float l(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return Math.max(paramInt3 / paramInt1, paramInt4 / paramInt2);
    }
  }
  
  private static final class e
    extends j
  {
    public final int IY()
    {
      return j.g.cNN;
    }
    
    public final float l(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return Math.min(paramInt3 / paramInt1, paramInt4 / paramInt2);
    }
  }
  
  private static final class f
    extends j
  {
    public final int IY()
    {
      return j.g.cNN;
    }
    
    public final float l(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return 1.0F;
    }
  }
  
  public static enum g
  {
    public static final int cNM = 1;
    public static final int cNN = 2;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */