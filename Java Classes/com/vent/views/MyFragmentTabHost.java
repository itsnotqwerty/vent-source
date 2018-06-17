package com.vent.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.app.i;
import android.support.v4.app.n;
import android.support.v4.app.t;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.BaseSavedState;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabContentFactory;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import java.util.ArrayList;

public final class MyFragmentTabHost
  extends TabHost
  implements TabHost.OnTabChangeListener
{
  private FrameLayout cow;
  private TabHost.OnTabChangeListener cox;
  private c coy;
  private boolean coz;
  private int mContainerId;
  private Context mContext;
  private final ArrayList<c> od = new ArrayList();
  private n yz;
  
  public MyFragmentTabHost(Context paramContext)
  {
    super(paramContext, null);
    c(paramContext, null);
  }
  
  public MyFragmentTabHost(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c(paramContext, paramAttributeSet);
  }
  
  private void FF()
  {
    if (this.cow == null)
    {
      this.cow = ((FrameLayout)findViewById(this.mContainerId));
      if (this.cow == null) {
        throw new IllegalStateException("No tab content FrameLayout found for id " + this.mContainerId);
      }
    }
  }
  
  private t a(String paramString, t paramt)
  {
    int j = this.od.size();
    int i = 0;
    c localc;
    if (i < j)
    {
      localc = (c)this.od.get(i);
      if (localc.tag.equals(paramString))
      {
        label42:
        paramString = paramt;
        if (this.coy != localc)
        {
          paramString = paramt;
          if (paramt == null) {
            paramString = this.yz.cG();
          }
          if ((this.coy != null) && (this.coy.wD != null)) {
            paramString.b(this.coy.wD);
          }
          if (localc != null)
          {
            if (localc.wD != null) {
              break label174;
            }
            localc.wD = i.instantiate(this.mContext, localc.coB.getName(), localc.coC);
            paramString.a(this.mContainerId, localc.wD, localc.tag);
          }
        }
      }
    }
    for (;;)
    {
      this.coy = localc;
      return paramString;
      i += 1;
      break;
      localc = null;
      break label42;
      label174:
      paramString.c(localc.wD);
    }
  }
  
  private void bN(Context paramContext)
  {
    if (findViewById(16908307) == null)
    {
      LinearLayout localLinearLayout = new LinearLayout(paramContext);
      localLinearLayout.setOrientation(1);
      addView(localLinearLayout, new FrameLayout.LayoutParams(-1, -1));
      Object localObject = new TabWidget(paramContext);
      ((TabWidget)localObject).setId(16908307);
      ((TabWidget)localObject).setOrientation(0);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(-1, -2, 0.0F));
      localObject = new FrameLayout(paramContext);
      ((FrameLayout)localObject).setId(16908305);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(0, 0, 0.0F));
      paramContext = new FrameLayout(paramContext);
      this.cow = paramContext;
      this.cow.setId(this.mContainerId);
      localLinearLayout.addView(paramContext, new LinearLayout.LayoutParams(-1, 0, 1.0F));
    }
  }
  
  private void c(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842995 }, 0, 0);
    this.mContainerId = paramContext.getResourceId(0, 0);
    paramContext.recycle();
    super.setOnTabChangedListener(this);
  }
  
  public final void FE()
  {
    bN(null);
    super.setup();
    this.mContext = null;
    this.yz = null;
    FF();
  }
  
  public final void a(Context paramContext, n paramn)
  {
    bN(paramContext);
    super.setup();
    this.mContext = paramContext;
    this.yz = paramn;
    this.mContainerId = 2131296834;
    FF();
    this.cow.setId(2131296834);
    if (getId() == -1) {
      setId(16908306);
    }
  }
  
  public final void a(TabHost.TabSpec paramTabSpec, Class<?> paramClass)
  {
    paramTabSpec.setContent(new a(this.mContext));
    Object localObject = paramTabSpec.getTag();
    paramClass = new c((String)localObject, paramClass);
    if (this.coz)
    {
      paramClass.wD = this.yz.w((String)localObject);
      if ((paramClass.wD != null) && (!paramClass.wD.isDetached()))
      {
        localObject = this.yz.cG();
        ((t)localObject).b(paramClass.wD);
      }
    }
    try
    {
      ((t)localObject).commitAllowingStateLoss();
      this.od.add(paramClass);
      addTab(paramTabSpec);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  public final void clearAllTabs()
  {
    super.clearAllTabs();
    this.coy = null;
    this.od.clear();
  }
  
  protected final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    String str = getCurrentTabTag();
    Object localObject1 = null;
    int j = this.od.size();
    int i = 0;
    if (i < j)
    {
      c localc = (c)this.od.get(i);
      localc.wD = this.yz.w(localc.tag);
      Object localObject2 = localObject1;
      if (localc.wD != null)
      {
        localObject2 = localObject1;
        if (!localc.wD.isDetached())
        {
          if (!localc.tag.equals(str)) {
            break label114;
          }
          this.coy = localc;
          localObject2 = localObject1;
        }
      }
      for (;;)
      {
        i += 1;
        localObject1 = localObject2;
        break;
        label114:
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = this.yz.cG();
        }
        ((t)localObject2).b(localc.wD);
      }
    }
    this.coz = true;
    localObject1 = a(str, (t)localObject1);
    if (localObject1 != null) {}
    try
    {
      ((t)localObject1).commitAllowingStateLoss();
      this.yz.executePendingTransactions();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  protected final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.coz = false;
  }
  
  protected final void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof b))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (b)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setCurrentTabByTag(paramParcelable.coA);
  }
  
  protected final Parcelable onSaveInstanceState()
  {
    b localb = new b(super.onSaveInstanceState());
    localb.coA = getCurrentTabTag();
    return localb;
  }
  
  public final void onTabChanged(String paramString)
  {
    t localt;
    if (this.coz)
    {
      localt = a(paramString, null);
      if (localt == null) {}
    }
    try
    {
      localt.commitAllowingStateLoss();
      if (this.cox != null) {
        this.cox.onTabChanged(paramString);
      }
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  public final void setOnTabChangedListener(TabHost.OnTabChangeListener paramOnTabChangeListener)
  {
    this.cox = paramOnTabChangeListener;
  }
  
  static final class a
    implements TabHost.TabContentFactory
  {
    private final Context mContext;
    
    a(Context paramContext)
    {
      this.mContext = paramContext;
    }
    
    public final View createTabContent(String paramString)
    {
      paramString = new View(this.mContext);
      paramString.setMinimumWidth(0);
      paramString.setMinimumHeight(0);
      return paramString;
    }
  }
  
  static final class b
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator() {};
    String coA;
    
    b(Parcel paramParcel)
    {
      super();
      this.coA = paramParcel.readString();
    }
    
    b(Parcelable paramParcelable)
    {
      super();
    }
    
    public final String toString()
    {
      return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.coA + "}";
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeString(this.coA);
    }
  }
  
  static final class c
  {
    final Class<?> coB;
    final Bundle coC;
    final String tag;
    i wD;
    
    c(String paramString, Class<?> paramClass)
    {
      this.tag = paramString;
      this.coB = paramClass;
      this.coC = null;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/views/MyFragmentTabHost.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */