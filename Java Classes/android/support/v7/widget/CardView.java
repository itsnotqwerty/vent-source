package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.b.a.a;
import android.support.v7.b.a.b;
import android.support.v7.b.a.d;
import android.support.v7.b.a.e;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;

public class CardView
  extends FrameLayout
{
  private static final int[] Xm = { 16842801 };
  private static final ah Xn;
  private boolean Xo;
  int Xp;
  int Xq;
  final Rect Xr = new Rect();
  final Rect Xs = new Rect();
  private final ag Xt = new ag()
  {
    private Drawable Xu;
    
    public final void B(int paramAnonymousInt1, int paramAnonymousInt2)
    {
      if (paramAnonymousInt1 > CardView.this.Xp) {
        CardView.a(CardView.this, paramAnonymousInt1);
      }
      if (paramAnonymousInt2 > CardView.this.Xq) {
        CardView.b(CardView.this, paramAnonymousInt2);
      }
    }
    
    public final void c(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
    {
      CardView.this.Xs.set(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3, paramAnonymousInt4);
      CardView.a(CardView.this, CardView.this.Xr.left + paramAnonymousInt1, CardView.this.Xr.top + paramAnonymousInt2, CardView.this.Xr.right + paramAnonymousInt3, CardView.this.Xr.bottom + paramAnonymousInt4);
    }
    
    public final boolean getPreventCornerOverlap()
    {
      return CardView.this.getPreventCornerOverlap();
    }
    
    public final boolean getUseCompatPadding()
    {
      return CardView.this.getUseCompatPadding();
    }
    
    public final Drawable gt()
    {
      return this.Xu;
    }
    
    public final View gu()
    {
      return CardView.this;
    }
    
    public final void j(Drawable paramAnonymousDrawable)
    {
      this.Xu = paramAnonymousDrawable;
      CardView.this.setBackgroundDrawable(paramAnonymousDrawable);
    }
  };
  private boolean mu;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21) {
      Xn = new ae();
    }
    for (;;)
    {
      Xn.gv();
      return;
      if (Build.VERSION.SDK_INT >= 17) {
        Xn = new ad();
      } else {
        Xn = new af();
      }
    }
  }
  
  public CardView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.cardViewStyle);
  }
  
  public CardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, a.e.CardView, paramInt, a.d.CardView);
    if (localTypedArray.hasValue(a.e.CardView_cardBackgroundColor))
    {
      paramAttributeSet = localTypedArray.getColorStateList(a.e.CardView_cardBackgroundColor);
      float f4 = localTypedArray.getDimension(a.e.CardView_cardCornerRadius, 0.0F);
      float f2 = localTypedArray.getDimension(a.e.CardView_cardElevation, 0.0F);
      float f3 = localTypedArray.getDimension(a.e.CardView_cardMaxElevation, 0.0F);
      this.mu = localTypedArray.getBoolean(a.e.CardView_cardUseCompatPadding, false);
      this.Xo = localTypedArray.getBoolean(a.e.CardView_cardPreventCornerOverlap, true);
      paramInt = localTypedArray.getDimensionPixelSize(a.e.CardView_contentPadding, 0);
      this.Xr.left = localTypedArray.getDimensionPixelSize(a.e.CardView_contentPaddingLeft, paramInt);
      this.Xr.top = localTypedArray.getDimensionPixelSize(a.e.CardView_contentPaddingTop, paramInt);
      this.Xr.right = localTypedArray.getDimensionPixelSize(a.e.CardView_contentPaddingRight, paramInt);
      this.Xr.bottom = localTypedArray.getDimensionPixelSize(a.e.CardView_contentPaddingBottom, paramInt);
      float f1 = f3;
      if (f2 > f3) {
        f1 = f2;
      }
      this.Xp = localTypedArray.getDimensionPixelSize(a.e.CardView_android_minWidth, 0);
      this.Xq = localTypedArray.getDimensionPixelSize(a.e.CardView_android_minHeight, 0);
      localTypedArray.recycle();
      Xn.a(this.Xt, paramContext, paramAttributeSet, f4, f2, f1);
      return;
    }
    paramAttributeSet = getContext().obtainStyledAttributes(Xm);
    paramInt = paramAttributeSet.getColor(0, 0);
    paramAttributeSet.recycle();
    paramAttributeSet = new float[3];
    Color.colorToHSV(paramInt, paramAttributeSet);
    if (paramAttributeSet[2] > 0.5F) {}
    for (paramInt = getResources().getColor(a.b.cardview_light_background);; paramInt = getResources().getColor(a.b.cardview_dark_background))
    {
      paramAttributeSet = ColorStateList.valueOf(paramInt);
      break;
    }
  }
  
  public ColorStateList getCardBackgroundColor()
  {
    return Xn.h(this.Xt);
  }
  
  public float getCardElevation()
  {
    return Xn.e(this.Xt);
  }
  
  public int getContentPaddingBottom()
  {
    return this.Xr.bottom;
  }
  
  public int getContentPaddingLeft()
  {
    return this.Xr.left;
  }
  
  public int getContentPaddingRight()
  {
    return this.Xr.right;
  }
  
  public int getContentPaddingTop()
  {
    return this.Xr.top;
  }
  
  public float getMaxCardElevation()
  {
    return Xn.a(this.Xt);
  }
  
  public boolean getPreventCornerOverlap()
  {
    return this.Xo;
  }
  
  public float getRadius()
  {
    return Xn.d(this.Xt);
  }
  
  public boolean getUseCompatPadding()
  {
    return this.mu;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (!(Xn instanceof ae))
    {
      int i = View.MeasureSpec.getMode(paramInt1);
      switch (i)
      {
      default: 
        i = View.MeasureSpec.getMode(paramInt2);
        switch (i)
        {
        }
        break;
      }
      for (;;)
      {
        super.onMeasure(paramInt1, paramInt2);
        return;
        paramInt1 = View.MeasureSpec.makeMeasureSpec(Math.max((int)Math.ceil(Xn.b(this.Xt)), View.MeasureSpec.getSize(paramInt1)), i);
        break;
        paramInt2 = View.MeasureSpec.makeMeasureSpec(Math.max((int)Math.ceil(Xn.c(this.Xt)), View.MeasureSpec.getSize(paramInt2)), i);
      }
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setCardBackgroundColor(int paramInt)
  {
    Xn.a(this.Xt, ColorStateList.valueOf(paramInt));
  }
  
  public void setCardBackgroundColor(ColorStateList paramColorStateList)
  {
    Xn.a(this.Xt, paramColorStateList);
  }
  
  public void setCardElevation(float paramFloat)
  {
    Xn.c(this.Xt, paramFloat);
  }
  
  public void setMaxCardElevation(float paramFloat)
  {
    Xn.b(this.Xt, paramFloat);
  }
  
  public void setMinimumHeight(int paramInt)
  {
    this.Xq = paramInt;
    super.setMinimumHeight(paramInt);
  }
  
  public void setMinimumWidth(int paramInt)
  {
    this.Xp = paramInt;
    super.setMinimumWidth(paramInt);
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void setPaddingRelative(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void setPreventCornerOverlap(boolean paramBoolean)
  {
    if (paramBoolean != this.Xo)
    {
      this.Xo = paramBoolean;
      Xn.g(this.Xt);
    }
  }
  
  public void setRadius(float paramFloat)
  {
    Xn.a(this.Xt, paramFloat);
  }
  
  public void setUseCompatPadding(boolean paramBoolean)
  {
    if (this.mu != paramBoolean)
    {
      this.mu = paramBoolean;
      Xn.f(this.Xt);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/CardView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */