package okhttp3.internal.b;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class e
  extends RuntimeException
{
  private static final Method addSuppressedExceptionMethod;
  public IOException lastException;
  
  static
  {
    try
    {
      Method localMethod = Throwable.class.getDeclaredMethod("addSuppressed", new Class[] { Throwable.class });
      addSuppressedExceptionMethod = localMethod;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject = null;
      }
    }
  }
  
  public e(IOException paramIOException)
  {
    super(paramIOException);
    this.lastException = paramIOException;
  }
  
  static void addSuppressedIfPossible(IOException paramIOException1, IOException paramIOException2)
  {
    if (addSuppressedExceptionMethod != null) {}
    try
    {
      addSuppressedExceptionMethod.invoke(paramIOException1, new Object[] { paramIOException2 });
      return;
    }
    catch (IllegalAccessException paramIOException1) {}catch (InvocationTargetException paramIOException1) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/b/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */