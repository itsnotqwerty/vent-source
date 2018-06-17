package b;

final class p
{
  int b;
  final byte[] bIG;
  int c;
  p cUP;
  p cUQ;
  boolean d;
  boolean e;
  
  p()
  {
    this.bIG = new byte['ࠀ'];
    this.e = true;
    this.d = false;
  }
  
  p(p paramp)
  {
    this(paramp.bIG, paramp.b, paramp.c);
    paramp.d = true;
  }
  
  private p(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.bIG = paramArrayOfByte;
    this.b = paramInt1;
    this.c = paramInt2;
    this.e = false;
    this.d = true;
  }
  
  public final p Lp()
  {
    if (this.cUP != this) {}
    for (p localp = this.cUP;; localp = null)
    {
      this.cUQ.cUP = this.cUP;
      this.cUP.cUQ = this.cUQ;
      this.cUP = null;
      this.cUQ = null;
      return localp;
    }
  }
  
  public final p a(p paramp)
  {
    paramp.cUQ = this;
    paramp.cUP = this.cUP;
    this.cUP.cUQ = paramp;
    this.cUP = paramp;
    return paramp;
  }
  
  public final void a(p paramp, int paramInt)
  {
    if (!paramp.e) {
      throw new IllegalArgumentException();
    }
    if (paramp.c + paramInt > 2048)
    {
      if (paramp.d) {
        throw new IllegalArgumentException();
      }
      if (paramp.c + paramInt - paramp.b > 2048) {
        throw new IllegalArgumentException();
      }
      System.arraycopy(paramp.bIG, paramp.b, paramp.bIG, 0, paramp.c - paramp.b);
      paramp.c -= paramp.b;
      paramp.b = 0;
    }
    System.arraycopy(this.bIG, this.b, paramp.bIG, paramp.c, paramInt);
    paramp.c += paramInt;
    this.b += paramInt;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */