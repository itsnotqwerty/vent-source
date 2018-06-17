package a.a.a.i;

import java.util.Iterator;
import java.util.Random;
import java.util.Set;

public final class c
{
  public static <T> T a(Set<T> paramSet, Random paramRandom)
  {
    int j = paramRandom.nextInt(paramSet.size());
    paramSet = paramSet.iterator();
    int i = 0;
    while ((i < j) && (paramSet.hasNext()))
    {
      paramSet.next();
      i += 1;
    }
    return (T)paramSet.next();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/i/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */