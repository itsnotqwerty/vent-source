package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.a.a;
import android.support.v4.view.a.a.b;
import android.support.v4.view.r;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

public class StaggeredGridLayoutManager
  extends RecyclerView.i
  implements RecyclerView.t.b
{
  private int abu = -1;
  boolean acd = false;
  boolean ace = false;
  private boolean acg = true;
  int ach = -1;
  int aci = Integer.MIN_VALUE;
  e[] aid;
  az aie;
  az aif;
  private int aig;
  private final as aih;
  private BitSet aii;
  c aij = new c();
  private int aik = 2;
  private boolean ail;
  private boolean aim;
  private d ain;
  private int aio;
  private final a aip = new a();
  private boolean aiq = false;
  private int[] air;
  private final Runnable ais = new Runnable()
  {
    public final void run()
    {
      StaggeredGridLayoutManager.this.iJ();
    }
  };
  private int hE;
  private final Rect lg = new Rect();
  
  public StaggeredGridLayoutManager(int paramInt1, int paramInt2)
  {
    this.hE = paramInt2;
    bw(paramInt1);
    this.aih = new as();
    iI();
  }
  
  public StaggeredGridLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramContext = a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramInt1 = paramContext.orientation;
    if ((paramInt1 != 0) && (paramInt1 != 1)) {
      throw new IllegalArgumentException("invalid orientation.");
    }
    F(null);
    if (paramInt1 != this.hE)
    {
      this.hE = paramInt1;
      paramAttributeSet = this.aie;
      this.aie = this.aif;
      this.aif = paramAttributeSet;
      requestLayout();
    }
    bw(paramContext.spanCount);
    X(paramContext.afp);
    this.aih = new as();
    iI();
  }
  
  private void X(boolean paramBoolean)
  {
    F(null);
    if ((this.ain != null) && (this.ain.acd != paramBoolean)) {
      this.ain.acd = paramBoolean;
    }
    this.acd = paramBoolean;
    requestLayout();
  }
  
  private int a(RecyclerView.p paramp, as paramas, RecyclerView.u paramu)
  {
    this.aii.set(0, this.abu, true);
    int i;
    int n;
    label61:
    int j;
    View localView;
    b localb;
    int i4;
    label163:
    int i1;
    if (this.aih.abM) {
      if (paramas.oO == 1)
      {
        i = Integer.MAX_VALUE;
        ak(paramas.oO, i);
        if (!this.ace) {
          break label452;
        }
        n = this.aie.hz();
        j = 0;
        if ((!paramas.b(paramu)) || ((!this.aih.abM) && (this.aii.isEmpty()))) {
          break label1661;
        }
        localView = paramp.bM(paramas.abH);
        paramas.abH += paramas.abI;
        localb = (b)localView.getLayoutParams();
        i4 = localb.afr.getLayoutPosition();
        localObject1 = this.aij;
        if ((((c)localObject1).mData != null) && (i4 < ((c)localObject1).mData.length)) {
          break label464;
        }
        j = -1;
        if (j != -1) {
          break label477;
        }
        i1 = 1;
        label172:
        if (i1 == 0) {
          break label687;
        }
        if (!localb.aix) {
          break label483;
        }
        localObject1 = this.aid[0];
      }
    }
    label193:
    Object localObject2;
    label219:
    label242:
    label294:
    label318:
    int k;
    int m;
    label452:
    label464:
    label477:
    label483:
    label508:
    int i5;
    int i2;
    label540:
    do
    {
      localObject2 = this.aij;
      ((c)localObject2).ca(i4);
      ((c)localObject2).mData[i4] = ((e)localObject1).mIndex;
      localb.aiw = ((e)localObject1);
      if (paramas.oO != 1) {
        break label699;
      }
      super.c(localView, -1, false);
      if (!localb.aix) {
        break label749;
      }
      if (this.hE != 1) {
        break label710;
      }
      g(localView, this.aio, b(this.dc, this.afn, getPaddingTop() + getPaddingBottom(), localb.height, true));
      if (paramas.oO != 1) {
        break label1065;
      }
      if (!localb.aix) {
        break label863;
      }
      j = bV(n);
      k = j + this.aie.aK(localView);
      if ((i1 == 0) || (!localb.aix)) {
        break label1752;
      }
      localObject2 = new StaggeredGridLayoutManager.c.a();
      ((StaggeredGridLayoutManager.c.a)localObject2).aiA = new int[this.abu];
      m = 0;
      while (m < this.abu)
      {
        ((StaggeredGridLayoutManager.c.a)localObject2).aiA[m] = (j - this.aid[m].ce(j));
        m += 1;
      }
      i = Integer.MIN_VALUE;
      break;
      if (paramas.oO == 1)
      {
        i = paramas.abK + paramas.abG;
        break;
      }
      i = paramas.abJ - paramas.abG;
      break;
      n = this.aie.hy();
      break label61;
      j = localObject1.mData[i4];
      break label163;
      i1 = 0;
      break label172;
      if (!bW(paramas.oO)) {
        break label594;
      }
      j = this.abu - 1;
      m = -1;
      k = -1;
      if (paramas.oO != 1) {
        break label609;
      }
      localObject2 = null;
      i3 = Integer.MAX_VALUE;
      i5 = this.aie.hy();
      i2 = j;
      j = i3;
      localObject1 = localObject2;
    } while (i2 == m);
    Object localObject1 = this.aid[i2];
    int i3 = ((e)localObject1).ce(i5);
    if (i3 < j) {
      j = i3;
    }
    for (;;)
    {
      i2 += k;
      localObject2 = localObject1;
      break label540;
      label594:
      j = 0;
      m = this.abu;
      k = 1;
      break label508;
      label609:
      localObject2 = null;
      i3 = Integer.MIN_VALUE;
      i5 = this.aie.hz();
      i2 = j;
      j = i3;
      label633:
      localObject1 = localObject2;
      if (i2 == m) {
        break label193;
      }
      localObject1 = this.aid[i2];
      i3 = ((e)localObject1).cd(i5);
      if (i3 > j) {
        j = i3;
      }
      for (;;)
      {
        i2 += k;
        localObject2 = localObject1;
        break label633;
        label687:
        localObject1 = this.aid[j];
        break label219;
        label699:
        super.c(localView, 0, false);
        break label242;
        label710:
        g(localView, b(this.db, this.afm, getPaddingLeft() + getPaddingRight(), localb.width, true), this.aio);
        break label294;
        label749:
        if (this.hE == 1)
        {
          g(localView, b(this.aig, this.afm, 0, localb.width, false), b(this.dc, this.afn, getPaddingTop() + getPaddingBottom(), localb.height, true));
          break label294;
        }
        g(localView, b(this.db, this.afm, getPaddingLeft() + getPaddingRight(), localb.width, true), b(this.aig, this.afn, 0, localb.height, false));
        break label294;
        label863:
        j = ((e)localObject1).ce(n);
        break label318;
        ((StaggeredGridLayoutManager.c.a)localObject2).aiz = -1;
        ((StaggeredGridLayoutManager.c.a)localObject2).mPosition = i4;
        this.aij.a((StaggeredGridLayoutManager.c.a)localObject2);
        m = j;
        for (;;)
        {
          if ((localb.aix) && (paramas.abI == -1)) {
            if (i1 == 0)
            {
              if (paramas.oO != 1) {
                break label1238;
              }
              i1 = this.aid[0].ce(Integer.MIN_VALUE);
              j = 1;
              label946:
              if (j >= this.abu) {
                break label1226;
              }
              if (this.aid[j].ce(Integer.MIN_VALUE) == i1) {
                break label1217;
              }
              j = 0;
              label975:
              if (j != 0) {
                break label1232;
              }
              j = 1;
            }
          }
          for (;;)
          {
            if (j != 0)
            {
              localObject2 = this.aij.cb(i4);
              if (localObject2 != null) {
                ((StaggeredGridLayoutManager.c.a)localObject2).aiB = true;
              }
              this.aiq = true;
            }
            if (paramas.oO != 1) {
              break label1469;
            }
            if (!localb.aix) {
              break label1315;
            }
            j = this.abu - 1;
            while (j >= 0)
            {
              this.aid[j].bh(localView);
              j -= 1;
            }
            label1065:
            if (localb.aix) {}
            for (j = bU(n);; j = ((e)localObject1).cd(n))
            {
              m = this.aie.aK(localView);
              if ((i1 == 0) || (!localb.aix)) {
                break label1203;
              }
              localObject2 = new StaggeredGridLayoutManager.c.a();
              ((StaggeredGridLayoutManager.c.a)localObject2).aiA = new int[this.abu];
              k = 0;
              while (k < this.abu)
              {
                ((StaggeredGridLayoutManager.c.a)localObject2).aiA[k] = (this.aid[k].cd(j) - j);
                k += 1;
              }
            }
            ((StaggeredGridLayoutManager.c.a)localObject2).aiz = 1;
            ((StaggeredGridLayoutManager.c.a)localObject2).mPosition = i4;
            this.aij.a((StaggeredGridLayoutManager.c.a)localObject2);
            label1203:
            k = j;
            m = j - m;
            break;
            label1217:
            j += 1;
            break label946;
            label1226:
            j = 1;
            break label975;
            label1232:
            j = 0;
            continue;
            label1238:
            i1 = this.aid[0].cd(Integer.MIN_VALUE);
            j = 1;
            label1254:
            if (j < this.abu) {
              if (this.aid[j].cd(Integer.MIN_VALUE) == i1) {}
            }
            for (j = 0;; j = 1)
            {
              if (j != 0) {
                break label1309;
              }
              j = 1;
              break;
              j += 1;
              break label1254;
            }
            label1309:
            j = 0;
          }
          label1315:
          localb.aiw.bh(localView);
          label1325:
          if ((gF()) && (this.hE == 1)) {
            if (localb.aix)
            {
              j = this.aif.hz();
              label1357:
              i2 = j - this.aif.aK(localView);
              i1 = j;
              j = i2;
              if (this.hE != 1) {
                break label1611;
              }
              h(localView, j, m, i1, k);
              label1400:
              if (!localb.aix) {
                break label1627;
              }
              ak(this.aih.oO, i);
              label1421:
              a(paramp, this.aih);
              if ((this.aih.abL) && (localView.hasFocusable()))
              {
                if (!localb.aix) {
                  break label1645;
                }
                this.aii.clear();
              }
            }
          }
          for (;;)
          {
            j = 1;
            break;
            label1469:
            if (localb.aix)
            {
              j = this.abu - 1;
              while (j >= 0)
              {
                this.aid[j].bg(localView);
                j -= 1;
              }
              break label1325;
            }
            localb.aiw.bg(localView);
            break label1325;
            j = this.aif.hz() - (this.abu - 1 - ((e)localObject1).mIndex) * this.aig;
            break label1357;
            if (localb.aix) {}
            for (j = this.aif.hy();; j = ((e)localObject1).mIndex * this.aig + this.aif.hy())
            {
              i1 = j + this.aif.aK(localView);
              break;
            }
            label1611:
            h(localView, m, j, k, i1);
            break label1400;
            label1627:
            a((e)localObject1, this.aih.oO, i);
            break label1421;
            label1645:
            this.aii.set(((e)localObject1).mIndex, false);
          }
          label1661:
          if (j == 0) {
            a(paramp, this.aih);
          }
          if (this.aih.oO == -1) {
            i = bU(this.aie.hy());
          }
          for (i = this.aie.hy() - i; i > 0; i = bV(this.aie.hz()) - this.aie.hz()) {
            return Math.min(paramas.abG, i);
          }
          return 0;
          label1752:
          m = j;
        }
        localObject1 = localObject2;
      }
      localObject1 = localObject2;
    }
  }
  
  private void a(int paramInt, RecyclerView.u paramu)
  {
    boolean bool2 = false;
    this.aih.abG = 0;
    this.aih.abH = paramInt;
    int i;
    boolean bool1;
    if (ii())
    {
      i = paramu.afJ;
      if (i != -1)
      {
        boolean bool3 = this.ace;
        if (i < paramInt)
        {
          bool1 = true;
          if (bool3 != bool1) {
            break label189;
          }
          paramInt = this.aie.hA();
          i = 0;
        }
      }
    }
    for (;;)
    {
      label67:
      int j;
      if ((this.YZ != null) && (this.YZ.adM))
      {
        j = 1;
        label87:
        if (j == 0) {
          break label208;
        }
        this.aih.abJ = (this.aie.hy() - i);
        this.aih.abK = (paramInt + this.aie.hz());
      }
      for (;;)
      {
        this.aih.abL = false;
        this.aih.abF = true;
        paramu = this.aih;
        bool1 = bool2;
        if (this.aie.getMode() == 0)
        {
          bool1 = bool2;
          if (this.aie.getEnd() == 0) {
            bool1 = true;
          }
        }
        paramu.abM = bool1;
        return;
        bool1 = false;
        break;
        label189:
        i = this.aie.hA();
        paramInt = 0;
        break label67;
        j = 0;
        break label87;
        label208:
        this.aih.abK = (paramInt + this.aie.getEnd());
        this.aih.abJ = (-i);
      }
      paramInt = 0;
      i = 0;
    }
  }
  
  private void a(RecyclerView.p paramp, int paramInt)
  {
    for (;;)
    {
      View localView;
      b localb;
      if (getChildCount() > 0)
      {
        localView = getChildAt(0);
        if ((this.aie.aH(localView) <= paramInt) && (this.aie.aI(localView) <= paramInt))
        {
          localb = (b)localView.getLayoutParams();
          if (!localb.aix) {
            break label118;
          }
          i = 0;
          if (i >= this.abu) {
            break label92;
          }
          if (this.aid[i].aiH.size() != 1) {
            break label85;
          }
        }
      }
      label85:
      label92:
      label118:
      while (localb.aiw.aiH.size() == 1)
      {
        for (;;)
        {
          return;
          i += 1;
        }
        int i = 0;
        while (i < this.abu)
        {
          this.aid[i].iT();
          i += 1;
        }
      }
      localb.aiw.iT();
      a(localView, paramp);
    }
  }
  
  private void a(RecyclerView.p paramp, RecyclerView.u paramu, boolean paramBoolean)
  {
    int i = bV(Integer.MIN_VALUE);
    if (i == Integer.MIN_VALUE) {}
    do
    {
      do
      {
        return;
        i = this.aie.hz() - i;
      } while (i <= 0);
      i -= -c(-i, paramp, paramu);
    } while ((!paramBoolean) || (i <= 0));
    this.aie.bD(i);
  }
  
  private void a(RecyclerView.p paramp, as paramas)
  {
    int k = 1;
    int i = 1;
    if ((!paramas.abF) || (paramas.abM)) {
      return;
    }
    if (paramas.abG == 0)
    {
      if (paramas.oO == -1)
      {
        b(paramp, paramas.abK);
        return;
      }
      a(paramp, paramas.abJ);
      return;
    }
    int m;
    if (paramas.oO == -1)
    {
      n = paramas.abJ;
      int i1 = paramas.abJ;
      for (j = this.aid[0].cd(i1); i < this.abu; j = k)
      {
        m = this.aid[i].cd(i1);
        k = j;
        if (m > j) {
          k = m;
        }
        i += 1;
      }
      i = n - j;
      if (i < 0) {}
      for (i = paramas.abK;; i = paramas.abK - Math.min(i, paramas.abG))
      {
        b(paramp, i);
        return;
      }
    }
    int n = paramas.abK;
    int j = this.aid[0].ce(n);
    i = k;
    while (i < this.abu)
    {
      m = this.aid[i].ce(n);
      k = j;
      if (m < j) {
        k = m;
      }
      i += 1;
      j = k;
    }
    i = j - paramas.abK;
    if (i < 0) {}
    for (i = paramas.abJ;; i = Math.min(i, paramas.abG) + j)
    {
      a(paramp, i);
      return;
      j = paramas.abJ;
    }
  }
  
  private void a(e parame, int paramInt1, int paramInt2)
  {
    int i = parame.aiK;
    if (paramInt1 == -1) {
      if (i + parame.iP() <= paramInt2) {
        this.aii.set(parame.mIndex, false);
      }
    }
    while (parame.iR() - i < paramInt2) {
      return;
    }
    this.aii.set(parame.mIndex, false);
  }
  
  private View ah(boolean paramBoolean)
  {
    int j = this.aie.hy();
    int k = this.aie.hz();
    int m = getChildCount();
    Object localObject = null;
    int i = 0;
    if (i < m)
    {
      View localView = getChildAt(i);
      int n = this.aie.aG(localView);
      if ((this.aie.aH(localView) <= j) || (n >= k)) {
        break label104;
      }
      if ((n >= j) || (!paramBoolean)) {
        return localView;
      }
      if (localObject != null) {
        break label104;
      }
      localObject = localView;
    }
    label104:
    for (;;)
    {
      i += 1;
      break;
      return (View)localObject;
    }
  }
  
  private View ai(boolean paramBoolean)
  {
    int j = this.aie.hy();
    int k = this.aie.hz();
    Object localObject = null;
    int i = getChildCount() - 1;
    if (i >= 0)
    {
      View localView = getChildAt(i);
      int m = this.aie.aG(localView);
      int n = this.aie.aH(localView);
      if ((n <= j) || (m >= k)) {
        break label106;
      }
      if ((n <= k) || (!paramBoolean)) {
        return localView;
      }
      if (localObject != null) {
        break label106;
      }
      localObject = localView;
    }
    label106:
    for (;;)
    {
      i -= 1;
      break;
      return (View)localObject;
    }
  }
  
  private void ak(int paramInt1, int paramInt2)
  {
    int i = 0;
    while (i < this.abu)
    {
      if (!this.aid[i].aiH.isEmpty()) {
        a(this.aid[i], paramInt1, paramInt2);
      }
      i += 1;
    }
  }
  
  private void b(int paramInt, RecyclerView.u paramu)
  {
    int j;
    int i;
    if (paramInt > 0)
    {
      j = iL();
      i = 1;
    }
    for (;;)
    {
      this.aih.abF = true;
      a(j, paramu);
      bT(i);
      this.aih.abH = (this.aih.abI + j);
      this.aih.abG = Math.abs(paramInt);
      return;
      i = -1;
      j = iM();
    }
  }
  
  private void b(RecyclerView.p paramp, int paramInt)
  {
    int i = getChildCount() - 1;
    for (;;)
    {
      View localView;
      b localb;
      if (i >= 0)
      {
        localView = getChildAt(i);
        if ((this.aie.aG(localView) >= paramInt) && (this.aie.aJ(localView) >= paramInt))
        {
          localb = (b)localView.getLayoutParams();
          if (!localb.aix) {
            break label132;
          }
          j = 0;
          if (j >= this.abu) {
            break label101;
          }
          if (this.aid[j].aiH.size() != 1) {
            break label92;
          }
        }
      }
      label92:
      label101:
      label132:
      while (localb.aiw.aiH.size() == 1)
      {
        for (;;)
        {
          return;
          j += 1;
        }
        int j = 0;
        while (j < this.abu)
        {
          this.aid[j].iS();
          j += 1;
        }
      }
      localb.aiw.iS();
      a(localView, paramp);
      i -= 1;
    }
  }
  
  private void b(RecyclerView.p paramp, RecyclerView.u paramu, boolean paramBoolean)
  {
    int i = bU(Integer.MAX_VALUE);
    if (i == Integer.MAX_VALUE) {}
    do
    {
      do
      {
        return;
        i -= this.aie.hy();
      } while (i <= 0);
      i -= c(i, paramp, paramu);
    } while ((!paramBoolean) || (i <= 0));
    this.aie.bD(-i);
  }
  
  private void bS(int paramInt)
  {
    this.aig = (paramInt / this.abu);
    this.aio = View.MeasureSpec.makeMeasureSpec(paramInt, this.aif.getMode());
  }
  
  private void bT(int paramInt)
  {
    int i = 1;
    this.aih.oO = paramInt;
    as localas = this.aih;
    boolean bool2 = this.ace;
    boolean bool1;
    if (paramInt == -1)
    {
      bool1 = true;
      if (bool2 != bool1) {
        break label49;
      }
    }
    label49:
    for (paramInt = i;; paramInt = -1)
    {
      localas.abI = paramInt;
      return;
      bool1 = false;
      break;
    }
  }
  
  private int bU(int paramInt)
  {
    int j = this.aid[0].cd(paramInt);
    int i = 1;
    while (i < this.abu)
    {
      int m = this.aid[i].cd(paramInt);
      int k = j;
      if (m < j) {
        k = m;
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  private int bV(int paramInt)
  {
    int j = this.aid[0].ce(paramInt);
    int i = 1;
    while (i < this.abu)
    {
      int m = this.aid[i].ce(paramInt);
      int k = j;
      if (m > j) {
        k = m;
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  private boolean bW(int paramInt)
  {
    int i;
    if (this.hE == 0) {
      if (paramInt == -1)
      {
        i = 1;
        if (i == this.ace) {
          break label29;
        }
      }
    }
    label29:
    label63:
    label66:
    for (;;)
    {
      return true;
      i = 0;
      break;
      return false;
      if (paramInt == -1)
      {
        i = 1;
        if (i != this.ace) {
          break label63;
        }
      }
      for (i = 1;; i = 0)
      {
        if (i == gF()) {
          break label66;
        }
        return false;
        i = 0;
        break;
      }
    }
  }
  
  private int bX(int paramInt)
  {
    if (getChildCount() == 0) {
      if (!this.ace) {}
    }
    for (;;)
    {
      return 1;
      return -1;
      if (paramInt < iM()) {}
      for (int i = 1; i != this.ace; i = 0) {
        return -1;
      }
    }
  }
  
  private void bw(int paramInt)
  {
    F(null);
    if (paramInt != this.abu)
    {
      this.aij.clear();
      requestLayout();
      this.abu = paramInt;
      this.aii = new BitSet(this.abu);
      this.aid = new e[this.abu];
      paramInt = 0;
      while (paramInt < this.abu)
      {
        this.aid[paramInt] = new e(paramInt);
        paramInt += 1;
      }
      requestLayout();
    }
  }
  
  private int c(int paramInt, RecyclerView.p paramp, RecyclerView.u paramu)
  {
    if ((getChildCount() == 0) || (paramInt == 0)) {
      return 0;
    }
    b(paramInt, paramu);
    int j = a(paramp, this.aih, paramu);
    int i = paramInt;
    if (this.aih.abG >= j) {
      if (paramInt >= 0) {
        break label93;
      }
    }
    label93:
    for (i = -j;; i = j)
    {
      this.aie.bD(-i);
      this.ail = this.ace;
      this.aih.abG = 0;
      a(paramp, this.aih);
      return i;
    }
  }
  
  private void g(View paramView, int paramInt1, int paramInt2)
  {
    f(paramView, this.lg);
    b localb = (b)paramView.getLayoutParams();
    paramInt1 = j(paramInt1, localb.leftMargin + this.lg.left, localb.rightMargin + this.lg.right);
    paramInt2 = j(paramInt2, localb.topMargin + this.lg.top, localb.bottomMargin + this.lg.bottom);
    if (a(paramView, paramInt1, paramInt2, localb)) {
      paramView.measure(paramInt1, paramInt2);
    }
  }
  
  private boolean gF()
  {
    return r.K(this.YZ) == 1;
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
  
  private void iI()
  {
    this.aie = az.a(this, this.hE);
    this.aif = az.a(this, 1 - this.hE);
  }
  
  private View iK()
  {
    int i = getChildCount() - 1;
    BitSet localBitSet = new BitSet(this.abu);
    localBitSet.set(0, this.abu, true);
    int j;
    int k;
    label57:
    int m;
    label65:
    int n;
    View localView;
    b localb;
    Object localObject;
    if ((this.hE == 1) && (gF()))
    {
      j = 1;
      if (!this.ace) {
        break label184;
      }
      k = -1;
      if (i >= k) {
        break label199;
      }
      m = 1;
      n = i;
      if (n == k) {
        break label464;
      }
      localView = getChildAt(n);
      localb = (b)localView.getLayoutParams();
      if (!localBitSet.get(localb.aiw.mIndex)) {
        break label277;
      }
      localObject = localb.aiw;
      if (!this.ace) {
        break label210;
      }
      if (((e)localObject).iR() >= this.aie.hz()) {
        break label259;
      }
      if (((b)((View)((e)localObject).aiH.get(((e)localObject).aiH.size() - 1)).getLayoutParams()).aix) {
        break label205;
      }
      i = 1;
    }
    for (;;)
    {
      if (i == 0) {
        break label264;
      }
      return localView;
      j = -1;
      break;
      label184:
      k = 0;
      m = i + 1;
      i = k;
      k = m;
      break label57;
      label199:
      m = -1;
      break label65;
      label205:
      i = 0;
      continue;
      label210:
      if (((e)localObject).iP() > this.aie.hy())
      {
        if (!((b)((View)((e)localObject).aiH.get(0)).getLayoutParams()).aix) {
          i = 1;
        } else {
          i = 0;
        }
      }
      else {
        label259:
        i = 0;
      }
    }
    label264:
    localBitSet.clear(localb.aiw.mIndex);
    label277:
    int i1;
    if ((!localb.aix) && (n + m != k))
    {
      localObject = getChildAt(n + m);
      if (this.ace)
      {
        i = this.aie.aH(localView);
        i1 = this.aie.aH((View)localObject);
        if (i < i1) {
          return localView;
        }
        if (i != i1) {
          break label466;
        }
        i = 1;
      }
    }
    for (;;)
    {
      if (i != 0)
      {
        localObject = (b)((View)localObject).getLayoutParams();
        if (localb.aiw.mIndex - ((b)localObject).aiw.mIndex < 0)
        {
          i = 1;
          label386:
          if (j >= 0) {
            break label448;
          }
        }
        label448:
        for (i1 = 1;; i1 = 0)
        {
          if (i == i1) {
            break label454;
          }
          return localView;
          i = this.aie.aG(localView);
          i1 = this.aie.aG((View)localObject);
          if (i > i1) {
            return localView;
          }
          if (i != i1) {
            break label466;
          }
          i = 1;
          break;
          i = 0;
          break label386;
        }
      }
      label454:
      n += m;
      break;
      label464:
      return null;
      label466:
      i = 0;
    }
  }
  
  private int iL()
  {
    int i = getChildCount();
    if (i == 0) {
      return 0;
    }
    return aT(getChildAt(i - 1));
  }
  
  private int iM()
  {
    if (getChildCount() == 0) {
      return 0;
    }
    return aT(getChildAt(0));
  }
  
  private static int j(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0)) {}
    int i;
    do
    {
      return paramInt1;
      i = View.MeasureSpec.getMode(paramInt1);
    } while ((i != Integer.MIN_VALUE) && (i != 1073741824));
    return View.MeasureSpec.makeMeasureSpec(Math.max(0, View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3), i);
  }
  
  private int j(RecyclerView.u paramu)
  {
    boolean bool2 = true;
    if (getChildCount() == 0) {
      return 0;
    }
    az localaz = this.aie;
    View localView;
    if (!this.acg)
    {
      bool1 = true;
      localView = ah(bool1);
      if (this.acg) {
        break label70;
      }
    }
    label70:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      return bg.a(paramu, localaz, localView, ai(bool1), this, this.acg, this.ace);
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
    az localaz = this.aie;
    View localView;
    if (!this.acg)
    {
      bool1 = true;
      localView = ah(bool1);
      if (this.acg) {
        break label66;
      }
    }
    label66:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      return bg.a(paramu, localaz, localView, ai(bool1), this, this.acg);
      bool1 = false;
      break;
    }
  }
  
  private void k(int paramInt1, int paramInt2, int paramInt3)
  {
    int k;
    int j;
    int i;
    if (this.ace)
    {
      k = iL();
      if (paramInt3 != 8) {
        break label104;
      }
      if (paramInt1 >= paramInt2) {
        break label93;
      }
      j = paramInt2 + 1;
      i = paramInt1;
      label32:
      this.aij.bZ(i);
      switch (paramInt3)
      {
      default: 
        label76:
        if (j > k) {
          break;
        }
      }
    }
    for (;;)
    {
      return;
      k = iM();
      break;
      label93:
      j = paramInt1 + 1;
      i = paramInt2;
      break label32;
      label104:
      j = paramInt1 + paramInt2;
      i = paramInt1;
      break label32;
      this.aij.am(paramInt1, paramInt2);
      break label76;
      this.aij.al(paramInt1, paramInt2);
      break label76;
      this.aij.al(paramInt1, 1);
      this.aij.am(paramInt2, 1);
      break label76;
      if (this.ace) {}
      for (paramInt1 = iM(); i <= paramInt1; paramInt1 = iL())
      {
        requestLayout();
        return;
      }
    }
  }
  
  private int l(RecyclerView.u paramu)
  {
    boolean bool2 = true;
    if (getChildCount() == 0) {
      return 0;
    }
    az localaz = this.aie;
    View localView;
    if (!this.acg)
    {
      bool1 = true;
      localView = ah(bool1);
      if (this.acg) {
        break label66;
      }
    }
    label66:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      return bg.b(paramu, localaz, localView, ai(bool1), this, this.acg);
      bool1 = false;
      break;
    }
  }
  
  public final void F(String paramString)
  {
    if (this.ain == null) {
      super.F(paramString);
    }
  }
  
  public final void I(int paramInt1, int paramInt2)
  {
    k(paramInt1, paramInt2, 1);
  }
  
  public final void J(int paramInt1, int paramInt2)
  {
    k(paramInt1, paramInt2, 2);
  }
  
  public final void K(int paramInt1, int paramInt2)
  {
    k(paramInt1, paramInt2, 4);
  }
  
  public final void L(int paramInt1, int paramInt2)
  {
    k(paramInt1, paramInt2, 8);
  }
  
  public final int a(int paramInt, RecyclerView.p paramp, RecyclerView.u paramu)
  {
    return c(paramInt, paramp, paramu);
  }
  
  public final int a(RecyclerView.p paramp, RecyclerView.u paramu)
  {
    if (this.hE == 0) {
      return this.abu;
    }
    return super.a(paramp, paramu);
  }
  
  public final RecyclerView.j a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new b(paramContext, paramAttributeSet);
  }
  
  public final View a(View paramView, int paramInt, RecyclerView.p paramp, RecyclerView.u paramu)
  {
    if (getChildCount() == 0) {
      paramView = null;
    }
    View localView;
    e locale;
    int i;
    int j;
    label499:
    label507:
    label517:
    label534:
    do
    {
      return paramView;
      localView = aM(paramView);
      if (localView == null) {
        return null;
      }
      hi();
      switch (paramInt)
      {
      default: 
        paramInt = Integer.MIN_VALUE;
      }
      while (paramInt == Integer.MIN_VALUE)
      {
        return null;
        if (this.hE == 1)
        {
          paramInt = -1;
        }
        else if (gF())
        {
          paramInt = 1;
        }
        else
        {
          paramInt = -1;
          continue;
          if (this.hE == 1)
          {
            paramInt = 1;
          }
          else if (gF())
          {
            paramInt = -1;
          }
          else
          {
            paramInt = 1;
            continue;
            if (this.hE == 1)
            {
              paramInt = -1;
            }
            else
            {
              paramInt = Integer.MIN_VALUE;
              continue;
              if (this.hE == 1)
              {
                paramInt = 1;
              }
              else
              {
                paramInt = Integer.MIN_VALUE;
                continue;
                if (this.hE == 0)
                {
                  paramInt = -1;
                }
                else
                {
                  paramInt = Integer.MIN_VALUE;
                  continue;
                  if (this.hE == 0) {
                    paramInt = 1;
                  } else {
                    paramInt = Integer.MIN_VALUE;
                  }
                }
              }
            }
          }
        }
      }
      paramView = (b)localView.getLayoutParams();
      boolean bool = paramView.aix;
      locale = paramView.aiw;
      if (paramInt == 1) {}
      for (i = iL();; i = iM())
      {
        a(i, paramu);
        bT(paramInt);
        this.aih.abH = (this.aih.abI + i);
        this.aih.abG = ((int)(0.33333334F * this.aie.hA()));
        this.aih.abL = true;
        this.aih.abF = false;
        a(paramp, this.aih, paramu);
        this.ail = this.ace;
        if (bool) {
          break;
        }
        paramView = locale.ao(i, paramInt);
        if ((paramView == null) || (paramView == localView)) {
          break;
        }
        return paramView;
      }
      if (bW(paramInt))
      {
        j = this.abu - 1;
        while (j >= 0)
        {
          paramView = this.aid[j].ao(i, paramInt);
          if ((paramView != null) && (paramView != localView)) {
            return paramView;
          }
          j -= 1;
        }
      }
      j = 0;
      while (j < this.abu)
      {
        paramView = this.aid[j].ao(i, paramInt);
        if ((paramView != null) && (paramView != localView)) {
          return paramView;
        }
        j += 1;
      }
      if (this.acd) {
        break label623;
      }
      i = 1;
      if (paramInt != -1) {
        break label629;
      }
      j = 1;
      if (i != j) {
        break label635;
      }
      i = 1;
      if (bool) {
        break;
      }
      if (i == 0) {
        break label641;
      }
      j = locale.iU();
      paramp = by(j);
      if (paramp == null) {
        break;
      }
      paramView = paramp;
    } while (paramp != localView);
    if (bW(paramInt))
    {
      paramInt = this.abu - 1;
      label568:
      if (paramInt >= 0)
      {
        if (paramInt != locale.mIndex) {
          if (i == 0) {
            break label651;
          }
        }
        label623:
        label629:
        label635:
        label641:
        label651:
        for (j = this.aid[paramInt].iU();; j = this.aid[paramInt].iV())
        {
          paramp = by(j);
          if (paramp != null)
          {
            paramView = paramp;
            if (paramp != localView) {
              break;
            }
          }
          paramInt -= 1;
          break label568;
          i = 0;
          break label499;
          j = 0;
          break label507;
          i = 0;
          break label517;
          j = locale.iV();
          break label534;
        }
      }
    }
    else
    {
      paramInt = 0;
      while (paramInt < this.abu)
      {
        if (i != 0) {}
        for (j = this.aid[paramInt].iU();; j = this.aid[paramInt].iV())
        {
          paramView = by(j);
          if ((paramView == null) || (paramView == localView)) {
            break;
          }
          return paramView;
        }
        paramInt += 1;
      }
    }
    return null;
  }
  
  public final void a(int paramInt1, int paramInt2, RecyclerView.u paramu, RecyclerView.i.a parama)
  {
    int k = 0;
    if (this.hE == 0) {
      if ((getChildCount() != 0) && (paramInt1 != 0)) {
        break label27;
      }
    }
    for (;;)
    {
      return;
      paramInt1 = paramInt2;
      break;
      label27:
      b(paramInt1, paramu);
      if ((this.air == null) || (this.air.length < this.abu)) {
        this.air = new int[this.abu];
      }
      paramInt2 = 0;
      paramInt1 = 0;
      if (paramInt2 < this.abu)
      {
        if (this.aih.abI == -1) {}
        for (int j = this.aih.abJ - this.aid[paramInt2].cd(this.aih.abJ);; j = this.aid[paramInt2].ce(this.aih.abK) - this.aih.abK)
        {
          int i = paramInt1;
          if (j >= 0)
          {
            this.air[paramInt1] = j;
            i = paramInt1 + 1;
          }
          paramInt2 += 1;
          paramInt1 = i;
          break;
        }
      }
      Arrays.sort(this.air, 0, paramInt1);
      paramInt2 = k;
      while ((paramInt2 < paramInt1) && (this.aih.b(paramu)))
      {
        parama.C(this.aih.abH, this.air[paramInt2]);
        as localas = this.aih;
        localas.abH += this.aih.abI;
        paramInt2 += 1;
      }
    }
  }
  
  public final void a(Rect paramRect, int paramInt1, int paramInt2)
  {
    int i = getPaddingLeft();
    int j = getPaddingRight() + i;
    int k = getPaddingTop() + getPaddingBottom();
    if (this.hE == 1)
    {
      i = g(paramInt2, k + paramRect.height(), r.R(this.YZ));
      paramInt2 = g(paramInt1, j + this.aig * this.abu, r.Q(this.YZ));
      paramInt1 = i;
    }
    for (;;)
    {
      setMeasuredDimension(paramInt2, paramInt1);
      return;
      i = g(paramInt1, j + paramRect.width(), r.Q(this.YZ));
      paramInt1 = g(paramInt2, k + this.aig * this.abu, r.R(this.YZ));
      paramInt2 = i;
    }
  }
  
  public final void a(RecyclerView.p paramp, RecyclerView.u paramu, View paramView, a parama)
  {
    int i = 1;
    paramp = paramView.getLayoutParams();
    if (!(paramp instanceof b))
    {
      super.b(paramView, parama);
      return;
    }
    paramp = (b)paramp;
    int k;
    int m;
    int j;
    if (this.hE == 0)
    {
      k = paramp.iN();
      if (paramp.aix) {
        i = this.abu;
      }
      int n = -1;
      m = -1;
      j = i;
      i = n;
    }
    for (;;)
    {
      parama.G(a.b.a(k, j, m, i, paramp.aix));
      return;
      m = paramp.iN();
      if (paramp.aix)
      {
        i = this.abu;
        j = -1;
        k = -1;
      }
      else
      {
        i = 1;
        j = -1;
        k = -1;
      }
    }
  }
  
  public final void a(RecyclerView.u paramu)
  {
    super.a(paramu);
    this.ach = -1;
    this.aci = Integer.MIN_VALUE;
    this.ain = null;
    this.aip.reset();
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
    removeCallbacks(this.ais);
    int i = 0;
    while (i < this.abu)
    {
      this.aid[i].clear();
      i += 1;
    }
    paramRecyclerView.requestLayout();
  }
  
  public final boolean a(RecyclerView.j paramj)
  {
    return paramj instanceof b;
  }
  
  public final int b(int paramInt, RecyclerView.p paramp, RecyclerView.u paramu)
  {
    return c(paramInt, paramp, paramu);
  }
  
  public final int b(RecyclerView.p paramp, RecyclerView.u paramu)
  {
    if (this.hE == 1) {
      return this.abu;
    }
    return super.b(paramp, paramu);
  }
  
  public final void bA(int paramInt)
  {
    if ((this.ain != null) && (this.ain.acz != paramInt))
    {
      d locald = this.ain;
      locald.aiE = null;
      locald.aiD = 0;
      locald.acz = -1;
      locald.aiC = -1;
    }
    this.ach = paramInt;
    this.aci = Integer.MIN_VALUE;
    requestLayout();
  }
  
  public final void bH(int paramInt)
  {
    super.bH(paramInt);
    int i = 0;
    while (i < this.abu)
    {
      this.aid[i].cg(paramInt);
      i += 1;
    }
  }
  
  public final void bI(int paramInt)
  {
    super.bI(paramInt);
    int i = 0;
    while (i < this.abu)
    {
      this.aid[i].cg(paramInt);
      i += 1;
    }
  }
  
  public final void bJ(int paramInt)
  {
    if (paramInt == 0) {
      iJ();
    }
  }
  
  public final PointF bz(int paramInt)
  {
    paramInt = bX(paramInt);
    PointF localPointF = new PointF();
    if (paramInt == 0) {
      return null;
    }
    if (this.hE == 0)
    {
      localPointF.x = paramInt;
      localPointF.y = 0.0F;
      return localPointF;
    }
    localPointF.x = 0.0F;
    localPointF.y = paramInt;
    return localPointF;
  }
  
  public final void c(RecyclerView.p paramp, RecyclerView.u paramu)
  {
    int j = 1;
    a locala = this.aip;
    if (((this.ain != null) || (this.ach != -1)) && (paramu.getItemCount() == 0))
    {
      d(paramp);
      locala.reset();
      label41:
      return;
    }
    int k;
    int m;
    label112:
    int n;
    if ((!locala.acr) || (this.ach != -1) || (this.ain != null))
    {
      k = 1;
      if (k == 0) {
        break label463;
      }
      locala.reset();
      if (this.ain == null) {
        break label614;
      }
      if (this.ain.aiD <= 0) {
        break label268;
      }
      if (this.ain.aiD != this.abu) {
        break label218;
      }
      m = 0;
      if (m >= this.abu) {
        break label268;
      }
      this.aid[m].clear();
      n = this.ain.aiE[m];
      i = n;
      if (n != Integer.MIN_VALUE) {
        if (!this.ain.acB) {
          break label203;
        }
      }
    }
    label203:
    for (int i = n + this.aie.hz();; i = n + this.aie.hy())
    {
      this.aid[m].cf(i);
      m += 1;
      break label112;
      k = 0;
      break;
    }
    label218:
    Object localObject1 = this.ain;
    ((d)localObject1).aiE = null;
    ((d)localObject1).aiD = 0;
    ((d)localObject1).aiF = 0;
    ((d)localObject1).aiG = null;
    ((d)localObject1).aiy = null;
    this.ain.acz = this.ain.aiC;
    label268:
    this.aim = this.ain.aim;
    X(this.ain.acd);
    hi();
    if (this.ain.acz != -1)
    {
      this.ach = this.ain.acz;
      locala.acq = this.ain.acB;
      if (this.ain.aiF > 1)
      {
        this.aij.mData = this.ain.aiG;
        this.aij.aiy = this.ain.aiy;
      }
      label367:
      if ((!paramu.afZ) && (this.ach != -1)) {
        break label630;
      }
      i = 0;
      label385:
      if (i == 0)
      {
        if (!this.ail) {
          break label1149;
        }
        n = paramu.getItemCount();
        i = getChildCount() - 1;
        label411:
        if (i < 0) {
          break label1143;
        }
        m = aT(getChildAt(i));
        if ((m < 0) || (m >= n)) {
          break label1134;
        }
        i = m;
      }
    }
    label463:
    label614:
    label630:
    label721:
    label787:
    label817:
    label853:
    boolean bool;
    label991:
    label1019:
    label1041:
    label1134:
    label1143:
    label1149:
    int i1;
    for (;;)
    {
      locala.mPosition = i;
      locala.EK = Integer.MIN_VALUE;
      locala.acr = true;
      if ((this.ain == null) && (this.ach == -1) && ((locala.acq != this.ail) || (gF() != this.aim)))
      {
        this.aij.clear();
        locala.aiu = true;
      }
      if ((getChildCount() <= 0) || ((this.ain != null) && (this.ain.aiD > 0))) {
        break label1525;
      }
      if (!locala.aiu) {
        break label1213;
      }
      i = 0;
      while (i < this.abu)
      {
        this.aid[i].clear();
        if (locala.EK != Integer.MIN_VALUE) {
          this.aid[i].cf(locala.EK);
        }
        i += 1;
      }
      locala.acq = this.ace;
      break;
      hi();
      locala.acq = this.ace;
      break label367;
      if ((this.ach < 0) || (this.ach >= paramu.getItemCount()))
      {
        this.ach = -1;
        this.aci = Integer.MIN_VALUE;
        i = 0;
        break label385;
      }
      if ((this.ain == null) || (this.ain.acz == -1) || (this.ain.aiD <= 0))
      {
        localObject1 = by(this.ach);
        if (localObject1 != null)
        {
          if (this.ace)
          {
            i = iL();
            locala.mPosition = i;
            if (this.aci == Integer.MIN_VALUE) {
              break label817;
            }
            if (!locala.acq) {
              break label787;
            }
          }
          for (locala.EK = (this.aie.hz() - this.aci - this.aie.aH((View)localObject1));; locala.EK = (this.aie.hy() + this.aci - this.aie.aG((View)localObject1)))
          {
            i = 1;
            break;
            i = iM();
            break label721;
          }
          if (this.aie.aK((View)localObject1) > this.aie.hA()) {
            if (locala.acq)
            {
              i = this.aie.hz();
              locala.EK = i;
            }
          }
        }
      }
      for (;;)
      {
        i = 1;
        break;
        i = this.aie.hy();
        break label853;
        i = this.aie.aG((View)localObject1) - this.aie.hy();
        if (i < 0)
        {
          locala.EK = (-i);
        }
        else
        {
          i = this.aie.hz() - this.aie.aH((View)localObject1);
          if (i < 0)
          {
            locala.EK = i;
          }
          else
          {
            locala.EK = Integer.MIN_VALUE;
            continue;
            locala.mPosition = this.ach;
            if (this.aci == Integer.MIN_VALUE) {
              if (bX(locala.mPosition) == 1)
              {
                bool = true;
                locala.acq = bool;
                if (!locala.acq) {
                  break label1041;
                }
                i = locala.ait.aie.hz();
                locala.EK = i;
              }
            }
            for (;;)
            {
              locala.aiu = true;
              break;
              bool = false;
              break label991;
              i = locala.ait.aie.hy();
              break label1019;
              i = this.aci;
              if (locala.acq) {
                locala.EK = (locala.ait.aie.hz() - i);
              } else {
                locala.EK = (i + locala.ait.aie.hy());
              }
            }
            locala.EK = Integer.MIN_VALUE;
            locala.mPosition = this.ach;
          }
        }
      }
      i -= 1;
      break label411;
      i = 0;
      continue;
      i1 = paramu.getItemCount();
      int i2 = getChildCount();
      m = 0;
      for (;;)
      {
        if (m >= i2) {
          break label1207;
        }
        n = aT(getChildAt(m));
        if (n >= 0)
        {
          i = n;
          if (n < i1) {
            break;
          }
        }
        m += 1;
      }
      label1207:
      i = 0;
    }
    label1213:
    label1276:
    label1351:
    Object localObject2;
    if ((k != 0) || (this.aip.aiv == null))
    {
      k = 0;
      if (k < this.abu)
      {
        localObject1 = this.aid[k];
        bool = this.ace;
        n = locala.EK;
        if (bool)
        {
          i = ((e)localObject1).ce(Integer.MIN_VALUE);
          ((e)localObject1).clear();
          if ((i != Integer.MIN_VALUE) && ((!bool) || (i >= ((e)localObject1).ait.aie.hz())) && ((bool) || (i <= ((e)localObject1).ait.aie.hy()))) {
            break label1351;
          }
        }
        for (;;)
        {
          k += 1;
          break;
          i = ((e)localObject1).cd(Integer.MIN_VALUE);
          break label1276;
          m = i;
          if (n != Integer.MIN_VALUE) {
            m = i + n;
          }
          ((e)localObject1).aiJ = m;
          ((e)localObject1).aiI = m;
        }
      }
      localObject1 = this.aip;
      localObject2 = this.aid;
      k = localObject2.length;
      if ((((a)localObject1).aiv == null) || (((a)localObject1).aiv.length < k)) {
        ((a)localObject1).aiv = new int[((a)localObject1).ait.aid.length];
      }
      i = 0;
    }
    while (i < k)
    {
      ((a)localObject1).aiv[i] = localObject2[i].cd(Integer.MIN_VALUE);
      i += 1;
      continue;
      i = 0;
      while (i < this.abu)
      {
        localObject1 = this.aid[i];
        ((e)localObject1).clear();
        ((e)localObject1).cf(this.aip.aiv[i]);
        i += 1;
      }
    }
    label1525:
    b(paramp);
    this.aih.abF = false;
    this.aiq = false;
    bS(this.aif.hA());
    a(locala.mPosition, paramu);
    label1624:
    float f1;
    if (locala.acq)
    {
      bT(-1);
      a(paramp, this.aih, paramu);
      bT(1);
      this.aih.abH = (locala.mPosition + this.aih.abI);
      a(paramp, this.aih, paramu);
      if (this.aif.getMode() == 1073741824) {
        break label2010;
      }
      f1 = 0.0F;
      m = getChildCount();
      i = 0;
      label1648:
      if (i >= m) {
        break label1779;
      }
      localObject1 = getChildAt(i);
      float f2 = this.aif.aK((View)localObject1);
      if (f2 < f1) {
        break label2199;
      }
      if (!((b)((View)localObject1).getLayoutParams()).aix) {
        break label2196;
      }
      f2 = 1.0F * f2 / this.abu;
      label1708:
      f1 = Math.max(f1, f2);
    }
    label1779:
    label1948:
    label2010:
    label2038:
    label2190:
    label2196:
    label2199:
    for (;;)
    {
      i += 1;
      break label1648;
      bT(1);
      a(paramp, this.aih, paramu);
      bT(-1);
      this.aih.abH = (locala.mPosition + this.aih.abI);
      a(paramp, this.aih, paramu);
      break label1624;
      n = this.aig;
      k = Math.round(this.abu * f1);
      i = k;
      if (this.aif.getMode() == Integer.MIN_VALUE) {
        i = Math.min(k, this.aif.hA());
      }
      bS(i);
      if (this.aig != n)
      {
        i = 0;
        if (i < m)
        {
          localObject1 = getChildAt(i);
          localObject2 = (b)((View)localObject1).getLayoutParams();
          if (!((b)localObject2).aix)
          {
            if ((!gF()) || (this.hE != 1)) {
              break label1948;
            }
            ((View)localObject1).offsetLeftAndRight(-(this.abu - 1 - ((b)localObject2).aiw.mIndex) * this.aig - -(this.abu - 1 - ((b)localObject2).aiw.mIndex) * n);
          }
          for (;;)
          {
            i += 1;
            break;
            k = ((b)localObject2).aiw.mIndex * this.aig;
            i1 = ((b)localObject2).aiw.mIndex * n;
            if (this.hE == 1) {
              ((View)localObject1).offsetLeftAndRight(k - i1);
            } else {
              ((View)localObject1).offsetTopAndBottom(k - i1);
            }
          }
        }
      }
      if (getChildCount() > 0)
      {
        if (this.ace)
        {
          a(paramp, paramu, true);
          b(paramp, paramu, false);
        }
      }
      else
      {
        k = 0;
        i = k;
        if (j != 0)
        {
          i = k;
          if (!paramu.afZ) {
            if ((this.aik == 0) || (getChildCount() <= 0) || ((!this.aiq) && (iK() == null))) {
              break label2190;
            }
          }
        }
      }
      for (j = 1;; j = 0)
      {
        i = k;
        if (j != 0)
        {
          removeCallbacks(this.ais);
          i = k;
          if (iJ()) {
            i = 1;
          }
        }
        if (paramu.afZ) {
          this.aip.reset();
        }
        this.ail = locala.acq;
        this.aim = gF();
        if (i == 0) {
          break label41;
        }
        this.aip.reset();
        j = 0;
        break;
        b(paramp, paramu, true);
        a(paramp, paramu, false);
        break label2038;
      }
      break label1708;
    }
  }
  
  public final int d(RecyclerView.u paramu)
  {
    return j(paramu);
  }
  
  public final RecyclerView.j d(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new b((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new b(paramLayoutParams);
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
  
  public final int h(RecyclerView.u paramu)
  {
    return l(paramu);
  }
  
  public final void ha()
  {
    this.aij.clear();
    requestLayout();
  }
  
  public final RecyclerView.j hb()
  {
    if (this.hE == 0) {
      return new b(-2, -1);
    }
    return new b(-1, -2);
  }
  
  public final boolean he()
  {
    return this.ain == null;
  }
  
  public final boolean hf()
  {
    return this.aik != 0;
  }
  
  public final boolean hg()
  {
    return this.hE == 0;
  }
  
  public final boolean hh()
  {
    return this.hE == 1;
  }
  
  public final int i(RecyclerView.u paramu)
  {
    return l(paramu);
  }
  
  final boolean iJ()
  {
    if ((getChildCount() == 0) || (this.aik == 0) || (!this.lH)) {
      return false;
    }
    int j;
    if (this.ace) {
      j = iL();
    }
    for (int i = iM(); (j == 0) && (iK() != null); i = iL())
    {
      this.aij.clear();
      this.afg = true;
      requestLayout();
      return true;
      j = iM();
    }
    if (!this.aiq) {
      return false;
    }
    if (this.ace) {}
    StaggeredGridLayoutManager.c.a locala1;
    for (int k = -1;; k = 1)
    {
      locala1 = this.aij.l(j, i + 1, k);
      if (locala1 != null) {
        break;
      }
      this.aiq = false;
      this.aij.bY(i + 1);
      return false;
    }
    StaggeredGridLayoutManager.c.a locala2 = this.aij.l(j, locala1.mPosition, k * -1);
    if (locala2 == null) {
      this.aij.bY(locala1.mPosition);
    }
    for (;;)
    {
      this.afg = true;
      requestLayout();
      return true;
      this.aij.bY(locala2.mPosition + 1);
    }
  }
  
  public final void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    View localView1;
    View localView2;
    if (getChildCount() > 0)
    {
      localView1 = ah(false);
      localView2 = ai(false);
      if ((localView1 != null) && (localView2 != null)) {}
    }
    else
    {
      return;
    }
    int i = aT(localView1);
    int j = aT(localView2);
    if (i < j)
    {
      paramAccessibilityEvent.setFromIndex(i);
      paramAccessibilityEvent.setToIndex(j);
      return;
    }
    paramAccessibilityEvent.setFromIndex(j);
    paramAccessibilityEvent.setToIndex(i);
  }
  
  public final void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof d))
    {
      this.ain = ((d)paramParcelable);
      requestLayout();
    }
  }
  
  public final Parcelable onSaveInstanceState()
  {
    if (this.ain != null) {
      return new d(this.ain);
    }
    d locald = new d();
    locald.acd = this.acd;
    locald.acB = this.ail;
    locald.aim = this.aim;
    int i;
    label126:
    View localView;
    label146:
    label153:
    int j;
    label181:
    int k;
    if ((this.aij != null) && (this.aij.mData != null))
    {
      locald.aiG = this.aij.mData;
      locald.aiF = locald.aiG.length;
      locald.aiy = this.aij.aiy;
      if (getChildCount() <= 0) {
        break label310;
      }
      if (!this.ail) {
        break label250;
      }
      i = iL();
      locald.acz = i;
      if (!this.ace) {
        break label258;
      }
      localView = ai(true);
      if (localView != null) {
        break label268;
      }
      i = -1;
      locald.aiC = i;
      locald.aiD = this.abu;
      locald.aiE = new int[this.abu];
      j = 0;
      if (j >= this.abu) {
        break label328;
      }
      if (!this.ail) {
        break label277;
      }
      k = this.aid[j].ce(Integer.MIN_VALUE);
      i = k;
      if (k != Integer.MIN_VALUE) {
        i = k - this.aie.hz();
      }
    }
    for (;;)
    {
      locald.aiE[j] = i;
      j += 1;
      break label181;
      locald.aiF = 0;
      break;
      label250:
      i = iM();
      break label126;
      label258:
      localView = ah(true);
      break label146;
      label268:
      i = aT(localView);
      break label153;
      label277:
      k = this.aid[j].cd(Integer.MIN_VALUE);
      i = k;
      if (k != Integer.MIN_VALUE) {
        i = k - this.aie.hy();
      }
    }
    label310:
    locald.acz = -1;
    locald.aiC = -1;
    locald.aiD = 0;
    label328:
    return locald;
  }
  
  final class a
  {
    int EK;
    boolean acq;
    boolean acr;
    boolean aiu;
    int[] aiv;
    int mPosition;
    
    a()
    {
      reset();
    }
    
    final void reset()
    {
      this.mPosition = -1;
      this.EK = Integer.MIN_VALUE;
      this.acq = false;
      this.aiu = false;
      this.acr = false;
      if (this.aiv != null) {
        Arrays.fill(this.aiv, -1);
      }
    }
  }
  
  public static final class b
    extends RecyclerView.j
  {
    StaggeredGridLayoutManager.e aiw;
    boolean aix;
    
    public b(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public b(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public b(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public b(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public final int iN()
    {
      if (this.aiw == null) {
        return -1;
      }
      return this.aiw.mIndex;
    }
  }
  
  static final class c
  {
    List<a> aiy;
    int[] mData;
    
    public final void a(a parama)
    {
      if (this.aiy == null) {
        this.aiy = new ArrayList();
      }
      int j = this.aiy.size();
      int i = 0;
      while (i < j)
      {
        a locala = (a)this.aiy.get(i);
        if (locala.mPosition == parama.mPosition) {
          this.aiy.remove(i);
        }
        if (locala.mPosition >= parama.mPosition)
        {
          this.aiy.add(i, parama);
          return;
        }
        i += 1;
      }
      this.aiy.add(parama);
    }
    
    final void al(int paramInt1, int paramInt2)
    {
      if ((this.mData == null) || (paramInt1 >= this.mData.length)) {}
      do
      {
        return;
        ca(paramInt1 + paramInt2);
        System.arraycopy(this.mData, paramInt1 + paramInt2, this.mData, paramInt1, this.mData.length - paramInt1 - paramInt2);
        Arrays.fill(this.mData, this.mData.length - paramInt2, this.mData.length, -1);
      } while (this.aiy == null);
      int i = this.aiy.size() - 1;
      label87:
      a locala;
      if (i >= 0)
      {
        locala = (a)this.aiy.get(i);
        if (locala.mPosition >= paramInt1)
        {
          if (locala.mPosition >= paramInt1 + paramInt2) {
            break label144;
          }
          this.aiy.remove(i);
        }
      }
      for (;;)
      {
        i -= 1;
        break label87;
        break;
        label144:
        locala.mPosition -= paramInt2;
      }
    }
    
    final void am(int paramInt1, int paramInt2)
    {
      if ((this.mData == null) || (paramInt1 >= this.mData.length)) {}
      for (;;)
      {
        return;
        ca(paramInt1 + paramInt2);
        System.arraycopy(this.mData, paramInt1, this.mData, paramInt1 + paramInt2, this.mData.length - paramInt1 - paramInt2);
        Arrays.fill(this.mData, paramInt1, paramInt1 + paramInt2, -1);
        if (this.aiy != null)
        {
          int i = this.aiy.size() - 1;
          while (i >= 0)
          {
            a locala = (a)this.aiy.get(i);
            if (locala.mPosition >= paramInt1) {
              locala.mPosition += paramInt2;
            }
            i -= 1;
          }
        }
      }
    }
    
    final int bY(int paramInt)
    {
      if (this.aiy != null)
      {
        int i = this.aiy.size() - 1;
        while (i >= 0)
        {
          if (((a)this.aiy.get(i)).mPosition >= paramInt) {
            this.aiy.remove(i);
          }
          i -= 1;
        }
      }
      return bZ(paramInt);
    }
    
    final int bZ(int paramInt)
    {
      if (this.mData == null) {
        return -1;
      }
      if (paramInt >= this.mData.length) {
        return -1;
      }
      a locala;
      int i;
      if (this.aiy != null)
      {
        locala = cb(paramInt);
        if (locala != null) {
          this.aiy.remove(locala);
        }
        int j = this.aiy.size();
        i = 0;
        if (i >= j) {
          break label178;
        }
        if (((a)this.aiy.get(i)).mPosition < paramInt) {}
      }
      for (;;)
      {
        if (i != -1)
        {
          locala = (a)this.aiy.get(i);
          this.aiy.remove(i);
        }
        for (i = locala.mPosition;; i = -1)
        {
          if (i != -1) {
            break label162;
          }
          Arrays.fill(this.mData, paramInt, this.mData.length, -1);
          return this.mData.length;
          i += 1;
          break;
        }
        label162:
        Arrays.fill(this.mData, paramInt, i + 1, -1);
        return i + 1;
        label178:
        i = -1;
      }
    }
    
    final void ca(int paramInt)
    {
      if (this.mData == null)
      {
        this.mData = new int[Math.max(paramInt, 10) + 1];
        Arrays.fill(this.mData, -1);
      }
      while (paramInt < this.mData.length) {
        return;
      }
      int[] arrayOfInt = this.mData;
      int i = this.mData.length;
      while (i <= paramInt) {
        i *= 2;
      }
      this.mData = new int[i];
      System.arraycopy(arrayOfInt, 0, this.mData, 0, arrayOfInt.length);
      Arrays.fill(this.mData, arrayOfInt.length, this.mData.length, -1);
    }
    
    public final a cb(int paramInt)
    {
      Object localObject;
      if (this.aiy == null)
      {
        localObject = null;
        return (a)localObject;
      }
      int i = this.aiy.size() - 1;
      for (;;)
      {
        if (i < 0) {
          break label61;
        }
        a locala = (a)this.aiy.get(i);
        localObject = locala;
        if (locala.mPosition == paramInt) {
          break;
        }
        i -= 1;
      }
      label61:
      return null;
    }
    
    final void clear()
    {
      if (this.mData != null) {
        Arrays.fill(this.mData, -1);
      }
      this.aiy = null;
    }
    
    public final a l(int paramInt1, int paramInt2, int paramInt3)
    {
      Object localObject;
      if (this.aiy == null)
      {
        localObject = null;
        return (a)localObject;
      }
      int j = this.aiy.size();
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          break label112;
        }
        a locala = (a)this.aiy.get(i);
        if (locala.mPosition >= paramInt2) {
          return null;
        }
        if (locala.mPosition >= paramInt1)
        {
          localObject = locala;
          if (paramInt3 == 0) {
            break;
          }
          localObject = locala;
          if (locala.aiz == paramInt3) {
            break;
          }
          localObject = locala;
          if (locala.aiB) {
            break;
          }
        }
        i += 1;
      }
      label112:
      return null;
    }
    
    static class a
      implements Parcelable
    {
      public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator() {};
      int[] aiA;
      boolean aiB;
      int aiz;
      int mPosition;
      
      a() {}
      
      a(Parcel paramParcel)
      {
        this.mPosition = paramParcel.readInt();
        this.aiz = paramParcel.readInt();
        if (paramParcel.readInt() == 1) {}
        for (;;)
        {
          this.aiB = bool;
          int i = paramParcel.readInt();
          if (i > 0)
          {
            this.aiA = new int[i];
            paramParcel.readIntArray(this.aiA);
          }
          return;
          bool = false;
        }
      }
      
      final int cc(int paramInt)
      {
        if (this.aiA == null) {
          return 0;
        }
        return this.aiA[paramInt];
      }
      
      public int describeContents()
      {
        return 0;
      }
      
      public String toString()
      {
        return "FullSpanItem{mPosition=" + this.mPosition + ", mGapDir=" + this.aiz + ", mHasUnwantedGapAfter=" + this.aiB + ", mGapPerSpan=" + Arrays.toString(this.aiA) + '}';
      }
      
      public void writeToParcel(Parcel paramParcel, int paramInt)
      {
        paramParcel.writeInt(this.mPosition);
        paramParcel.writeInt(this.aiz);
        if (this.aiB) {}
        for (paramInt = 1;; paramInt = 0)
        {
          paramParcel.writeInt(paramInt);
          if ((this.aiA == null) || (this.aiA.length <= 0)) {
            break;
          }
          paramParcel.writeInt(this.aiA.length);
          paramParcel.writeIntArray(this.aiA);
          return;
        }
        paramParcel.writeInt(0);
      }
    }
  }
  
  public static final class d
    implements Parcelable
  {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator() {};
    boolean acB;
    boolean acd;
    int acz;
    int aiC;
    int aiD;
    int[] aiE;
    int aiF;
    int[] aiG;
    boolean aim;
    List<StaggeredGridLayoutManager.c.a> aiy;
    
    public d() {}
    
    d(Parcel paramParcel)
    {
      this.acz = paramParcel.readInt();
      this.aiC = paramParcel.readInt();
      this.aiD = paramParcel.readInt();
      if (this.aiD > 0)
      {
        this.aiE = new int[this.aiD];
        paramParcel.readIntArray(this.aiE);
      }
      this.aiF = paramParcel.readInt();
      if (this.aiF > 0)
      {
        this.aiG = new int[this.aiF];
        paramParcel.readIntArray(this.aiG);
      }
      if (paramParcel.readInt() == 1)
      {
        bool1 = true;
        this.acd = bool1;
        if (paramParcel.readInt() != 1) {
          break label152;
        }
        bool1 = true;
        label113:
        this.acB = bool1;
        if (paramParcel.readInt() != 1) {
          break label157;
        }
      }
      label152:
      label157:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        this.aim = bool1;
        this.aiy = paramParcel.readArrayList(StaggeredGridLayoutManager.c.a.class.getClassLoader());
        return;
        bool1 = false;
        break;
        bool1 = false;
        break label113;
      }
    }
    
    public d(d paramd)
    {
      this.aiD = paramd.aiD;
      this.acz = paramd.acz;
      this.aiC = paramd.aiC;
      this.aiE = paramd.aiE;
      this.aiF = paramd.aiF;
      this.aiG = paramd.aiG;
      this.acd = paramd.acd;
      this.acB = paramd.acB;
      this.aim = paramd.aim;
      this.aiy = paramd.aiy;
    }
    
    public final int describeContents()
    {
      return 0;
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      int i = 1;
      paramParcel.writeInt(this.acz);
      paramParcel.writeInt(this.aiC);
      paramParcel.writeInt(this.aiD);
      if (this.aiD > 0) {
        paramParcel.writeIntArray(this.aiE);
      }
      paramParcel.writeInt(this.aiF);
      if (this.aiF > 0) {
        paramParcel.writeIntArray(this.aiG);
      }
      if (this.acd)
      {
        paramInt = 1;
        paramParcel.writeInt(paramInt);
        if (!this.acB) {
          break label120;
        }
        paramInt = 1;
        label87:
        paramParcel.writeInt(paramInt);
        if (!this.aim) {
          break label125;
        }
      }
      label120:
      label125:
      for (paramInt = i;; paramInt = 0)
      {
        paramParcel.writeInt(paramInt);
        paramParcel.writeList(this.aiy);
        return;
        paramInt = 0;
        break;
        paramInt = 0;
        break label87;
      }
    }
  }
  
  final class e
  {
    ArrayList<View> aiH = new ArrayList();
    int aiI = Integer.MIN_VALUE;
    int aiJ = Integer.MIN_VALUE;
    int aiK = 0;
    final int mIndex;
    
    e(int paramInt)
    {
      this.mIndex = paramInt;
    }
    
    private int an(int paramInt1, int paramInt2)
    {
      int m = -1;
      int n = StaggeredGridLayoutManager.this.aie.hy();
      int i1 = StaggeredGridLayoutManager.this.aie.hz();
      int i;
      if (paramInt2 > paramInt1) {
        i = 1;
      }
      for (;;)
      {
        int j = m;
        View localView;
        int i2;
        int i3;
        if (paramInt1 != paramInt2)
        {
          localView = (View)this.aiH.get(paramInt1);
          i2 = StaggeredGridLayoutManager.this.aie.aG(localView);
          i3 = StaggeredGridLayoutManager.this.aie.aH(localView);
          if (i2 > i1) {
            break label143;
          }
          j = 1;
          label94:
          if (i3 < n) {
            break label149;
          }
        }
        label143:
        label149:
        for (int k = 1;; k = 0)
        {
          if ((j == 0) || (k == 0) || ((i2 >= n) && (i3 <= i1))) {
            break label155;
          }
          j = StaggeredGridLayoutManager.aT(localView);
          return j;
          i = -1;
          break;
          j = 0;
          break label94;
        }
        label155:
        paramInt1 += i;
      }
    }
    
    private void iO()
    {
      Object localObject = (View)this.aiH.get(0);
      StaggeredGridLayoutManager.b localb = (StaggeredGridLayoutManager.b)((View)localObject).getLayoutParams();
      this.aiI = StaggeredGridLayoutManager.this.aie.aG((View)localObject);
      if (localb.aix)
      {
        localObject = StaggeredGridLayoutManager.this.aij.cb(localb.afr.getLayoutPosition());
        if ((localObject != null) && (((StaggeredGridLayoutManager.c.a)localObject).aiz == -1)) {
          this.aiI -= ((StaggeredGridLayoutManager.c.a)localObject).cc(this.mIndex);
        }
      }
    }
    
    private void iQ()
    {
      Object localObject = (View)this.aiH.get(this.aiH.size() - 1);
      StaggeredGridLayoutManager.b localb = (StaggeredGridLayoutManager.b)((View)localObject).getLayoutParams();
      this.aiJ = StaggeredGridLayoutManager.this.aie.aH((View)localObject);
      if (localb.aix)
      {
        localObject = StaggeredGridLayoutManager.this.aij.cb(localb.afr.getLayoutPosition());
        if ((localObject != null) && (((StaggeredGridLayoutManager.c.a)localObject).aiz == 1))
        {
          int i = this.aiJ;
          this.aiJ = (((StaggeredGridLayoutManager.c.a)localObject).cc(this.mIndex) + i);
        }
      }
    }
    
    public final View ao(int paramInt1, int paramInt2)
    {
      View localView2 = null;
      View localView1 = null;
      if (paramInt2 == -1)
      {
        int i = this.aiH.size();
        paramInt2 = 0;
        while (paramInt2 < i)
        {
          localView2 = (View)this.aiH.get(paramInt2);
          if (((StaggeredGridLayoutManager.this.acd) && (StaggeredGridLayoutManager.aT(localView2) <= paramInt1)) || ((!StaggeredGridLayoutManager.this.acd) && (StaggeredGridLayoutManager.aT(localView2) >= paramInt1)) || (!localView2.hasFocusable())) {
            break;
          }
          paramInt2 += 1;
          localView1 = localView2;
        }
        return localView1;
      }
      paramInt2 = this.aiH.size() - 1;
      for (localView1 = localView2; paramInt2 >= 0; localView1 = localView2)
      {
        localView2 = (View)this.aiH.get(paramInt2);
        if (((StaggeredGridLayoutManager.this.acd) && (StaggeredGridLayoutManager.aT(localView2) >= paramInt1)) || ((!StaggeredGridLayoutManager.this.acd) && (StaggeredGridLayoutManager.aT(localView2) <= paramInt1)) || (!localView2.hasFocusable())) {
          break;
        }
        paramInt2 -= 1;
      }
      return localView1;
    }
    
    final void bg(View paramView)
    {
      StaggeredGridLayoutManager.b localb = (StaggeredGridLayoutManager.b)paramView.getLayoutParams();
      localb.aiw = this;
      this.aiH.add(0, paramView);
      this.aiI = Integer.MIN_VALUE;
      if (this.aiH.size() == 1) {
        this.aiJ = Integer.MIN_VALUE;
      }
      if ((localb.afr.isRemoved()) || (localb.afr.isUpdated())) {
        this.aiK += StaggeredGridLayoutManager.this.aie.aK(paramView);
      }
    }
    
    final void bh(View paramView)
    {
      StaggeredGridLayoutManager.b localb = (StaggeredGridLayoutManager.b)paramView.getLayoutParams();
      localb.aiw = this;
      this.aiH.add(paramView);
      this.aiJ = Integer.MIN_VALUE;
      if (this.aiH.size() == 1) {
        this.aiI = Integer.MIN_VALUE;
      }
      if ((localb.afr.isRemoved()) || (localb.afr.isUpdated())) {
        this.aiK += StaggeredGridLayoutManager.this.aie.aK(paramView);
      }
    }
    
    final int cd(int paramInt)
    {
      if (this.aiI != Integer.MIN_VALUE) {
        paramInt = this.aiI;
      }
      while (this.aiH.size() == 0) {
        return paramInt;
      }
      iO();
      return this.aiI;
    }
    
    final int ce(int paramInt)
    {
      if (this.aiJ != Integer.MIN_VALUE) {
        paramInt = this.aiJ;
      }
      while (this.aiH.size() == 0) {
        return paramInt;
      }
      iQ();
      return this.aiJ;
    }
    
    final void cf(int paramInt)
    {
      this.aiI = paramInt;
      this.aiJ = paramInt;
    }
    
    final void cg(int paramInt)
    {
      if (this.aiI != Integer.MIN_VALUE) {
        this.aiI += paramInt;
      }
      if (this.aiJ != Integer.MIN_VALUE) {
        this.aiJ += paramInt;
      }
    }
    
    final void clear()
    {
      this.aiH.clear();
      this.aiI = Integer.MIN_VALUE;
      this.aiJ = Integer.MIN_VALUE;
      this.aiK = 0;
    }
    
    final int iP()
    {
      if (this.aiI != Integer.MIN_VALUE) {
        return this.aiI;
      }
      iO();
      return this.aiI;
    }
    
    final int iR()
    {
      if (this.aiJ != Integer.MIN_VALUE) {
        return this.aiJ;
      }
      iQ();
      return this.aiJ;
    }
    
    final void iS()
    {
      int i = this.aiH.size();
      View localView = (View)this.aiH.remove(i - 1);
      StaggeredGridLayoutManager.b localb = (StaggeredGridLayoutManager.b)localView.getLayoutParams();
      localb.aiw = null;
      if ((localb.afr.isRemoved()) || (localb.afr.isUpdated())) {
        this.aiK -= StaggeredGridLayoutManager.this.aie.aK(localView);
      }
      if (i == 1) {
        this.aiI = Integer.MIN_VALUE;
      }
      this.aiJ = Integer.MIN_VALUE;
    }
    
    final void iT()
    {
      View localView = (View)this.aiH.remove(0);
      StaggeredGridLayoutManager.b localb = (StaggeredGridLayoutManager.b)localView.getLayoutParams();
      localb.aiw = null;
      if (this.aiH.size() == 0) {
        this.aiJ = Integer.MIN_VALUE;
      }
      if ((localb.afr.isRemoved()) || (localb.afr.isUpdated())) {
        this.aiK -= StaggeredGridLayoutManager.this.aie.aK(localView);
      }
      this.aiI = Integer.MIN_VALUE;
    }
    
    public final int iU()
    {
      if (StaggeredGridLayoutManager.this.acd) {
        return an(this.aiH.size() - 1, -1);
      }
      return an(0, this.aiH.size());
    }
    
    public final int iV()
    {
      if (StaggeredGridLayoutManager.this.acd) {
        return an(0, this.aiH.size());
      }
      return an(this.aiH.size() - 1, -1);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/StaggeredGridLayoutManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */