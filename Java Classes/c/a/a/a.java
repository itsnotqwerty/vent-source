package c.a.a;

public final class a
{
  public static final boolean aT(int paramInt1, int paramInt2)
  {
    return (1 << paramInt2 & paramInt1) != 0;
  }
  
  public static final int d(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {
      return 1 << paramInt2 | paramInt1;
    }
    return (1 << paramInt2 ^ 0xFFFFFFFF) & paramInt1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */