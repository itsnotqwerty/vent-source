package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v7.c.a.b;
import android.util.AttributeSet;
import android.util.TypedValue;

public final class bo
{
  TypedValue Wi;
  public final TypedArray ajT;
  final Context mContext;
  
  private bo(Context paramContext, TypedArray paramTypedArray)
  {
    this.mContext = paramContext;
    this.ajT = paramTypedArray;
  }
  
  public static bo a(Context paramContext, int paramInt, int[] paramArrayOfInt)
  {
    return new bo(paramContext, paramContext.obtainStyledAttributes(paramInt, paramArrayOfInt));
  }
  
  public static bo a(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt)
  {
    return new bo(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt));
  }
  
  public static bo a(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    return new bo(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt, paramInt1, paramInt2));
  }
  
  public final Drawable ch(int paramInt)
  {
    if (this.ajT.hasValue(paramInt))
    {
      paramInt = this.ajT.getResourceId(paramInt, 0);
      if (paramInt != 0) {
        return m.gh().a(this.mContext, paramInt, true);
      }
    }
    return null;
  }
  
  public final boolean getBoolean(int paramInt, boolean paramBoolean)
  {
    return this.ajT.getBoolean(paramInt, paramBoolean);
  }
  
  public final int getColor(int paramInt1, int paramInt2)
  {
    return this.ajT.getColor(paramInt1, paramInt2);
  }
  
  public final ColorStateList getColorStateList(int paramInt)
  {
    if (this.ajT.hasValue(paramInt))
    {
      int i = this.ajT.getResourceId(paramInt, 0);
      if (i != 0)
      {
        ColorStateList localColorStateList = b.b(this.mContext, i);
        if (localColorStateList != null) {
          return localColorStateList;
        }
      }
    }
    return this.ajT.getColorStateList(paramInt);
  }
  
  public final int getDimensionPixelOffset(int paramInt1, int paramInt2)
  {
    return this.ajT.getDimensionPixelOffset(paramInt1, paramInt2);
  }
  
  public final int getDimensionPixelSize(int paramInt1, int paramInt2)
  {
    return this.ajT.getDimensionPixelSize(paramInt1, paramInt2);
  }
  
  public final Drawable getDrawable(int paramInt)
  {
    if (this.ajT.hasValue(paramInt))
    {
      int i = this.ajT.getResourceId(paramInt, 0);
      if (i != 0) {
        return b.a(this.mContext, i);
      }
    }
    return this.ajT.getDrawable(paramInt);
  }
  
  public final float getFloat(int paramInt, float paramFloat)
  {
    return this.ajT.getFloat(paramInt, paramFloat);
  }
  
  public final int getInt(int paramInt1, int paramInt2)
  {
    return this.ajT.getInt(paramInt1, paramInt2);
  }
  
  public final int getInteger(int paramInt1, int paramInt2)
  {
    return this.ajT.getInteger(paramInt1, paramInt2);
  }
  
  public final int getLayoutDimension(int paramInt1, int paramInt2)
  {
    return this.ajT.getLayoutDimension(paramInt1, paramInt2);
  }
  
  public final int getResourceId(int paramInt1, int paramInt2)
  {
    return this.ajT.getResourceId(paramInt1, paramInt2);
  }
  
  public final String getString(int paramInt)
  {
    return this.ajT.getString(paramInt);
  }
  
  public final CharSequence getText(int paramInt)
  {
    return this.ajT.getText(paramInt);
  }
  
  public final boolean hasValue(int paramInt)
  {
    return this.ajT.hasValue(paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */