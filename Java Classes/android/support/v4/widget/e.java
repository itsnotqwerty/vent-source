package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;

public final class e
{
  private static final c IS = new c();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      IS = new b();
      return;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      IS = new a();
      return;
    }
  }
  
  public static Drawable a(CompoundButton paramCompoundButton)
  {
    return IS.a(paramCompoundButton);
  }
  
  public static void a(CompoundButton paramCompoundButton, ColorStateList paramColorStateList)
  {
    IS.a(paramCompoundButton, paramColorStateList);
  }
  
  public static void a(CompoundButton paramCompoundButton, PorterDuff.Mode paramMode)
  {
    IS.a(paramCompoundButton, paramMode);
  }
  
  static class a
    extends e.c
  {
    public final void a(CompoundButton paramCompoundButton, ColorStateList paramColorStateList)
    {
      paramCompoundButton.setButtonTintList(paramColorStateList);
    }
    
    public final void a(CompoundButton paramCompoundButton, PorterDuff.Mode paramMode)
    {
      paramCompoundButton.setButtonTintMode(paramMode);
    }
  }
  
  static final class b
    extends e.a
  {
    public final Drawable a(CompoundButton paramCompoundButton)
    {
      return paramCompoundButton.getButtonDrawable();
    }
  }
  
  static class c
  {
    private static Field IT;
    private static boolean IU;
    
    public Drawable a(CompoundButton paramCompoundButton)
    {
      if (!IU) {}
      try
      {
        Field localField = CompoundButton.class.getDeclaredField("mButtonDrawable");
        IT = localField;
        localField.setAccessible(true);
        IU = true;
        if (IT == null) {}
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        for (;;)
        {
          try
          {
            paramCompoundButton = (Drawable)IT.get(paramCompoundButton);
            return paramCompoundButton;
          }
          catch (IllegalAccessException paramCompoundButton)
          {
            Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", paramCompoundButton);
            IT = null;
          }
          localNoSuchFieldException = localNoSuchFieldException;
          Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", localNoSuchFieldException);
        }
      }
      return null;
    }
    
    public void a(CompoundButton paramCompoundButton, ColorStateList paramColorStateList)
    {
      if ((paramCompoundButton instanceof p)) {
        ((p)paramCompoundButton).setSupportButtonTintList(paramColorStateList);
      }
    }
    
    public void a(CompoundButton paramCompoundButton, PorterDuff.Mode paramMode)
    {
      if ((paramCompoundButton instanceof p)) {
        ((p)paramCompoundButton).setSupportButtonTintMode(paramMode);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/widget/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */