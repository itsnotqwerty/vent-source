package android.support.v4.app;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class g
{
  public static final class a
  {
    private static Method wJ;
    private static boolean wK;
    
    public static IBinder a(Bundle paramBundle, String paramString)
    {
      if (!wK) {}
      try
      {
        Method localMethod = Bundle.class.getMethod("getIBinder", new Class[] { String.class });
        wJ = localMethod;
        localMethod.setAccessible(true);
        wK = true;
        if (wJ == null) {}
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        for (;;)
        {
          try
          {
            paramBundle = (IBinder)wJ.invoke(paramBundle, new Object[] { paramString });
            return paramBundle;
          }
          catch (IllegalAccessException paramBundle)
          {
            Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", paramBundle);
            wJ = null;
            return null;
          }
          catch (IllegalArgumentException paramBundle)
          {
            continue;
          }
          catch (InvocationTargetException paramBundle)
          {
            continue;
          }
          localNoSuchMethodException = localNoSuchMethodException;
          Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", localNoSuchMethodException);
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */