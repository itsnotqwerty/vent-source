package com.c.a;

public enum q
{
  final int index;
  
  private q(int paramInt)
  {
    this.index = paramInt;
  }
  
  public static boolean ea(int paramInt)
  {
    return (bNT.index & paramInt) == 0;
  }
  
  public static boolean eb(int paramInt)
  {
    return (bNU.index & paramInt) == 0;
  }
  
  public static boolean ec(int paramInt)
  {
    return (bNV.index & paramInt) != 0;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */