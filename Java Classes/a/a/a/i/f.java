package a.a.a.i;

import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class f
  extends IOException
{
  private final List<IOException> cux;
  
  static
  {
    if (!f.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private f(List<? extends IOException> paramList)
  {
    super(g(paramList));
    assert (!paramList.isEmpty());
    this.cux = Collections.unmodifiableList(paramList);
  }
  
  public static void B(List<? extends IOException> paramList)
    throws IOException
  {
    if (paramList.isEmpty()) {
      return;
    }
    if (paramList.size() == 1) {
      throw ((IOException)paramList.get(0));
    }
    throw new f(paramList);
  }
  
  private static String g(Collection<? extends Exception> paramCollection)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      localStringBuilder.append(((Exception)paramCollection.next()).getMessage());
      if (paramCollection.hasNext()) {
        localStringBuilder.append(", ");
      }
    }
    return localStringBuilder.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/i/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */