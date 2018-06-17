package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;

public class ContentFrameLayout
  extends FrameLayout
{
  private TypedValue XE;
  private TypedValue XF;
  private TypedValue XG;
  private TypedValue XH;
  private TypedValue XI;
  private TypedValue XJ;
  public final Rect XK = new Rect();
  private a XL;
  
  public ContentFrameLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ContentFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ContentFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public final void e(Rect paramRect)
  {
    fitSystemWindows(paramRect);
  }
  
  public TypedValue getFixedHeightMajor()
  {
    if (this.XI == null) {
      this.XI = new TypedValue();
    }
    return this.XI;
  }
  
  public TypedValue getFixedHeightMinor()
  {
    if (this.XJ == null) {
      this.XJ = new TypedValue();
    }
    return this.XJ;
  }
  
  public TypedValue getFixedWidthMajor()
  {
    if (this.XG == null) {
      this.XG = new TypedValue();
    }
    return this.XG;
  }
  
  public TypedValue getFixedWidthMinor()
  {
    if (this.XH == null) {
      this.XH = new TypedValue();
    }
    return this.XH;
  }
  
  public TypedValue getMinWidthMajor()
  {
    if (this.XE == null) {
      this.XE = new TypedValue();
    }
    return this.XE;
  }
  
  public TypedValue getMinWidthMinor()
  {
    if (this.XF == null) {
      this.XF = new TypedValue();
    }
    return this.XF;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.XL != null) {
      this.XL.onDetachedFromWindow();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int n = 0;
    DisplayMetrics localDisplayMetrics = getContext().getResources().getDisplayMetrics();
    int j;
    int i1;
    int i2;
    TypedValue localTypedValue;
    label61:
    int i;
    if (localDisplayMetrics.widthPixels < localDisplayMetrics.heightPixels)
    {
      j = 1;
      i1 = View.MeasureSpec.getMode(paramInt1);
      i2 = View.MeasureSpec.getMode(paramInt2);
      if (i1 != Integer.MIN_VALUE) {
        break label495;
      }
      if (j == 0) {
        break label353;
      }
      localTypedValue = this.XH;
      if ((localTypedValue == null) || (localTypedValue.type == 0)) {
        break label495;
      }
      if (localTypedValue.type != 5) {
        break label362;
      }
      i = (int)localTypedValue.getDimension(localDisplayMetrics);
    }
    for (;;)
    {
      label92:
      int m;
      int k;
      if (i > 0)
      {
        m = View.MeasureSpec.makeMeasureSpec(Math.min(i - (this.XK.left + this.XK.right), View.MeasureSpec.getSize(paramInt1)), 1073741824);
        k = 1;
      }
      for (;;)
      {
        i = paramInt2;
        if (i2 == Integer.MIN_VALUE)
        {
          if (j == 0) {
            break label394;
          }
          localTypedValue = this.XI;
          label150:
          i = paramInt2;
          if (localTypedValue != null)
          {
            i = paramInt2;
            if (localTypedValue.type != 0)
            {
              if (localTypedValue.type != 5) {
                break label403;
              }
              paramInt1 = (int)localTypedValue.getDimension(localDisplayMetrics);
            }
          }
        }
        for (;;)
        {
          label185:
          i = paramInt2;
          if (paramInt1 > 0) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(paramInt1 - (this.XK.top + this.XK.bottom), View.MeasureSpec.getSize(paramInt2)), 1073741824);
          }
          super.onMeasure(m, i);
          i2 = getMeasuredWidth();
          m = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
          if ((k == 0) && (i1 == Integer.MIN_VALUE)) {
            if (j != 0)
            {
              localTypedValue = this.XF;
              label266:
              if ((localTypedValue == null) || (localTypedValue.type == 0)) {
                break label476;
              }
              if (localTypedValue.type != 5) {
                break label444;
              }
              paramInt1 = (int)localTypedValue.getDimension(localDisplayMetrics);
            }
          }
          for (;;)
          {
            label297:
            paramInt2 = paramInt1;
            if (paramInt1 > 0) {
              paramInt2 = paramInt1 - (this.XK.left + this.XK.right);
            }
            if (i2 < paramInt2) {
              paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
            }
            for (paramInt2 = 1;; paramInt2 = n)
            {
              if (paramInt2 != 0) {
                super.onMeasure(paramInt1, i);
              }
              return;
              j = 0;
              break;
              label353:
              localTypedValue = this.XG;
              break label61;
              label362:
              if (localTypedValue.type != 6) {
                break label504;
              }
              i = (int)localTypedValue.getFraction(localDisplayMetrics.widthPixels, localDisplayMetrics.widthPixels);
              break label92;
              label394:
              localTypedValue = this.XJ;
              break label150;
              label403:
              if (localTypedValue.type != 6) {
                break label490;
              }
              paramInt1 = (int)localTypedValue.getFraction(localDisplayMetrics.heightPixels, localDisplayMetrics.heightPixels);
              break label185;
              localTypedValue = this.XE;
              break label266;
              label444:
              if (localTypedValue.type != 6) {
                break label485;
              }
              paramInt1 = (int)localTypedValue.getFraction(localDisplayMetrics.widthPixels, localDisplayMetrics.widthPixels);
              break label297;
              label476:
              paramInt1 = m;
            }
            label485:
            paramInt1 = 0;
          }
          label490:
          paramInt1 = 0;
        }
        label495:
        k = 0;
        m = paramInt1;
      }
      label504:
      i = 0;
    }
  }
  
  public void setAttachListener(a parama)
  {
    this.XL = parama;
  }
  
  public static abstract interface a
  {
    public abstract void onDetachedFromWindow();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ContentFrameLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */