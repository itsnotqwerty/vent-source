package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.a.a;
import android.support.v4.view.a.a.b;
import android.support.v4.view.r;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.Arrays;

public class GridLayoutManager
  extends LinearLayoutManager
{
  final Rect abA = new Rect();
  boolean abt = false;
  int abu = -1;
  int[] abv;
  View[] abw;
  final SparseIntArray abx = new SparseIntArray();
  final SparseIntArray aby = new SparseIntArray();
  c abz = new a();
  
  public GridLayoutManager(Context paramContext, int paramInt)
  {
    super(paramContext);
    bw(paramInt);
  }
  
  public GridLayoutManager(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(paramContext, paramInt2, paramBoolean);
    bw(paramInt1);
  }
  
  public GridLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    bw(a(paramContext, paramAttributeSet, paramInt1, paramInt2).spanCount);
  }
  
  private int M(int paramInt1, int paramInt2)
  {
    if ((this.hE == 1) && (gF())) {
      return this.abv[(this.abu - paramInt1)] - this.abv[(this.abu - paramInt1 - paramInt2)];
    }
    return this.abv[(paramInt1 + paramInt2)] - this.abv[paramInt1];
  }
  
  private int a(RecyclerView.p paramp, RecyclerView.u paramu, int paramInt)
  {
    if (!paramu.afZ) {
      return c.P(paramInt, this.abu);
    }
    int i = paramp.bL(paramInt);
    if (i == -1)
    {
      Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + paramInt);
      return 0;
    }
    return c.P(i, this.abu);
  }
  
  private void a(RecyclerView.p paramp, RecyclerView.u paramu, int paramInt, boolean paramBoolean)
  {
    int k = 0;
    int i;
    int j;
    if (paramBoolean)
    {
      i = 1;
      int m = 0;
      j = paramInt;
      paramInt = m;
    }
    while (paramInt != j)
    {
      View localView = this.abw[paramInt];
      b localb = (b)localView.getLayoutParams();
      localb.abC = c(paramp, paramu, aT(localView));
      localb.abB = k;
      k += localb.abC;
      paramInt += i;
      continue;
      paramInt -= 1;
      i = -1;
      j = -1;
    }
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    RecyclerView.j localj = (RecyclerView.j)paramView.getLayoutParams();
    if (paramBoolean) {
      if ((!this.afi) || (!RecyclerView.i.h(paramView.getMeasuredWidth(), paramInt1, localj.width)) || (!RecyclerView.i.h(paramView.getMeasuredHeight(), paramInt2, localj.height))) {
        paramBoolean = true;
      }
    }
    for (;;)
    {
      if (paramBoolean) {
        paramView.measure(paramInt1, paramInt2);
      }
      return;
      paramBoolean = false;
      continue;
      paramBoolean = a(paramView, paramInt1, paramInt2, localj);
    }
  }
  
  private int b(RecyclerView.p paramp, RecyclerView.u paramu, int paramInt)
  {
    if (!paramu.afZ) {
      i = this.abz.O(paramInt, this.abu);
    }
    int j;
    do
    {
      return i;
      j = this.aby.get(paramInt, -1);
      i = j;
    } while (j != -1);
    int i = paramp.bL(paramInt);
    if (i == -1)
    {
      Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + paramInt);
      return 0;
    }
    return this.abz.O(i, this.abu);
  }
  
  private void b(View paramView, int paramInt, boolean paramBoolean)
  {
    b localb = (b)paramView.getLayoutParams();
    Rect localRect = localb.abA;
    int j = localRect.top + localRect.bottom + localb.topMargin + localb.bottomMargin;
    int i = localRect.left;
    int k = localRect.right;
    int m = localb.leftMargin;
    i = localb.rightMargin + (k + i + m);
    k = M(localb.abB, localb.abC);
    if (this.hE == 1)
    {
      i = b(k, paramInt, i, localb.width, false);
      paramInt = b(this.acb.hA(), this.afn, j, localb.height, true);
    }
    for (;;)
    {
      a(paramView, i, paramInt, paramBoolean);
      return;
      paramInt = b(k, paramInt, j, localb.height, false);
      i = b(this.acb.hA(), this.afm, i, localb.width, true);
    }
  }
  
  private void bv(int paramInt)
  {
    int[] arrayOfInt2 = this.abv;
    int n = this.abu;
    int[] arrayOfInt1;
    if ((arrayOfInt2 != null) && (arrayOfInt2.length == n + 1))
    {
      arrayOfInt1 = arrayOfInt2;
      if (arrayOfInt2[(arrayOfInt2.length - 1)] == paramInt) {}
    }
    else
    {
      arrayOfInt1 = new int[n + 1];
    }
    arrayOfInt1[0] = 0;
    int m = paramInt / n;
    int i1 = paramInt % n;
    int i = 1;
    paramInt = 0;
    int j = 0;
    int k;
    if (i <= n)
    {
      paramInt += i1;
      if ((paramInt <= 0) || (n - paramInt >= i1)) {
        break label133;
      }
      k = m + 1;
      paramInt -= n;
    }
    for (;;)
    {
      j += k;
      arrayOfInt1[i] = j;
      i += 1;
      break;
      this.abv = arrayOfInt1;
      return;
      label133:
      k = m;
    }
  }
  
  private void bw(int paramInt)
  {
    if (paramInt == this.abu) {
      return;
    }
    this.abt = true;
    if (paramInt <= 0) {
      throw new IllegalArgumentException("Span count should be at least 1. Provided " + paramInt);
    }
    this.abu = paramInt;
    this.abz.abD.clear();
    requestLayout();
  }
  
  private int c(RecyclerView.p paramp, RecyclerView.u paramu, int paramInt)
  {
    if (!paramu.afZ) {}
    do
    {
      return 1;
      int i = this.abx.get(paramInt, -1);
      if (i != -1) {
        return i;
      }
    } while (paramp.bL(paramInt) != -1);
    Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + paramInt);
    return 1;
  }
  
  private void hc()
  {
    if (this.hE == 1) {}
    for (int i = this.db - getPaddingRight() - getPaddingLeft();; i = this.dc - getPaddingBottom() - getPaddingTop())
    {
      bv(i);
      return;
    }
  }
  
  private void hd()
  {
    if ((this.abw == null) || (this.abw.length != this.abu)) {
      this.abw = new View[this.abu];
    }
  }
  
  public final void I(int paramInt1, int paramInt2)
  {
    this.abz.abD.clear();
  }
  
  public final void J(int paramInt1, int paramInt2)
  {
    this.abz.abD.clear();
  }
  
  public final void K(int paramInt1, int paramInt2)
  {
    this.abz.abD.clear();
  }
  
  public final void L(int paramInt1, int paramInt2)
  {
    this.abz.abD.clear();
  }
  
  public final void W(boolean paramBoolean)
  {
    if (paramBoolean) {
      throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }
    super.W(false);
  }
  
  public final int a(int paramInt, RecyclerView.p paramp, RecyclerView.u paramu)
  {
    hc();
    hd();
    return super.a(paramInt, paramp, paramu);
  }
  
  public final int a(RecyclerView.p paramp, RecyclerView.u paramu)
  {
    if (this.hE == 0) {
      return this.abu;
    }
    if (paramu.getItemCount() <= 0) {
      return 0;
    }
    return a(paramp, paramu, paramu.getItemCount() - 1) + 1;
  }
  
  public final RecyclerView.j a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new b(paramContext, paramAttributeSet);
  }
  
  final View a(RecyclerView.p paramp, RecyclerView.u paramu, int paramInt1, int paramInt2, int paramInt3)
  {
    hj();
    int j = this.acb.hy();
    int k = this.acb.hz();
    int i;
    Object localObject1;
    Object localObject2;
    label37:
    View localView;
    if (paramInt2 > paramInt1)
    {
      i = 1;
      localObject1 = null;
      localObject2 = null;
      if (paramInt1 == paramInt2) {
        break label164;
      }
      localView = getChildAt(paramInt1);
      int m = aT(localView);
      if ((m < 0) || (m >= paramInt3) || (b(paramp, paramu, m) != 0)) {
        break label179;
      }
      if (!((RecyclerView.j)localView.getLayoutParams()).afr.isRemoved()) {
        break label120;
      }
      if (localObject2 != null) {
        break label179;
      }
      localObject2 = localView;
    }
    label120:
    label164:
    label176:
    label179:
    for (;;)
    {
      paramInt1 += i;
      break label37;
      i = -1;
      break;
      Object localObject3;
      if (this.acb.aG(localView) < k)
      {
        localObject3 = localView;
        if (this.acb.aH(localView) >= j) {}
      }
      else
      {
        if (localObject1 != null) {
          break label179;
        }
        localObject1 = localView;
        continue;
        if (localObject1 == null) {
          break label176;
        }
        localObject3 = localObject1;
      }
      return (View)localObject3;
      return (View)localObject2;
    }
  }
  
  public final View a(View paramView, int paramInt, RecyclerView.p paramp, RecyclerView.u paramu)
  {
    View localView3 = aM(paramView);
    View localView2;
    if (localView3 == null) {
      localView2 = null;
    }
    Object localObject;
    int i6;
    int i7;
    label85:
    int m;
    label102:
    int n;
    int i2;
    int i3;
    View localView1;
    int i;
    int j;
    int i1;
    label213:
    label218:
    label232:
    label238:
    b localb;
    int i9;
    int i10;
    do
    {
      return localView2;
      localObject = (b)localView3.getLayoutParams();
      i6 = ((b)localObject).abB;
      i7 = ((b)localObject).abB + ((b)localObject).abC;
      if (super.a(paramView, paramInt, paramp, paramu) == null) {
        return null;
      }
      int i12;
      int k;
      if (bB(paramInt) == 1)
      {
        i12 = 1;
        if (i12 == this.ace) {
          break label213;
        }
        paramInt = 1;
        if (paramInt == 0) {
          break label218;
        }
        paramInt = getChildCount() - 1;
        m = -1;
        k = -1;
        if ((this.hE != 1) || (!gF())) {
          break label232;
        }
      }
      for (n = 1;; n = 0)
      {
        localObject = null;
        i2 = -1;
        i3 = 0;
        localView1 = null;
        i = -1;
        j = 0;
        int i8 = a(paramp, paramu, paramInt);
        i1 = paramInt;
        if (i1 != k)
        {
          paramInt = a(paramp, paramu, i1);
          paramView = getChildAt(i1);
          if (paramView != localView3)
          {
            if ((!paramView.hasFocusable()) || (paramInt == i8)) {
              break label238;
            }
            if (localObject == null) {
              break label596;
            }
          }
        }
        if (localObject == null) {
          break label593;
        }
        return (View)localObject;
        i12 = 0;
        break;
        paramInt = 0;
        break label85;
        paramInt = 0;
        m = 1;
        k = getChildCount();
        break label102;
      }
      localb = (b)paramView.getLayoutParams();
      i9 = localb.abB;
      i10 = localb.abB + localb.abC;
      if ((!paramView.hasFocusable()) || (i9 != i6)) {
        break;
      }
      localView2 = paramView;
    } while (i10 == i7);
    int i5 = 0;
    if (((paramView.hasFocusable()) && (localObject == null)) || ((!paramView.hasFocusable()) && (localView1 == null)))
    {
      paramInt = 1;
      label320:
      if (paramInt == 0) {
        break label596;
      }
      if (!paramView.hasFocusable()) {
        break label564;
      }
      i2 = localb.abB;
      i3 = Math.min(i10, i7) - Math.max(i9, i6);
      paramInt = j;
      localObject = paramView;
    }
    for (;;)
    {
      i1 += m;
      j = paramInt;
      break;
      paramInt = Math.max(i9, i6);
      int i11 = Math.min(i10, i7) - paramInt;
      if (paramView.hasFocusable())
      {
        if (i11 > i3)
        {
          paramInt = 1;
          break label320;
        }
        paramInt = i5;
        if (i11 != i3) {
          break label320;
        }
        if (i9 > i2) {}
        for (i4 = 1;; i4 = 0)
        {
          paramInt = i5;
          if (n != i4) {
            break;
          }
          paramInt = 1;
          break;
        }
      }
      paramInt = i5;
      if (localObject != null) {
        break label320;
      }
      if ((this.afd.bi(paramView)) && (this.afe.bi(paramView)))
      {
        paramInt = 1;
        label485:
        if (paramInt != 0) {
          break label517;
        }
      }
      label517:
      for (int i4 = 1;; i4 = 0)
      {
        paramInt = i5;
        if (i4 == 0) {
          break;
        }
        if (i11 <= j) {
          break label523;
        }
        paramInt = 1;
        break;
        paramInt = 0;
        break label485;
      }
      label523:
      paramInt = i5;
      if (i11 != j) {
        break label320;
      }
      if (i9 > i) {}
      for (i4 = 1;; i4 = 0)
      {
        paramInt = i5;
        if (n != i4) {
          break;
        }
        paramInt = 1;
        break;
      }
      label564:
      i = localb.abB;
      paramInt = Math.min(i10, i7) - Math.max(i9, i6);
      localView1 = paramView;
      continue;
      label593:
      return localView1;
      label596:
      paramInt = j;
    }
  }
  
  public final void a(Rect paramRect, int paramInt1, int paramInt2)
  {
    if (this.abv == null) {
      super.a(paramRect, paramInt1, paramInt2);
    }
    int i = getPaddingLeft();
    int j = getPaddingRight() + i;
    int k = getPaddingTop() + getPaddingBottom();
    if (this.hE == 1)
    {
      i = g(paramInt2, k + paramRect.height(), r.R(this.YZ));
      paramInt2 = g(paramInt1, j + this.abv[(this.abv.length - 1)], r.Q(this.YZ));
      paramInt1 = i;
    }
    for (;;)
    {
      setMeasuredDimension(paramInt2, paramInt1);
      return;
      i = g(paramInt1, j + paramRect.width(), r.Q(this.YZ));
      paramInt1 = g(paramInt2, k + this.abv[(this.abv.length - 1)], r.R(this.YZ));
      paramInt2 = i;
    }
  }
  
  final void a(RecyclerView.p paramp, RecyclerView.u paramu, LinearLayoutManager.a parama, int paramInt)
  {
    int i = 1;
    super.a(paramp, paramu, parama, paramInt);
    hc();
    if ((paramu.getItemCount() > 0) && (!paramu.afZ))
    {
      if (paramInt == 1) {}
      for (paramInt = i;; paramInt = 0)
      {
        i = b(paramp, paramu, parama.mPosition);
        if (paramInt == 0) {
          break;
        }
        while ((i > 0) && (parama.mPosition > 0))
        {
          parama.mPosition -= 1;
          i = b(paramp, paramu, parama.mPosition);
        }
      }
      int k = paramu.getItemCount();
      paramInt = parama.mPosition;
      while (paramInt < k - 1)
      {
        int j = b(paramp, paramu, paramInt + 1);
        if (j <= i) {
          break;
        }
        paramInt += 1;
        i = j;
      }
      parama.mPosition = paramInt;
    }
    hd();
  }
  
  final void a(RecyclerView.p paramp, RecyclerView.u paramu, LinearLayoutManager.c paramc, LinearLayoutManager.b paramb)
  {
    int i3 = this.acb.hB();
    int j;
    int k;
    label38:
    boolean bool;
    label58:
    int n;
    if (i3 != 1073741824)
    {
      j = 1;
      if (getChildCount() <= 0) {
        break label212;
      }
      k = this.abv[this.abu];
      if (j != 0) {
        hc();
      }
      if (paramc.abI != 1) {
        break label218;
      }
      bool = true;
      m = 0;
      i = this.abu;
      n = m;
      if (!bool)
      {
        i = b(paramp, paramu, paramc.abH) + c(paramp, paramu, paramc.abH);
        n = m;
      }
    }
    int i1;
    label212:
    label218:
    Object localObject;
    for (;;)
    {
      if ((n >= this.abu) || (!paramc.b(paramu)) || (i <= 0)) {
        break label266;
      }
      m = paramc.abH;
      i1 = c(paramp, paramu, m);
      if (i1 > this.abu)
      {
        throw new IllegalArgumentException("Item at position " + m + " requires " + i1 + " spans but GridLayoutManager has only " + this.abu + " spans.");
        j = 0;
        break;
        k = 0;
        break label38;
        bool = false;
        break label58;
      }
      i -= i1;
      if (i < 0) {
        break label266;
      }
      localObject = paramc.a(paramp);
      if (localObject == null) {
        break label266;
      }
      this.abw[n] = localObject;
      n += 1;
    }
    label266:
    if (n == 0)
    {
      paramb.Pw = true;
      return;
    }
    int i = 0;
    float f1 = 0.0F;
    a(paramp, paramu, n, bool);
    int m = 0;
    label331:
    int i2;
    if (m < n)
    {
      paramp = this.abw[m];
      if (paramc.acy == null) {
        if (bool)
        {
          super.c(paramp, -1, false);
          f(paramp, this.abA);
          b(paramp, i3, false);
          i2 = this.acb.aK(paramp);
          i1 = i;
          if (i2 > i) {
            i1 = i2;
          }
          paramu = (b)paramp.getLayoutParams();
          float f2 = this.acb.aL(paramp) * 1.0F / paramu.abC;
          if (f2 <= f1) {
            break label1156;
          }
          f1 = f2;
        }
      }
    }
    label553:
    label719:
    label820:
    label1056:
    label1104:
    label1144:
    label1153:
    label1156:
    for (;;)
    {
      m += 1;
      i = i1;
      break;
      super.c(paramp, 0, false);
      break label331;
      if (bool)
      {
        super.c(paramp, -1, true);
        break label331;
      }
      super.c(paramp, 0, true);
      break label331;
      if (j != 0)
      {
        bv(Math.max(Math.round(this.abu * f1), k));
        i = 0;
        k = 0;
        j = i;
        if (k >= n) {
          break label553;
        }
        paramp = this.abw[k];
        b(paramp, 1073741824, true);
        j = this.acb.aK(paramp);
        if (j <= i) {
          break label1153;
        }
        i = j;
      }
      for (;;)
      {
        k += 1;
        break;
        j = i;
        i = 0;
        if (i < n)
        {
          paramp = this.abw[i];
          if (this.acb.aK(paramp) != j)
          {
            paramu = (b)paramp.getLayoutParams();
            localObject = paramu.abA;
            m = ((Rect)localObject).top + ((Rect)localObject).bottom + paramu.topMargin + paramu.bottomMargin;
            k = ((Rect)localObject).left;
            k = ((Rect)localObject).right + k + paramu.leftMargin + paramu.rightMargin;
            i1 = M(paramu.abB, paramu.abC);
            if (this.hE != 1) {
              break label719;
            }
            k = b(i1, 1073741824, k, paramu.width, false);
          }
          for (m = View.MeasureSpec.makeMeasureSpec(j - m, 1073741824);; m = b(i1, 1073741824, m, paramu.height, false))
          {
            a(paramp, k, m, true);
            i += 1;
            break;
            k = View.MeasureSpec.makeMeasureSpec(j - k, 1073741824);
          }
        }
        paramb.acs = j;
        i1 = 0;
        m = 0;
        k = 0;
        if (this.hE == 1) {
          if (paramc.oO == -1)
          {
            i = paramc.EK;
            k = i - j;
            j = i1;
            i1 = 0;
            i2 = j;
            j = i;
            i = k;
            k = i2;
            if (i1 >= n) {
              break label1144;
            }
            paramp = this.abw[i1];
            paramu = (b)paramp.getLayoutParams();
            if (this.hE != 1) {
              break label1104;
            }
            if (!gF()) {
              break label1056;
            }
            k = getPaddingLeft();
            m = this.abv[(this.abu - paramu.abB)] + k;
            i2 = m - this.acb.aL(paramp);
            k = i;
            i = i2;
          }
        }
        for (;;)
        {
          h(paramp, i, k, m, j);
          if ((paramu.afr.isRemoved()) || (paramu.afr.isUpdated())) {
            paramb.act = true;
          }
          paramb.Px |= paramp.hasFocusable();
          i2 = i1 + 1;
          i1 = k;
          k = i;
          i = i1;
          i1 = i2;
          break label820;
          k = paramc.EK;
          i = j + k;
          j = i1;
          break;
          if (paramc.oO == -1)
          {
            m = paramc.EK;
            j = m - j;
            i = 0;
            break;
          }
          i = paramc.EK;
          m = i + j;
          i1 = 0;
          j = i;
          i = i1;
          break;
          m = getPaddingLeft() + this.abv[paramu.abB];
          i2 = this.acb.aL(paramp);
          k = i;
          i2 += m;
          i = m;
          m = i2;
          continue;
          i2 = getPaddingTop() + this.abv[paramu.abB];
          j = i2 + this.acb.aL(paramp);
          i = k;
          k = i2;
        }
        Arrays.fill(this.abw, null);
        return;
      }
    }
  }
  
  public final void a(RecyclerView.p paramp, RecyclerView.u paramu, View paramView, a parama)
  {
    boolean bool2 = false;
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (!(localLayoutParams instanceof b))
    {
      super.b(paramView, parama);
      return;
    }
    paramView = (b)localLayoutParams;
    int i = a(paramp, paramu, paramView.afr.getLayoutPosition());
    if (this.hE == 0)
    {
      j = paramView.abB;
      k = paramView.abC;
      if ((this.abu > 1) && (paramView.abC == this.abu)) {}
      for (bool1 = true;; bool1 = false)
      {
        parama.G(a.b.a(j, k, i, 1, bool1));
        return;
      }
    }
    int j = paramView.abB;
    int k = paramView.abC;
    boolean bool1 = bool2;
    if (this.abu > 1)
    {
      bool1 = bool2;
      if (paramView.abC == this.abu) {
        bool1 = true;
      }
    }
    parama.G(a.b.a(i, 1, j, k, bool1));
  }
  
  public final void a(RecyclerView.u paramu)
  {
    super.a(paramu);
    this.abt = false;
  }
  
  final void a(RecyclerView.u paramu, LinearLayoutManager.c paramc, RecyclerView.i.a parama)
  {
    int j = this.abu;
    int i = 0;
    while ((i < this.abu) && (paramc.b(paramu)) && (j > 0))
    {
      parama.C(paramc.abH, Math.max(0, paramc.acu));
      j -= 1;
      paramc.abH += paramc.abI;
      i += 1;
    }
  }
  
  public final boolean a(RecyclerView.j paramj)
  {
    return paramj instanceof b;
  }
  
  public final int b(int paramInt, RecyclerView.p paramp, RecyclerView.u paramu)
  {
    hc();
    hd();
    return super.b(paramInt, paramp, paramu);
  }
  
  public final int b(RecyclerView.p paramp, RecyclerView.u paramu)
  {
    if (this.hE == 1) {
      return this.abu;
    }
    if (paramu.getItemCount() <= 0) {
      return 0;
    }
    return a(paramp, paramu, paramu.getItemCount() - 1) + 1;
  }
  
  public final void c(RecyclerView.p paramp, RecyclerView.u paramu)
  {
    if (paramu.afZ)
    {
      int j = getChildCount();
      int i = 0;
      while (i < j)
      {
        b localb = (b)getChildAt(i).getLayoutParams();
        int k = localb.afr.getLayoutPosition();
        this.abx.put(k, localb.abC);
        this.aby.put(k, localb.abB);
        i += 1;
      }
    }
    super.c(paramp, paramu);
    this.abx.clear();
    this.aby.clear();
  }
  
  public final RecyclerView.j d(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new b((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new b(paramLayoutParams);
  }
  
  public final void ha()
  {
    this.abz.abD.clear();
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
    return (this.ack == null) && (!this.abt);
  }
  
  public static final class a
    extends GridLayoutManager.c
  {
    public final int N(int paramInt1, int paramInt2)
    {
      return paramInt1 % paramInt2;
    }
  }
  
  public static final class b
    extends RecyclerView.j
  {
    int abB = -1;
    int abC = 0;
    
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
  }
  
  public static abstract class c
  {
    final SparseIntArray abD = new SparseIntArray();
    private boolean abE = false;
    
    public static int P(int paramInt1, int paramInt2)
    {
      int m = 0;
      int j = 0;
      int i = 0;
      if (m < paramInt1)
      {
        int n = i + 1;
        int k;
        if (n == paramInt2)
        {
          k = j + 1;
          i = 0;
        }
        for (;;)
        {
          m += 1;
          j = k;
          break;
          k = j;
          i = n;
          if (n > paramInt2)
          {
            i = 1;
            k = j + 1;
          }
        }
      }
      paramInt1 = j;
      if (i + 1 > paramInt2) {
        paramInt1 = j + 1;
      }
      return paramInt1;
    }
    
    public int N(int paramInt1, int paramInt2)
    {
      if (1 == paramInt2) {
        return 0;
      }
      int j;
      int i;
      int k;
      if ((this.abE) && (this.abD.size() > 0))
      {
        j = this.abD.size() - 1;
        i = 0;
        while (i <= j)
        {
          k = i + j >>> 1;
          if (this.abD.keyAt(k) < paramInt1) {
            i = k + 1;
          } else {
            j = k - 1;
          }
        }
        i -= 1;
        if ((i >= 0) && (i < this.abD.size()))
        {
          i = this.abD.keyAt(i);
          if (i < 0) {
            break label193;
          }
          j = this.abD.get(i) + 1;
          k = i + 1;
          i = j;
          j = k;
        }
      }
      for (;;)
      {
        label137:
        if (j < paramInt1)
        {
          k = i + 1;
          if (k == paramInt2) {
            i = 0;
          }
          for (;;)
          {
            j += 1;
            break label137;
            i = -1;
            break;
            i = k;
            if (k > paramInt2) {
              i = 1;
            }
          }
        }
        if (i + 1 > paramInt2) {
          break;
        }
        return i;
        label193:
        j = 0;
        i = 0;
      }
    }
    
    final int O(int paramInt1, int paramInt2)
    {
      int i;
      if (!this.abE) {
        i = N(paramInt1, paramInt2);
      }
      int j;
      do
      {
        return i;
        j = this.abD.get(paramInt1, -1);
        i = j;
      } while (j != -1);
      paramInt2 = N(paramInt1, paramInt2);
      this.abD.put(paramInt1, paramInt2);
      return paramInt2;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/GridLayoutManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */