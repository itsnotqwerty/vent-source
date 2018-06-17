package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.design.a.d;
import android.support.design.a.j;
import android.support.design.a.k;
import android.support.v4.view.r;
import android.support.v7.widget.q;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import java.util.List;

@CoordinatorLayout.c(Behavior.class)
public class FloatingActionButton
  extends u
{
  private int ai;
  private q mImageHelper;
  private ColorStateList mn;
  private PorterDuff.Mode mo;
  private int mp;
  private int mq;
  private int mr;
  int ms;
  private int mt;
  boolean mu;
  final Rect mv = new Rect();
  private final Rect mw = new Rect();
  private g mx;
  
  public FloatingActionButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    p.d(paramContext);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.FloatingActionButton, paramInt, a.j.Widget_Design_FloatingActionButton);
    this.mn = paramContext.getColorStateList(a.k.FloatingActionButton_backgroundTint);
    this.mo = s.S(paramContext.getInt(a.k.FloatingActionButton_backgroundTintMode, -1));
    this.mq = paramContext.getColor(a.k.FloatingActionButton_rippleColor, 0);
    this.ai = paramContext.getInt(a.k.FloatingActionButton_fabSize, -1);
    this.mr = paramContext.getDimensionPixelSize(a.k.FloatingActionButton_fabCustomSize, 0);
    this.mp = paramContext.getDimensionPixelSize(a.k.FloatingActionButton_borderWidth, 0);
    float f1 = paramContext.getDimension(a.k.FloatingActionButton_elevation, 0.0F);
    float f2 = paramContext.getDimension(a.k.FloatingActionButton_pressedTranslationZ, 0.0F);
    this.mu = paramContext.getBoolean(a.k.FloatingActionButton_useCompatPadding, false);
    paramContext.recycle();
    this.mImageHelper = new q(this);
    this.mImageHelper.a(paramAttributeSet, paramInt);
    this.mt = ((int)getResources().getDimension(a.d.design_fab_image_size));
    getImpl().a(this.mn, this.mo, this.mq, this.mp);
    getImpl().setElevation(f1);
    paramContext = getImpl();
    if (paramContext.mL != f2)
    {
      paramContext.mL = f2;
      paramContext.b(paramContext.mK, f2);
    }
  }
  
  private g.c c(final a parama)
  {
    if (parama == null) {
      return null;
    }
    new g.c() {};
  }
  
  private g getImpl()
  {
    if (this.mx == null) {
      if (Build.VERSION.SDK_INT < 21) {
        break label42;
      }
    }
    label42:
    for (Object localObject = new h(this, new b());; localObject = new g(this, new b()))
    {
      this.mx = ((g)localObject);
      return this.mx;
    }
  }
  
  private static int resolveAdjustedSize(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (i)
    {
    case 0: 
    default: 
      return paramInt1;
    case -2147483648: 
      return Math.min(paramInt1, paramInt2);
    }
    return paramInt2;
  }
  
  final void a(a parama)
  {
    int i = 1;
    g localg = getImpl();
    parama = c(parama);
    if (localg.mN.getVisibility() != 0) {
      if (localg.mD != 2) {}
    }
    for (;;)
    {
      if (i == 0)
      {
        localg.mN.animate().cancel();
        if (!localg.bK()) {
          break;
        }
        localg.mD = 2;
        if (localg.mN.getVisibility() != 0)
        {
          localg.mN.setAlpha(0.0F);
          localg.mN.setScaleY(0.0F);
          localg.mN.setScaleX(0.0F);
        }
        localg.mN.animate().scaleX(1.0F).scaleY(1.0F).alpha(1.0F).setDuration(200L).setInterpolator(a.iD).setListener(new g.2(localg, parama));
      }
      return;
      i = 0;
      continue;
      if (localg.mD == 1) {
        i = 0;
      }
    }
    localg.mN.b(0, false);
    localg.mN.setAlpha(1.0F);
    localg.mN.setScaleY(1.0F);
    localg.mN.setScaleX(1.0F);
  }
  
  final void b(a parama)
  {
    g localg = getImpl();
    parama = c(parama);
    int i;
    if (localg.mN.getVisibility() == 0) {
      if (localg.mD == 1) {
        i = 1;
      }
    }
    for (;;)
    {
      if (i == 0)
      {
        localg.mN.animate().cancel();
        if (!localg.bK()) {
          break;
        }
        localg.mD = 1;
        localg.mN.animate().scaleX(0.0F).scaleY(0.0F).alpha(0.0F).setDuration(200L).setInterpolator(a.iC).setListener(new g.1(localg, parama));
      }
      return;
      i = 0;
      continue;
      if (localg.mD != 2) {
        i = 1;
      } else {
        i = 0;
      }
    }
    localg.mN.b(4, false);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    getImpl().a(getDrawableState());
  }
  
  public ColorStateList getBackgroundTintList()
  {
    return this.mn;
  }
  
  public PorterDuff.Mode getBackgroundTintMode()
  {
    return this.mo;
  }
  
  public float getCompatElevation()
  {
    return getImpl().getElevation();
  }
  
  public Drawable getContentBackground()
  {
    return getImpl().mJ;
  }
  
  public int getCustomSize()
  {
    return this.mr;
  }
  
  public int getRippleColor()
  {
    return this.mq;
  }
  
  public int getSize()
  {
    return this.ai;
  }
  
  int getSizeDimension()
  {
    int i = this.ai;
    Resources localResources;
    for (;;)
    {
      localResources = getResources();
      if (this.mr != 0) {
        return this.mr;
      }
      switch (i)
      {
      case 0: 
      default: 
        return localResources.getDimensionPixelSize(a.d.design_fab_size_normal);
      case -1: 
        if (Math.max(localResources.getConfiguration().screenWidthDp, localResources.getConfiguration().screenHeightDp) < 470) {
          i = 1;
        } else {
          i = 0;
        }
        break;
      }
    }
    return localResources.getDimensionPixelSize(a.d.design_fab_size_mini);
  }
  
  public boolean getUseCompatPadding()
  {
    return this.mu;
  }
  
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    getImpl().bD();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    g localg = getImpl();
    if (localg.bG())
    {
      if (localg.mP == null) {
        localg.mP = new g.3(localg);
      }
      localg.mN.getViewTreeObserver().addOnPreDrawListener(localg.mP);
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    g localg = getImpl();
    if (localg.mP != null)
    {
      localg.mN.getViewTreeObserver().removeOnPreDrawListener(localg.mP);
      localg.mP = null;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = getSizeDimension();
    this.ms = ((i - this.mt) / 2);
    getImpl().bF();
    paramInt1 = Math.min(resolveAdjustedSize(i, paramInt1), resolveAdjustedSize(i, paramInt2));
    setMeasuredDimension(this.mv.left + paramInt1 + this.mv.right, paramInt1 + this.mv.top + this.mv.bottom);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.onTouchEvent(paramMotionEvent);
      Rect localRect = this.mw;
      if (r.ae(this))
      {
        localRect.set(0, 0, getWidth(), getHeight());
        localRect.left += this.mv.left;
        localRect.top += this.mv.top;
        localRect.right -= this.mv.right;
        localRect.bottom -= this.mv.bottom;
      }
      for (int i = 1; (i != 0) && (!this.mw.contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())); i = 0) {
        return false;
      }
    }
  }
  
  public void setBackgroundColor(int paramInt)
  {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundResource(int paramInt)
  {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (this.mn != paramColorStateList)
    {
      this.mn = paramColorStateList;
      g localg = getImpl();
      if (localg.mG != null) {
        android.support.v4.a.a.a.a(localg.mG, paramColorStateList);
      }
      if (localg.mI != null) {
        localg.mI.a(paramColorStateList);
      }
    }
  }
  
  public void setBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (this.mo != paramMode)
    {
      this.mo = paramMode;
      g localg = getImpl();
      if (localg.mG != null) {
        android.support.v4.a.a.a.a(localg.mG, paramMode);
      }
    }
  }
  
  public void setCompatElevation(float paramFloat)
  {
    getImpl().setElevation(paramFloat);
  }
  
  public void setCustomSize(int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("Custom size should be non-negative.");
    }
    this.mr = paramInt;
  }
  
  public void setImageResource(int paramInt)
  {
    this.mImageHelper.setImageResource(paramInt);
  }
  
  public void setRippleColor(int paramInt)
  {
    if (this.mq != paramInt)
    {
      this.mq = paramInt;
      getImpl().setRippleColor(paramInt);
    }
  }
  
  public void setSize(int paramInt)
  {
    if (paramInt != this.ai)
    {
      this.ai = paramInt;
      requestLayout();
    }
  }
  
  public void setUseCompatPadding(boolean paramBoolean)
  {
    if (this.mu != paramBoolean)
    {
      this.mu = paramBoolean;
      getImpl().bE();
    }
  }
  
  public static class Behavior
    extends CoordinatorLayout.b<FloatingActionButton>
  {
    private Rect lg;
    private FloatingActionButton.a mA;
    private boolean mB;
    
    public Behavior()
    {
      this.mB = true;
    }
    
    public Behavior(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.FloatingActionButton_Behavior_Layout);
      this.mB = paramContext.getBoolean(a.k.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
      paramContext.recycle();
    }
    
    private boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, FloatingActionButton paramFloatingActionButton)
    {
      if (!a(paramAppBarLayout, paramFloatingActionButton)) {
        return false;
      }
      if (this.lg == null) {
        this.lg = new Rect();
      }
      Rect localRect = this.lg;
      android.support.v4.widget.s.a(paramCoordinatorLayout, paramAppBarLayout, localRect);
      if (localRect.bottom <= paramAppBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
        paramFloatingActionButton.b(this.mA);
      }
      for (;;)
      {
        return true;
        paramFloatingActionButton.a(this.mA);
      }
    }
    
    private boolean a(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, int paramInt)
    {
      int j = 0;
      Object localObject1 = paramCoordinatorLayout.n(paramFloatingActionButton);
      int k = ((List)localObject1).size();
      int i = 0;
      Object localObject2;
      if (i < k)
      {
        localObject2 = (View)((List)localObject1).get(i);
        if ((localObject2 instanceof AppBarLayout)) {
          if (!a(paramCoordinatorLayout, (AppBarLayout)localObject2, paramFloatingActionButton)) {
            break label194;
          }
        }
      }
      else
      {
        label65:
        paramCoordinatorLayout.e(paramFloatingActionButton, paramInt);
        localObject1 = paramFloatingActionButton.mv;
        if ((localObject1 != null) && (((Rect)localObject1).centerX() > 0) && (((Rect)localObject1).centerY() > 0))
        {
          localObject2 = (CoordinatorLayout.e)paramFloatingActionButton.getLayoutParams();
          if (paramFloatingActionButton.getRight() < paramCoordinatorLayout.getWidth() - ((CoordinatorLayout.e)localObject2).rightMargin) {
            break label203;
          }
          paramInt = ((Rect)localObject1).right;
        }
      }
      for (;;)
      {
        label130:
        if (paramFloatingActionButton.getBottom() >= paramCoordinatorLayout.getHeight() - ((CoordinatorLayout.e)localObject2).bottomMargin) {
          i = ((Rect)localObject1).bottom;
        }
        for (;;)
        {
          if (i != 0) {
            r.m(paramFloatingActionButton, i);
          }
          if (paramInt != 0) {
            r.n(paramFloatingActionButton, paramInt);
          }
          return true;
          if ((o((View)localObject2)) && (b((View)localObject2, paramFloatingActionButton))) {
            break label65;
          }
          label194:
          i += 1;
          break;
          label203:
          if (paramFloatingActionButton.getLeft() > ((CoordinatorLayout.e)localObject2).leftMargin) {
            break label252;
          }
          paramInt = -((Rect)localObject1).left;
          break label130;
          i = j;
          if (paramFloatingActionButton.getTop() <= ((CoordinatorLayout.e)localObject2).topMargin) {
            i = -((Rect)localObject1).top;
          }
        }
        label252:
        paramInt = 0;
      }
    }
    
    private boolean a(View paramView, FloatingActionButton paramFloatingActionButton)
    {
      CoordinatorLayout.e locale = (CoordinatorLayout.e)paramFloatingActionButton.getLayoutParams();
      if (!this.mB) {
        return false;
      }
      if (locale.lX != paramView.getId()) {
        return false;
      }
      return paramFloatingActionButton.getUserSetVisibility() == 0;
    }
    
    private boolean b(View paramView, FloatingActionButton paramFloatingActionButton)
    {
      if (!a(paramView, paramFloatingActionButton)) {
        return false;
      }
      CoordinatorLayout.e locale = (CoordinatorLayout.e)paramFloatingActionButton.getLayoutParams();
      int i = paramView.getTop();
      int j = paramFloatingActionButton.getHeight() / 2;
      if (i < locale.topMargin + j) {
        paramFloatingActionButton.b(this.mA);
      }
      for (;;)
      {
        return true;
        paramFloatingActionButton.a(this.mA);
      }
    }
    
    private static boolean o(View paramView)
    {
      paramView = paramView.getLayoutParams();
      if ((paramView instanceof CoordinatorLayout.e)) {
        return ((CoordinatorLayout.e)paramView).lT instanceof BottomSheetBehavior;
      }
      return false;
    }
    
    public final void a(CoordinatorLayout.e parame)
    {
      if (parame.lZ == 0) {
        parame.lZ = 80;
      }
    }
  }
  
  public static abstract class a {}
  
  private final class b
    implements l
  {
    b() {}
    
    public final boolean bC()
    {
      return FloatingActionButton.this.mu;
    }
    
    public final void c(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      FloatingActionButton.this.mv.set(paramInt1, paramInt2, paramInt3, paramInt4);
      FloatingActionButton.this.setPadding(FloatingActionButton.this.ms + paramInt1, FloatingActionButton.this.ms + paramInt2, FloatingActionButton.this.ms + paramInt3, FloatingActionButton.this.ms + paramInt4);
    }
    
    public final float getRadius()
    {
      return FloatingActionButton.this.getSizeDimension() / 2.0F;
    }
    
    public final void setBackgroundDrawable(Drawable paramDrawable)
    {
      FloatingActionButton.a(FloatingActionButton.this, paramDrawable);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/FloatingActionButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */