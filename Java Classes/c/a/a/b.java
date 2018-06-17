package c.a.a;

public final class b
{
  public int b = -1;
  private short[] cUS = new short[15];
  
  public final short Lq()
  {
    short[] arrayOfShort = this.cUS;
    int i = this.b;
    this.b = (i - 1);
    return arrayOfShort[i];
  }
  
  public final void c(short paramShort)
  {
    if (this.cUS.length == this.b + 1)
    {
      arrayOfShort = new short[this.cUS.length * 2];
      System.arraycopy(this.cUS, 0, arrayOfShort, 0, this.cUS.length);
      this.cUS = arrayOfShort;
    }
    short[] arrayOfShort = this.cUS;
    int i = this.b + 1;
    this.b = i;
    arrayOfShort[i] = paramShort;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<ShortStack vector:[");
    int i = 0;
    while (i < this.cUS.length)
    {
      if (i != 0) {
        localStringBuilder.append(" ");
      }
      if (i == this.b) {
        localStringBuilder.append(">>");
      }
      localStringBuilder.append(this.cUS[i]);
      if (i == this.b) {
        localStringBuilder.append("<<");
      }
      i += 1;
    }
    localStringBuilder.append("]>");
    return localStringBuilder.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */