package okhttp3.internal.b;

import java.util.LinkedHashSet;
import java.util.Set;
import okhttp3.aa;

public final class d
{
  private final Set<aa> failedRoutes = new LinkedHashSet();
  
  public final void a(aa paramaa)
  {
    try
    {
      this.failedRoutes.add(paramaa);
      return;
    }
    finally
    {
      paramaa = finally;
      throw paramaa;
    }
  }
  
  public final void b(aa paramaa)
  {
    try
    {
      this.failedRoutes.remove(paramaa);
      return;
    }
    finally
    {
      paramaa = finally;
      throw paramaa;
    }
  }
  
  public final boolean c(aa paramaa)
  {
    try
    {
      boolean bool = this.failedRoutes.contains(paramaa);
      return bool;
    }
    finally
    {
      paramaa = finally;
      throw paramaa;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/b/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */