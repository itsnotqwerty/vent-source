package android.support.v7.app;

import android.content.res.Resources;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;

final class m
{
  private static Field Od;
  private static boolean Oe;
  private static Class Of;
  private static boolean Og;
  private static Field Oh;
  private static boolean Oi;
  private static Field Oj;
  private static boolean Ok;
  
  private static boolean J(Object paramObject)
  {
    if (!Og) {}
    try
    {
      Of = Class.forName("android.content.res.ThemedResourceCache");
      Og = true;
      if (Of == null) {
        return false;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", localClassNotFoundException);
      }
      if (!Oi) {}
      try
      {
        Field localField = Of.getDeclaredField("mUnthemedEntries");
        Oh = localField;
        localField.setAccessible(true);
        Oi = true;
        if (Oh == null) {
          return false;
        }
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        for (;;)
        {
          Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", localNoSuchFieldException);
        }
        try
        {
          paramObject = (LongSparseArray)Oh.get(paramObject);
          if (paramObject != null)
          {
            ((LongSparseArray)paramObject).clear();
            return true;
          }
        }
        catch (IllegalAccessException paramObject)
        {
          for (;;)
          {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", (Throwable)paramObject);
            paramObject = null;
          }
        }
      }
    }
    return false;
  }
  
  static boolean a(Resources paramResources)
  {
    if (!Oe) {}
    try
    {
      Field localField = Resources.class.getDeclaredField("mDrawableCache");
      Od = localField;
      localField.setAccessible(true);
      Oe = true;
      if (Od == null) {}
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      try
      {
        paramResources = (Map)Od.get(paramResources);
        if (paramResources != null)
        {
          paramResources.clear();
          return true;
          localNoSuchFieldException = localNoSuchFieldException;
          Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", localNoSuchFieldException);
        }
      }
      catch (IllegalAccessException paramResources)
      {
        for (;;)
        {
          Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", paramResources);
          paramResources = null;
        }
      }
    }
    return false;
  }
  
  static boolean b(Resources paramResources)
  {
    if (!Oe) {}
    try
    {
      Field localField = Resources.class.getDeclaredField("mDrawableCache");
      Od = localField;
      localField.setAccessible(true);
      Oe = true;
      if (Od == null) {}
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      do
      {
        for (;;)
        {
          try
          {
            paramResources = Od.get(paramResources);
            if (paramResources != null) {
              break;
            }
            return false;
          }
          catch (IllegalAccessException paramResources)
          {
            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", paramResources);
          }
          localNoSuchFieldException = localNoSuchFieldException;
          Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", localNoSuchFieldException);
          continue;
          paramResources = null;
        }
      } while ((paramResources == null) || (!J(paramResources)));
    }
    return true;
  }
  
  static boolean c(Resources paramResources)
  {
    if (!Ok) {}
    for (;;)
    {
      try
      {
        Field localField1 = Resources.class.getDeclaredField("mResourcesImpl");
        Oj = localField1;
        localField1.setAccessible(true);
        Ok = true;
        if (Oj == null) {
          return false;
        }
      }
      catch (NoSuchFieldException localNoSuchFieldException1)
      {
        Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", localNoSuchFieldException1);
        continue;
      }
      try
      {
        paramResources = Oj.get(paramResources);
        if (paramResources == null) {
          continue;
        }
        if (Oe) {}
      }
      catch (IllegalAccessException paramResources)
      {
        try
        {
          Field localField2 = paramResources.getClass().getDeclaredField("mDrawableCache");
          Od = localField2;
          localField2.setAccessible(true);
          Oe = true;
          if (Od != null)
          {
            try
            {
              paramResources = Od.get(paramResources);
              if ((paramResources == null) || (!J(paramResources))) {
                continue;
              }
              return true;
            }
            catch (IllegalAccessException paramResources)
            {
              Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", paramResources);
            }
            paramResources = paramResources;
            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", paramResources);
            paramResources = null;
          }
        }
        catch (NoSuchFieldException localNoSuchFieldException2)
        {
          for (;;)
          {
            Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", localNoSuchFieldException2);
            continue;
            paramResources = null;
          }
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */