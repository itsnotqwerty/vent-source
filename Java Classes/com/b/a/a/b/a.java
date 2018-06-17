package com.b.a.a.b;

public enum a
{
  public final int bKk;
  public final int bKl;
  public final int bKm;
  
  private a(int paramInt1, int paramInt2, int paramInt3)
  {
    this.bKk = paramInt1;
    this.bKl = paramInt2;
    this.bKm = paramInt3;
  }
  
  public static a dJ(int paramInt)
  {
    a[] arrayOfa = values();
    int j = arrayOfa.length;
    int i = 0;
    while (i < j)
    {
      a locala = arrayOfa[i];
      if (locala.bKl == paramInt) {
        return locala;
      }
      i += 1;
    }
    return null;
  }
  
  public static a dK(int paramInt)
  {
    a[] arrayOfa = values();
    int j = arrayOfa.length;
    int i = 0;
    while (i < j)
    {
      a locala = arrayOfa[i];
      if (locala.bKk == paramInt) {
        return locala;
      }
      i += 1;
    }
    return null;
  }
  
  public static a dL(int paramInt)
  {
    a[] arrayOfa = values();
    int j = arrayOfa.length;
    int i = 0;
    while (i < j)
    {
      a locala = arrayOfa[i];
      if (locala.bKm == paramInt) {
        return locala;
      }
      i += 1;
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/b/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */