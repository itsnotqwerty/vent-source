package a.a.a.g;

public final class b
  extends h
{
  public b(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < this.ctN.length)
    {
      if (i != 0) {
        localStringBuilder.append(':');
      }
      localStringBuilder.append(Integer.toHexString(((this.ctN[i] & 0xFF) << 8) + (this.ctN[(i + 1)] & 0xFF)));
      i += 2;
    }
    return localStringBuilder.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */