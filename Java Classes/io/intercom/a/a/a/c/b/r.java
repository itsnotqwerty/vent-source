package io.intercom.a.a.a.c.b;

import io.intercom.a.a.a.c.h;
import java.util.HashMap;
import java.util.Map;

public final class r
{
  private final Map<h, k<?>> cKQ = new HashMap();
  private final Map<h, k<?>> cKR = new HashMap();
  
  final void a(h paramh, k<?> paramk)
  {
    Map localMap = bv(paramk.cJu);
    if (paramk.equals(localMap.get(paramh))) {
      localMap.remove(paramh);
    }
  }
  
  public final Map<h, k<?>> bv(boolean paramBoolean)
  {
    if (paramBoolean) {
      return this.cKR;
    }
    return this.cKQ;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */