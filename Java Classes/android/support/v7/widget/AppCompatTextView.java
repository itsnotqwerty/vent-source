package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.view.q;
import android.support.v4.widget.b;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;

public class AppCompatTextView
  extends TextView
  implements q, b
{
  private final h mBackgroundTintHelper = new h(this);
  private final aa mTextHelper;
  
  public AppCompatTextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppCompatTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842884);
  }
  
  public AppCompatTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(bl.n(paramContext), paramAttributeSet, paramInt);
    this.mBackgroundTintHelper.a(paramAttributeSet, paramInt);
    this.mTextHelper = aa.d(this);
    this.mTextHelper.a(paramAttributeSet, paramInt);
    this.mTextHelper.gl();
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (this.mBackgroundTintHelper != null) {
      this.mBackgroundTintHelper.ge();
    }
    if (this.mTextHelper != null) {
      this.mTextHelper.gl();
    }
  }
  
  public int getAutoSizeMaxTextSize()
  {
    if (Im) {
      return super.getAutoSizeMaxTextSize();
    }
    if (this.mTextHelper != null) {
      return Math.round(this.mTextHelper.WS.Xf);
    }
    return -1;
  }
  
  public int getAutoSizeMinTextSize()
  {
    if (Im) {
      return super.getAutoSizeMinTextSize();
    }
    if (this.mTextHelper != null) {
      return Math.round(this.mTextHelper.WS.Xe);
    }
    return -1;
  }
  
  public int getAutoSizeStepGranularity()
  {
    if (Im) {
      return super.getAutoSizeStepGranularity();
    }
    if (this.mTextHelper != null) {
      return Math.round(this.mTextHelper.WS.Xd);
    }
    return -1;
  }
  
  public int[] getAutoSizeTextAvailableSizes()
  {
    if (Im) {
      return super.getAutoSizeTextAvailableSizes();
    }
    if (this.mTextHelper != null) {
      return this.mTextHelper.WS.Xg;
    }
    return new int[0];
  }
  
  public int getAutoSizeTextType()
  {
    if (Im)
    {
      if (super.getAutoSizeTextType() == 1) {
        return 1;
      }
      return 0;
    }
    if (this.mTextHelper != null) {
      return this.mTextHelper.WS.Xb;
    }
    return 0;
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
  
  public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    return o.a(super.onCreateInputConnection(paramEditorInfo), paramEditorInfo, this);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.mTextHelper != null) {
      this.mTextHelper.gm();
    }
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    if ((this.mTextHelper != null) && (!Im) && (this.mTextHelper.WS.gq())) {
      this.mTextHelper.WS.gp();
    }
  }
  
  public void setAutoSizeTextTypeUniformWithConfiguration(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws IllegalArgumentException
  {
    if (Im) {
      super.setAutoSizeTextTypeUniformWithConfiguration(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    while (this.mTextHelper == null) {
      return;
    }
    this.mTextHelper.setAutoSizeTextTypeUniformWithConfiguration(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setAutoSizeTextTypeUniformWithPresetSizes(int[] paramArrayOfInt, int paramInt)
    throws IllegalArgumentException
  {
    if (Im) {
      super.setAutoSizeTextTypeUniformWithPresetSizes(paramArrayOfInt, paramInt);
    }
    while (this.mTextHelper == null) {
      return;
    }
    this.mTextHelper.setAutoSizeTextTypeUniformWithPresetSizes(paramArrayOfInt, paramInt);
  }
  
  public void setAutoSizeTextTypeWithDefaults(int paramInt)
  {
    if (Im) {
      super.setAutoSizeTextTypeWithDefaults(paramInt);
    }
    while (this.mTextHelper == null) {
      return;
    }
    this.mTextHelper.setAutoSizeTextTypeWithDefaults(paramInt);
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
  
  public void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    if (this.mTextHelper != null) {
      this.mTextHelper.j(paramContext, paramInt);
    }
  }
  
  public void setTextSize(int paramInt, float paramFloat)
  {
    if (Im) {
      super.setTextSize(paramInt, paramFloat);
    }
    while (this.mTextHelper == null) {
      return;
    }
    this.mTextHelper.setTextSize(paramInt, paramFloat);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/AppCompatTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */