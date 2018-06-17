package android.support.v4.view;

import android.os.Build.VERSION;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.LayoutInflater.Factory2;
import java.lang.reflect.Field;

public final class f
{
  private static Field FD;
  private static boolean FE;
  static final b FF = new b();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      FF = new a();
      return;
    }
  }
  
  static void a(LayoutInflater paramLayoutInflater, LayoutInflater.Factory2 paramFactory2)
  {
    if (!FE) {}
    try
    {
      Field localField = LayoutInflater.class.getDeclaredField("mFactory2");
      FD = localField;
      localField.setAccessible(true);
      FE = true;
      if (FD == null) {}
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;)
      {
        try
        {
          FD.set(paramLayoutInflater, paramFactory2);
          return;
        }
        catch (IllegalAccessException paramFactory2)
        {
          Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + paramLayoutInflater + "; inflation may have unexpected results.", paramFactory2);
        }
        localNoSuchFieldException = localNoSuchFieldException;
        Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", localNoSuchFieldException);
      }
    }
  }
  
  public static void b(LayoutInflater paramLayoutInflater, LayoutInflater.Factory2 paramFactory2)
  {
    FF.b(paramLayoutInflater, paramFactory2);
  }
  
  static final class a
    extends f.b
  {
    public final void b(LayoutInflater paramLayoutInflater, LayoutInflater.Factory2 paramFactory2)
    {
      paramLayoutInflater.setFactory2(paramFactory2);
    }
  }
  
  static class b
  {
    public void b(LayoutInflater paramLayoutInflater, LayoutInflater.Factory2 paramFactory2)
    {
      paramLayoutInflater.setFactory2(paramFactory2);
      LayoutInflater.Factory localFactory = paramLayoutInflater.getFactory();
      if ((localFactory instanceof LayoutInflater.Factory2))
      {
        f.a(paramLayoutInflater, (LayoutInflater.Factory2)localFactory);
        return;
      }
      f.a(paramLayoutInflater, paramFactory2);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */