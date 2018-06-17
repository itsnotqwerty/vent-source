package c.a.a.d;

public final class b
  extends c
{
  public int b;
  public byte[] bIG;
  public int c;
  
  public final byte[] LT()
  {
    return this.bIG;
  }
  
  public final void a(int paramInt)
  {
    this.b += paramInt;
  }
  
  public final int c()
  {
    return this.b;
  }
  
  public final int d()
  {
    return this.c - this.b;
  }
  
  public final int d(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws d
  {
    int j = d();
    int i = paramInt2;
    if (paramInt2 > j) {
      i = j;
    }
    if (i > 0)
    {
      System.arraycopy(this.bIG, this.b, paramArrayOfByte, paramInt1, i);
      a(i);
    }
    return i;
  }
  
  public final void h(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws d
  {
    throw new UnsupportedOperationException("No writing allowed!");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/d/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */