package org.a.b;

import java.lang.reflect.Method;
import java.util.Queue;
import org.a.a.a;

public final class e
  implements org.a.b
{
  private final boolean dcA;
  public volatile org.a.b dcw;
  private Boolean dcx;
  public Method dcy;
  private Queue<org.a.a.b> dcz;
  public final String name;
  
  public e(String paramString, Queue<org.a.a.b> paramQueue, boolean paramBoolean)
  {
    this.name = paramString;
    this.dcz = paramQueue;
    this.dcA = paramBoolean;
  }
  
  public final boolean NB()
  {
    if (this.dcx != null) {
      return this.dcx.booleanValue();
    }
    try
    {
      this.dcy = this.dcw.getClass().getMethod("log", new Class[] { a.class });
      this.dcx = Boolean.TRUE;
      return this.dcx.booleanValue();
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        this.dcx = Boolean.FALSE;
      }
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (e)paramObject;
    } while (this.name.equals(((e)paramObject).name));
    return false;
  }
  
  public final int hashCode()
  {
    return this.name.hashCode();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/org/a/b/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */