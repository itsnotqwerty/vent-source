package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.d.a;
import android.util.Log;
import android.widget.TextView;
import java.lang.reflect.Field;

public final class o
{
  static final g KD = new g();
  
  static
  {
    if (a.dx())
    {
      KD = new f();
      return;
    }
    if (Build.VERSION.SDK_INT >= 26)
    {
      KD = new e();
      return;
    }
    if (Build.VERSION.SDK_INT >= 23)
    {
      KD = new d();
      return;
    }
    if (Build.VERSION.SDK_INT >= 18)
    {
      KD = new c();
      return;
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      KD = new b();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      KD = new a();
      return;
    }
  }
  
  public static void a(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    KD.a(paramTextView, paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
  }
  
  public static int b(TextView paramTextView)
  {
    return KD.b(paramTextView);
  }
  
  public static void b(TextView paramTextView, int paramInt)
  {
    KD.b(paramTextView, paramInt);
  }
  
  public static Drawable[] c(TextView paramTextView)
  {
    return KD.c(paramTextView);
  }
  
  static class a
    extends o.g
  {
    public final int b(TextView paramTextView)
    {
      return paramTextView.getMaxLines();
    }
  }
  
  static class b
    extends o.a
  {
    public void a(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
    {
      int i;
      Drawable localDrawable;
      if (paramTextView.getLayoutDirection() == 1)
      {
        i = 1;
        if (i == 0) {
          break label42;
        }
        localDrawable = paramDrawable3;
        label20:
        if (i == 0) {
          break label48;
        }
      }
      for (;;)
      {
        paramTextView.setCompoundDrawables(localDrawable, paramDrawable2, paramDrawable1, paramDrawable4);
        return;
        i = 0;
        break;
        label42:
        localDrawable = paramDrawable1;
        break label20;
        label48:
        paramDrawable1 = paramDrawable3;
      }
    }
    
    public Drawable[] c(TextView paramTextView)
    {
      int i = 1;
      if (paramTextView.getLayoutDirection() == 1) {}
      for (;;)
      {
        paramTextView = paramTextView.getCompoundDrawables();
        if (i != 0)
        {
          Object localObject1 = paramTextView[2];
          Object localObject2 = paramTextView[0];
          paramTextView[0] = localObject1;
          paramTextView[2] = localObject2;
        }
        return paramTextView;
        i = 0;
      }
    }
  }
  
  static class c
    extends o.b
  {
    public final void a(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
    {
      paramTextView.setCompoundDrawablesRelative(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
    }
    
    public final Drawable[] c(TextView paramTextView)
    {
      return paramTextView.getCompoundDrawablesRelative();
    }
  }
  
  static class d
    extends o.c
  {
    public final void b(TextView paramTextView, int paramInt)
    {
      paramTextView.setTextAppearance(paramInt);
    }
  }
  
  static class e
    extends o.d
  {}
  
  static final class f
    extends o.e
  {}
  
  static class g
  {
    private static Field KE;
    private static boolean KF;
    private static Field KG;
    private static boolean KH;
    
    private static Field A(String paramString)
    {
      Object localObject = null;
      try
      {
        Field localField = TextView.class.getDeclaredField(paramString);
        localObject = localField;
        localField.setAccessible(true);
        return localField;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        Log.e("TextViewCompatBase", "Could not retrieve " + paramString + " field.");
      }
      return (Field)localObject;
    }
    
    private static int a(Field paramField, TextView paramTextView)
    {
      try
      {
        int i = paramField.getInt(paramTextView);
        return i;
      }
      catch (IllegalAccessException paramTextView)
      {
        Log.d("TextViewCompatBase", "Could not retrieve value of " + paramField.getName() + " field.");
      }
      return -1;
    }
    
    public void a(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
    {
      paramTextView.setCompoundDrawables(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
    }
    
    public int b(TextView paramTextView)
    {
      if (!KH)
      {
        KG = A("mMaxMode");
        KH = true;
      }
      if ((KG != null) && (a(KG, paramTextView) == 1))
      {
        if (!KF)
        {
          KE = A("mMaximum");
          KF = true;
        }
        if (KE != null) {
          return a(KE, paramTextView);
        }
      }
      return -1;
    }
    
    public void b(TextView paramTextView, int paramInt)
    {
      paramTextView.setTextAppearance(paramTextView.getContext(), paramInt);
    }
    
    public Drawable[] c(TextView paramTextView)
    {
      return paramTextView.getCompoundDrawables();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/widget/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */