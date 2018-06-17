package android.support.v7.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.support.v7.a.a.j;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import java.lang.ref.WeakReference;

public final class ViewStubCompat
  extends View
{
  private LayoutInflater JR;
  private int akK = 0;
  private int akL;
  private WeakReference<View> akM;
  private a akN;
  
  public ViewStubCompat(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ViewStubCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.j.ViewStubCompat, paramInt, 0);
    this.akL = paramContext.getResourceId(a.j.ViewStubCompat_android_inflatedId, -1);
    this.akK = paramContext.getResourceId(a.j.ViewStubCompat_android_layout, 0);
    setId(paramContext.getResourceId(a.j.ViewStubCompat_android_id, -1));
    paramContext.recycle();
    setVisibility(8);
    setWillNotDraw(true);
  }
  
  protected final void dispatchDraw(Canvas paramCanvas) {}
  
  @SuppressLint({"MissingSuperCall"})
  public final void draw(Canvas paramCanvas) {}
  
  public final int getInflatedId()
  {
    return this.akL;
  }
  
  public final LayoutInflater getLayoutInflater()
  {
    return this.JR;
  }
  
  public final int getLayoutResource()
  {
    return this.akK;
  }
  
  public final View inflate()
  {
    Object localObject = getParent();
    if ((localObject != null) && ((localObject instanceof ViewGroup)))
    {
      if (this.akK != 0)
      {
        ViewGroup localViewGroup = (ViewGroup)localObject;
        int i;
        if (this.JR != null)
        {
          localObject = this.JR;
          localObject = ((LayoutInflater)localObject).inflate(this.akK, localViewGroup, false);
          if (this.akL != -1) {
            ((View)localObject).setId(this.akL);
          }
          i = localViewGroup.indexOfChild(this);
          localViewGroup.removeViewInLayout(this);
          ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
          if (localLayoutParams == null) {
            break label122;
          }
          localViewGroup.addView((View)localObject, i, localLayoutParams);
        }
        for (;;)
        {
          this.akM = new WeakReference(localObject);
          return (View)localObject;
          localObject = LayoutInflater.from(getContext());
          break;
          label122:
          localViewGroup.addView((View)localObject, i);
        }
      }
      throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
    }
    throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(0, 0);
  }
  
  public final void setInflatedId(int paramInt)
  {
    this.akL = paramInt;
  }
  
  public final void setLayoutInflater(LayoutInflater paramLayoutInflater)
  {
    this.JR = paramLayoutInflater;
  }
  
  public final void setLayoutResource(int paramInt)
  {
    this.akK = paramInt;
  }
  
  public final void setOnInflateListener(a parama)
  {
    this.akN = parama;
  }
  
  public final void setVisibility(int paramInt)
  {
    if (this.akM != null)
    {
      View localView = (View)this.akM.get();
      if (localView != null) {
        localView.setVisibility(paramInt);
      }
    }
    do
    {
      return;
      throw new IllegalStateException("setVisibility called on un-referenced view");
      super.setVisibility(paramInt);
    } while ((paramInt != 0) && (paramInt != 4));
    inflate();
  }
  
  public static abstract interface a {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ViewStubCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */