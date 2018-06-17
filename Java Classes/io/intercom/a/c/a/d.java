package io.intercom.a.c.a;

import java.lang.reflect.Method;

final class d
{
  boolean aan = true;
  private final int bkc;
  final Object cTM;
  final Method method;
  
  d(Object paramObject, Method paramMethod)
  {
    if (paramObject == null) {
      throw new NullPointerException("EventHandler target cannot be null.");
    }
    if (paramMethod == null) {
      throw new NullPointerException("EventHandler method cannot be null.");
    }
    this.cTM = paramObject;
    this.method = paramMethod;
    paramMethod.setAccessible(true);
    this.bkc = ((paramMethod.hashCode() + 31) * 31 + paramObject.hashCode());
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (d)paramObject;
    } while ((this.method.equals(((d)paramObject).method)) && (this.cTM == ((d)paramObject).cTM));
    return false;
  }
  
  public final int hashCode()
  {
    return this.bkc;
  }
  
  public final String toString()
  {
    return "[EventHandler " + this.method + "]";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/c/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */