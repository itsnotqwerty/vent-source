package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.v;
import android.support.v4.widget.k;
import android.support.v7.a.a.a;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;

class an
  extends ListView
{
  private a YA;
  private boolean YB;
  private boolean YC;
  private boolean YD;
  private v YE;
  private k YF;
  private b YG;
  private final Rect Yt = new Rect();
  private int Yu = 0;
  private int Yv = 0;
  private int Yw = 0;
  private int Yx = 0;
  private int Yy;
  private Field Yz;
  
  an(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, null, a.a.dropDownListViewStyle);
    this.YC = paramBoolean;
    setCacheColorHint(0);
    try
    {
      this.Yz = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
      this.Yz.setAccessible(true);
      return;
    }
    catch (NoSuchFieldException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private void gE()
  {
    Drawable localDrawable = getSelector();
    if ((localDrawable != null) && (this.YD) && (isPressed())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  private void setSelectorEnabled(boolean paramBoolean)
  {
    if (this.YA != null) {
      this.YA.HX = paramBoolean;
    }
  }
  
  public boolean b(MotionEvent paramMotionEvent, int paramInt)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    int i = 0;
    int j = paramMotionEvent.getActionMasked();
    View localView;
    switch (j)
    {
    default: 
      paramInt = i;
      bool1 = bool2;
      if ((!bool1) || (paramInt != 0))
      {
        this.YD = false;
        setPressed(false);
        drawableStateChanged();
        localView = getChildAt(this.Yy - getFirstVisiblePosition());
        if (localView != null) {
          localView.setPressed(false);
        }
        if (this.YE != null)
        {
          this.YE.cancel();
          this.YE = null;
        }
      }
      if (bool1)
      {
        if (this.YF == null) {
          this.YF = new k(this);
        }
        this.YF.w(true);
        this.YF.onTouch(this, paramMotionEvent);
      }
      break;
    }
    label418:
    while (this.YF == null)
    {
      return bool1;
      bool1 = false;
      paramInt = i;
      break;
      bool1 = false;
      int k = paramMotionEvent.findPointerIndex(paramInt);
      if (k < 0)
      {
        bool1 = false;
        paramInt = i;
        break;
      }
      paramInt = (int)paramMotionEvent.getX(k);
      int m = (int)paramMotionEvent.getY(k);
      k = pointToPosition(paramInt, m);
      if (k == -1)
      {
        paramInt = 1;
        break;
      }
      localView = getChildAt(k - getFirstVisiblePosition());
      float f1 = paramInt;
      float f2 = m;
      this.YD = true;
      if (Build.VERSION.SDK_INT >= 21) {
        drawableHotspotChanged(f1, f2);
      }
      if (!isPressed()) {
        setPressed(true);
      }
      layoutChildren();
      if (this.Yy != -1)
      {
        localObject1 = getChildAt(this.Yy - getFirstVisiblePosition());
        if ((localObject1 != null) && (localObject1 != localView) && (((View)localObject1).isPressed())) {
          ((View)localObject1).setPressed(false);
        }
      }
      this.Yy = k;
      float f3 = localView.getLeft();
      float f4 = localView.getTop();
      if (Build.VERSION.SDK_INT >= 21) {
        localView.drawableHotspotChanged(f1 - f3, f2 - f4);
      }
      if (!localView.isPressed()) {
        localView.setPressed(true);
      }
      Object localObject1 = getSelector();
      Object localObject2;
      if ((localObject1 != null) && (k != -1))
      {
        paramInt = 1;
        if (paramInt != 0) {
          ((Drawable)localObject1).setVisible(false, false);
        }
        localObject2 = this.Yt;
        ((Rect)localObject2).set(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom());
        ((Rect)localObject2).left -= this.Yu;
        ((Rect)localObject2).top -= this.Yv;
        ((Rect)localObject2).right += this.Yw;
        ((Rect)localObject2).bottom += this.Yx;
      }
      for (;;)
      {
        try
        {
          bool1 = this.Yz.getBoolean(this);
          if (localView.isEnabled() != bool1)
          {
            localObject2 = this.Yz;
            if (bool1) {
              continue;
            }
            bool1 = true;
            ((Field)localObject2).set(this, Boolean.valueOf(bool1));
            if (k != -1) {
              refreshDrawableState();
            }
          }
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          localIllegalAccessException.printStackTrace();
          continue;
          bool1 = false;
          continue;
        }
        if (paramInt != 0)
        {
          localObject2 = this.Yt;
          f3 = ((Rect)localObject2).exactCenterX();
          f4 = ((Rect)localObject2).exactCenterY();
          if (getVisibility() != 0) {
            continue;
          }
          bool1 = true;
          ((Drawable)localObject1).setVisible(bool1, false);
          android.support.v4.a.a.a.a((Drawable)localObject1, f3, f4);
        }
        localObject1 = getSelector();
        if ((localObject1 != null) && (k != -1)) {
          android.support.v4.a.a.a.a((Drawable)localObject1, f1, f2);
        }
        setSelectorEnabled(false);
        refreshDrawableState();
        bool2 = true;
        bool1 = bool2;
        paramInt = i;
        if (j != 1) {
          break;
        }
        performItemClick(localView, k, getItemIdAtPosition(k));
        bool1 = bool2;
        paramInt = i;
        break;
        paramInt = 0;
        break label418;
        bool1 = false;
      }
    }
    this.YF.w(false);
    return bool1;
  }
  
  public int c(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    paramInt2 = getListPaddingTop();
    paramInt3 = getListPaddingBottom();
    getListPaddingLeft();
    getListPaddingRight();
    int i = getDividerHeight();
    Object localObject = getDivider();
    ListAdapter localListAdapter = getAdapter();
    if (localListAdapter == null)
    {
      paramInt2 += paramInt3;
      return paramInt2;
    }
    paramInt3 += paramInt2;
    label63:
    int m;
    int j;
    int k;
    View localView;
    if ((i > 0) && (localObject != null))
    {
      paramInt2 = 0;
      localObject = null;
      m = 0;
      int i1 = localListAdapter.getCount();
      j = 0;
      if (j >= i1) {
        break label292;
      }
      int n = localListAdapter.getItemViewType(j);
      k = m;
      if (n != m)
      {
        localObject = null;
        k = n;
      }
      localView = localListAdapter.getView(j, (View)localObject, this);
      ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
      localObject = localLayoutParams;
      if (localLayoutParams == null)
      {
        localObject = generateDefaultLayoutParams();
        localView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      if (((ViewGroup.LayoutParams)localObject).height <= 0) {
        break label251;
      }
      m = View.MeasureSpec.makeMeasureSpec(((ViewGroup.LayoutParams)localObject).height, 1073741824);
      label183:
      localView.measure(paramInt1, m);
      localView.forceLayout();
      if (j <= 0) {
        break label297;
      }
      paramInt3 += i;
    }
    label251:
    label292:
    label297:
    for (;;)
    {
      paramInt3 = localView.getMeasuredHeight() + paramInt3;
      if (paramInt3 >= paramInt4)
      {
        if ((paramInt5 >= 0) && (j > paramInt5) && (paramInt2 > 0) && (paramInt3 != paramInt4)) {
          break;
        }
        return paramInt4;
        i = 0;
        break label63;
        m = View.MeasureSpec.makeMeasureSpec(0, 0);
        break label183;
      }
      if ((paramInt5 >= 0) && (j >= paramInt5)) {
        paramInt2 = paramInt3;
      }
      for (;;)
      {
        j += 1;
        m = k;
        localObject = localView;
        break;
        return paramInt3;
      }
    }
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    if (!this.Yt.isEmpty())
    {
      Drawable localDrawable = getSelector();
      if (localDrawable != null)
      {
        localDrawable.setBounds(this.Yt);
        localDrawable.draw(paramCanvas);
      }
    }
    super.dispatchDraw(paramCanvas);
  }
  
  protected void drawableStateChanged()
  {
    if (this.YG != null) {
      return;
    }
    super.drawableStateChanged();
    setSelectorEnabled(true);
    gE();
  }
  
  public boolean hasFocus()
  {
    return (this.YC) || (super.hasFocus());
  }
  
  public boolean hasWindowFocus()
  {
    return (this.YC) || (super.hasWindowFocus());
  }
  
  public boolean isFocused()
  {
    return (this.YC) || (super.isFocused());
  }
  
  public boolean isInTouchMode()
  {
    return ((this.YC) && (this.YB)) || (super.isInTouchMode());
  }
  
  protected void onDetachedFromWindow()
  {
    this.YG = null;
    super.onDetachedFromWindow();
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1;
    if (Build.VERSION.SDK_INT < 26) {
      bool1 = super.onHoverEvent(paramMotionEvent);
    }
    int i;
    boolean bool2;
    do
    {
      do
      {
        return bool1;
        i = paramMotionEvent.getActionMasked();
        if ((i == 10) && (this.YG == null))
        {
          this.YG = new b((byte)0);
          b localb = this.YG;
          localb.YH.post(localb);
        }
        bool2 = super.onHoverEvent(paramMotionEvent);
        if ((i != 9) && (i != 7)) {
          break;
        }
        i = pointToPosition((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
        bool1 = bool2;
      } while (i == -1);
      bool1 = bool2;
    } while (i == getSelectedItemPosition());
    paramMotionEvent = getChildAt(i - getFirstVisiblePosition());
    if (paramMotionEvent.isEnabled()) {
      setSelectionFromTop(i, paramMotionEvent.getTop() - getTop());
    }
    gE();
    return bool2;
    setSelection(-1);
    return bool2;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      if (this.YG != null)
      {
        b localb = this.YG;
        localb.YH.YG = null;
        localb.YH.removeCallbacks(localb);
      }
      return super.onTouchEvent(paramMotionEvent);
      this.Yy = pointToPosition((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
    }
  }
  
  void setListSelectionHidden(boolean paramBoolean)
  {
    this.YB = paramBoolean;
  }
  
  public void setSelector(Drawable paramDrawable)
  {
    if (paramDrawable != null) {}
    for (Object localObject = new a(paramDrawable);; localObject = null)
    {
      this.YA = ((a)localObject);
      super.setSelector(this.YA);
      localObject = new Rect();
      if (paramDrawable != null) {
        paramDrawable.getPadding((Rect)localObject);
      }
      this.Yu = ((Rect)localObject).left;
      this.Yv = ((Rect)localObject).top;
      this.Yw = ((Rect)localObject).right;
      this.Yx = ((Rect)localObject).bottom;
      return;
    }
  }
  
  private static final class a
    extends android.support.v7.d.a.a
  {
    boolean HX = true;
    
    a(Drawable paramDrawable)
    {
      super();
    }
    
    public final void draw(Canvas paramCanvas)
    {
      if (this.HX) {
        super.draw(paramCanvas);
      }
    }
    
    public final void setHotspot(float paramFloat1, float paramFloat2)
    {
      if (this.HX) {
        super.setHotspot(paramFloat1, paramFloat2);
      }
    }
    
    public final void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      if (this.HX) {
        super.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
      }
    }
    
    public final boolean setState(int[] paramArrayOfInt)
    {
      if (this.HX) {
        return super.setState(paramArrayOfInt);
      }
      return false;
    }
    
    public final boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
    {
      if (this.HX) {
        return super.setVisible(paramBoolean1, paramBoolean2);
      }
      return false;
    }
  }
  
  private final class b
    implements Runnable
  {
    private b() {}
    
    public final void run()
    {
      an.a(an.this);
      an.this.drawableStateChanged();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */