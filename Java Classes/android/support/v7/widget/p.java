package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v7.a.a.a;
import android.util.AttributeSet;
import android.widget.ImageButton;

public class p
  extends ImageButton
  implements android.support.v4.view.q, android.support.v4.widget.q
{
  private final h mBackgroundTintHelper = new h(this);
  private final q mImageHelper;
  
  public p(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public p(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.imageButtonStyle);
  }
  
  public p(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(bl.n(paramContext), paramAttributeSet, paramInt);
    this.mBackgroundTintHelper.a(paramAttributeSet, paramInt);
    this.mImageHelper = new q(this);
    this.mImageHelper.a(paramAttributeSet, paramInt);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (this.mBackgroundTintHelper != null) {
      this.mBackgroundTintHelper.ge();
    }
    if (this.mImageHelper != null) {
      this.mImageHelper.gi();
    }
  }
  
  public ColorStateList getSupportBackgroundTintList()
  {
    if (this.mBackgroundTintHelper != null) {
      return this.mBackgroundTintHelper.getSupportBackgroundTintList();
    }
    return null;
  }
  
  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (this.mBackgroundTintHelper != null) {
      return this.mBackgroundTintHelper.getSupportBackgroundTintMode();
    }
    return null;
  }
  
  public ColorStateList getSupportImageTintList()
  {
    if (this.mImageHelper != null) {
      return this.mImageHelper.getSupportImageTintList();
    }
    return null;
  }
  
  public PorterDuff.Mode getSupportImageTintMode()
  {
    if (this.mImageHelper != null) {
      return this.mImageHelper.getSupportImageTintMode();
    }
    return null;
  }
  
  public boolean hasOverlappingRendering()
  {
    return (this.mImageHelper.hasOverlappingRendering()) && (super.hasOverlappingRendering());
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (this.mBackgroundTintHelper != null) {
      this.mBackgroundTintHelper.gd();
    }
  }
  
  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (this.mBackgroundTintHelper != null) {
      this.mBackgroundTintHelper.bh(paramInt);
    }
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    if (this.mImageHelper != null) {
      this.mImageHelper.gi();
    }
  }
  
  public void setImageDrawable(Drawable paramDrawable)
  {
    super.setImageDrawable(paramDrawable);
    if (this.mImageHelper != null) {
      this.mImageHelper.gi();
    }
  }
  
  public void setImageResource(int paramInt)
  {
    this.mImageHelper.setImageResource(paramInt);
  }
  
  public void setImageURI(Uri paramUri)
  {
    super.setImageURI(paramUri);
    if (this.mImageHelper != null) {
      this.mImageHelper.gi();
    }
  }
  
  public void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (this.mBackgroundTintHelper != null) {
      this.mBackgroundTintHelper.setSupportBackgroundTintList(paramColorStateList);
    }
  }
  
  public void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (this.mBackgroundTintHelper != null) {
      this.mBackgroundTintHelper.setSupportBackgroundTintMode(paramMode);
    }
  }
  
  public void setSupportImageTintList(ColorStateList paramColorStateList)
  {
    if (this.mImageHelper != null) {
      this.mImageHelper.setSupportImageTintList(paramColorStateList);
    }
  }
  
  public void setSupportImageTintMode(PorterDuff.Mode paramMode)
  {
    if (this.mImageHelper != null) {
      this.mImageHelper.setSupportImageTintMode(paramMode);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */