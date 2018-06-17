package android.support.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class z
{
  public final Map<String, Object> values = new HashMap();
  final ArrayList<u> vc = new ArrayList();
  public View view;
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof z)) && (this.view == ((z)paramObject).view) && (this.values.equals(((z)paramObject).values));
  }
  
  public final int hashCode()
  {
    return this.view.hashCode() * 31 + this.values.hashCode();
  }
  
  public final String toString()
  {
    String str1 = "TransitionValues@" + Integer.toHexString(hashCode()) + ":\n";
    str1 = str1 + "    view = " + this.view + "\n";
    str1 = str1 + "    values:";
    Iterator localIterator = this.values.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      str1 = str1 + "    " + str2 + ": " + this.values.get(str2) + "\n";
    }
    return str1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */