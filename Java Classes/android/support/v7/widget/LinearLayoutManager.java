package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.r;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

public class LinearLayoutManager
  extends RecyclerView.i
  implements RecyclerView.t.b
{
  private c aca;
  az acb;
  private boolean acc;
  private boolean acd = false;
  boolean ace = false;
  private boolean acf = false;
  private boolean acg = true;
  int ach = -1;
  int aci = Integer.MIN_VALUE;
  private boolean acj;
  d ack = null;
  final a acm = new a();
  private final b acn = new b();
  private int aco = 2;
  int hE = 1;
  
  public LinearLayoutManager(Context paramContext)
  {
    this(paramContext, 1, false);
  }
  
  public LinearLayoutManager(Context paramContext, int paramInt, boolean paramBoolean)
  {
    setOrientation(paramInt);
    X(paramBoolean);
  }
  
  public LinearLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramContext = a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setOrientation(paramContext.orientation);
    X(paramContext.afp);
    W(paramContext.afq);
  }
  
  private void S(int paramInt1, int paramInt2)
  {
    this.aca.abG = (this.acb.hz() - paramInt2);
    c localc = this.aca;
    if (this.ace) {}
    for (int i = -1;; i = 1)
    {
      localc.abI = i;
      this.aca.abH = paramInt1;
      this.aca.oO = 1;
      this.aca.EK = paramInt2;
      this.aca.acu = Integer.MIN_VALUE;
      return;
    }
  }
  
  private void T(int paramInt1, int paramInt2)
  {
    this.aca.abG = (paramInt2 - this.acb.hy());
    this.aca.abH = paramInt1;
    c localc = this.aca;
    if (this.ace) {}
    for (paramInt1 = 1;; paramInt1 = -1)
    {
      localc.abI = paramInt1;
      this.aca.oO = -1;
      this.aca.EK = paramInt2;
      this.aca.acu = Integer.MIN_VALUE;
      return;
    }
  }
  
  private View U(int paramInt1, int paramInt2)
  {
    hj();
    if (paramInt2 > paramInt1) {
      i = 1;
    }
    while (i == 0)
    {
      return getChildAt(paramInt1);
      if (paramInt2 < paramInt1) {
        i = -1;
      } else {
        i = 0;
      }
    }
    int j;
    if (this.acb.aG(getChildAt(paramInt1)) < this.acb.hy()) {
      j = 16644;
    }
    for (int i = 16388; this.hE == 0; i = 4097)
    {
      return this.afd.h(paramInt1, paramInt2, j, i);
      j = 4161;
    }
    return this.afe.h(paramInt1, paramInt2, j, i);
  }
  
  private void X(boolean paramBoolean)
  {
    F(null);
    if (paramBoolean == this.acd) {
      return;
    }
    this.acd = paramBoolean;
    requestLayout();
  }
  
  private View Y(boolean paramBoolean)
  {
    if (this.ace) {
      return b(getChildCount() - 1, -1, paramBoolean, true);
    }
    return b(0, getChildCount(), paramBoolean, true);
  }
  
  private View Z(boolean paramBoolean)
  {
    if (this.ace) {
      return b(0, getChildCount(), paramBoolean, true);
    }
    return b(getChildCount() - 1, -1, paramBoolean, true);
  }
  
  private int a(int paramInt, RecyclerView.p paramp, RecyclerView.u paramu, boolean paramBoolean)
  {
    int i = this.acb.hz() - paramInt;
    if (i > 0)
    {
      int j = -c(-i, paramp, paramu);
      i = j;
      if (paramBoolean)
      {
        paramInt = this.acb.hz() - (paramInt + j);
        i = j;
        if (paramInt > 0)
        {
          this.acb.bD(paramInt);
          i = j + paramInt;
        }
      }
      return i;
    }
    return 0;
  }
  
  private int a(RecyclerView.p paramp, c paramc, RecyclerView.u paramu, boolean paramBoolean)
  {
    int k = paramc.abG;
    if (paramc.acu != Integer.MIN_VALUE)
    {
      if (paramc.abG < 0) {
        paramc.acu += paramc.abG;
      }
      a(paramp, paramc);
    }
    int i = paramc.abG + paramc.acv;
    b localb = this.acn;
    do
    {
      int j;
      do
      {
        if (((!paramc.abM) && (i <= 0)) || (!paramc.b(paramu))) {
          break;
        }
        localb.acs = 0;
        localb.Pw = false;
        localb.act = false;
        localb.Px = false;
        a(paramp, paramu, paramc, localb);
        if (localb.Pw) {
          break;
        }
        paramc.EK += localb.acs * paramc.oO;
        if ((localb.act) && (this.aca.acy == null))
        {
          j = i;
          if (paramu.afZ) {}
        }
        else
        {
          paramc.abG -= localb.acs;
          j = i - localb.acs;
        }
        if (paramc.acu != Integer.MIN_VALUE)
        {
          paramc.acu += localb.acs;
          if (paramc.abG < 0) {
            paramc.acu += paramc.abG;
          }
          a(paramp, paramc);
        }
        i = j;
      } while (!paramBoolean);
      i = j;
    } while (!localb.Px);
    return k - paramc.abG;
  }
  
  private void a(int paramInt1, int paramInt2, boolean paramBoolean, RecyclerView.u paramu)
  {
    int i = -1;
    int j = 1;
    this.aca.abM = hk();
    this.aca.acv = c(paramu);
    this.aca.oO = paramInt1;
    if (paramInt1 == 1)
    {
      paramu = this.aca;
      paramu.acv += this.acb.getEndPadding();
      paramu = hn();
      localc = this.aca;
      if (this.ace) {}
      for (paramInt1 = i;; paramInt1 = 1)
      {
        localc.abI = paramInt1;
        this.aca.abH = (aT(paramu) + this.aca.abI);
        this.aca.EK = this.acb.aH(paramu);
        paramInt1 = this.acb.aH(paramu) - this.acb.hz();
        this.aca.abG = paramInt2;
        if (paramBoolean)
        {
          paramu = this.aca;
          paramu.abG -= paramInt1;
        }
        this.aca.acu = paramInt1;
        return;
      }
    }
    paramu = hm();
    c localc = this.aca;
    localc.acv += this.acb.hy();
    localc = this.aca;
    if (this.ace) {}
    for (paramInt1 = j;; paramInt1 = -1)
    {
      localc.abI = paramInt1;
      this.aca.abH = (aT(paramu) + this.aca.abI);
      this.aca.EK = this.acb.aG(paramu);
      paramInt1 = -this.acb.aG(paramu) + this.acb.hy();
      break;
    }
  }
  
  private void a(a parama)
  {
    S(parama.mPosition, parama.acp);
  }
  
  private void a(RecyclerView.p paramp, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {}
    for (;;)
    {
      return;
      int i = paramInt1;
      if (paramInt2 > paramInt1)
      {
        paramInt2 -= 1;
        while (paramInt2 >= paramInt1)
        {
          a(paramInt2, paramp);
          paramInt2 -= 1;
        }
      }
      else
      {
        while (i > paramInt2)
        {
          a(i, paramp);
          i -= 1;
        }
      }
    }
  }
  
  private void a(RecyclerView.p paramp, c paramc)
  {
    if ((!paramc.abF) || (paramc.abM)) {}
    for (;;)
    {
      return;
      int i;
      int j;
      int k;
      if (paramc.oO == -1)
      {
        i = paramc.acu;
        j = getChildCount();
        if (i >= 0)
        {
          k = this.acb.getEnd() - i;
          if (this.ace)
          {
            i = 0;
            while (i < j)
            {
              paramc = getChildAt(i);
              if ((this.acb.aG(paramc) < k) || (this.acb.aJ(paramc) < k))
              {
                a(paramp, 0, i);
                return;
              }
              i += 1;
            }
          }
          else
          {
            i = j - 1;
            while (i >= 0)
            {
              paramc = getChildAt(i);
              if ((this.acb.aG(paramc) < k) || (this.acb.aJ(paramc) < k))
              {
                a(paramp, j - 1, i);
                return;
              }
              i -= 1;
            }
          }
        }
      }
      else
      {
        j = paramc.acu;
        if (j >= 0)
        {
          k = getChildCount();
          if (this.ace)
          {
            i = k - 1;
            while (i >= 0)
            {
              paramc = getChildAt(i);
              if ((this.acb.aH(paramc) > j) || (this.acb.aI(paramc) > j))
              {
                a(paramp, k - 1, i);
                return;
              }
              i -= 1;
            }
          }
          else
          {
            i = 0;
            while (i < k)
            {
              paramc = getChildAt(i);
              if ((this.acb.aH(paramc) > j) || (this.acb.aI(paramc) > j))
              {
                a(paramp, 0, i);
                return;
              }
              i += 1;
            }
          }
        }
      }
    }
  }
  
  private int b(int paramInt, RecyclerView.p paramp, RecyclerView.u paramu, boolean paramBoolean)
  {
    int i = paramInt - this.acb.hy();
    if (i > 0)
    {
      int j = -c(i, paramp, paramu);
      i = j;
      if (paramBoolean)
      {
        paramInt = paramInt + j - this.acb.hy();
        i = j;
        if (paramInt > 0)
        {
          this.acb.bD(-paramInt);
          i = j - paramInt;
        }
      }
      return i;
    }
    return 0;
  }
  
  private void b(a parama)
  {
    T(parama.mPosition, parama.acp);
  }
  
  private int c(int paramInt, RecyclerView.p paramp, RecyclerView.u paramu)
  {
    if ((getChildCount() == 0) || (paramInt == 0)) {
      return 0;
    }
    this.aca.abF = true;
    hj();
    if (paramInt > 0) {}
    int j;
    int k;
    for (int i = 1;; i = -1)
    {
      j = Math.abs(paramInt);
      a(i, j, true, paramu);
      k = this.aca.acu + a(paramp, this.aca, paramu, false);
      if (k >= 0) {
        break;
      }
      return 0;
    }
    if (j > k) {
      paramInt = i * k;
    }
    this.acb.bD(-paramInt);
    this.aca.acx = paramInt;
    return paramInt;
  }
  
  private int c(RecyclerView.u paramu)
  {
    int j = 0;
    if (paramu.afJ != -1) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        j = this.acb.hA();
      }
      return j;
    }
  }
  
  private View d(RecyclerView.p paramp, RecyclerView.u paramu)
  {
    return a(paramp, paramu, getChildCount() - 1, -1, paramu.getItemCount());
  }
  
  private void hi()
  {
    boolean bool = true;
    if ((this.hE == 1) || (!gF())) {
      bool = this.acd;
    }
    for (;;)
    {
      this.ace = bool;
      return;
      if (this.acd) {
        bool = false;
      }
    }
  }
  
  private boolean hk()
  {
    return (this.acb.getMode() == 0) && (this.acb.getEnd() == 0);
  }
  
  private View hm()
  {
    if (this.ace) {}
    for (int i = getChildCount() - 1;; i = 0) {
      return getChildAt(i);
    }
  }
  
  private View hn()
  {
    if (this.ace) {}
    for (int i = 0;; i = getChildCount() - 1) {
      return getChildAt(i);
    }
  }
  
  private View ho()
  {
    return U(0, getChildCount());
  }
  
  private View hp()
  {
    return U(getChildCount() - 1, -1);
  }
  
  private int j(RecyclerView.u paramu)
  {
    boolean bool2 = true;
    if (getChildCount() == 0) {
      return 0;
    }
    hj();
    az localaz = this.acb;
    View localView;
    if (!this.acg)
    {
      bool1 = true;
      localView = Y(bool1);
      if (this.acg) {
        break label74;
      }
    }
    label74:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      return bg.a(paramu, localaz, localView, Z(bool1), this, this.acg, this.ace);
      bool1 = false;
      break;
    }
  }
  
  private int k(RecyclerView.u paramu)
  {
    boolean bool2 = true;
    if (getChildCount() == 0) {
      return 0;
    }
    hj();
    az localaz = this.acb;
    View localView;
    if (!this.acg)
    {
      bool1 = true;
      localView = Y(bool1);
      if (this.acg) {
        break label70;
      }
    }
    label70:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      return bg.a(paramu, localaz, localView, Z(bool1), this, this.acg);
      bool1 = false;
      break;
    }
  }
  
  private int l(RecyclerView.u paramu)
  {
    boolean bool2 = true;
    if (getChildCount() == 0) {
      return 0;
    }
    hj();
    az localaz = this.acb;
    View localView;
    if (!this.acg)
    {
      bool1 = true;
      localView = Y(bool1);
      if (this.acg) {
        break label70;
      }
    }
    label70:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      return bg.b(paramu, localaz, localView, Z(bool1), this, this.acg);
      bool1 = false;
      break;
    }
  }
  
  private void setOrientation(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      throw new IllegalArgumentException("invalid orientation:" + paramInt);
    }
    F(null);
    if ((paramInt != this.hE) || (this.acb == null))
    {
      this.acb = az.a(this, paramInt);
      this.acm.acb = this.acb;
      this.hE = paramInt;
      requestLayout();
    }
  }
  
  public final void F(String paramString)
  {
    if (this.ack == null) {
      super.F(paramString);
    }
  }
  
  public void W(boolean paramBoolean)
  {
    F(null);
    if (this.acf == paramBoolean) {
      return;
    }
    this.acf = paramBoolean;
    requestLayout();
  }
  
  public int a(int paramInt, RecyclerView.p paramp, RecyclerView.u paramu)
  {
    if (this.hE == 1) {
      return 0;
    }
    return c(paramInt, paramp, paramu);
  }
  
  View a(RecyclerView.p paramp, RecyclerView.u paramu, int paramInt1, int paramInt2, int paramInt3)
  {
    hj();
    int j = this.acb.hy();
    int k = this.acb.hz();
    int i;
    RecyclerView.u localu;
    if (paramInt2 > paramInt1)
    {
      i = 1;
      paramp = null;
      localu = null;
      label36:
      if (paramInt1 == paramInt2) {
        break label142;
      }
      paramu = getChildAt(paramInt1);
      int m = aT(paramu);
      if ((m < 0) || (m >= paramInt3)) {
        break label155;
      }
      if (!((RecyclerView.j)paramu.getLayoutParams()).afr.isRemoved()) {
        break label104;
      }
      if (localu != null) {
        break label155;
      }
      localu = paramu;
    }
    label104:
    label142:
    label152:
    label155:
    for (;;)
    {
      paramInt1 += i;
      break label36;
      i = -1;
      break;
      Object localObject;
      if (this.acb.aG(paramu) < k)
      {
        localObject = paramu;
        if (this.acb.aH(paramu) >= j) {}
      }
      else
      {
        if (paramp != null) {
          break label155;
        }
        paramp = paramu;
        continue;
        if (paramp == null) {
          break label152;
        }
        localObject = paramp;
      }
      return (View)localObject;
      return localu;
    }
  }
  
  public View a(View paramView, int paramInt, RecyclerView.p paramp, RecyclerView.u paramu)
  {
    hi();
    if (getChildCount() == 0)
    {
      paramView = null;
      return paramView;
    }
    paramInt = bB(paramInt);
    if (paramInt == Integer.MIN_VALUE) {
      return null;
    }
    hj();
    hj();
    a(paramInt, (int)(0.33333334F * this.acb.hA()), false, paramu);
    this.aca.acu = Integer.MIN_VALUE;
    this.aca.abF = false;
    a(paramp, this.aca, paramu, true);
    if (paramInt == -1) {
      if (this.ace)
      {
        paramView = hp();
        label105:
        paramp = paramView;
        if (paramInt != -1) {
          break label163;
        }
      }
    }
    label163:
    for (paramView = hm();; paramView = hn())
    {
      if (!paramView.hasFocusable()) {
        return paramp;
      }
      if (paramp != null) {
        break;
      }
      return null;
      paramView = ho();
      break label105;
      if (this.ace) {}
      for (paramView = ho();; paramView = hp())
      {
        paramp = paramView;
        break;
      }
    }
    return paramp;
  }
  
  public final void a(int paramInt1, int paramInt2, RecyclerView.u paramu, RecyclerView.i.a parama)
  {
    if (this.hE == 0) {}
    while ((getChildCount() == 0) || (paramInt1 == 0))
    {
      return;
      paramInt1 = paramInt2;
    }
    hj();
    if (paramInt1 > 0) {}
    for (paramInt2 = 1;; paramInt2 = -1)
    {
      a(paramInt2, Math.abs(paramInt1), true, paramu);
      a(paramu, this.aca, parama);
      return;
    }
  }
  
  public final void a(int paramInt, RecyclerView.i.a parama)
  {
    boolean bool;
    int i;
    if ((this.ack != null) && (this.ack.hu()))
    {
      bool = this.ack.acB;
      i = this.ack.acz;
      if (!bool) {
        break label136;
      }
    }
    label136:
    for (int j = -1;; j = 1)
    {
      int m = 0;
      int k = i;
      i = m;
      while ((i < this.aco) && (k >= 0) && (k < paramInt))
      {
        parama.C(k, 0);
        k += j;
        i += 1;
      }
      hi();
      bool = this.ace;
      if (this.ach == -1)
      {
        if (bool) {}
        for (i = paramInt - 1;; i = 0) {
          break;
        }
      }
      i = this.ach;
      break;
    }
  }
  
  void a(RecyclerView.p paramp, RecyclerView.u paramu, a parama, int paramInt) {}
  
  void a(RecyclerView.p paramp, RecyclerView.u paramu, c paramc, b paramb)
  {
    paramp = paramc.a(paramp);
    if (paramp == null)
    {
      paramb.Pw = true;
      return;
    }
    paramu = (RecyclerView.j)paramp.getLayoutParams();
    boolean bool2;
    boolean bool1;
    label63:
    int k;
    int m;
    int i;
    int j;
    label286:
    int n;
    if (paramc.acy == null)
    {
      bool2 = this.ace;
      if (paramc.oO == -1)
      {
        bool1 = true;
        if (bool2 != bool1) {
          break label374;
        }
        super.c(paramp, -1, false);
        RecyclerView.j localj = (RecyclerView.j)paramp.getLayoutParams();
        Rect localRect = this.YZ.aQ(paramp);
        k = localRect.left;
        m = localRect.right;
        i = localRect.top;
        j = localRect.bottom;
        k = RecyclerView.i.b(this.db, this.afm, k + m + 0 + (getPaddingLeft() + getPaddingRight() + localj.leftMargin + localj.rightMargin), localj.width, hg());
        i = RecyclerView.i.b(this.dc, this.afn, j + i + 0 + (getPaddingTop() + getPaddingBottom() + localj.topMargin + localj.bottomMargin), localj.height, hh());
        if (a(paramp, k, i, localj)) {
          paramp.measure(k, i);
        }
        paramb.acs = this.acb.aK(paramp);
        if (this.hE != 1) {
          break label485;
        }
        if (!gF()) {
          break label434;
        }
        j = this.db - getPaddingRight();
        i = j - this.acb.aL(paramp);
        if (paramc.oO != -1) {
          break label456;
        }
        n = paramc.EK;
        m = paramc.EK - paramb.acs;
        k = i;
        i = n;
      }
    }
    for (;;)
    {
      h(paramp, k, m, j, i);
      if ((paramu.afr.isRemoved()) || (paramu.afr.isUpdated())) {
        paramb.act = true;
      }
      paramb.Px = paramp.hasFocusable();
      return;
      bool1 = false;
      break;
      label374:
      super.c(paramp, 0, false);
      break label63;
      bool2 = this.ace;
      if (paramc.oO == -1) {}
      for (bool1 = true;; bool1 = false)
      {
        if (bool2 != bool1) {
          break label424;
        }
        super.c(paramp, -1, true);
        break;
      }
      label424:
      super.c(paramp, 0, true);
      break label63;
      label434:
      i = getPaddingLeft();
      j = this.acb.aL(paramp) + i;
      break label286;
      label456:
      m = paramc.EK;
      n = paramc.EK + paramb.acs;
      k = i;
      i = n;
      continue;
      label485:
      m = getPaddingTop();
      i = this.acb.aL(paramp) + m;
      if (paramc.oO == -1)
      {
        j = paramc.EK;
        k = paramc.EK - paramb.acs;
      }
      else
      {
        k = paramc.EK;
        j = paramc.EK;
        n = paramb.acs;
        j += n;
      }
    }
  }
  
  public void a(RecyclerView.u paramu)
  {
    super.a(paramu);
    this.ack = null;
    this.ach = -1;
    this.aci = Integer.MIN_VALUE;
    this.acm.reset();
  }
  
  void a(RecyclerView.u paramu, c paramc, RecyclerView.i.a parama)
  {
    int i = paramc.abH;
    if ((i >= 0) && (i < paramu.getItemCount())) {
      parama.C(i, Math.max(0, paramc.acu));
    }
  }
  
  public final void a(RecyclerView paramRecyclerView, int paramInt)
  {
    paramRecyclerView = new au(paramRecyclerView.getContext());
    paramRecyclerView.afJ = paramInt;
    a(paramRecyclerView);
  }
  
  public final void a(RecyclerView paramRecyclerView, RecyclerView.p paramp)
  {
    super.a(paramRecyclerView, paramp);
    if (this.acj)
    {
      d(paramp);
      paramp.clear();
    }
  }
  
  public int b(int paramInt, RecyclerView.p paramp, RecyclerView.u paramu)
  {
    if (this.hE == 0) {
      return 0;
    }
    return c(paramInt, paramp, paramu);
  }
  
  public final View b(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    int j = 320;
    hj();
    int i;
    if (paramBoolean1)
    {
      i = 24579;
      if (!paramBoolean2) {
        break label66;
      }
    }
    for (;;)
    {
      if (this.hE == 0)
      {
        return this.afd.h(paramInt1, paramInt2, i, j);
        i = 320;
        break;
      }
      return this.afe.h(paramInt1, paramInt2, i, j);
      label66:
      j = 0;
    }
  }
  
  public final void bA(int paramInt)
  {
    this.ach = paramInt;
    this.aci = Integer.MIN_VALUE;
    if (this.ack != null) {
      this.ack.acz = -1;
    }
    requestLayout();
  }
  
  final int bB(int paramInt)
  {
    int i = -1;
    switch (paramInt)
    {
    default: 
      paramInt = Integer.MIN_VALUE;
    case 1: 
    case 2: 
    case 33: 
    case 130: 
    case 17: 
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return paramInt;
                paramInt = i;
              } while (this.hE == 1);
              paramInt = i;
            } while (!gF());
            return 1;
            if (this.hE == 1) {
              return 1;
            }
            paramInt = i;
          } while (gF());
          return 1;
          paramInt = i;
        } while (this.hE == 1);
        return Integer.MIN_VALUE;
        if (this.hE == 1) {
          return 1;
        }
        return Integer.MIN_VALUE;
        paramInt = i;
      } while (this.hE == 0);
      return Integer.MIN_VALUE;
    }
    if (this.hE == 0) {
      return 1;
    }
    return Integer.MIN_VALUE;
  }
  
  public final View by(int paramInt)
  {
    int i = getChildCount();
    Object localObject;
    if (i == 0) {
      localObject = null;
    }
    View localView;
    do
    {
      return (View)localObject;
      int j = paramInt - aT(getChildAt(0));
      if ((j < 0) || (j >= i)) {
        break;
      }
      localView = getChildAt(j);
      localObject = localView;
    } while (aT(localView) == paramInt);
    return super.by(paramInt);
  }
  
  public final PointF bz(int paramInt)
  {
    int i = 1;
    int j = 0;
    if (getChildCount() == 0) {
      return null;
    }
    if (paramInt < aT(getChildAt(0))) {
      j = 1;
    }
    paramInt = i;
    if (j != this.ace) {
      paramInt = -1;
    }
    if (this.hE == 0) {
      return new PointF(paramInt, 0.0F);
    }
    return new PointF(0.0F, paramInt);
  }
  
  public void c(RecyclerView.p paramp, RecyclerView.u paramu)
  {
    if (((this.ack != null) || (this.ach != -1)) && (paramu.getItemCount() == 0))
    {
      d(paramp);
      return;
    }
    if ((this.ack != null) && (this.ack.hu())) {
      this.ach = this.ack.acz;
    }
    hj();
    this.aca.abF = false;
    hi();
    Object localObject1 = getFocusedChild();
    Object localObject2;
    label220:
    label238:
    label261:
    label275:
    int j;
    label294:
    int m;
    int n;
    int k;
    if ((!this.acm.acr) || (this.ach != -1) || (this.ack != null))
    {
      this.acm.reset();
      this.acm.acq = (this.ace ^ this.acf);
      localObject2 = this.acm;
      if ((paramu.afZ) || (this.ach == -1))
      {
        i = 0;
        if (i == 0)
        {
          if (getChildCount() == 0) {
            break label1452;
          }
          localObject1 = getFocusedChild();
          if (localObject1 == null) {
            break label1262;
          }
          RecyclerView.j localj = (RecyclerView.j)((View)localObject1).getLayoutParams();
          if ((localj.afr.isRemoved()) || (localj.afr.getLayoutPosition() < 0) || (localj.afr.getLayoutPosition() >= paramu.getItemCount())) {
            break label1257;
          }
          i = 1;
          if (i == 0) {
            break label1262;
          }
          ((a)localObject2).s((View)localObject1, aT((View)localObject1));
          i = 1;
          if (i == 0)
          {
            ((a)localObject2).ht();
            if (!this.acf) {
              break label1457;
            }
            i = paramu.getItemCount() - 1;
            ((a)localObject2).mPosition = i;
          }
        }
        this.acm.acr = true;
        i = c(paramu);
        if (this.aca.acx < 0) {
          break label1522;
        }
        j = 0;
        m = this.acb.hy() + j;
        n = i + this.acb.getEndPadding();
        j = n;
        k = m;
        if (paramu.afZ)
        {
          j = n;
          k = m;
          if (this.ach != -1)
          {
            j = n;
            k = m;
            if (this.aci != Integer.MIN_VALUE)
            {
              localObject1 = by(this.ach);
              j = n;
              k = m;
              if (localObject1 != null)
              {
                if (!this.ace) {
                  break label1534;
                }
                i = this.acb.hz() - this.acb.aH((View)localObject1) - this.aci;
                label418:
                if (i <= 0) {
                  break label1566;
                }
                k = m + i;
                j = n;
              }
            }
          }
        }
        label432:
        if (!this.acm.acq) {
          break label1584;
        }
        if (!this.ace) {
          break label1579;
        }
        i = 1;
        label451:
        a(paramp, paramu, this.acm, i);
        b(paramp);
        this.aca.abM = hk();
        this.aca.acw = paramu.afZ;
        if (!this.acm.acq) {
          break label1601;
        }
        b(this.acm);
        this.aca.acv = k;
        a(paramp, this.aca, paramu, false);
        k = this.aca.EK;
        m = this.aca.abH;
        i = j;
        if (this.aca.abG > 0) {
          i = j + this.aca.abG;
        }
        a(this.acm);
        this.aca.acv = i;
        localObject1 = this.aca;
        ((c)localObject1).abH += this.aca.abI;
        a(paramp, this.aca, paramu, false);
        j = this.aca.EK;
        if (this.aca.abG <= 0) {
          break label2184;
        }
        i = this.aca.abG;
        T(m, k);
        this.aca.acv = i;
        a(paramp, this.aca, paramu, false);
      }
    }
    label695:
    label813:
    label1162:
    label1189:
    label1195:
    label1257:
    label1262:
    label1296:
    label1367:
    label1416:
    label1436:
    label1441:
    label1452:
    label1457:
    label1522:
    label1534:
    label1566:
    label1579:
    label1584:
    label1601:
    label1798:
    label1843:
    label1876:
    label1918:
    label1930:
    label1988:
    label1994:
    label2148:
    label2158:
    label2171:
    label2184:
    for (int i = this.aca.EK;; i = k)
    {
      k = j;
      j = i;
      i = k;
      for (;;)
      {
        k = i;
        m = j;
        if (getChildCount() > 0)
        {
          if (!(this.ace ^ this.acf)) {
            break label1798;
          }
          k = a(i, paramp, paramu, true);
          m = j + k;
          j = b(m, paramp, paramu, false);
          m += j;
        }
        boolean bool;
        for (k = j + (k + i);; k = n + i)
        {
          if ((paramu.agd) && (getChildCount() != 0) && (!paramu.afZ) && (he())) {
            break label1843;
          }
          if (paramu.afZ) {
            break label2148;
          }
          paramp = this.acb;
          paramp.ads = paramp.hA();
          this.acc = this.acf;
          return;
          if ((this.ach < 0) || (this.ach >= paramu.getItemCount()))
          {
            this.ach = -1;
            this.aci = Integer.MIN_VALUE;
            i = 0;
            break;
          }
          ((a)localObject2).mPosition = this.ach;
          if ((this.ack != null) && (this.ack.hu()))
          {
            ((a)localObject2).acq = this.ack.acB;
            if (((a)localObject2).acq) {}
            for (((a)localObject2).acp = (this.acb.hz() - this.ack.acA);; ((a)localObject2).acp = (this.acb.hy() + this.ack.acA))
            {
              i = 1;
              break;
            }
          }
          if (this.aci == Integer.MIN_VALUE)
          {
            localObject1 = by(this.ach);
            if (localObject1 != null) {
              if (this.acb.aK((View)localObject1) > this.acb.hA()) {
                ((a)localObject2).ht();
              }
            }
          }
          for (;;)
          {
            i = 1;
            break;
            if (this.acb.aG((View)localObject1) - this.acb.hy() < 0)
            {
              ((a)localObject2).acp = this.acb.hy();
              ((a)localObject2).acq = false;
            }
            else if (this.acb.hz() - this.acb.aH((View)localObject1) < 0)
            {
              ((a)localObject2).acp = this.acb.hz();
              ((a)localObject2).acq = true;
            }
            else
            {
              if (((a)localObject2).acq) {}
              for (i = this.acb.aH((View)localObject1) + this.acb.hx();; i = this.acb.aG((View)localObject1))
              {
                ((a)localObject2).acp = i;
                i = 1;
                break;
              }
              if (getChildCount() > 0)
              {
                i = aT(getChildAt(0));
                if (this.ach >= i) {
                  break label1189;
                }
                bool = true;
                if (bool != this.ace) {
                  break label1195;
                }
              }
              for (bool = true;; bool = false)
              {
                ((a)localObject2).acq = bool;
                ((a)localObject2).ht();
                break;
                bool = false;
                break label1162;
              }
              ((a)localObject2).acq = this.ace;
              if (this.ace) {
                ((a)localObject2).acp = (this.acb.hz() - this.aci);
              } else {
                ((a)localObject2).acp = (this.acb.hy() + this.aci);
              }
            }
          }
          i = 0;
          break label220;
          if (this.acc == this.acf)
          {
            if (((a)localObject2).acq)
            {
              if (this.ace) {
                break label1416;
              }
              localObject1 = d(paramp, paramu);
              if (localObject1 == null) {
                break label1452;
              }
              ((a)localObject2).t((View)localObject1, aT((View)localObject1));
              if ((!paramu.afZ) && (he()))
              {
                if ((this.acb.aG((View)localObject1) < this.acb.hz()) && (this.acb.aH((View)localObject1) >= this.acb.hy())) {
                  break label1436;
                }
                i = 1;
                if (i != 0) {
                  if (!((a)localObject2).acq) {
                    break label1441;
                  }
                }
              }
            }
            for (i = this.acb.hz();; i = this.acb.hy())
            {
              ((a)localObject2).acp = i;
              i = 1;
              break;
              if (this.ace)
              {
                localObject1 = d(paramp, paramu);
                break label1296;
              }
              localObject1 = a(paramp, paramu, 0, getChildCount(), paramu.getItemCount());
              break label1296;
              i = 0;
              break label1367;
            }
          }
          i = 0;
          break label238;
          i = 0;
          break label261;
          if ((localObject1 == null) || ((this.acb.aG((View)localObject1) < this.acb.hz()) && (this.acb.aH((View)localObject1) > this.acb.hy()))) {
            break label275;
          }
          this.acm.s((View)localObject1, aT((View)localObject1));
          break label275;
          k = 0;
          j = i;
          i = k;
          break label294;
          i = this.acb.aG((View)localObject1);
          j = this.acb.hy();
          i = this.aci - (i - j);
          break label418;
          j = n - i;
          k = m;
          break label432;
          i = -1;
          break label451;
          if (this.ace)
          {
            i = -1;
            break label451;
          }
          i = 1;
          break label451;
          a(this.acm);
          this.aca.acv = j;
          a(paramp, this.aca, paramu, false);
          j = this.aca.EK;
          m = this.aca.abH;
          i = k;
          if (this.aca.abG > 0) {
            i = k + this.aca.abG;
          }
          b(this.acm);
          this.aca.acv = i;
          localObject1 = this.aca;
          ((c)localObject1).abH += this.aca.abI;
          a(paramp, this.aca, paramu, false);
          i = this.aca.EK;
          if (this.aca.abG <= 0) {
            break label2171;
          }
          k = this.aca.abG;
          S(m, j);
          this.aca.acv = k;
          a(paramp, this.aca, paramu, false);
          k = this.aca.EK;
          j = i;
          i = k;
          break label695;
          k = b(j, paramp, paramu, true);
          i = k + i;
          n = a(i, paramp, paramu, false);
          m = j + k + n;
        }
        i = 0;
        j = 0;
        localObject1 = paramp.afD;
        int i2 = ((List)localObject1).size();
        int i3 = aT(getChildAt(0));
        n = 0;
        int i1;
        if (n < i2)
        {
          localObject2 = (RecyclerView.x)((List)localObject1).get(n);
          if (((RecyclerView.x)localObject2).isRemoved()) {
            break label2158;
          }
          if (((RecyclerView.x)localObject2).getLayoutPosition() < i3)
          {
            bool = true;
            if (bool == this.ace) {
              break label1988;
            }
            i1 = -1;
            if (i1 != -1) {
              break label1994;
            }
            i1 = i + this.acb.aK(((RecyclerView.x)localObject2).itemView);
            i = j;
            j = i1;
          }
        }
        for (;;)
        {
          i1 = n + 1;
          n = j;
          j = i;
          i = n;
          n = i1;
          break label1876;
          bool = false;
          break label1918;
          i1 = 1;
          break label1930;
          i1 = this.acb.aK(((RecyclerView.x)localObject2).itemView) + j;
          j = i;
          i = i1;
          continue;
          this.aca.acy = ((List)localObject1);
          if (i > 0)
          {
            T(aT(hm()), m);
            this.aca.acv = i;
            this.aca.abG = 0;
            this.aca.aF(null);
            a(paramp, this.aca, paramu, false);
          }
          if (j > 0)
          {
            S(aT(hn()), k);
            this.aca.acv = j;
            this.aca.abG = 0;
            this.aca.aF(null);
            a(paramp, this.aca, paramu, false);
          }
          this.aca.acy = null;
          break;
          this.acm.reset();
          break label813;
          i1 = i;
          i = j;
          j = i1;
        }
        k = i;
        i = j;
        j = k;
      }
    }
  }
  
  public final int d(RecyclerView.u paramu)
  {
    return j(paramu);
  }
  
  public final int e(RecyclerView.u paramu)
  {
    return j(paramu);
  }
  
  public final int f(RecyclerView.u paramu)
  {
    return k(paramu);
  }
  
  public final int g(RecyclerView.u paramu)
  {
    return k(paramu);
  }
  
  protected final boolean gF()
  {
    return r.K(this.YZ) == 1;
  }
  
  public final int h(RecyclerView.u paramu)
  {
    return l(paramu);
  }
  
  public RecyclerView.j hb()
  {
    return new RecyclerView.j(-2, -2);
  }
  
  public boolean he()
  {
    return (this.ack == null) && (this.acc == this.acf);
  }
  
  public final boolean hf()
  {
    return true;
  }
  
  public final boolean hg()
  {
    return this.hE == 0;
  }
  
  public final boolean hh()
  {
    return this.hE == 1;
  }
  
  final void hj()
  {
    if (this.aca == null) {
      this.aca = new c();
    }
  }
  
  final boolean hl()
  {
    if ((this.afn != 1073741824) && (this.afm != 1073741824))
    {
      int j = getChildCount();
      int i = 0;
      if (i < j)
      {
        ViewGroup.LayoutParams localLayoutParams = getChildAt(i).getLayoutParams();
        if ((localLayoutParams.width >= 0) || (localLayoutParams.height >= 0)) {}
      }
      for (i = 1;; i = 0)
      {
        if (i == 0) {
          break label75;
        }
        return true;
        i += 1;
        break;
      }
    }
    label75:
    return false;
  }
  
  public final int hq()
  {
    View localView = b(0, getChildCount(), false, true);
    if (localView == null) {
      return -1;
    }
    return aT(localView);
  }
  
  public final int hr()
  {
    View localView = b(0, getChildCount(), true, false);
    if (localView == null) {
      return -1;
    }
    return aT(localView);
  }
  
  public final int hs()
  {
    View localView = b(getChildCount() - 1, -1, false, true);
    if (localView == null) {
      return -1;
    }
    return aT(localView);
  }
  
  public final int i(RecyclerView.u paramu)
  {
    return l(paramu);
  }
  
  public final void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    if (getChildCount() > 0)
    {
      paramAccessibilityEvent.setFromIndex(hq());
      paramAccessibilityEvent.setToIndex(hs());
    }
  }
  
  public final void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof d))
    {
      this.ack = ((d)paramParcelable);
      requestLayout();
    }
  }
  
  public final Parcelable onSaveInstanceState()
  {
    if (this.ack != null) {
      return new d(this.ack);
    }
    d locald = new d();
    if (getChildCount() > 0)
    {
      hj();
      boolean bool = this.acc ^ this.ace;
      locald.acB = bool;
      if (bool)
      {
        localView = hn();
        locald.acA = (this.acb.hz() - this.acb.aH(localView));
        locald.acz = aT(localView);
        return locald;
      }
      View localView = hm();
      locald.acz = aT(localView);
      locald.acA = (this.acb.aG(localView) - this.acb.hy());
      return locald;
    }
    locald.acz = -1;
    return locald;
  }
  
  static final class a
  {
    az acb;
    int acp;
    boolean acq;
    boolean acr;
    int mPosition;
    
    a()
    {
      reset();
    }
    
    final void ht()
    {
      if (this.acq) {}
      for (int i = this.acb.hz();; i = this.acb.hy())
      {
        this.acp = i;
        return;
      }
    }
    
    final void reset()
    {
      this.mPosition = -1;
      this.acp = Integer.MIN_VALUE;
      this.acq = false;
      this.acr = false;
    }
    
    public final void s(View paramView, int paramInt)
    {
      int i = this.acb.hx();
      if (i >= 0) {
        t(paramView, paramInt);
      }
      do
      {
        int j;
        do
        {
          do
          {
            do
            {
              return;
              this.mPosition = paramInt;
              if (!this.acq) {
                break;
              }
              paramInt = this.acb.hz() - i - this.acb.aH(paramView);
              this.acp = (this.acb.hz() - paramInt);
            } while (paramInt <= 0);
            i = this.acb.aK(paramView);
            j = this.acp;
            k = this.acb.hy();
            i = j - i - (k + Math.min(this.acb.aG(paramView) - k, 0));
          } while (i >= 0);
          j = this.acp;
          this.acp = (Math.min(paramInt, -i) + j);
          return;
          j = this.acb.aG(paramView);
          paramInt = j - this.acb.hy();
          this.acp = j;
        } while (paramInt <= 0);
        int k = this.acb.aK(paramView);
        int m = this.acb.hz();
        int n = this.acb.aH(paramView);
        i = this.acb.hz() - Math.min(0, m - i - n) - (j + k);
      } while (i >= 0);
      this.acp -= Math.min(paramInt, -i);
    }
    
    public final void t(View paramView, int paramInt)
    {
      if (this.acq) {}
      for (this.acp = (this.acb.aH(paramView) + this.acb.hx());; this.acp = this.acb.aG(paramView))
      {
        this.mPosition = paramInt;
        return;
      }
    }
    
    public final String toString()
    {
      return "AnchorInfo{mPosition=" + this.mPosition + ", mCoordinate=" + this.acp + ", mLayoutFromEnd=" + this.acq + ", mValid=" + this.acr + '}';
    }
  }
  
  protected static final class b
  {
    public boolean Pw;
    public boolean Px;
    public int acs;
    public boolean act;
  }
  
  static final class c
  {
    int EK;
    boolean abF = true;
    int abG;
    int abH;
    int abI;
    boolean abM;
    int acu;
    int acv = 0;
    boolean acw = false;
    int acx;
    List<RecyclerView.x> acy = null;
    int oO;
    
    final View a(RecyclerView.p paramp)
    {
      if (this.acy != null)
      {
        int j = this.acy.size();
        int i = 0;
        while (i < j)
        {
          paramp = ((RecyclerView.x)this.acy.get(i)).itemView;
          RecyclerView.j localj = (RecyclerView.j)paramp.getLayoutParams();
          if ((!localj.afr.isRemoved()) && (this.abH == localj.afr.getLayoutPosition()))
          {
            aF(paramp);
            return paramp;
          }
          i += 1;
        }
        return null;
      }
      paramp = paramp.bM(this.abH);
      this.abH += this.abI;
      return paramp;
    }
    
    public final void aF(View paramView)
    {
      int m = this.acy.size();
      Object localObject = null;
      int i = Integer.MAX_VALUE;
      int j = 0;
      if (j < m)
      {
        View localView = ((RecyclerView.x)this.acy.get(j)).itemView;
        RecyclerView.j localj = (RecyclerView.j)localView.getLayoutParams();
        if ((localView == paramView) || (localj.afr.isRemoved())) {
          break label154;
        }
        int k = (localj.afr.getLayoutPosition() - this.abH) * this.abI;
        if ((k < 0) || (k >= i)) {
          break label154;
        }
        localObject = localView;
        if (k != 0)
        {
          localObject = localView;
          i = k;
        }
      }
      label154:
      for (;;)
      {
        j += 1;
        break;
        if (localObject == null)
        {
          this.abH = -1;
          return;
        }
        this.abH = ((RecyclerView.j)((View)localObject).getLayoutParams()).afr.getLayoutPosition();
        return;
      }
    }
    
    final boolean b(RecyclerView.u paramu)
    {
      return (this.abH >= 0) && (this.abH < paramu.getItemCount());
    }
  }
  
  public static final class d
    implements Parcelable
  {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator() {};
    int acA;
    boolean acB;
    int acz;
    
    public d() {}
    
    d(Parcel paramParcel)
    {
      this.acz = paramParcel.readInt();
      this.acA = paramParcel.readInt();
      if (paramParcel.readInt() == 1) {}
      for (;;)
      {
        this.acB = bool;
        return;
        bool = false;
      }
    }
    
    public d(d paramd)
    {
      this.acz = paramd.acz;
      this.acA = paramd.acA;
      this.acB = paramd.acB;
    }
    
    public final int describeContents()
    {
      return 0;
    }
    
    final boolean hu()
    {
      return this.acz >= 0;
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.acz);
      paramParcel.writeInt(this.acA);
      if (this.acB) {}
      for (paramInt = 1;; paramInt = 0)
      {
        paramParcel.writeInt(paramInt);
        return;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/LinearLayoutManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */