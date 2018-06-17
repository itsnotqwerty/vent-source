package android.support.v4.g;

public final class j<F, S>
{
  public final F first;
  public final S second;
  
  private static boolean e(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof j)) {}
    do
    {
      return false;
      paramObject = (j)paramObject;
    } while ((!e(((j)paramObject).first, this.first)) || (!e(((j)paramObject).second, this.second)));
    return true;
  }
  
  public final int hashCode()
  {
    int j = 0;
    int i;
    if (this.first == null)
    {
      i = 0;
      if (this.second != null) {
        break label33;
      }
    }
    for (;;)
    {
      return i ^ j;
      i = this.first.hashCode();
      break;
      label33:
      j = this.second.hashCode();
    }
  }
  
  public final String toString()
  {
    return "Pair{" + String.valueOf(this.first) + " " + String.valueOf(this.second) + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/g/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */