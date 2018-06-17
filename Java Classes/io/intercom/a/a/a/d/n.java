package io.intercom.a.a.a.d;

import io.intercom.a.a.a.g.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public final class n
{
  public final Set<c> cPu = Collections.newSetFromMap(new WeakHashMap());
  public final List<c> cPv = new ArrayList();
  public boolean cPw;
  
  public final boolean a(c paramc, boolean paramBoolean)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (paramc == null)
    {
      bool2 = bool1;
      return bool2;
    }
    boolean bool3 = this.cPu.remove(paramc);
    bool1 = bool2;
    if (!this.cPv.remove(paramc)) {
      if (!bool3) {
        break label79;
      }
    }
    label79:
    for (bool1 = bool2;; bool1 = false)
    {
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      paramc.clear();
      bool2 = bool1;
      if (!paramBoolean) {
        break;
      }
      paramc.recycle();
      return bool1;
    }
  }
  
  public final String toString()
  {
    return super.toString() + "{numRequests=" + this.cPu.size() + ", isPaused=" + this.cPw + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/d/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */