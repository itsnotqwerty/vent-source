package io.intercom.android.sdk.views;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import io.intercom.android.sdk.R.styleable;

public class ExpandableLayout
  extends LinearLayout
{
  private static final long ANIMATION_DURATION = 100L;
  private boolean attachedToWindow;
  private ObjectAnimator expandAnimator;
  private ObjectAnimator fadeAnimator;
  private boolean firstLayout = true;
  private int heightMeasureSpec;
  private boolean inLayout;
  private int widthMeasureSpec;
  
  public ExpandableLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public ExpandableLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ExpandableLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private boolean collapse(View paramView, boolean paramBoolean)
  {
    if (!checkExpandableView(paramView)) {
      throw new IllegalArgumentException("collapse(), View is not expandableView");
    }
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if ((this.firstLayout) || (!this.attachedToWindow) || (!paramBoolean))
    {
      localLayoutParams.isExpanded = false;
      localLayoutParams.isExpanding = false;
      localLayoutParams.height = localLayoutParams.originalHeight;
      paramView.setVisibility(8);
      return true;
    }
    if ((localLayoutParams.isExpanded) && (!localLayoutParams.isExpanding))
    {
      playCollapseAnimation(paramView);
      return true;
    }
    return false;
  }
  
  private boolean expand(View paramView, boolean paramBoolean)
  {
    if (!checkExpandableView(paramView)) {
      throw new IllegalArgumentException("expand(), View is not expandableView");
    }
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if ((this.firstLayout) || (!this.attachedToWindow) || (!paramBoolean))
    {
      localLayoutParams.isExpanded = true;
      localLayoutParams.isExpanding = false;
      localLayoutParams.height = localLayoutParams.originalHeight;
      paramView.setVisibility(0);
      return true;
    }
    if ((!localLayoutParams.isExpanded) && (!localLayoutParams.isExpanding))
    {
      playExpandAnimation(paramView);
      return true;
    }
    return false;
  }
  
  private void playCollapseAnimation(final View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (localLayoutParams.isExpanding) {
      return;
    }
    paramView.setVisibility(0);
    localLayoutParams.isExpanding = true;
    measure(this.widthMeasureSpec, this.heightMeasureSpec);
    this.expandAnimator = ObjectAnimator.ofInt(localLayoutParams, "height", new int[] { paramView.getMeasuredHeight(), 0 });
    this.expandAnimator.setDuration(100L);
    this.expandAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        paramView.requestLayout();
      }
    });
    this.expandAnimator.addListener(new AnimatorEndListener()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        ExpandableLayout.this.performToggleState(paramView);
      }
    });
    paramView.setAlpha(0.0F);
    this.fadeAnimator = ObjectAnimator.ofFloat(paramView, View.ALPHA, new float[] { 1.0F, 0.0F });
    this.fadeAnimator.setDuration(100L);
    this.fadeAnimator.addListener(new AnimatorEndListener()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        paramView.setAlpha(0.0F);
      }
    });
    this.expandAnimator.setStartDelay(200L);
    this.fadeAnimator.start();
    this.expandAnimator.start();
  }
  
  private void playExpandAnimation(final View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (localLayoutParams.isExpanding) {
      return;
    }
    paramView.setVisibility(0);
    localLayoutParams.isExpanding = true;
    measure(this.widthMeasureSpec, this.heightMeasureSpec);
    int i = paramView.getMeasuredHeight();
    localLayoutParams.height = 0;
    this.expandAnimator = ObjectAnimator.ofInt(localLayoutParams, "height", new int[] { 0, i });
    this.expandAnimator.setDuration(100L);
    this.expandAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        paramView.requestLayout();
      }
    });
    this.expandAnimator.addListener(new AnimatorEndListener()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        ExpandableLayout.this.performToggleState(paramView);
      }
    });
    paramView.setAlpha(0.0F);
    this.fadeAnimator = ObjectAnimator.ofFloat(paramView, View.ALPHA, new float[] { 0.0F, 1.0F });
    this.fadeAnimator.setDuration(100L);
    this.fadeAnimator.addListener(new AnimatorEndListener()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        paramView.setAlpha(1.0F);
      }
    });
    this.fadeAnimator.setStartDelay(200L);
    this.expandAnimator.start();
    this.fadeAnimator.start();
  }
  
  private void safeReleaseAnimator(ObjectAnimator paramObjectAnimator)
  {
    if ((paramObjectAnimator != null) && (paramObjectAnimator.isRunning())) {
      paramObjectAnimator.end();
    }
  }
  
  boolean checkExpandableView(View paramView)
  {
    return ((LayoutParams)paramView.getLayoutParams()).canExpand;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (super.checkLayoutParams(paramLayoutParams)) && ((paramLayoutParams instanceof LayoutParams));
  }
  
  public View findExpandableView()
  {
    int i = 0;
    while (i < getChildCount())
    {
      if (((LayoutParams)getChildAt(i).getLayoutParams()).canExpand) {
        return getChildAt(i);
      }
      i += 1;
    }
    return null;
  }
  
  protected LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams(-1, -2);
  }
  
  public LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new LayoutParams(paramLayoutParams);
  }
  
  public boolean isExpanded()
  {
    View localView = findExpandableView();
    return (localView != null) && (((LayoutParams)localView.getLayoutParams()).isExpanded);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.attachedToWindow = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.attachedToWindow = false;
    View localView = findExpandableView();
    safeReleaseAnimator(this.expandAnimator);
    safeReleaseAnimator(this.fadeAnimator);
    LayoutParams localLayoutParams;
    if (localView != null)
    {
      localLayoutParams = (LayoutParams)localView.getLayoutParams();
      if (!localLayoutParams.isExpanded) {
        break label68;
      }
      localLayoutParams.height = localLayoutParams.originalHeight;
      localView.setVisibility(0);
    }
    for (;;)
    {
      localLayoutParams.isExpanding = false;
      return;
      label68:
      localLayoutParams.height = localLayoutParams.originalHeight;
      localView.setVisibility(8);
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.inLayout = true;
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.inLayout = false;
    this.firstLayout = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    this.widthMeasureSpec = paramInt1;
    this.heightMeasureSpec = paramInt2;
    View localView = findExpandableView();
    if (localView != null)
    {
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      if (localLayoutParams.weight != 0.0F) {
        throw new IllegalArgumentException("ExpandableView can't use weight");
      }
      if ((localLayoutParams.isExpanded) || (localLayoutParams.isExpanding)) {
        break label77;
      }
      localView.setVisibility(8);
    }
    for (;;)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
      label77:
      localView.setVisibility(0);
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if ((paramParcelable.isExpanded) && (findExpandableView() != null)) {
      setExpanded(true);
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    if (isExpanded()) {
      localSavedState.isExpanded = true;
    }
    return localSavedState;
  }
  
  void performToggleState(View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (localLayoutParams.isExpanded)
    {
      localLayoutParams.isExpanded = false;
      paramView.setVisibility(8);
      localLayoutParams.height = localLayoutParams.originalHeight;
    }
    for (;;)
    {
      localLayoutParams.isExpanding = false;
      return;
      localLayoutParams.isExpanded = true;
    }
  }
  
  public void requestLayout()
  {
    if (!this.inLayout) {
      super.requestLayout();
    }
  }
  
  public boolean setExpanded(boolean paramBoolean)
  {
    return setExpanded(paramBoolean, false);
  }
  
  public boolean setExpanded(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool2 = false;
    View localView = findExpandableView();
    boolean bool1 = bool2;
    if (localView != null)
    {
      bool1 = bool2;
      if (paramBoolean1 != isExpanded()) {
        if (!paramBoolean1) {
          break label46;
        }
      }
    }
    label46:
    for (bool1 = expand(localView, paramBoolean2);; bool1 = collapse(localView, paramBoolean2))
    {
      requestLayout();
      return bool1;
    }
  }
  
  private static class LayoutParams
    extends LinearLayout.LayoutParams
  {
    private static final int NO_MEASURED_HEIGHT = -10;
    boolean canExpand;
    boolean isExpanded;
    boolean isExpanding;
    int originalHeight = -10;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
      this.originalHeight = this.height;
    }
    
    public LayoutParams(int paramInt1, int paramInt2, float paramFloat)
    {
      super(paramInt2, paramFloat);
      this.originalHeight = this.height;
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ExpandableLayout);
      this.canExpand = paramContext.getBoolean(R.styleable.ExpandableLayout_intercomCanExpand, false);
      this.originalHeight = this.height;
      paramContext.recycle();
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
      this.originalHeight = this.height;
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
      this.originalHeight = this.height;
    }
    
    @TargetApi(19)
    public LayoutParams(LinearLayout.LayoutParams paramLayoutParams)
    {
      super();
      this.originalHeight = this.height;
    }
    
    public void setHeight(int paramInt)
    {
      this.height = paramInt;
    }
  }
  
  private static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public final ExpandableLayout.SavedState createFromParcel(Parcel paramAnonymousParcel)
      {
        return new ExpandableLayout.SavedState(paramAnonymousParcel);
      }
      
      public final ExpandableLayout.SavedState[] newArray(int paramAnonymousInt)
      {
        return new ExpandableLayout.SavedState[paramAnonymousInt];
      }
    };
    boolean isExpanded;
    
    public SavedState(Parcel paramParcel)
    {
      super();
      if (paramParcel.readInt() == 1) {}
      for (;;)
      {
        this.isExpanded = bool;
        return;
        bool = false;
      }
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      if (this.isExpanded) {}
      for (paramInt = 1;; paramInt = 0)
      {
        paramParcel.writeInt(paramInt);
        return;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/ExpandableLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */