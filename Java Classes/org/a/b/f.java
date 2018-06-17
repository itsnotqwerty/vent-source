package org.a.b;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import org.a.a;

public final class f
  implements a
{
  public boolean dcB = false;
  public final Map<String, e> dcC = new HashMap();
  public final LinkedBlockingQueue<org.a.a.b> dcD = new LinkedBlockingQueue();
  
  public final org.a.b fK(String paramString)
  {
    try
    {
      e locale2 = (e)this.dcC.get(paramString);
      e locale1 = locale2;
      if (locale2 == null)
      {
        locale1 = new e(paramString, this.dcD, this.dcB);
        this.dcC.put(paramString, locale1);
      }
      return locale1;
    }
    finally {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/org/a/b/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */