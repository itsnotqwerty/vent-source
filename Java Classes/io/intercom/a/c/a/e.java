package io.intercom.a.c.a;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class e
{
  boolean aan = true;
  private final int bkc;
  final Object cTM;
  private final Method method;
  
  e(Object paramObject, Method paramMethod)
  {
    if (paramObject == null) {
      throw new NullPointerException("EventProducer target cannot be null.");
    }
    if (paramMethod == null) {
      throw new NullPointerException("EventProducer method cannot be null.");
    }
    this.cTM = paramObject;
    this.method = paramMethod;
    paramMethod.setAccessible(true);
    this.bkc = ((paramMethod.hashCode() + 31) * 31 + paramObject.hashCode());
  }
  
  public final Object Ko()
    throws InvocationTargetException
  {
    if (!this.aan) {
      throw new IllegalStateException(toString() + " has been invalidated and can no longer produce events.");
    }
    try
    {
      Object localObject = this.method.invoke(this.cTM, new Object[0]);
      return localObject;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      if ((localInvocationTargetException.getCause() instanceof Error)) {
        throw ((Error)localInvocationTargetException.getCause());
      }
      throw localInvocationTargetException;
    }
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
      paramObject = (e)paramObject;
    } while ((this.method.equals(((e)paramObject).method)) && (this.cTM == ((e)paramObject).cTM));
    return false;
  }
  
  public final int hashCode()
  {
    return this.bkc;
  }
  
  public final String toString()
  {
    return "[EventProducer " + this.method + "]";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/c/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */