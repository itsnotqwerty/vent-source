package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.c.a.b;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;

public final class k
  extends CheckedTextView
{
  private static final int[] RE = { 16843016 };
  private final aa mTextHelper = aa.d(this);
  
  public k(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, (byte)0);
  }
  
  private k(Context paramContext, AttributeSet paramAttributeSet, byte paramByte)
  {
    super(bl.n(paramContext), paramAttributeSet, 16843720);
    this.mTextHelper.a(paramAttributeSet, 16843720);
    this.mTextHelper.gl();
    paramContext = bo.a(getContext(), paramAttributeSet, RE, 16843720, 0);
    setCheckMarkDrawable(paramContext.getDrawable(0));
    paramContext.ajT.recycle();
  }
  
  protected final void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (this.mTextHelper != null) {
      this.mTextHelper.gl();
    }
  }
  
  public final InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    return o.a(super.onCreateInputConnection(paramEditorInfo), paramEditorInfo, this);
  }
  
  public final void setCheckMarkDrawable(int paramInt)
  {
    setCheckMarkDrawable(b.a(getContext(), paramInt));
  }
  
  public final void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    if (this.mTextHelper != null) {
      this.mTextHelper.j(paramContext, paramInt);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */