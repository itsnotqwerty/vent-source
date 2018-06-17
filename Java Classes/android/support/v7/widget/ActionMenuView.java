package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.h.a;
import android.support.v7.view.menu.h.b;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.o.a;
import android.support.v7.view.menu.p;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;

public class ActionMenuView
  extends at
  implements h.b, p
{
  h Pj;
  d UD;
  private boolean UE;
  private int UF;
  private int UG;
  e UH;
  boolean Ug;
  private int Up;
  private o.a mActionMenuPresenterCallback;
  h.a mMenuBuilderCallback;
  private Context mPopupContext;
  private int mPopupTheme;
  
  public ActionMenuView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBaselineAligned(false);
    float f = paramContext.getResources().getDisplayMetrics().density;
    this.Up = ((int)(56.0F * f));
    this.UG = ((int)(f * 4.0F));
    this.mPopupContext = paramContext;
    this.mPopupTheme = 0;
  }
  
  private boolean aY(int paramInt)
  {
    boolean bool2 = false;
    if (paramInt == 0) {
      return false;
    }
    View localView1 = getChildAt(paramInt - 1);
    View localView2 = getChildAt(paramInt);
    boolean bool1 = bool2;
    if (paramInt < getChildCount())
    {
      bool1 = bool2;
      if ((localView1 instanceof a)) {
        bool1 = ((a)localView1).eX() | false;
      }
    }
    if ((paramInt > 0) && ((localView2 instanceof a))) {
      return ((a)localView2).eW() | bool1;
    }
    return bool1;
  }
  
  protected static c b(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams != null)
    {
      if ((paramLayoutParams instanceof c)) {}
      for (paramLayoutParams = new c((c)paramLayoutParams);; paramLayoutParams = new c(paramLayoutParams))
      {
        if (paramLayoutParams.gravity <= 0) {
          paramLayoutParams.gravity = 16;
        }
        return paramLayoutParams;
      }
    }
    return fL();
  }
  
  private c c(AttributeSet paramAttributeSet)
  {
    return new c(getContext(), paramAttributeSet);
  }
  
  static int d(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool2 = false;
    c localc = (c)paramView.getLayoutParams();
    int i = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
    ActionMenuItemView localActionMenuItemView;
    if ((paramView instanceof ActionMenuItemView))
    {
      localActionMenuItemView = (ActionMenuItemView)paramView;
      if ((localActionMenuItemView == null) || (!localActionMenuItemView.hasText())) {
        break label184;
      }
      paramInt4 = 1;
      label57:
      if ((paramInt2 <= 0) || ((paramInt4 != 0) && (paramInt2 < 2))) {
        break label190;
      }
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, Integer.MIN_VALUE), i);
      int j = paramView.getMeasuredWidth();
      paramInt3 = j / paramInt1;
      paramInt2 = paramInt3;
      if (j % paramInt1 != 0) {
        paramInt2 = paramInt3 + 1;
      }
      paramInt3 = paramInt2;
      if (paramInt4 != 0)
      {
        paramInt3 = paramInt2;
        if (paramInt2 >= 2) {}
      }
    }
    label184:
    label190:
    for (paramInt3 = 2;; paramInt3 = 0)
    {
      boolean bool1 = bool2;
      if (!localc.UI)
      {
        bool1 = bool2;
        if (paramInt4 != 0) {
          bool1 = true;
        }
      }
      localc.UL = bool1;
      localc.UJ = paramInt3;
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt3 * paramInt1, 1073741824), i);
      return paramInt3;
      localActionMenuItemView = null;
      break;
      paramInt4 = 0;
      break label57;
    }
  }
  
  private static c fL()
  {
    c localc = new c();
    localc.gravity = 16;
    return localc;
  }
  
  public static c fM()
  {
    c localc = fL();
    localc.UI = true;
    return localc;
  }
  
  public final void a(h paramh)
  {
    this.Pj = paramh;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (paramLayoutParams != null) && ((paramLayoutParams instanceof c));
  }
  
  public final void dismissPopupMenus()
  {
    if (this.UD != null) {
      this.UD.fI();
    }
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return false;
  }
  
  public final boolean e(j paramj)
  {
    return this.Pj.a(paramj, null, 0);
  }
  
  public Menu getMenu()
  {
    d locald;
    if (this.Pj == null)
    {
      localObject = getContext();
      this.Pj = new h((Context)localObject);
      this.Pj.a(new d());
      this.UD = new d((Context)localObject);
      this.UD.fH();
      locald = this.UD;
      if (this.mActionMenuPresenterCallback == null) {
        break label108;
      }
    }
    label108:
    for (Object localObject = this.mActionMenuPresenterCallback;; localObject = new b())
    {
      locald.QU = ((o.a)localObject);
      this.Pj.a(this.UD, this.mPopupContext);
      this.UD.a(this);
      return this.Pj;
    }
  }
  
  public Drawable getOverflowIcon()
  {
    getMenu();
    d locald = this.UD;
    if (locald.Ud != null) {
      return locald.Ud.getDrawable();
    }
    if (locald.Uf) {
      return locald.Ue;
    }
    return null;
  }
  
  public int getPopupTheme()
  {
    return this.mPopupTheme;
  }
  
  public int getWindowAnimations()
  {
    return 0;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (this.UD != null)
    {
      this.UD.G(false);
      if (this.UD.isOverflowMenuShowing())
      {
        this.UD.hideOverflowMenu();
        this.UD.showOverflowMenu();
      }
    }
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    dismissPopupMenus();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!this.UE)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    int i1 = getChildCount();
    int n = (paramInt4 - paramInt2) / 2;
    int i2 = getDividerWidth();
    paramInt2 = 0;
    paramInt4 = paramInt3 - paramInt1 - getPaddingRight() - getPaddingLeft();
    int j = 0;
    paramBoolean = bw.bj(this);
    int i = 0;
    label68:
    View localView;
    c localc;
    int k;
    int m;
    if (i < i1)
    {
      localView = getChildAt(i);
      if (localView.getVisibility() == 8) {
        break label669;
      }
      localc = (c)localView.getLayoutParams();
      if (localc.UI)
      {
        k = localView.getMeasuredWidth();
        j = k;
        if (aY(i)) {
          j = k + i2;
        }
        int i3 = localView.getMeasuredHeight();
        if (paramBoolean)
        {
          k = getPaddingLeft();
          k = localc.leftMargin + k;
          m = k + j;
          label172:
          int i4 = n - i3 / 2;
          localView.layout(k, i4, m, i3 + i4);
          k = paramInt4 - j;
          j = 1;
          paramInt4 = paramInt2;
          paramInt2 = k;
        }
      }
    }
    for (;;)
    {
      k = i + 1;
      i = paramInt4;
      paramInt4 = paramInt2;
      paramInt2 = i;
      i = k;
      break label68;
      m = getWidth() - getPaddingRight() - localc.rightMargin;
      k = m - j;
      break label172;
      k = localView.getMeasuredWidth();
      m = localc.leftMargin;
      paramInt4 -= localc.rightMargin + (k + m);
      aY(i);
      k = paramInt2 + 1;
      paramInt2 = paramInt4;
      paramInt4 = k;
      continue;
      if ((i1 == 1) && (j == 0))
      {
        localView = getChildAt(0);
        paramInt2 = localView.getMeasuredWidth();
        paramInt4 = localView.getMeasuredHeight();
        paramInt1 = (paramInt3 - paramInt1) / 2 - paramInt2 / 2;
        paramInt3 = n - paramInt4 / 2;
        localView.layout(paramInt1, paramInt3, paramInt2 + paramInt1, paramInt4 + paramInt3);
        return;
      }
      if (j != 0)
      {
        paramInt1 = 0;
        label390:
        paramInt1 = paramInt2 - paramInt1;
        if (paramInt1 <= 0) {
          break label541;
        }
        paramInt1 = paramInt4 / paramInt1;
        label403:
        paramInt3 = Math.max(0, paramInt1);
        if (!paramBoolean) {
          break label546;
        }
        paramInt1 = getWidth() - getPaddingRight();
        paramInt2 = 0;
        label426:
        if (paramInt2 < i1)
        {
          localView = getChildAt(paramInt2);
          localc = (c)localView.getLayoutParams();
          if ((localView.getVisibility() == 8) || (localc.UI)) {
            break label666;
          }
          paramInt1 -= localc.rightMargin;
          paramInt4 = localView.getMeasuredWidth();
          i = localView.getMeasuredHeight();
          j = n - i / 2;
          localView.layout(paramInt1 - paramInt4, j, paramInt1, i + j);
          paramInt1 -= localc.leftMargin + paramInt4 + paramInt3;
        }
      }
      label541:
      label546:
      label553:
      label663:
      label666:
      for (;;)
      {
        paramInt2 += 1;
        break label426;
        break;
        paramInt1 = 1;
        break label390;
        paramInt1 = 0;
        break label403;
        paramInt1 = getPaddingLeft();
        paramInt2 = 0;
        if (paramInt2 < i1)
        {
          localView = getChildAt(paramInt2);
          localc = (c)localView.getLayoutParams();
          if ((localView.getVisibility() == 8) || (localc.UI)) {
            break label663;
          }
          paramInt1 += localc.leftMargin;
          paramInt4 = localView.getMeasuredWidth();
          i = localView.getMeasuredHeight();
          j = n - i / 2;
          localView.layout(paramInt1, j, paramInt1 + paramInt4, i + j);
          paramInt1 = localc.rightMargin + paramInt4 + paramInt3 + paramInt1;
        }
        for (;;)
        {
          paramInt2 += 1;
          break label553;
          break;
        }
      }
      label669:
      k = paramInt2;
      paramInt2 = paramInt4;
      paramInt4 = k;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool2 = this.UE;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824) {}
    int i;
    int i6;
    int i5;
    int i3;
    int i7;
    int i8;
    for (boolean bool1 = true;; bool1 = false)
    {
      this.UE = bool1;
      if (bool2 != this.UE) {
        this.UF = 0;
      }
      i = View.MeasureSpec.getSize(paramInt1);
      if ((this.UE) && (this.Pj != null) && (i != this.UF))
      {
        this.UF = i;
        this.Pj.J(true);
      }
      j = getChildCount();
      if ((!this.UE) || (j <= 0)) {
        break label1234;
      }
      i6 = View.MeasureSpec.getMode(paramInt2);
      paramInt1 = View.MeasureSpec.getSize(paramInt1);
      i5 = View.MeasureSpec.getSize(paramInt2);
      i = getPaddingLeft();
      j = getPaddingRight();
      i3 = getPaddingTop() + getPaddingBottom();
      i7 = getChildMeasureSpec(paramInt2, i3, -2);
      i8 = paramInt1 - (i + j);
      paramInt1 = i8 / this.Up;
      paramInt2 = this.Up;
      if (paramInt1 != 0) {
        break;
      }
      setMeasuredDimension(i8, 0);
      return;
    }
    int i9 = this.Up + i8 % paramInt2 / paramInt1;
    int j = 0;
    int i1 = 0;
    int k = 0;
    int m = 0;
    paramInt2 = 0;
    long l1 = 0L;
    int i10 = getChildCount();
    int n = 0;
    Object localObject;
    c localc;
    label351:
    label369:
    int i4;
    label407:
    label417:
    int i2;
    if (n < i10)
    {
      localObject = getChildAt(n);
      if (((View)localObject).getVisibility() == 8) {
        break label1329;
      }
      bool1 = localObject instanceof ActionMenuItemView;
      m += 1;
      if (bool1) {
        ((View)localObject).setPadding(this.UG, 0, this.UG, 0);
      }
      localc = (c)((View)localObject).getLayoutParams();
      localc.expanded = false;
      localc.UK = 0;
      localc.UJ = 0;
      localc.UL = false;
      localc.leftMargin = 0;
      localc.rightMargin = 0;
      if ((bool1) && (((ActionMenuItemView)localObject).hasText()))
      {
        bool1 = true;
        localc.UM = bool1;
        if (!localc.UI) {
          break label483;
        }
        i = 1;
        i4 = d((View)localObject, i9, i, i7, i3);
        i1 = Math.max(i1, i4);
        if (!localc.UL) {
          break label1322;
        }
        i = k + 1;
        if (!localc.UI) {
          break label1319;
        }
        paramInt2 = 1;
        i2 = paramInt1 - i4;
        j = Math.max(j, ((View)localObject).getMeasuredHeight());
        if (i4 != 1) {
          break label1305;
        }
        l1 = 1 << n | l1;
        k = i;
        i = i2;
        paramInt1 = m;
      }
    }
    for (;;)
    {
      n += 1;
      m = paramInt1;
      paramInt1 = i;
      break;
      bool1 = false;
      break label351;
      label483:
      i = paramInt1;
      break label369;
      long l3;
      long l2;
      if ((paramInt2 != 0) && (m == 2))
      {
        i2 = 1;
        i = 0;
        n = paramInt1;
        paramInt1 = i;
        l3 = l1;
        if (k <= 0) {
          break label807;
        }
        l3 = l1;
        if (n <= 0) {
          break label807;
        }
        i3 = Integer.MAX_VALUE;
        l2 = 0L;
        i = 0;
        i4 = 0;
        label543:
        if (i4 >= i10) {
          break label641;
        }
        localObject = (c)getChildAt(i4).getLayoutParams();
        if (!((c)localObject).UL) {
          break label1302;
        }
        if (((c)localObject).UJ >= i3) {
          break label613;
        }
        i3 = ((c)localObject).UJ;
        l2 = 1L << i4;
        i = 1;
      }
      label613:
      label641:
      label665:
      label807:
      label968:
      label971:
      label1075:
      label1139:
      label1142:
      label1145:
      label1234:
      label1293:
      label1299:
      label1302:
      for (;;)
      {
        i4 += 1;
        break label543;
        i2 = 0;
        break;
        if (((c)localObject).UJ == i3)
        {
          l2 |= 1L << i4;
          i += 1;
          continue;
          l1 |= l2;
          l3 = l1;
          if (i <= n)
          {
            i = 0;
            paramInt1 = n;
            if (i < i10)
            {
              localObject = getChildAt(i);
              localc = (c)((View)localObject).getLayoutParams();
              if ((1 << i & l2) == 0L)
              {
                if (localc.UJ != i3 + 1) {
                  break label1299;
                }
                l1 |= 1 << i;
              }
            }
          }
          for (;;)
          {
            i += 1;
            break label665;
            if ((i2 != 0) && (localc.UM) && (paramInt1 == 1)) {
              ((View)localObject).setPadding(this.UG + i9, 0, this.UG, 0);
            }
            localc.UJ += 1;
            localc.expanded = true;
            paramInt1 -= 1;
            continue;
            i = 1;
            n = paramInt1;
            paramInt1 = i;
            break;
            float f2;
            float f1;
            if ((paramInt2 == 0) && (m == 1))
            {
              paramInt2 = 1;
              if ((n <= 0) || (l3 == 0L) || ((n >= m - 1) && (paramInt2 == 0) && (i1 <= 1))) {
                break label1142;
              }
              float f3 = Long.bitCount(l3);
              f2 = f3;
              if (paramInt2 != 0) {
                break label1293;
              }
              f1 = f3;
              if ((1L & l3) != 0L)
              {
                f1 = f3;
                if (!((c)getChildAt(0).getLayoutParams()).UM) {
                  f1 = f3 - 0.5F;
                }
              }
              f2 = f1;
              if ((1 << i10 - 1 & l3) == 0L) {
                break label1293;
              }
              f2 = f1;
              if (((c)getChildAt(i10 - 1).getLayoutParams()).UM) {
                break label1293;
              }
            }
            for (f1 -= 0.5F;; f1 = f2)
            {
              if (f1 > 0.0F)
              {
                paramInt2 = (int)(n * i9 / f1);
                i = 0;
                k = paramInt1;
                if (i >= i10) {
                  break label1145;
                }
                if ((1 << i & l3) == 0L) {
                  break label1139;
                }
                localObject = getChildAt(i);
                localc = (c)((View)localObject).getLayoutParams();
                if (!(localObject instanceof ActionMenuItemView)) {
                  break label1075;
                }
                localc.UK = paramInt2;
                localc.expanded = true;
                if ((i == 0) && (!localc.UM)) {
                  localc.leftMargin = (-paramInt2 / 2);
                }
                paramInt1 = 1;
              }
              for (;;)
              {
                i += 1;
                break label971;
                paramInt2 = 0;
                break;
                paramInt2 = 0;
                break label968;
                if (localc.UI)
                {
                  localc.UK = paramInt2;
                  localc.expanded = true;
                  localc.rightMargin = (-paramInt2 / 2);
                  paramInt1 = 1;
                }
                else
                {
                  if (i != 0) {
                    localc.leftMargin = (paramInt2 / 2);
                  }
                  if (i != i10 - 1) {
                    localc.rightMargin = (paramInt2 / 2);
                  }
                }
              }
              k = paramInt1;
              if (k != 0)
              {
                paramInt1 = 0;
                while (paramInt1 < i10)
                {
                  localObject = getChildAt(paramInt1);
                  localc = (c)((View)localObject).getLayoutParams();
                  if (localc.expanded)
                  {
                    paramInt2 = localc.UJ;
                    ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(localc.UK + paramInt2 * i9, 1073741824), i7);
                  }
                  paramInt1 += 1;
                }
              }
              if (i6 != 1073741824) {}
              for (;;)
              {
                setMeasuredDimension(i8, j);
                return;
                i = 0;
                while (i < j)
                {
                  localObject = (c)getChildAt(i).getLayoutParams();
                  ((c)localObject).rightMargin = 0;
                  ((c)localObject).leftMargin = 0;
                  i += 1;
                }
                super.onMeasure(paramInt1, paramInt2);
                return;
                j = i5;
              }
            }
          }
        }
      }
      label1305:
      k = i;
      paramInt1 = m;
      i = i2;
      continue;
      label1319:
      break label417;
      label1322:
      i = k;
      break label407;
      label1329:
      i = paramInt1;
      paramInt1 = m;
    }
  }
  
  public void setExpandedActionViewsExclusive(boolean paramBoolean)
  {
    this.UD.Uo = paramBoolean;
  }
  
  public final void setMenuCallbacks(o.a parama, h.a parama1)
  {
    this.mActionMenuPresenterCallback = parama;
    this.mMenuBuilderCallback = parama1;
  }
  
  public void setOnMenuItemClickListener(e parame)
  {
    this.UH = parame;
  }
  
  public void setOverflowIcon(Drawable paramDrawable)
  {
    getMenu();
    d locald = this.UD;
    if (locald.Ud != null)
    {
      locald.Ud.setImageDrawable(paramDrawable);
      return;
    }
    locald.Uf = true;
    locald.Ue = paramDrawable;
  }
  
  public void setOverflowReserved(boolean paramBoolean)
  {
    this.Ug = paramBoolean;
  }
  
  public void setPopupTheme(int paramInt)
  {
    if (this.mPopupTheme != paramInt)
    {
      this.mPopupTheme = paramInt;
      if (paramInt == 0) {
        this.mPopupContext = getContext();
      }
    }
    else
    {
      return;
    }
    this.mPopupContext = new ContextThemeWrapper(getContext(), paramInt);
  }
  
  public void setPresenter(d paramd)
  {
    this.UD = paramd;
    this.UD.a(this);
  }
  
  public static abstract interface a
  {
    public abstract boolean eW();
    
    public abstract boolean eX();
  }
  
  private static final class b
    implements o.a
  {
    public final void a(h paramh, boolean paramBoolean) {}
    
    public final boolean d(h paramh)
    {
      return false;
    }
  }
  
  public static final class c
    extends at.a
  {
    @ViewDebug.ExportedProperty
    public boolean UI;
    @ViewDebug.ExportedProperty
    public int UJ;
    @ViewDebug.ExportedProperty
    public int UK;
    @ViewDebug.ExportedProperty
    public boolean UL;
    @ViewDebug.ExportedProperty
    public boolean UM;
    boolean expanded;
    
    public c()
    {
      super(-2);
      this.UI = false;
    }
    
    public c(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public c(c paramc)
    {
      super();
      this.UI = paramc.UI;
    }
    
    public c(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
  
  private final class d
    implements h.a
  {
    d() {}
    
    public final boolean a(h paramh, MenuItem paramMenuItem)
    {
      return (ActionMenuView.this.UH != null) && (ActionMenuView.this.UH.onMenuItemClick(paramMenuItem));
    }
    
    public final void b(h paramh)
    {
      if (ActionMenuView.this.mMenuBuilderCallback != null) {
        ActionMenuView.this.mMenuBuilderCallback.b(paramh);
      }
    }
  }
  
  public static abstract interface e
  {
    public abstract boolean onMenuItemClick(MenuItem paramMenuItem);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ActionMenuView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */