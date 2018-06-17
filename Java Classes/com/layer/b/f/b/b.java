package com.layer.b.f.b;

public enum b
{
  final int a;
  
  private b(int paramInt)
  {
    this.a = paramInt;
  }
  
  public static b dt(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return bAu;
    case 2: 
      return bAv;
    case 3: 
      return bAw;
    }
    return bAx;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/b/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */