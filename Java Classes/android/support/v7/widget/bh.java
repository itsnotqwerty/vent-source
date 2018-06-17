package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v7.a.a.a;
import android.support.v7.a.a.d;
import android.support.v7.a.a.j;
import android.support.v7.app.a.b;
import android.support.v7.view.a;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Spinner;
import android.widget.TextView;

public final class bh
  extends HorizontalScrollView
  implements AdapterView.OnItemSelectedListener
{
  private static final Interpolator agK = new DecelerateInterpolator();
  int Tg;
  Runnable agD;
  at agE;
  private Spinner agF;
  private boolean agG;
  int agH;
  int agI;
  private int agJ;
  
  private boolean it()
  {
    return (this.agF != null) && (this.agF.getParent() == this);
  }
  
  private boolean iu()
  {
    if (!it()) {
      return false;
    }
    removeView(this.agF);
    addView(this.agE, new ViewGroup.LayoutParams(-2, -1));
    setTabSelected(this.agF.getSelectedItemPosition());
    return false;
  }
  
  public final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.agD != null) {
      post(this.agD);
    }
  }
  
  protected final void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = a.k(getContext());
    TypedArray localTypedArray = paramConfiguration.mContext.obtainStyledAttributes(null, a.j.ActionBar, a.a.actionBarStyle, 0);
    int j = localTypedArray.getLayoutDimension(a.j.ActionBar_height, 0);
    Resources localResources = paramConfiguration.mContext.getResources();
    int i = j;
    if (!paramConfiguration.eO()) {
      i = Math.min(j, localResources.getDimensionPixelSize(a.d.abc_action_bar_stacked_max_height));
    }
    localTypedArray.recycle();
    setContentHeight(i);
    this.agI = paramConfiguration.mContext.getResources().getDimensionPixelSize(a.d.abc_action_bar_stacked_tab_max_width);
  }
  
  public final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.agD != null) {
      removeCallbacks(this.agD);
    }
  }
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {}
  
  public final void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = 1;
    int i = View.MeasureSpec.getMode(paramInt1);
    boolean bool;
    if (i == 1073741824)
    {
      bool = true;
      setFillViewport(bool);
      int j = this.agE.getChildCount();
      if ((j <= 1) || ((i != 1073741824) && (i != Integer.MIN_VALUE))) {
        break label327;
      }
      if (j <= 2) {
        break label314;
      }
      this.agH = ((int)(View.MeasureSpec.getSize(paramInt1) * 0.4F));
      label68:
      this.agH = Math.min(this.agH, this.agI);
      label83:
      i = View.MeasureSpec.makeMeasureSpec(this.Tg, 1073741824);
      if ((bool) || (!this.agG)) {
        break label335;
      }
      label105:
      if (paramInt2 == 0) {
        break label348;
      }
      this.agE.measure(0, i);
      if (this.agE.getMeasuredWidth() <= View.MeasureSpec.getSize(paramInt1)) {
        break label340;
      }
      if (!it())
      {
        if (this.agF == null)
        {
          z localz = new z(getContext(), null, a.a.actionDropDownStyle);
          localz.setLayoutParams(new at.a(-2, -1));
          localz.setOnItemSelectedListener(this);
          this.agF = localz;
        }
        removeView(this.agE);
        addView(this.agF, new ViewGroup.LayoutParams(-2, -1));
        if (this.agF.getAdapter() == null) {
          this.agF.setAdapter(new a());
        }
        if (this.agD != null)
        {
          removeCallbacks(this.agD);
          this.agD = null;
        }
        this.agF.setSelection(this.agJ);
      }
    }
    for (;;)
    {
      paramInt2 = getMeasuredWidth();
      super.onMeasure(paramInt1, i);
      paramInt1 = getMeasuredWidth();
      if ((bool) && (paramInt2 != paramInt1)) {
        setTabSelected(this.agJ);
      }
      return;
      bool = false;
      break;
      label314:
      this.agH = (View.MeasureSpec.getSize(paramInt1) / 2);
      break label68;
      label327:
      this.agH = -1;
      break label83;
      label335:
      paramInt2 = 0;
      break label105;
      label340:
      iu();
      continue;
      label348:
      iu();
    }
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
  
  public final void setAllowCollapse(boolean paramBoolean)
  {
    this.agG = paramBoolean;
  }
  
  public final void setContentHeight(int paramInt)
  {
    this.Tg = paramInt;
    requestLayout();
  }
  
  public final void setTabSelected(int paramInt)
  {
    this.agJ = paramInt;
    int j = this.agE.getChildCount();
    int i = 0;
    if (i < j)
    {
      final View localView = this.agE.getChildAt(i);
      if (i == paramInt) {}
      for (boolean bool = true;; bool = false)
      {
        localView.setSelected(bool);
        if (bool)
        {
          localView = this.agE.getChildAt(paramInt);
          if (this.agD != null) {
            removeCallbacks(this.agD);
          }
          this.agD = new Runnable()
          {
            public final void run()
            {
              int i = localView.getLeft();
              int j = (bh.this.getWidth() - localView.getWidth()) / 2;
              bh.this.smoothScrollTo(i - j, 0);
              bh.this.agD = null;
            }
          };
          post(this.agD);
        }
        i += 1;
        break;
      }
    }
    if ((this.agF != null) && (paramInt >= 0)) {
      this.agF.setSelection(paramInt);
    }
  }
  
  private final class a
    extends BaseAdapter
  {
    a() {}
    
    public final int getCount()
    {
      return bh.this.agE.getChildCount();
    }
    
    public final Object getItem(int paramInt)
    {
      return ((bh.b)bh.this.agE.getChildAt(paramInt)).agO;
    }
    
    public final long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (paramView == null)
      {
        paramView = bh.this;
        paramViewGroup = (a.b)getItem(paramInt);
        paramViewGroup = new bh.b(paramView, paramView.getContext(), paramViewGroup);
        paramViewGroup.setBackgroundDrawable(null);
        paramViewGroup.setLayoutParams(new AbsListView.LayoutParams(-1, paramView.Tg));
        return paramViewGroup;
      }
      paramViewGroup = (bh.b)paramView;
      paramViewGroup.agO = ((a.b)getItem(paramInt));
      paramViewGroup.update();
      return paramView;
    }
  }
  
  private final class b
    extends LinearLayout
  {
    private final int[] agN = { 16842964 };
    a.b agO;
    private View oZ;
    private TextView pg;
    private ImageView ph;
    
    public b(Context paramContext, a.b paramb)
    {
      super(null, a.a.actionBarTabStyle);
      this.agO = paramb;
      this$1 = bo.a(paramContext, null, this.agN, a.a.actionBarTabStyle, 0);
      if (bh.this.hasValue(0)) {
        setBackgroundDrawable(bh.this.getDrawable(0));
      }
      bh.this.ajT.recycle();
      setGravity(8388627);
      update();
    }
    
    public final void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(a.b.class.getName());
    }
    
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName(a.b.class.getName());
    }
    
    public final void onMeasure(int paramInt1, int paramInt2)
    {
      super.onMeasure(paramInt1, paramInt2);
      if ((bh.this.agH > 0) && (getMeasuredWidth() > bh.this.agH)) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(bh.this.agH, 1073741824), paramInt2);
      }
    }
    
    public final void setSelected(boolean paramBoolean)
    {
      if (isSelected() != paramBoolean) {}
      for (int i = 1;; i = 0)
      {
        super.setSelected(paramBoolean);
        if ((i != 0) && (paramBoolean)) {
          sendAccessibilityEvent(4);
        }
        return;
      }
    }
    
    public final void update()
    {
      Object localObject1 = this.agO;
      Object localObject2 = ((a.b)localObject1).getCustomView();
      if (localObject2 != null)
      {
        localObject1 = ((View)localObject2).getParent();
        if (localObject1 != this)
        {
          if (localObject1 != null) {
            ((ViewGroup)localObject1).removeView((View)localObject2);
          }
          addView((View)localObject2);
        }
        this.oZ = ((View)localObject2);
        if (this.pg != null) {
          this.pg.setVisibility(8);
        }
        if (this.ph != null)
        {
          this.ph.setVisibility(8);
          this.ph.setImageDrawable(null);
        }
        return;
      }
      if (this.oZ != null)
      {
        removeView(this.oZ);
        this.oZ = null;
      }
      Object localObject3 = ((a.b)localObject1).getIcon();
      localObject2 = ((a.b)localObject1).getText();
      int i;
      if (localObject3 != null)
      {
        Object localObject4;
        if (this.ph == null)
        {
          localObject4 = new r(getContext());
          LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
          localLayoutParams.gravity = 16;
          ((ImageView)localObject4).setLayoutParams(localLayoutParams);
          addView((View)localObject4, 0);
          this.ph = ((ImageView)localObject4);
        }
        this.ph.setImageDrawable((Drawable)localObject3);
        this.ph.setVisibility(0);
        if (TextUtils.isEmpty((CharSequence)localObject2)) {
          break label357;
        }
        i = 1;
        label209:
        if (i == 0) {
          break label362;
        }
        if (this.pg == null)
        {
          localObject3 = new AppCompatTextView(getContext(), null, a.a.actionBarTabTextStyle);
          ((TextView)localObject3).setEllipsize(TextUtils.TruncateAt.END);
          localObject4 = new LinearLayout.LayoutParams(-2, -2);
          ((LinearLayout.LayoutParams)localObject4).gravity = 16;
          ((TextView)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject4);
          addView((View)localObject3);
          this.pg = ((TextView)localObject3);
        }
        this.pg.setText((CharSequence)localObject2);
        this.pg.setVisibility(0);
        label300:
        if (this.ph != null) {
          this.ph.setContentDescription(((a.b)localObject1).getContentDescription());
        }
        if (i == 0) {
          break label389;
        }
      }
      label357:
      label362:
      label389:
      for (localObject1 = null;; localObject1 = ((a.b)localObject1).getContentDescription())
      {
        bq.a(this, (CharSequence)localObject1);
        return;
        if (this.ph == null) {
          break;
        }
        this.ph.setVisibility(8);
        this.ph.setImageDrawable(null);
        break;
        i = 0;
        break label209;
        if (this.pg == null) {
          break label300;
        }
        this.pg.setVisibility(8);
        this.pg.setText(null);
        break label300;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */