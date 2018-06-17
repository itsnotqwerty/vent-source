package android.support.v4.f;

import android.os.Build.VERSION;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

public final class a
{
  private static Method DV;
  private static Method DW;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21) {}
    for (;;)
    {
      try
      {
        DW = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", new Class[] { Locale.class });
        return;
      }
      catch (Exception localException1)
      {
        throw new IllegalStateException(localException1);
      }
      try
      {
        Class localClass = Class.forName("libcore.icu.ICU");
        if (localClass != null)
        {
          DV = localClass.getMethod("getScript", new Class[] { String.class });
          DW = localClass.getMethod("addLikelySubtags", new Class[] { String.class });
          return;
        }
      }
      catch (Exception localException2)
      {
        DV = null;
        DW = null;
        Log.w("ICUCompat", localException2);
      }
    }
  }
  
  public static String a(Locale paramLocale)
  {
    String str1 = null;
    if (Build.VERSION.SDK_INT >= 21) {}
    String str2;
    do
    {
      try
      {
        str1 = ((Locale)DW.invoke(null, new Object[] { paramLocale })).getScript();
        paramLocale = str1;
        return paramLocale;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        Log.w("ICUCompat", localInvocationTargetException);
        return paramLocale.getScript();
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        for (;;)
        {
          Log.w("ICUCompat", localIllegalAccessException);
        }
      }
      str2 = b(paramLocale);
      paramLocale = localIllegalAccessException;
    } while (str2 == null);
    return getScript(str2);
  }
  
  private static String b(Locale paramLocale)
  {
    paramLocale = paramLocale.toString();
    try
    {
      if (DW != null)
      {
        String str = (String)DW.invoke(null, new Object[] { paramLocale });
        return str;
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.w("ICUCompat", localIllegalAccessException);
      return paramLocale;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;)
      {
        Log.w("ICUCompat", localInvocationTargetException);
      }
    }
  }
  
  private static String getScript(String paramString)
  {
    try
    {
      if (DV != null)
      {
        paramString = (String)DV.invoke(null, new Object[] { paramString });
        return paramString;
      }
    }
    catch (IllegalAccessException paramString)
    {
      Log.w("ICUCompat", paramString);
      return null;
    }
    catch (InvocationTargetException paramString)
    {
      for (;;)
      {
        Log.w("ICUCompat", paramString);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/f/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */