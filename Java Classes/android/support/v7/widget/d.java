package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.c;
import android.support.v4.view.c.a;
import android.support.v7.a.a.a;
import android.support.v7.a.a.g;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.ActionMenuItemView.b;
import android.support.v7.view.menu.b;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.h.a;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.n;
import android.support.v7.view.menu.o.a;
import android.support.v7.view.menu.p;
import android.support.v7.view.menu.p.a;
import android.support.v7.view.menu.s;
import android.support.v7.view.menu.u;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import java.util.ArrayList;

final class d
  extends b
  implements c.a
{
  d Ud;
  Drawable Ue;
  boolean Uf;
  private boolean Ug;
  private boolean Uh;
  private int Ui;
  private int Uj;
  private int Uk;
  private boolean Ul;
  private boolean Um;
  private boolean Un;
  boolean Uo;
  private int Up;
  private final SparseBooleanArray Uq = new SparseBooleanArray();
  private View Ur;
  e Us;
  a Ut;
  c Uu;
  private b Uv;
  final f Uw = new f();
  int Ux;
  
  public d(Context paramContext)
  {
    super(paramContext, a.g.abc_action_menu_layout, a.g.abc_action_menu_item_layout);
  }
  
  public final void G(boolean paramBoolean)
  {
    int j = 1;
    int k = 0;
    super.G(paramBoolean);
    ((View)this.QX).requestLayout();
    Object localObject;
    int i;
    if (this.Pj != null)
    {
      localObject = this.Pj;
      ((h)localObject).fo();
      localObject = ((h)localObject).Se;
      int m = ((ArrayList)localObject).size();
      i = 0;
      while (i < m)
      {
        c localc = ((j)((ArrayList)localObject).get(i)).SC;
        if (localc != null) {
          localc.Fc = this;
        }
        i += 1;
      }
    }
    if (this.Pj != null)
    {
      localObject = this.Pj.fp();
      i = k;
      if (this.Ug)
      {
        i = k;
        if (localObject != null)
        {
          i = ((ArrayList)localObject).size();
          if (i != 1) {
            break label259;
          }
          if (((j)((ArrayList)localObject).get(0)).isActionViewExpanded()) {
            break label254;
          }
          i = 1;
        }
      }
      label154:
      if (i == 0) {
        break label273;
      }
      if (this.Ud == null) {
        this.Ud = new d(this.QS);
      }
      localObject = (ViewGroup)this.Ud.getParent();
      if (localObject != this.QX)
      {
        if (localObject != null) {
          ((ViewGroup)localObject).removeView(this.Ud);
        }
        ((ActionMenuView)this.QX).addView(this.Ud, ActionMenuView.fM());
      }
    }
    for (;;)
    {
      ((ActionMenuView)this.QX).setOverflowReserved(this.Ug);
      return;
      localObject = null;
      break;
      label254:
      i = 0;
      break label154;
      label259:
      if (i > 0) {}
      for (i = j;; i = 0) {
        break;
      }
      label273:
      if ((this.Ud != null) && (this.Ud.getParent() == this.QX)) {
        ((ViewGroup)this.QX).removeView(this.Ud);
      }
    }
  }
  
  public final View a(j paramj, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramj.getActionView();
    if ((localView == null) || (paramj.fy())) {
      localView = super.a(paramj, paramView, paramViewGroup);
    }
    if (paramj.isActionViewExpanded()) {}
    for (int i = 8;; i = 0)
    {
      localView.setVisibility(i);
      paramj = (ActionMenuView)paramViewGroup;
      paramView = localView.getLayoutParams();
      if (!paramj.checkLayoutParams(paramView)) {
        localView.setLayoutParams(ActionMenuView.b(paramView));
      }
      return localView;
    }
  }
  
  public final void a(Context paramContext, h paramh)
  {
    boolean bool = true;
    super.a(paramContext, paramh);
    paramh = paramContext.getResources();
    paramContext = android.support.v7.view.a.k(paramContext);
    int i;
    if (!this.Uh)
    {
      if (Build.VERSION.SDK_INT >= 19) {
        this.Ug = bool;
      }
    }
    else
    {
      if (!this.Un) {
        this.Ui = (paramContext.mContext.getResources().getDisplayMetrics().widthPixels / 2);
      }
      if (!this.Ul) {
        this.Uk = paramContext.eN();
      }
      i = this.Ui;
      if (!this.Ug) {
        break label218;
      }
      if (this.Ud == null)
      {
        this.Ud = new d(this.QS);
        if (this.Uf)
        {
          this.Ud.setImageDrawable(this.Ue);
          this.Ue = null;
          this.Uf = false;
        }
        int j = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.Ud.measure(j, j);
      }
      i -= this.Ud.getMeasuredWidth();
    }
    for (;;)
    {
      this.Uj = i;
      this.Up = ((int)(56.0F * paramh.getDisplayMetrics().density));
      this.Ur = null;
      return;
      if (!ViewConfiguration.get(paramContext.mContext).hasPermanentMenuKey()) {
        break;
      }
      bool = false;
      break;
      label218:
      this.Ud = null;
    }
  }
  
  public final void a(h paramh, boolean paramBoolean)
  {
    fI();
    super.a(paramh, paramBoolean);
  }
  
  public final void a(j paramj, p.a parama)
  {
    parama.a(paramj);
    paramj = (ActionMenuView)this.QX;
    parama = (ActionMenuItemView)parama;
    parama.setItemInvoker(paramj);
    if (this.Uv == null) {
      this.Uv = new b();
    }
    parama.setPopupCallback(this.Uv);
  }
  
  public final void a(ActionMenuView paramActionMenuView)
  {
    this.QX = paramActionMenuView;
    paramActionMenuView.Pj = this.Pj;
  }
  
  public final boolean a(u paramu)
  {
    if (!paramu.hasVisibleItems()) {
      return false;
    }
    for (Object localObject = paramu; ((u)localObject).Tc != this.Pj; localObject = (u)((u)localObject).Tc) {}
    MenuItem localMenuItem = ((u)localObject).getItem();
    ViewGroup localViewGroup = (ViewGroup)this.QX;
    int i;
    if (localViewGroup != null)
    {
      int j = localViewGroup.getChildCount();
      i = 0;
      label66:
      if (i < j)
      {
        localObject = localViewGroup.getChildAt(i);
        if (((localObject instanceof p.a)) && (((p.a)localObject).getItemData() == localMenuItem))
        {
          label102:
          if (localObject == null) {
            break label216;
          }
          this.Ux = paramu.getItem().getItemId();
          j = paramu.size();
          i = 0;
          label127:
          if (i >= j) {
            break label225;
          }
          localMenuItem = paramu.getItem(i);
          if ((!localMenuItem.isVisible()) || (localMenuItem.getIcon() == null)) {
            break label218;
          }
        }
      }
    }
    label216:
    label218:
    label225:
    for (boolean bool = true;; bool = false)
    {
      this.Ut = new a(this.mContext, paramu, (View)localObject);
      this.Ut.setForceShowIcon(bool);
      this.Ut.show();
      super.a(paramu);
      return true;
      i += 1;
      break label66;
      localObject = null;
      break label102;
      break;
      i += 1;
      break label127;
    }
  }
  
  public final boolean b(j paramj)
  {
    return paramj.fv();
  }
  
  public final boolean b(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramViewGroup.getChildAt(paramInt) == this.Ud) {
      return false;
    }
    return super.b(paramViewGroup, paramInt);
  }
  
  public final p f(ViewGroup paramViewGroup)
  {
    p localp = this.QX;
    paramViewGroup = super.f(paramViewGroup);
    if (localp != paramViewGroup) {
      ((ActionMenuView)paramViewGroup).setPresenter(this);
    }
    return paramViewGroup;
  }
  
  public final void fG()
  {
    if (!this.Ul) {
      this.Uk = android.support.v7.view.a.k(this.mContext).eN();
    }
    if (this.Pj != null) {
      this.Pj.J(true);
    }
  }
  
  public final void fH()
  {
    this.Ug = true;
    this.Uh = true;
  }
  
  public final boolean fI()
  {
    return hideOverflowMenu() | fJ();
  }
  
  public final boolean fJ()
  {
    if (this.Ut != null)
    {
      this.Ut.dismiss();
      return true;
    }
    return false;
  }
  
  public final boolean fa()
  {
    ArrayList localArrayList;
    int i1;
    int i;
    int i4;
    int i5;
    ViewGroup localViewGroup;
    int k;
    int m;
    int n;
    int j;
    label60:
    Object localObject1;
    if (this.Pj != null)
    {
      localArrayList = this.Pj.fn();
      i1 = localArrayList.size();
      i = this.Uk;
      i4 = this.Uj;
      i5 = View.MeasureSpec.makeMeasureSpec(0, 0);
      localViewGroup = (ViewGroup)this.QX;
      k = 0;
      m = 0;
      n = 0;
      j = 0;
      if (j >= i1) {
        break label145;
      }
      localObject1 = (j)localArrayList.get(j);
      if (!((j)localObject1).fx()) {
        break label122;
      }
      k += 1;
      label89:
      if ((!this.Uo) || (!((j)localObject1).isActionViewExpanded())) {
        break label756;
      }
      i = 0;
    }
    label122:
    label145:
    label311:
    label431:
    label503:
    label542:
    label601:
    label613:
    label618:
    label744:
    label747:
    label756:
    for (;;)
    {
      j += 1;
      break label60;
      i1 = 0;
      localArrayList = null;
      break;
      if (((j)localObject1).fw())
      {
        m += 1;
        break label89;
      }
      n = 1;
      break label89;
      j = i;
      if (this.Ug) {
        if (n == 0)
        {
          j = i;
          if (k + m <= i) {}
        }
        else
        {
          j = i - 1;
        }
      }
      j -= k;
      localObject1 = this.Uq;
      ((SparseBooleanArray)localObject1).clear();
      i = 0;
      if (this.Um)
      {
        i = i4 / this.Up;
        k = this.Up;
        m = this.Up;
      }
      for (int i2 = i4 % k / i + m;; i2 = 0)
      {
        k = 0;
        int i3 = 0;
        m = i4;
        j localj;
        Object localObject2;
        if (i3 < i1)
        {
          localj = (j)localArrayList.get(i3);
          if (localj.fx())
          {
            localObject2 = a(localj, this.Ur, localViewGroup);
            if (this.Ur == null) {
              this.Ur = ((View)localObject2);
            }
            if (this.Um)
            {
              i -= ActionMenuView.d((View)localObject2, i2, i, i5, 0);
              n = ((View)localObject2).getMeasuredWidth();
              if (k != 0) {
                break label747;
              }
              k = n;
            }
          }
        }
        for (;;)
        {
          i4 = localj.getGroupId();
          if (i4 != 0) {
            ((SparseBooleanArray)localObject1).put(i4, true);
          }
          localj.N(true);
          m -= n;
          i3 += 1;
          break;
          ((View)localObject2).measure(i5, i5);
          break label311;
          int i6;
          boolean bool;
          int i7;
          if (localj.fw())
          {
            i6 = localj.getGroupId();
            bool = ((SparseBooleanArray)localObject1).get(i6);
            if (((j > 0) || (bool)) && (m > 0) && ((!this.Um) || (i > 0)))
            {
              i7 = 1;
              if (i7 == 0) {
                break label744;
              }
              localObject2 = a(localj, this.Ur, localViewGroup);
              if (this.Ur == null) {
                this.Ur = ((View)localObject2);
              }
              if (!this.Um) {
                break label601;
              }
              i4 = ActionMenuView.d((View)localObject2, i2, i, i5, 0);
              n = i - i4;
              i = n;
              if (i4 == 0)
              {
                i7 = 0;
                i = n;
              }
              i4 = ((View)localObject2).getMeasuredWidth();
              m -= i4;
              n = k;
              if (k == 0) {
                n = i4;
              }
              if (!this.Um) {
                break label618;
              }
              if (m < 0) {
                break label613;
              }
              k = 1;
              i7 &= k;
              k = n;
            }
          }
          for (;;)
          {
            if ((i7 != 0) && (i6 != 0)) {
              ((SparseBooleanArray)localObject1).put(i6, true);
            }
            for (;;)
            {
              n = j;
              if (i7 != 0) {
                n = j - 1;
              }
              localj.N(i7);
              j = n;
              break;
              int i8 = 0;
              break label431;
              ((View)localObject2).measure(i5, i5);
              break label503;
              k = 0;
              break label542;
              if (m + n > 0) {}
              for (k = 1;; k = 0)
              {
                i8 &= k;
                k = n;
                break;
              }
              if (bool)
              {
                ((SparseBooleanArray)localObject1).put(i6, false);
                i4 = 0;
                for (;;)
                {
                  if (i4 < i3)
                  {
                    localObject2 = (j)localArrayList.get(i4);
                    n = j;
                    if (((j)localObject2).getGroupId() == i6)
                    {
                      n = j;
                      if (((j)localObject2).fv()) {
                        n = j + 1;
                      }
                      ((j)localObject2).N(false);
                    }
                    i4 += 1;
                    j = n;
                    continue;
                    localj.N(false);
                    break;
                    return true;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  public final boolean hideOverflowMenu()
  {
    if ((this.Uu != null) && (this.QX != null))
    {
      ((View)this.QX).removeCallbacks(this.Uu);
      this.Uu = null;
      return true;
    }
    e locale = this.Us;
    if (locale != null)
    {
      locale.dismiss();
      return true;
    }
    return false;
  }
  
  public final boolean isOverflowMenuShowing()
  {
    return (this.Us != null) && (this.Us.isShowing());
  }
  
  public final boolean showOverflowMenu()
  {
    if ((this.Ug) && (!isOverflowMenuShowing()) && (this.Pj != null) && (this.QX != null) && (this.Uu == null) && (!this.Pj.fp().isEmpty()))
    {
      this.Uu = new c(new e(this.mContext, this.Pj, this.Ud));
      ((View)this.QX).post(this.Uu);
      super.a(null);
      return true;
    }
    return false;
  }
  
  public final void u(boolean paramBoolean)
  {
    if (paramBoolean) {
      super.a(null);
    }
    while (this.Pj == null) {
      return;
    }
    this.Pj.I(false);
  }
  
  private final class a
    extends n
  {
    public a(Context paramContext, u paramu, View paramView)
    {
      super(paramu, paramView, false, a.a.actionOverflowMenuStyle);
      if (!((j)paramu.getItem()).fv()) {
        if (d.this.Ud != null) {
          break label59;
        }
      }
      label59:
      for (paramContext = (View)d.c(d.this);; paramContext = d.this.Ud)
      {
        this.mc = paramContext;
        b(d.this.Uw);
        return;
      }
    }
    
    protected final void onDismiss()
    {
      d.this.Ut = null;
      d.this.Ux = 0;
      super.onDismiss();
    }
  }
  
  private final class b
    extends ActionMenuItemView.b
  {
    b() {}
    
    public final s eY()
    {
      if (d.this.Ut != null) {
        return d.this.Ut.fz();
      }
      return null;
    }
  }
  
  private final class c
    implements Runnable
  {
    private d.e Uz;
    
    public c(d.e parame)
    {
      this.Uz = parame;
    }
    
    public final void run()
    {
      if (d.d(d.this) != null)
      {
        localObject = d.e(d.this);
        if (((h)localObject).Sb != null) {
          ((h)localObject).Sb.b((h)localObject);
        }
      }
      Object localObject = (View)d.f(d.this);
      if ((localObject != null) && (((View)localObject).getWindowToken() != null) && (this.Uz.fA())) {
        d.this.Us = this.Uz;
      }
      d.this.Uu = null;
    }
  }
  
  private final class d
    extends r
    implements ActionMenuView.a
  {
    private final float[] UA = new float[2];
    
    public d(Context paramContext)
    {
      super(null, a.a.actionOverflowButtonStyle);
      setClickable(true);
      setFocusable(true);
      setVisibility(0);
      setEnabled(true);
      bq.a(this, getContentDescription());
      setOnTouchListener(new aq(this)
      {
        public final s eY()
        {
          if (d.this.Us == null) {
            return null;
          }
          return d.this.Us.fz();
        }
        
        public final boolean eZ()
        {
          d.this.showOverflowMenu();
          return true;
        }
        
        public final boolean fK()
        {
          if (d.this.Uu != null) {
            return false;
          }
          d.this.hideOverflowMenu();
          return true;
        }
      });
    }
    
    public final boolean eW()
    {
      return false;
    }
    
    public final boolean eX()
    {
      return false;
    }
    
    public final boolean performClick()
    {
      if (super.performClick()) {
        return true;
      }
      playSoundEffect(0);
      d.this.showOverflowMenu();
      return true;
    }
    
    protected final boolean setFrame(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      boolean bool = super.setFrame(paramInt1, paramInt2, paramInt3, paramInt4);
      Drawable localDrawable1 = getDrawable();
      Drawable localDrawable2 = getBackground();
      if ((localDrawable1 != null) && (localDrawable2 != null))
      {
        int i = getWidth();
        paramInt2 = getHeight();
        paramInt1 = Math.max(i, paramInt2) / 2;
        int j = getPaddingLeft();
        int k = getPaddingRight();
        paramInt3 = getPaddingTop();
        paramInt4 = getPaddingBottom();
        i = (i + (j - k)) / 2;
        paramInt2 = (paramInt2 + (paramInt3 - paramInt4)) / 2;
        android.support.v4.a.a.a.a(localDrawable2, i - paramInt1, paramInt2 - paramInt1, i + paramInt1, paramInt2 + paramInt1);
      }
      return bool;
    }
  }
  
  private final class e
    extends n
  {
    public e(Context paramContext, h paramh, View paramView)
    {
      super(paramh, paramView, true, a.a.actionOverflowMenuStyle);
      this.Rm = 8388613;
      b(d.this.Uw);
    }
    
    protected final void onDismiss()
    {
      if (d.a(d.this) != null) {
        d.b(d.this).close();
      }
      d.this.Us = null;
      super.onDismiss();
    }
  }
  
  private final class f
    implements o.a
  {
    f() {}
    
    public final void a(h paramh, boolean paramBoolean)
    {
      if ((paramh instanceof u)) {
        paramh.fq().I(false);
      }
      o.a locala = d.this.QU;
      if (locala != null) {
        locala.a(paramh, paramBoolean);
      }
    }
    
    public final boolean d(h paramh)
    {
      if (paramh == null) {
        return false;
      }
      d.this.Ux = ((u)paramh).getItem().getItemId();
      o.a locala = d.this.QU;
      if (locala != null) {
        return locala.d(paramh);
      }
      return false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */