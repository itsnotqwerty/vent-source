package android.support.v7.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.c;
import android.support.v7.a.a.f;
import android.support.v7.a.a.g;
import android.support.v7.a.a.h;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;
import java.util.List;

public final class ActivityChooserView
  extends ViewGroup
{
  PopupWindow.OnDismissListener Rw;
  final a Vd;
  private final b Ve;
  private final View Vf;
  final FrameLayout Vg;
  private final ImageView Vh;
  final FrameLayout Vi;
  private final int Vj;
  c Vk;
  final DataSetObserver Vl;
  private final ViewTreeObserver.OnGlobalLayoutListener Vm;
  private av Vn;
  boolean Vo;
  int Vp;
  private int Vq;
  private boolean lH;
  
  private boolean fW()
  {
    return getListPopupWindow().adj.isShowing();
  }
  
  final void bb(int paramInt)
  {
    if (this.Vd.Vr == null) {
      throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }
    getViewTreeObserver().addOnGlobalLayoutListener(this.Vm);
    boolean bool;
    int i;
    label62:
    label93:
    av localav;
    if (this.Vi.getVisibility() == 0)
    {
      bool = true;
      int j = this.Vd.Vr.fO();
      if (!bool) {
        break label212;
      }
      i = 1;
      if ((paramInt == Integer.MAX_VALUE) || (j <= i + paramInt)) {
        break label217;
      }
      this.Vd.P(true);
      this.Vd.bc(paramInt - 1);
      localav = getListPopupWindow();
      if (!localav.adj.isShowing())
      {
        if ((!this.Vo) && (bool)) {
          break label236;
        }
        this.Vd.d(true, bool);
      }
    }
    for (;;)
    {
      localav.setContentWidth(Math.min(this.Vd.fX(), this.Vj));
      localav.show();
      if (this.Vk != null) {
        this.Vk.t(true);
      }
      localav.acK.setContentDescription(getContext().getString(a.h.abc_activitychooserview_choose_application));
      localav.acK.setSelector(new ColorDrawable(0));
      return;
      bool = false;
      break;
      label212:
      i = 0;
      break label62;
      label217:
      this.Vd.P(false);
      this.Vd.bc(paramInt);
      break label93;
      label236:
      this.Vd.d(false, false);
    }
  }
  
  public final boolean fV()
  {
    if (getListPopupWindow().adj.isShowing())
    {
      getListPopupWindow().dismiss();
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver.isAlive()) {
        localViewTreeObserver.removeGlobalOnLayoutListener(this.Vm);
      }
    }
    return true;
  }
  
  public final e getDataModel()
  {
    return this.Vd.Vr;
  }
  
  final av getListPopupWindow()
  {
    if (this.Vn == null)
    {
      this.Vn = new av(getContext());
      this.Vn.setAdapter(this.Vd);
      this.Vn.acY = this;
      this.Vn.hv();
      this.Vn.ada = this.Ve;
      this.Vn.setOnDismissListener(this.Ve);
    }
    return this.Vn;
  }
  
  protected final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    e locale = this.Vd.Vr;
    if (locale != null) {
      locale.registerObserver(this.Vl);
    }
    this.lH = true;
  }
  
  protected final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Object localObject = this.Vd.Vr;
    if (localObject != null) {
      ((e)localObject).unregisterObserver(this.Vl);
    }
    localObject = getViewTreeObserver();
    if (((ViewTreeObserver)localObject).isAlive()) {
      ((ViewTreeObserver)localObject).removeGlobalOnLayoutListener(this.Vm);
    }
    if (fW()) {
      fV();
    }
    this.lH = false;
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.Vf.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    if (!fW()) {
      fV();
    }
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    View localView = this.Vf;
    int i = paramInt2;
    if (this.Vi.getVisibility() != 0) {
      i = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt2), 1073741824);
    }
    measureChild(localView, paramInt1, i);
    setMeasuredDimension(localView.getMeasuredWidth(), localView.getMeasuredHeight());
  }
  
  public final void setActivityChooserModel(e parame)
  {
    a locala = this.Vd;
    e locale = locala.Vw.Vd.Vr;
    if ((locale != null) && (locala.Vw.isShown())) {
      locale.unregisterObserver(locala.Vw.Vl);
    }
    locala.Vr = parame;
    if ((parame != null) && (locala.Vw.isShown())) {
      parame.registerObserver(locala.Vw.Vl);
    }
    locala.notifyDataSetChanged();
    if (getListPopupWindow().adj.isShowing())
    {
      fV();
      if ((!getListPopupWindow().adj.isShowing()) && (this.lH)) {}
    }
    else
    {
      return;
    }
    this.Vo = false;
    bb(this.Vp);
  }
  
  public final void setDefaultActionButtonContentDescription(int paramInt)
  {
    this.Vq = paramInt;
  }
  
  public final void setExpandActivityOverflowButtonContentDescription(int paramInt)
  {
    String str = getContext().getString(paramInt);
    this.Vh.setContentDescription(str);
  }
  
  public final void setExpandActivityOverflowButtonDrawable(Drawable paramDrawable)
  {
    this.Vh.setImageDrawable(paramDrawable);
  }
  
  public final void setInitialActivityCount(int paramInt)
  {
    this.Vp = paramInt;
  }
  
  public final void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.Rw = paramOnDismissListener;
  }
  
  public final void setProvider(c paramc)
  {
    this.Vk = paramc;
  }
  
  public static class InnerLayout
    extends LinearLayout
  {
    private static final int[] RE = { 16842964 };
    
    public InnerLayout(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = bo.a(paramContext, paramAttributeSet, RE);
      setBackgroundDrawable(paramContext.getDrawable(0));
      paramContext.ajT.recycle();
    }
  }
  
  private final class a
    extends BaseAdapter
  {
    e Vr;
    private int Vs;
    boolean Vt;
    private boolean Vu;
    private boolean Vv;
    
    public final void P(boolean paramBoolean)
    {
      if (this.Vv != paramBoolean)
      {
        this.Vv = paramBoolean;
        notifyDataSetChanged();
      }
    }
    
    public final void bc(int paramInt)
    {
      if (this.Vs != paramInt)
      {
        this.Vs = paramInt;
        notifyDataSetChanged();
      }
    }
    
    public final void d(boolean paramBoolean1, boolean paramBoolean2)
    {
      if ((this.Vt != paramBoolean1) || (this.Vu != paramBoolean2))
      {
        this.Vt = paramBoolean1;
        this.Vu = paramBoolean2;
        notifyDataSetChanged();
      }
    }
    
    public final int fX()
    {
      int k = this.Vs;
      this.Vs = Integer.MAX_VALUE;
      int m = View.MeasureSpec.makeMeasureSpec(0, 0);
      int n = View.MeasureSpec.makeMeasureSpec(0, 0);
      int i1 = getCount();
      int i = 0;
      View localView = null;
      int j = 0;
      while (i < i1)
      {
        localView = getView(i, localView, null);
        localView.measure(m, n);
        j = Math.max(j, localView.getMeasuredWidth());
        i += 1;
      }
      this.Vs = k;
      return j;
    }
    
    public final int getCount()
    {
      int j = this.Vr.fO();
      int i = j;
      if (!this.Vt)
      {
        i = j;
        if (this.Vr.fP() != null) {
          i = j - 1;
        }
      }
      j = Math.min(i, this.Vs);
      i = j;
      if (this.Vv) {
        i = j + 1;
      }
      return i;
    }
    
    public final Object getItem(int paramInt)
    {
      switch (getItemViewType(paramInt))
      {
      default: 
        throw new IllegalArgumentException();
      case 1: 
        return null;
      }
      int i = paramInt;
      if (!this.Vt)
      {
        i = paramInt;
        if (this.Vr.fP() != null) {
          i = paramInt + 1;
        }
      }
      return this.Vr.aZ(i);
    }
    
    public final long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public final int getItemViewType(int paramInt)
    {
      if ((this.Vv) && (paramInt == getCount() - 1)) {
        return 1;
      }
      return 0;
    }
    
    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView;
      switch (getItemViewType(paramInt))
      {
      default: 
        throw new IllegalArgumentException();
      case 1: 
        if (paramView != null)
        {
          localView = paramView;
          if (paramView.getId() == 1) {}
        }
        else
        {
          localView = LayoutInflater.from(this.Vw.getContext()).inflate(a.g.abc_activity_chooser_view_list_item, paramViewGroup, false);
          localView.setId(1);
          ((TextView)localView.findViewById(a.f.title)).setText(this.Vw.getContext().getString(a.h.abc_activity_chooser_view_see_all));
        }
        return localView;
      }
      if (paramView != null)
      {
        localView = paramView;
        if (paramView.getId() == a.f.list_item) {}
      }
      else
      {
        localView = LayoutInflater.from(this.Vw.getContext()).inflate(a.g.abc_activity_chooser_view_list_item, paramViewGroup, false);
      }
      paramView = this.Vw.getContext().getPackageManager();
      paramViewGroup = (ImageView)localView.findViewById(a.f.icon);
      ResolveInfo localResolveInfo = (ResolveInfo)getItem(paramInt);
      paramViewGroup.setImageDrawable(localResolveInfo.loadIcon(paramView));
      ((TextView)localView.findViewById(a.f.title)).setText(localResolveInfo.loadLabel(paramView));
      if ((this.Vt) && (paramInt == 0) && (this.Vu))
      {
        localView.setActivated(true);
        return localView;
      }
      localView.setActivated(false);
      return localView;
    }
    
    public final int getViewTypeCount()
    {
      return 3;
    }
  }
  
  private final class b
    implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
  {
    public final void onClick(View paramView)
    {
      if (paramView == this.Vw.Vi)
      {
        this.Vw.fV();
        paramView = this.Vw.Vd.Vr.fP();
        int i = this.Vw.Vd.Vr.a(paramView);
        paramView = this.Vw.Vd.Vr.ba(i);
        if (paramView != null)
        {
          paramView.addFlags(524288);
          this.Vw.getContext().startActivity(paramView);
        }
        return;
      }
      if (paramView == this.Vw.Vg)
      {
        this.Vw.Vo = false;
        this.Vw.bb(this.Vw.Vp);
        return;
      }
      throw new IllegalArgumentException();
    }
    
    public final void onDismiss()
    {
      if (this.Vw.Rw != null) {
        this.Vw.Rw.onDismiss();
      }
      if (this.Vw.Vk != null) {
        this.Vw.Vk.t(false);
      }
    }
    
    public final void onItemClick(AdapterView<?> arg1, View paramView, int paramInt, long paramLong)
    {
      switch (((ActivityChooserView.a)???.getAdapter()).getItemViewType(paramInt))
      {
      default: 
        throw new IllegalArgumentException();
      case 1: 
        this.Vw.bb(Integer.MAX_VALUE);
      }
      do
      {
        return;
        this.Vw.fV();
        if (!this.Vw.Vo) {
          break;
        }
      } while (paramInt <= 0);
      paramView = this.Vw.Vd.Vr;
      for (;;)
      {
        synchronized (paramView.UQ)
        {
          paramView.fQ();
          e.a locala1 = (e.a)paramView.UR.get(paramInt);
          e.a locala2 = (e.a)paramView.UR.get(0);
          if (locala2 != null)
          {
            f = locala2.weight - locala1.weight + 5.0F;
            paramView.a(new e.c(new ComponentName(locala1.resolveInfo.activityInfo.packageName, locala1.resolveInfo.activityInfo.name), System.currentTimeMillis(), f));
            return;
          }
        }
        float f = 1.0F;
      }
      if (this.Vw.Vd.Vt) {}
      for (;;)
      {
        ??? = this.Vw.Vd.Vr.ba(paramInt);
        if (??? == null) {
          break;
        }
        ???.addFlags(524288);
        this.Vw.getContext().startActivity(???);
        return;
        paramInt += 1;
      }
    }
    
    public final boolean onLongClick(View paramView)
    {
      if (paramView == this.Vw.Vi)
      {
        if (this.Vw.Vd.getCount() > 0)
        {
          this.Vw.Vo = true;
          this.Vw.bb(this.Vw.Vp);
        }
        return true;
      }
      throw new IllegalArgumentException();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ActivityChooserView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */