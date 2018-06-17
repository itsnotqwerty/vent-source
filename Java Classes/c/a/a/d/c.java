package c.a.a.d;

public abstract class c
{
  public byte[] LT()
  {
    return null;
  }
  
  public void a(int paramInt) {}
  
  public final void b(byte[] paramArrayOfByte)
    throws d
  {
    h(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int c()
  {
    return 0;
  }
  
  public int d()
  {
    return -1;
  }
  
  public abstract int d(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws d;
  
  public final int h(byte[] paramArrayOfByte, int paramInt)
    throws d
  {
    int i = 0;
    while (i < paramInt)
    {
      int j = d(paramArrayOfByte, i + 0, paramInt - i);
      if (j <= 0) {
        throw new d("Cannot read. Remote side has closed. Tried to read " + paramInt + " bytes, but only got " + i + " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)", (byte)0);
      }
      i += j;
    }
    return i;
  }
  
  public abstract void h(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws d;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/d/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */