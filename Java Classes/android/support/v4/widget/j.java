package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.widget.ImageView;

public final class j
{
  static final b Jp = new a();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      Jp = new c();
      return;
    }
  }
  
  public static ColorStateList a(ImageView paramImageView)
  {
    return Jp.a(paramImageView);
  }
  
  public static void a(ImageView paramImageView, ColorStateList paramColorStateList)
  {
    Jp.a(paramImageView, paramColorStateList);
  }
  
  public static void a(ImageView paramImageView, PorterDuff.Mode paramMode)
  {
    Jp.a(paramImageView, paramMode);
  }
  
  public static PorterDuff.Mode b(ImageView paramImageView)
  {
    return Jp.b(paramImageView);
  }
  
  static class a
    implements j.b
  {
    public ColorStateList a(ImageView paramImageView)
    {
      if ((paramImageView instanceof q)) {
        return ((q)paramImageView).getSupportImageTintList();
      }
      return null;
    }
    
    public void a(ImageView paramImageView, ColorStateList paramColorStateList)
    {
      if ((paramImageView instanceof q)) {
        ((q)paramImageView).setSupportImageTintList(paramColorStateList);
      }
    }
    
    public void a(ImageView paramImageView, PorterDuff.Mode paramMode)
    {
      if ((paramImageView instanceof q)) {
        ((q)paramImageView).setSupportImageTintMode(paramMode);
      }
    }
    
    public PorterDuff.Mode b(ImageView paramImageView)
    {
      if ((paramImageView instanceof q)) {
        return ((q)paramImageView).getSupportImageTintMode();
      }
      return null;
    }
  }
  
  static abstract interface b
  {
    public abstract ColorStateList a(ImageView paramImageView);
    
    public abstract void a(ImageView paramImageView, ColorStateList paramColorStateList);
    
    public abstract void a(ImageView paramImageView, PorterDuff.Mode paramMode);
    
    public abstract PorterDuff.Mode b(ImageView paramImageView);
  }
  
  static final class c
    extends j.a
  {
    public final ColorStateList a(ImageView paramImageView)
    {
      return paramImageView.getImageTintList();
    }
    
    public final void a(ImageView paramImageView, ColorStateList paramColorStateList)
    {
      paramImageView.setImageTintList(paramColorStateList);
      if (Build.VERSION.SDK_INT == 21)
      {
        paramColorStateList = paramImageView.getDrawable();
        if ((paramImageView.getImageTintList() == null) || (paramImageView.getImageTintMode() == null)) {
          break label64;
        }
      }
      label64:
      for (int i = 1;; i = 0)
      {
        if ((paramColorStateList != null) && (i != 0))
        {
          if (paramColorStateList.isStateful()) {
            paramColorStateList.setState(paramImageView.getDrawableState());
          }
          paramImageView.setImageDrawable(paramColorStateList);
        }
        return;
      }
    }
    
    public final void a(ImageView paramImageView, PorterDuff.Mode paramMode)
    {
      paramImageView.setImageTintMode(paramMode);
      if (Build.VERSION.SDK_INT == 21)
      {
        paramMode = paramImageView.getDrawable();
        if ((paramImageView.getImageTintList() == null) || (paramImageView.getImageTintMode() == null)) {
          break label64;
        }
      }
      label64:
      for (int i = 1;; i = 0)
      {
        if ((paramMode != null) && (i != 0))
        {
          if (paramMode.isStateful()) {
            paramMode.setState(paramImageView.getDrawableState());
          }
          paramImageView.setImageDrawable(paramMode);
        }
        return;
      }
    }
    
    public final PorterDuff.Mode b(ImageView paramImageView)
    {
      return paramImageView.getImageTintMode();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/widget/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */