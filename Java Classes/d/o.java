package d;

import javax.annotation.Nullable;

final class o
{
  boolean cUm;
  boolean cUn;
  final byte[] data;
  o dcl;
  o dcm;
  int limit;
  int pos;
  
  o()
  {
    this.data = new byte[' '];
    this.cUn = true;
    this.cUm = false;
  }
  
  o(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.data = paramArrayOfByte;
    this.pos = paramInt1;
    this.limit = paramInt2;
    this.cUm = true;
    this.cUn = false;
  }
  
  final o Ns()
  {
    this.cUm = true;
    return new o(this.data, this.pos, this.limit);
  }
  
  @Nullable
  public final o Nt()
  {
    if (this.dcl != this) {}
    for (o localo = this.dcl;; localo = null)
    {
      this.dcm.dcl = this.dcl;
      this.dcl.dcm = this.dcm;
      this.dcl = null;
      this.dcm = null;
      return localo;
    }
  }
  
  public final o a(o paramo)
  {
    paramo.dcm = this;
    paramo.dcl = this.dcl;
    this.dcl.dcm = paramo;
    this.dcl = paramo;
    return paramo;
  }
  
  public final void a(o paramo, int paramInt)
  {
    if (!paramo.cUn) {
      throw new IllegalArgumentException();
    }
    if (paramo.limit + paramInt > 8192)
    {
      if (paramo.cUm) {
        throw new IllegalArgumentException();
      }
      if (paramo.limit + paramInt - paramo.pos > 8192) {
        throw new IllegalArgumentException();
      }
      System.arraycopy(paramo.data, paramo.pos, paramo.data, 0, paramo.limit - paramo.pos);
      paramo.limit -= paramo.pos;
      paramo.pos = 0;
    }
    System.arraycopy(this.data, this.pos, paramo.data, paramo.limit, paramInt);
    paramo.limit += paramInt;
    this.pos += paramInt;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */