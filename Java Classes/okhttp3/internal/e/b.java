package okhttp3.internal.e;

public enum b
{
  public final int httpCode;
  
  private b(int paramInt)
  {
    this.httpCode = paramInt;
  }
  
  public static b fQ(int paramInt)
  {
    b[] arrayOfb = values();
    int j = arrayOfb.length;
    int i = 0;
    while (i < j)
    {
      b localb = arrayOfb[i];
      if (localb.httpCode == paramInt) {
        return localb;
      }
      i += 1;
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/e/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */