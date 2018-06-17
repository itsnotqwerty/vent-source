package com.b.a.a.b;

public final class l
{
  int a;
  int b;
  final int[] brd = new int[10];
  int c;
  
  final boolean a(int paramInt)
  {
    return (1 << paramInt & this.a) != 0;
  }
  
  final int c()
  {
    if ((this.a & 0x2) != 0) {
      return this.brd[1];
    }
    return -1;
  }
  
  final int dQ(int paramInt)
  {
    int j = 0;
    if ((1 << paramInt & this.c) != 0)
    {
      i = 1;
      if (i == 0) {
        break label51;
      }
    }
    label51:
    for (int i = 2;; i = 0)
    {
      if ((1 << paramInt & this.b) != 0) {
        j = 1;
      }
      paramInt = i;
      if (j != 0) {
        paramInt = i | 0x1;
      }
      return paramInt;
      i = 0;
      break;
    }
  }
  
  final l m(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 >= this.brd.length) {
      return this;
    }
    int i = 1 << paramInt1;
    this.a |= i;
    if ((paramInt2 & 0x1) != 0)
    {
      this.b |= i;
      if ((paramInt2 & 0x2) == 0) {
        break label86;
      }
    }
    label86:
    for (this.c = (i | this.c);; this.c = ((i ^ 0xFFFFFFFF) & this.c))
    {
      this.brd[paramInt1] = paramInt3;
      return this;
      this.b &= (i ^ 0xFFFFFFFF);
      break;
    }
  }
  
  public final int zS()
  {
    if ((this.a & 0x80) != 0) {
      return this.brd[7];
    }
    return 65536;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/b/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */