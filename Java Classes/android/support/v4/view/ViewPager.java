package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import java.lang.annotation.Annotation;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ViewPager
  extends ViewGroup
{
  static final int[] Gf = { 16842931 };
  private static final Comparator<b> Gh = new Comparator() {};
  private static final Interpolator Gi = new Interpolator()
  {
    public final float getInterpolation(float paramAnonymousFloat)
    {
      paramAnonymousFloat -= 1.0F;
      return paramAnonymousFloat * (paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat) + 1.0F;
    }
  };
  private static final j Hf = new j();
  private int GA;
  private int GB;
  private boolean GC;
  private boolean GD;
  private int GE = 1;
  private boolean GF;
  private int GG;
  private int GH;
  private float GI;
  private float GJ;
  private float GK;
  private float GL;
  private int GM;
  private int GN;
  private int GO;
  private int GP;
  private boolean GQ;
  private EdgeEffect GR;
  private EdgeEffect GS;
  private boolean GT = true;
  private boolean GU = false;
  private boolean GV;
  private int GW;
  public List<f> GX;
  private f GY;
  private f GZ;
  private int Gg;
  private final ArrayList<b> Gj = new ArrayList();
  private final b Gk = new b();
  private final Rect Gl = new Rect();
  o Gm;
  int Gn;
  private int Go = -1;
  private Parcelable Gp = null;
  private ClassLoader Gq = null;
  private Scroller Gr;
  private boolean Gs;
  private h Gt;
  private int Gu;
  private Drawable Gv;
  private int Gw;
  private int Gx;
  private float Gy = -3.4028235E38F;
  private float Gz = Float.MAX_VALUE;
  public List<e> Ha;
  private g Hb;
  private int Hc;
  private int Hd;
  private ArrayList<View> He;
  private final Runnable Hg = new Runnable()
  {
    public final void run()
    {
      ViewPager.this.setScrollState(0);
      ViewPager.this.dP();
    }
  };
  private VelocityTracker jJ;
  private int jK = -1;
  private boolean mInLayout;
  private boolean na;
  private int nc;
  private int pe = 0;
  
  public ViewPager(Context paramContext)
  {
    super(paramContext);
    dN();
  }
  
  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    dN();
  }
  
  private Rect a(Rect paramRect, View paramView)
  {
    if (paramRect == null) {
      paramRect = new Rect();
    }
    for (;;)
    {
      if (paramView == null)
      {
        paramRect.set(0, 0, 0, 0);
        return paramRect;
      }
      paramRect.left = paramView.getLeft();
      paramRect.right = paramView.getRight();
      paramRect.top = paramView.getTop();
      paramRect.bottom = paramView.getBottom();
      for (paramView = paramView.getParent(); ((paramView instanceof ViewGroup)) && (paramView != this); paramView = paramView.getParent())
      {
        paramView = (ViewGroup)paramView;
        paramRect.left += paramView.getLeft();
        paramRect.right += paramView.getRight();
        paramRect.top += paramView.getTop();
        paramRect.bottom += paramView.getBottom();
      }
      return paramRect;
    }
  }
  
  private void a(int paramInt1, float paramFloat, int paramInt2)
  {
    int i;
    int k;
    int i2;
    int m;
    Object localObject;
    int j;
    label120:
    int n;
    if (this.GW > 0)
    {
      int i1 = getScrollX();
      i = getPaddingLeft();
      k = getPaddingRight();
      i2 = getWidth();
      int i3 = getChildCount();
      m = 0;
      if (m < i3)
      {
        localObject = getChildAt(m);
        c localc = (c)((View)localObject).getLayoutParams();
        if (!localc.Hl) {
          break label420;
        }
        switch (localc.gravity & 0x7)
        {
        case 2: 
        case 4: 
        default: 
          j = i;
          int i4 = j + i1 - ((View)localObject).getLeft();
          n = k;
          j = i;
          if (i4 != 0)
          {
            ((View)localObject).offsetLeftAndRight(i4);
            j = i;
            n = k;
          }
          break;
        }
      }
    }
    for (;;)
    {
      m += 1;
      i = j;
      k = n;
      break;
      n = i + ((View)localObject).getWidth();
      j = i;
      i = n;
      break label120;
      j = Math.max((i2 - ((View)localObject).getMeasuredWidth()) / 2, i);
      break label120;
      j = i2 - k - ((View)localObject).getMeasuredWidth();
      k += ((View)localObject).getMeasuredWidth();
      break label120;
      if (this.GY != null) {
        this.GY.a(paramInt1, paramFloat, paramInt2);
      }
      if (this.GX != null)
      {
        j = this.GX.size();
        i = 0;
        while (i < j)
        {
          localObject = (f)this.GX.get(i);
          if (localObject != null) {
            ((f)localObject).a(paramInt1, paramFloat, paramInt2);
          }
          i += 1;
        }
      }
      if (this.GZ != null) {
        this.GZ.a(paramInt1, paramFloat, paramInt2);
      }
      if (this.Hb != null)
      {
        getScrollX();
        paramInt2 = getChildCount();
        paramInt1 = 0;
        while (paramInt1 < paramInt2)
        {
          localObject = getChildAt(paramInt1);
          if (!((c)((View)localObject).getLayoutParams()).Hl)
          {
            ((View)localObject).getLeft();
            getClientWidth();
          }
          paramInt1 += 1;
        }
      }
      this.GV = true;
      return;
      label420:
      n = k;
      j = i;
    }
  }
  
  private void a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    b localb = ay(paramInt1);
    if (localb != null) {}
    for (int j = (int)(getClientWidth() * Math.max(this.Gy, Math.min(localb.hO, this.Gz)));; j = 0)
    {
      if (paramBoolean1)
      {
        if (getChildCount() == 0)
        {
          setScrollingCacheEnabled(false);
          if (paramBoolean2) {
            aA(paramInt1);
          }
          return;
        }
        int i;
        if ((this.Gr != null) && (!this.Gr.isFinished()))
        {
          i = 1;
          label87:
          if (i == 0) {
            break label184;
          }
          if (!this.Gs) {
            break label172;
          }
          i = this.Gr.getCurrX();
          label108:
          this.Gr.abortAnimation();
          setScrollingCacheEnabled(false);
        }
        int k;
        int m;
        for (;;)
        {
          k = getScrollY();
          j -= i;
          m = 0 - k;
          if ((j != 0) || (m != 0)) {
            break label193;
          }
          v(false);
          dP();
          setScrollState(0);
          break;
          i = 0;
          break label87;
          label172:
          i = this.Gr.getStartX();
          break label108;
          label184:
          i = getScrollX();
        }
        label193:
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int n = getClientWidth();
        int i1 = n / 2;
        float f3 = Math.min(1.0F, 1.0F * Math.abs(j) / n);
        float f1 = i1;
        float f2 = i1;
        f3 = (float)Math.sin((f3 - 0.5F) * 0.47123894F);
        paramInt2 = Math.abs(paramInt2);
        if (paramInt2 > 0) {}
        for (paramInt2 = Math.round(1000.0F * Math.abs((f2 * f3 + f1) / paramInt2)) * 4;; paramInt2 = (int)((Math.abs(j) / (f1 * 1.0F + this.Gu) + 1.0F) * 100.0F))
        {
          paramInt2 = Math.min(paramInt2, 600);
          this.Gs = false;
          this.Gr.startScroll(i, k, j, m, paramInt2);
          r.I(this);
          break;
          f1 = n;
        }
      }
      if (paramBoolean2) {
        aA(paramInt1);
      }
      v(false);
      scrollTo(j, 0);
      az(j);
      return;
    }
  }
  
  private void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }
  
  private void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    boolean bool = false;
    if ((this.Gm == null) || (this.Gm.getCount() <= 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    if ((!paramBoolean2) && (this.Gn == paramInt1) && (this.Gj.size() != 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i;
    if (paramInt1 < 0) {
      i = 0;
    }
    for (;;)
    {
      paramInt1 = this.GE;
      if ((i <= this.Gn + paramInt1) && (i >= this.Gn - paramInt1)) {
        break;
      }
      paramInt1 = 0;
      while (paramInt1 < this.Gj.size())
      {
        ((b)this.Gj.get(paramInt1)).Hj = true;
        paramInt1 += 1;
      }
      i = paramInt1;
      if (paramInt1 >= this.Gm.getCount()) {
        i = this.Gm.getCount() - 1;
      }
    }
    paramBoolean2 = bool;
    if (this.Gn != i) {
      paramBoolean2 = true;
    }
    if (this.GT)
    {
      this.Gn = i;
      if (paramBoolean2) {
        aA(i);
      }
      requestLayout();
      return;
    }
    ax(i);
    a(i, paramBoolean1, paramInt2, paramBoolean2);
  }
  
  private void a(b paramb1, int paramInt, b paramb2)
  {
    int m = this.Gm.getCount();
    int i = getClientWidth();
    float f2;
    if (i > 0)
    {
      f2 = this.Gu / i;
      if (paramb2 == null) {
        break label393;
      }
      i = paramb2.position;
      if (i < paramb1.position)
      {
        f1 = paramb2.hO + paramb2.Hk + f2;
        i += 1;
        j = 0;
      }
    }
    else
    {
      for (;;)
      {
        if ((i > paramb1.position) || (j >= this.Gj.size())) {
          break label393;
        }
        for (paramb2 = (b)this.Gj.get(j);; paramb2 = (b)this.Gj.get(j))
        {
          k = i;
          f3 = f1;
          if (i <= paramb2.position) {
            break;
          }
          k = i;
          f3 = f1;
          if (j >= this.Gj.size() - 1) {
            break;
          }
          j += 1;
        }
        f2 = 0.0F;
        break;
        while (k < paramb2.position)
        {
          f3 += 1.0F + f2;
          k += 1;
        }
        paramb2.hO = f3;
        f1 = f3 + (paramb2.Hk + f2);
        i = k + 1;
      }
    }
    if (i > paramb1.position)
    {
      j = this.Gj.size() - 1;
      f1 = paramb2.hO;
      i -= 1;
      while ((i >= paramb1.position) && (j >= 0))
      {
        for (paramb2 = (b)this.Gj.get(j);; paramb2 = (b)this.Gj.get(j))
        {
          k = i;
          f3 = f1;
          if (i >= paramb2.position) {
            break;
          }
          k = i;
          f3 = f1;
          if (j <= 0) {
            break;
          }
          j -= 1;
        }
        while (k > paramb2.position)
        {
          f3 -= 1.0F + f2;
          k -= 1;
        }
        f1 = f3 - (paramb2.Hk + f2);
        paramb2.hO = f1;
        i = k - 1;
      }
    }
    label393:
    int k = this.Gj.size();
    float f3 = paramb1.hO;
    i = paramb1.position - 1;
    if (paramb1.position == 0)
    {
      f1 = paramb1.hO;
      this.Gy = f1;
      if (paramb1.position != m - 1) {
        break label526;
      }
      f1 = paramb1.hO + paramb1.Hk - 1.0F;
      label459:
      this.Gz = f1;
      j = paramInt - 1;
      f1 = f3;
    }
    for (;;)
    {
      if (j < 0) {
        break label579;
      }
      paramb2 = (b)this.Gj.get(j);
      for (;;)
      {
        if (i > paramb2.position)
        {
          i -= 1;
          f1 -= 1.0F + f2;
          continue;
          f1 = -3.4028235E38F;
          break;
          label526:
          f1 = Float.MAX_VALUE;
          break label459;
        }
      }
      f1 -= paramb2.Hk + f2;
      paramb2.hO = f1;
      if (paramb2.position == 0) {
        this.Gy = f1;
      }
      i -= 1;
      j -= 1;
    }
    label579:
    float f1 = paramb1.hO + paramb1.Hk + f2;
    int j = paramb1.position + 1;
    i = paramInt + 1;
    paramInt = j;
    while (i < k)
    {
      paramb1 = (b)this.Gj.get(i);
      while (paramInt < paramb1.position)
      {
        paramInt += 1;
        f1 += 1.0F + f2;
      }
      if (paramb1.position == m - 1) {
        this.Gz = (paramb1.Hk + f1 - 1.0F);
      }
      paramb1.hO = f1;
      f1 += paramb1.Hk + f2;
      paramInt += 1;
      i += 1;
    }
    this.GU = false;
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionIndex();
    if (paramMotionEvent.getPointerId(i) == this.jK) {
      if (i != 0) {
        break label56;
      }
    }
    label56:
    for (i = 1;; i = 0)
    {
      this.GI = paramMotionEvent.getX(i);
      this.jK = paramMotionEvent.getPointerId(i);
      if (this.jJ != null) {
        this.jJ.clear();
      }
      return;
    }
  }
  
  private boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int j = paramView.getScrollX();
      int k = paramView.getScrollY();
      i = localViewGroup.getChildCount() - 1;
      if (i >= 0)
      {
        localView = localViewGroup.getChildAt(i);
        if ((paramInt2 + j < localView.getLeft()) || (paramInt2 + j >= localView.getRight()) || (paramInt3 + k < localView.getTop()) || (paramInt3 + k >= localView.getBottom()) || (!a(localView, true, paramInt1, paramInt2 + j - localView.getLeft(), paramInt3 + k - localView.getTop()))) {}
      }
    }
    while ((paramBoolean) && (paramView.canScrollHorizontally(-paramInt1)))
    {
      View localView;
      return true;
      i -= 1;
      break;
    }
    return false;
  }
  
  private void aA(int paramInt)
  {
    if (this.GY != null) {
      this.GY.Q(paramInt);
    }
    if (this.GX != null)
    {
      int j = this.GX.size();
      int i = 0;
      while (i < j)
      {
        f localf = (f)this.GX.get(i);
        if (localf != null) {
          localf.Q(paramInt);
        }
        i += 1;
      }
    }
    if (this.GZ != null) {
      this.GZ.Q(paramInt);
    }
  }
  
  private b am(View paramView)
  {
    int i = 0;
    while (i < this.Gj.size())
    {
      b localb = (b)this.Gj.get(i);
      if (this.Gm.a(paramView, localb.Hi)) {
        return localb;
      }
      i += 1;
    }
    return null;
  }
  
  private b an(View paramView)
  {
    for (;;)
    {
      ViewParent localViewParent = paramView.getParent();
      if (localViewParent == this) {
        break;
      }
      if ((localViewParent == null) || (!(localViewParent instanceof View))) {
        return null;
      }
      paramView = (View)localViewParent;
    }
    return am(paramView);
  }
  
  private boolean arrowScroll(int paramInt)
  {
    View localView = findFocus();
    Object localObject;
    int j;
    boolean bool;
    if (localView == this)
    {
      localObject = null;
      localView = FocusFinder.getInstance().findNextFocus(this, (View)localObject, paramInt);
      if ((localView == null) || (localView == localObject)) {
        break label317;
      }
      if (paramInt != 17) {
        break label263;
      }
      i = a(this.Gl, localView).left;
      j = a(this.Gl, (View)localObject).left;
      if ((localObject != null) && (i >= j))
      {
        bool = dU();
        label89:
        if (bool) {
          playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
        }
        return bool;
      }
    }
    else
    {
      if (localView == null) {
        break label363;
      }
      localObject = localView.getParent();
      if (!(localObject instanceof ViewGroup)) {
        break label370;
      }
      if (localObject != this) {}
    }
    label263:
    label317:
    label357:
    label363:
    label370:
    for (int i = 1;; i = 0)
    {
      if (i == 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(localView.getClass().getSimpleName());
        localObject = localView.getParent();
        for (;;)
        {
          if ((localObject instanceof ViewGroup))
          {
            localStringBuilder.append(" => ").append(localObject.getClass().getSimpleName());
            localObject = ((ViewParent)localObject).getParent();
            continue;
            localObject = ((ViewParent)localObject).getParent();
            break;
          }
        }
        Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + localStringBuilder.toString());
        localObject = null;
        break;
        bool = localView.requestFocus();
        break label89;
        if (paramInt == 66)
        {
          i = a(this.Gl, localView).left;
          j = a(this.Gl, (View)localObject).left;
          if ((localObject == null) || (i > j))
          {
            bool = localView.requestFocus();
            break label89;
            if ((paramInt == 17) || (paramInt == 1))
            {
              bool = dU();
              break label89;
            }
            if ((paramInt != 66) && (paramInt != 2)) {
              break label357;
            }
          }
          bool = dV();
          break label89;
        }
        bool = false;
        break label89;
      }
      localObject = localView;
      break;
    }
  }
  
  private void ax(int paramInt)
  {
    Object localObject2;
    if (this.Gn != paramInt)
    {
      localObject2 = ay(this.Gn);
      this.Gn = paramInt;
    }
    for (;;)
    {
      if (this.Gm == null) {
        dQ();
      }
      do
      {
        return;
        if (this.GD)
        {
          dQ();
          return;
        }
      } while (getWindowToken() == null);
      this.Gm.c(this);
      paramInt = this.GE;
      int i1 = Math.max(0, this.Gn - paramInt);
      int m = this.Gm.getCount();
      int n = Math.min(m - 1, paramInt + this.Gn);
      Object localObject1;
      if (m != this.Gg) {
        try
        {
          String str = getResources().getResourceName(getId());
          throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.Gg + ", found: " + m + " Pager id: " + str + " Pager class: " + getClass() + " Problematic adapter: " + this.Gm.getClass());
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          for (;;)
          {
            localObject1 = Integer.toHexString(getId());
          }
        }
      }
      paramInt = 0;
      label220:
      if (paramInt < this.Gj.size())
      {
        localObject1 = (b)this.Gj.get(paramInt);
        if (((b)localObject1).position >= this.Gn) {
          if (((b)localObject1).position != this.Gn) {
            break label1184;
          }
        }
      }
      for (;;)
      {
        if ((localObject1 == null) && (m > 0)) {}
        for (Object localObject3 = q(this.Gn, paramInt);; localObject3 = localObject1)
        {
          float f1;
          int k;
          label320:
          int i2;
          float f2;
          label333:
          int j;
          int i;
          if (localObject3 != null)
          {
            f1 = 0.0F;
            k = paramInt - 1;
            if (k >= 0)
            {
              localObject1 = (b)this.Gj.get(k);
              i2 = getClientWidth();
              if (i2 > 0) {
                break label458;
              }
              f2 = 0.0F;
              j = this.Gn - 1;
              i = paramInt;
              paramInt = k;
              label347:
              if (j < 0) {
                break label585;
              }
              if ((f1 < f2) || (j >= i1)) {
                break label485;
              }
              if (localObject1 == null) {
                break label585;
              }
              if ((j != ((b)localObject1).position) || (((b)localObject1).Hj)) {
                break label1174;
              }
              this.Gj.remove(paramInt);
              this.Gm.o(((b)localObject1).Hi);
              paramInt -= 1;
              if (paramInt < 0) {
                break label479;
              }
              localObject1 = (b)this.Gj.get(paramInt);
              label430:
              i -= 1;
            }
          }
          label458:
          label479:
          label485:
          label585:
          label638:
          label650:
          label793:
          label808:
          label820:
          label939:
          label1166:
          label1172:
          label1174:
          for (;;)
          {
            j -= 1;
            break label347;
            paramInt += 1;
            break label220;
            localObject1 = null;
            break label320;
            f2 = 2.0F - ((b)localObject3).Hk + getPaddingLeft() / i2;
            break label333;
            localObject1 = null;
            break label430;
            if ((localObject1 != null) && (j == ((b)localObject1).position))
            {
              f1 += ((b)localObject1).Hk;
              paramInt -= 1;
              if (paramInt >= 0) {
                localObject1 = (b)this.Gj.get(paramInt);
              } else {
                localObject1 = null;
              }
            }
            else
            {
              f1 += q(j, paramInt + 1).Hk;
              i += 1;
              if (paramInt >= 0) {}
              for (localObject1 = (b)this.Gj.get(paramInt);; localObject1 = null) {
                break;
              }
              float f3 = ((b)localObject3).Hk;
              k = i + 1;
              if (f3 < 2.0F)
              {
                Object localObject4;
                if (k < this.Gj.size())
                {
                  localObject1 = (b)this.Gj.get(k);
                  if (i2 > 0) {
                    break label793;
                  }
                  f2 = 0.0F;
                  j = this.Gn + 1;
                  localObject4 = localObject1;
                  if (j >= m) {
                    break label939;
                  }
                  if ((f3 < f2) || (j <= n)) {
                    break label820;
                  }
                  if (localObject4 == null) {
                    break label939;
                  }
                  localObject1 = localObject4;
                  f1 = f3;
                  paramInt = k;
                  if (j == ((b)localObject4).position)
                  {
                    localObject1 = localObject4;
                    f1 = f3;
                    paramInt = k;
                    if (!((b)localObject4).Hj)
                    {
                      this.Gj.remove(k);
                      this.Gm.o(((b)localObject4).Hi);
                      if (k >= this.Gj.size()) {
                        break label808;
                      }
                      localObject1 = (b)this.Gj.get(k);
                      paramInt = k;
                      f1 = f3;
                    }
                  }
                }
                for (;;)
                {
                  j += 1;
                  localObject4 = localObject1;
                  f3 = f1;
                  k = paramInt;
                  break label650;
                  localObject1 = null;
                  break;
                  f2 = getPaddingRight() / i2 + 2.0F;
                  break label638;
                  localObject1 = null;
                  f1 = f3;
                  paramInt = k;
                  continue;
                  if ((localObject4 != null) && (j == ((b)localObject4).position))
                  {
                    f1 = f3 + ((b)localObject4).Hk;
                    paramInt = k + 1;
                    if (paramInt < this.Gj.size()) {
                      localObject1 = (b)this.Gj.get(paramInt);
                    } else {
                      localObject1 = null;
                    }
                  }
                  else
                  {
                    localObject1 = q(j, k);
                    paramInt = k + 1;
                    f1 = f3 + ((b)localObject1).Hk;
                    if (paramInt < this.Gj.size()) {
                      localObject1 = (b)this.Gj.get(paramInt);
                    } else {
                      localObject1 = null;
                    }
                  }
                }
              }
              a((b)localObject3, i, (b)localObject2);
              this.Gm.p(((b)localObject3).Hi);
              this.Gm.cU();
              i = getChildCount();
              paramInt = 0;
              while (paramInt < i)
              {
                localObject2 = getChildAt(paramInt);
                localObject1 = (c)((View)localObject2).getLayoutParams();
                ((c)localObject1).Hn = paramInt;
                if ((!((c)localObject1).Hl) && (((c)localObject1).Hk == 0.0F))
                {
                  localObject2 = am((View)localObject2);
                  if (localObject2 != null)
                  {
                    ((c)localObject1).Hk = ((b)localObject2).Hk;
                    ((c)localObject1).position = ((b)localObject2).position;
                  }
                }
                paramInt += 1;
              }
              dQ();
              if (!hasFocus()) {
                break;
              }
              localObject1 = findFocus();
              if (localObject1 != null) {}
              for (localObject1 = an((View)localObject1);; localObject1 = null)
              {
                if ((localObject1 != null) && (((b)localObject1).position == this.Gn)) {
                  break label1172;
                }
                paramInt = 0;
                for (;;)
                {
                  if (paramInt >= getChildCount()) {
                    break label1166;
                  }
                  localObject1 = getChildAt(paramInt);
                  localObject2 = am((View)localObject1);
                  if ((localObject2 != null) && (((b)localObject2).position == this.Gn) && (((View)localObject1).requestFocus(2))) {
                    break;
                  }
                  paramInt += 1;
                }
                break;
              }
              break;
            }
          }
        }
        label1184:
        localObject1 = null;
      }
      localObject2 = null;
    }
  }
  
  private b ay(int paramInt)
  {
    int i = 0;
    while (i < this.Gj.size())
    {
      b localb = (b)this.Gj.get(i);
      if (localb.position == paramInt) {
        return localb;
      }
      i += 1;
    }
    return null;
  }
  
  private boolean az(int paramInt)
  {
    if (this.Gj.size() == 0)
    {
      if (this.GT) {}
      do
      {
        return false;
        this.GV = false;
        a(0, 0.0F, 0);
      } while (this.GV);
      throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }
    b localb = dT();
    int j = getClientWidth();
    int k = this.Gu;
    float f = this.Gu / j;
    int i = localb.position;
    f = (paramInt / j - localb.hO) / (localb.Hk + f);
    paramInt = (int)((k + j) * f);
    this.GV = false;
    a(i, f, paramInt);
    if (!this.GV) {
      throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }
    return true;
  }
  
  private void d(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 > 0) && (!this.Gj.isEmpty()))
    {
      if (!this.Gr.isFinished())
      {
        this.Gr.setFinalX(getCurrentItem() * getClientWidth());
        return;
      }
      int i = getPaddingLeft();
      int j = getPaddingRight();
      int k = getPaddingLeft();
      int m = getPaddingRight();
      f = getScrollX() / (paramInt2 - k - m + paramInt4);
      scrollTo((int)((paramInt1 - i - j + paramInt3) * f), getScrollY());
      return;
    }
    b localb = ay(this.Gn);
    if (localb != null) {}
    for (float f = Math.min(localb.hO, this.Gz);; f = 0.0F)
    {
      paramInt1 = (int)(f * (paramInt1 - getPaddingLeft() - getPaddingRight()));
      if (paramInt1 == getScrollX()) {
        break;
      }
      v(false);
      scrollTo(paramInt1, getScrollY());
      return;
    }
  }
  
  private void dN()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    this.Gr = new Scroller(localContext, Gi);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    float f = localContext.getResources().getDisplayMetrics().density;
    this.nc = localViewConfiguration.getScaledPagingTouchSlop();
    this.GM = ((int)(400.0F * f));
    this.GN = localViewConfiguration.getScaledMaximumFlingVelocity();
    this.GR = new EdgeEffect(localContext);
    this.GS = new EdgeEffect(localContext);
    this.GO = ((int)(25.0F * f));
    this.GP = ((int)(2.0F * f));
    this.GG = ((int)(16.0F * f));
    r.a(this, new d());
    if (r.J(this) == 0) {
      r.l(this, 1);
    }
    r.a(this, new n()
    {
      private final Rect Gl = new Rect();
      
      public final z a(View paramAnonymousView, z paramAnonymousz)
      {
        paramAnonymousView = r.a(paramAnonymousView, paramAnonymousz);
        if (paramAnonymousView.isConsumed()) {
          return paramAnonymousView;
        }
        paramAnonymousz = this.Gl;
        paramAnonymousz.left = paramAnonymousView.getSystemWindowInsetLeft();
        paramAnonymousz.top = paramAnonymousView.getSystemWindowInsetTop();
        paramAnonymousz.right = paramAnonymousView.getSystemWindowInsetRight();
        paramAnonymousz.bottom = paramAnonymousView.getSystemWindowInsetBottom();
        int i = 0;
        int j = ViewPager.this.getChildCount();
        while (i < j)
        {
          z localz = r.b(ViewPager.this.getChildAt(i), paramAnonymousView);
          paramAnonymousz.left = Math.min(localz.getSystemWindowInsetLeft(), paramAnonymousz.left);
          paramAnonymousz.top = Math.min(localz.getSystemWindowInsetTop(), paramAnonymousz.top);
          paramAnonymousz.right = Math.min(localz.getSystemWindowInsetRight(), paramAnonymousz.right);
          paramAnonymousz.bottom = Math.min(localz.getSystemWindowInsetBottom(), paramAnonymousz.bottom);
          i += 1;
        }
        return paramAnonymousView.e(paramAnonymousz.left, paramAnonymousz.top, paramAnonymousz.right, paramAnonymousz.bottom);
      }
    });
  }
  
  private void dQ()
  {
    if (this.Hd != 0)
    {
      if (this.He == null) {
        this.He = new ArrayList();
      }
      for (;;)
      {
        int j = getChildCount();
        int i = 0;
        while (i < j)
        {
          View localView = getChildAt(i);
          this.He.add(localView);
          i += 1;
        }
        this.He.clear();
      }
      Collections.sort(this.He, Hf);
    }
  }
  
  private boolean dR()
  {
    boolean bool = false;
    this.jK = -1;
    this.na = false;
    this.GF = false;
    if (this.jJ != null)
    {
      this.jJ.recycle();
      this.jJ = null;
    }
    this.GR.onRelease();
    this.GS.onRelease();
    if ((this.GR.isFinished()) || (this.GS.isFinished())) {
      bool = true;
    }
    return bool;
  }
  
  private void dS()
  {
    ViewParent localViewParent = getParent();
    if (localViewParent != null) {
      localViewParent.requestDisallowInterceptTouchEvent(true);
    }
  }
  
  private b dT()
  {
    int i = getClientWidth();
    float f1;
    float f2;
    label36:
    int k;
    int j;
    Object localObject1;
    float f3;
    float f4;
    label53:
    Object localObject2;
    b localb;
    if (i > 0)
    {
      f1 = getScrollX() / i;
      if (i <= 0) {
        break label204;
      }
      f2 = this.Gu / i;
      k = -1;
      j = 1;
      i = 0;
      localObject1 = null;
      f3 = 0.0F;
      f4 = 0.0F;
      localObject2 = localObject1;
      if (i < this.Gj.size())
      {
        localb = (b)this.Gj.get(i);
        if ((j != 0) || (localb.position == k + 1)) {
          break label238;
        }
        localb = this.Gk;
        localb.hO = (f4 + f3 + f2);
        localb.position = (k + 1);
        localb.Hk = 1.0F;
        i -= 1;
      }
    }
    label204:
    label209:
    label238:
    for (;;)
    {
      f4 = localb.hO;
      f3 = localb.Hk;
      if (j == 0)
      {
        localObject2 = localObject1;
        if (f1 < f4) {}
      }
      else
      {
        if ((f1 >= f3 + f4 + f2) && (i != this.Gj.size() - 1)) {
          break label209;
        }
        localObject2 = localb;
      }
      return (b)localObject2;
      f1 = 0.0F;
      break;
      f2 = 0.0F;
      break label36;
      k = localb.position;
      f3 = localb.Hk;
      i += 1;
      j = 0;
      localObject1 = localb;
      break label53;
    }
  }
  
  private boolean dU()
  {
    if (this.Gn > 0)
    {
      d(this.Gn - 1, true);
      return true;
    }
    return false;
  }
  
  private boolean dV()
  {
    if ((this.Gm != null) && (this.Gn < this.Gm.getCount() - 1))
    {
      d(this.Gn + 1, true);
      return true;
    }
    return false;
  }
  
  private int getClientWidth()
  {
    return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
  }
  
  private boolean j(float paramFloat)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    float f1 = this.GI;
    this.GI = paramFloat;
    float f2 = getScrollX() + (f1 - paramFloat);
    int k = getClientWidth();
    paramFloat = k * this.Gy;
    f1 = k;
    float f3 = this.Gz;
    b localb1 = (b)this.Gj.get(0);
    b localb2 = (b)this.Gj.get(this.Gj.size() - 1);
    if (localb1.position != 0)
    {
      paramFloat = localb1.hO;
      paramFloat = k * paramFloat;
    }
    for (int i = 0;; i = 1)
    {
      int j;
      if (localb2.position != this.Gm.getCount() - 1)
      {
        f1 = localb2.hO * k;
        j = 0;
      }
      for (;;)
      {
        if (f2 < paramFloat)
        {
          if (i == 0) {
            break label251;
          }
          this.GR.onPull(Math.abs(paramFloat - f2) / k);
        }
        for (;;)
        {
          this.GI += paramFloat - (int)paramFloat;
          scrollTo((int)paramFloat, getScrollY());
          az((int)paramFloat);
          return bool1;
          if (f2 > f1)
          {
            if (j != 0) {
              this.GS.onPull(Math.abs(f2 - f1) / k);
            }
            for (bool1 = bool2;; bool1 = false)
            {
              paramFloat = f1;
              break;
            }
          }
          bool1 = false;
          paramFloat = f2;
          continue;
          label251:
          bool1 = false;
        }
        j = 1;
        f1 *= f3;
      }
    }
  }
  
  private b q(int paramInt1, int paramInt2)
  {
    b localb = new b();
    localb.position = paramInt1;
    localb.Hi = this.Gm.a(this, paramInt1);
    localb.Hk = 1.0F;
    if ((paramInt2 < 0) || (paramInt2 >= this.Gj.size()))
    {
      this.Gj.add(localb);
      return localb;
    }
    this.Gj.add(paramInt2, localb);
    return localb;
  }
  
  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (this.GC != paramBoolean) {
      this.GC = paramBoolean;
    }
  }
  
  private void v(boolean paramBoolean)
  {
    int i;
    if (this.pe == 2)
    {
      i = 1;
      if (i != 0)
      {
        setScrollingCacheEnabled(false);
        if (this.Gr.isFinished()) {
          break label170;
        }
      }
    }
    label170:
    for (int j = 1;; j = 0)
    {
      if (j != 0)
      {
        this.Gr.abortAnimation();
        j = getScrollX();
        k = getScrollY();
        int m = this.Gr.getCurrX();
        int n = this.Gr.getCurrY();
        if ((j != m) || (k != n))
        {
          scrollTo(m, n);
          if (m != j) {
            az(m);
          }
        }
      }
      this.GD = false;
      int k = 0;
      j = i;
      i = k;
      while (i < this.Gj.size())
      {
        b localb = (b)this.Gj.get(i);
        if (localb.Hj)
        {
          localb.Hj = false;
          j = 1;
        }
        i += 1;
      }
      i = 0;
      break;
    }
    if (j != 0)
    {
      if (paramBoolean) {
        r.b(this, this.Hg);
      }
    }
    else {
      return;
    }
    this.Hg.run();
  }
  
  public final void a(f paramf)
  {
    if (this.GX == null) {
      this.GX = new ArrayList();
    }
    this.GX.add(paramf);
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int j = paramArrayList.size();
    int k = getDescendantFocusability();
    if (k != 393216)
    {
      int i = 0;
      while (i < getChildCount())
      {
        View localView = getChildAt(i);
        if (localView.getVisibility() == 0)
        {
          b localb = am(localView);
          if ((localb != null) && (localb.position == this.Gn)) {
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
          }
        }
        i += 1;
      }
    }
    if (((k == 262144) && (j != paramArrayList.size())) || (!isFocusable())) {}
    while ((((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) || (paramArrayList == null)) {
      return;
    }
    paramArrayList.add(this);
  }
  
  public void addTouchables(ArrayList<View> paramArrayList)
  {
    int i = 0;
    while (i < getChildCount())
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        b localb = am(localView);
        if ((localb != null) && (localb.position == this.Gn)) {
          localView.addTouchables(paramArrayList);
        }
      }
      i += 1;
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams)) {
      paramLayoutParams = generateLayoutParams(paramLayoutParams);
    }
    for (;;)
    {
      c localc = (c)paramLayoutParams;
      boolean bool2 = localc.Hl;
      if (paramView.getClass().getAnnotation(a.class) != null) {}
      for (boolean bool1 = true;; bool1 = false)
      {
        localc.Hl = (bool1 | bool2);
        if (!this.mInLayout) {
          break label104;
        }
        if ((localc == null) || (!localc.Hl)) {
          break;
        }
        throw new IllegalStateException("Cannot add pager decor view during layout");
      }
      localc.Hm = true;
      addViewInLayout(paramView, paramInt, paramLayoutParams);
      return;
      label104:
      super.addView(paramView, paramInt, paramLayoutParams);
      return;
    }
  }
  
  public boolean canScrollHorizontally(int paramInt)
  {
    if (this.Gm == null) {}
    int i;
    int j;
    do
    {
      do
      {
        return false;
        i = getClientWidth();
        j = getScrollX();
        if (paramInt >= 0) {
          break;
        }
      } while (j <= (int)(i * this.Gy));
      return true;
    } while ((paramInt <= 0) || (j >= (int)(i * this.Gz)));
    return true;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof c)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    this.Gs = true;
    if ((!this.Gr.isFinished()) && (this.Gr.computeScrollOffset()))
    {
      int i = getScrollX();
      int j = getScrollY();
      int k = this.Gr.getCurrX();
      int m = this.Gr.getCurrY();
      if ((i != k) || (j != m))
      {
        scrollTo(k, m);
        if (!az(k))
        {
          this.Gr.abortAnimation();
          scrollTo(0, m);
        }
      }
      r.I(this);
      return;
    }
    v(true);
  }
  
  public final void d(int paramInt, boolean paramBoolean)
  {
    this.GD = false;
    a(paramInt, paramBoolean, false);
  }
  
  final void dO()
  {
    int i = this.Gm.getCount();
    this.Gg = i;
    if ((this.Gj.size() < this.GE * 2 + 1) && (this.Gj.size() < i)) {}
    int k;
    int j;
    for (i = 1;; i = 0)
    {
      k = this.Gn;
      j = 0;
      while (j < this.Gj.size())
      {
        this.Gj.get(j);
        j += 1;
      }
    }
    Collections.sort(this.Gj, Gh);
    if (i != 0)
    {
      j = getChildCount();
      i = 0;
      while (i < j)
      {
        c localc = (c)getChildAt(i).getLayoutParams();
        if (!localc.Hl) {
          localc.Hk = 0.0F;
        }
        i += 1;
      }
      a(k, false, true);
      requestLayout();
    }
  }
  
  final void dP()
  {
    ax(this.Gn);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool2 = false;
    boolean bool1;
    if (!super.dispatchKeyEvent(paramKeyEvent))
    {
      if (paramKeyEvent.getAction() == 0) {}
      switch (paramKeyEvent.getKeyCode())
      {
      default: 
        bool1 = false;
      }
    }
    for (;;)
    {
      if (bool1) {
        bool2 = true;
      }
      return bool2;
      if (paramKeyEvent.hasModifiers(2))
      {
        bool1 = dU();
      }
      else
      {
        bool1 = arrowScroll(17);
        continue;
        if (paramKeyEvent.hasModifiers(2))
        {
          bool1 = dV();
        }
        else
        {
          bool1 = arrowScroll(66);
          continue;
          if (paramKeyEvent.hasNoModifiers())
          {
            bool1 = arrowScroll(2);
          }
          else
          {
            if (!paramKeyEvent.hasModifiers(1)) {
              break;
            }
            bool1 = arrowScroll(1);
          }
        }
      }
    }
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramAccessibilityEvent.getEventType() == 4096)
    {
      bool1 = super.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent);
      return bool1;
    }
    int j = getChildCount();
    int i = 0;
    for (;;)
    {
      bool1 = bool2;
      if (i >= j) {
        break;
      }
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        b localb = am(localView);
        if ((localb != null) && (localb.position == this.Gn) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent))) {
          return true;
        }
      }
      i += 1;
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int k = 0;
    int i = 0;
    int m = getOverScrollMode();
    boolean bool;
    if ((m == 0) || ((m == 1) && (this.Gm != null) && (this.Gm.getCount() > 1)))
    {
      int j;
      if (!this.GR.isFinished())
      {
        k = paramCanvas.save();
        i = getHeight() - getPaddingTop() - getPaddingBottom();
        m = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i + getPaddingTop(), this.Gy * m);
        this.GR.setSize(i, m);
        j = this.GR.draw(paramCanvas) | false;
        paramCanvas.restoreToCount(k);
      }
      k = j;
      if (!this.GS.isFinished())
      {
        m = paramCanvas.save();
        k = getWidth();
        int n = getHeight();
        int i1 = getPaddingTop();
        int i2 = getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(this.Gz + 1.0F) * k);
        this.GS.setSize(n - i1 - i2, k);
        bool = j | this.GS.draw(paramCanvas);
        paramCanvas.restoreToCount(m);
      }
    }
    for (;;)
    {
      if (bool) {
        r.I(this);
      }
      return;
      this.GR.finish();
      this.GS.finish();
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.Gv;
    if ((localDrawable != null) && (localDrawable.isStateful())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new c();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new c(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }
  
  public o getAdapter()
  {
    return this.Gm;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    if (this.Hd == 2) {
      i = paramInt1 - 1 - paramInt2;
    }
    return ((c)((View)this.He.get(i)).getLayoutParams()).Hn;
  }
  
  public int getCurrentItem()
  {
    return this.Gn;
  }
  
  public int getOffscreenPageLimit()
  {
    return this.GE;
  }
  
  public int getPageMargin()
  {
    return this.Gu;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.GT = true;
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.Hg);
    if ((this.Gr != null) && (!this.Gr.isFinished())) {
      this.Gr.abortAnimation();
    }
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.Gu > 0) && (this.Gv != null) && (this.Gj.size() > 0) && (this.Gm != null))
    {
      int k = getScrollX();
      int m = getWidth();
      float f3 = this.Gu / m;
      Object localObject = (b)this.Gj.get(0);
      float f1 = ((b)localObject).hO;
      int n = this.Gj.size();
      int i = ((b)localObject).position;
      int i1 = ((b)this.Gj.get(n - 1)).position;
      int j = 0;
      if (i < i1)
      {
        while ((i > ((b)localObject).position) && (j < n))
        {
          localObject = this.Gj;
          j += 1;
          localObject = (b)((ArrayList)localObject).get(j);
        }
        float f2;
        if (i == ((b)localObject).position) {
          f2 = (((b)localObject).hO + ((b)localObject).Hk) * m;
        }
        for (f1 = ((b)localObject).hO + ((b)localObject).Hk + f3;; f1 += 1.0F + f3)
        {
          if (this.Gu + f2 > k)
          {
            this.Gv.setBounds(Math.round(f2), this.Gw, Math.round(this.Gu + f2), this.Gx);
            this.Gv.draw(paramCanvas);
          }
          if (f2 > k + m) {
            return;
          }
          i += 1;
          break;
          f2 = (1.0F + f1) * m;
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction() & 0xFF;
    if ((i == 3) || (i == 1)) {
      dR();
    }
    do
    {
      return false;
      if (i == 0) {
        break;
      }
      if (this.na) {
        return true;
      }
    } while (this.GF);
    switch (i)
    {
    }
    for (;;)
    {
      if (this.jJ == null) {
        this.jJ = VelocityTracker.obtain();
      }
      this.jJ.addMovement(paramMotionEvent);
      return this.na;
      i = this.jK;
      if (i != -1)
      {
        i = paramMotionEvent.findPointerIndex(i);
        float f2 = paramMotionEvent.getX(i);
        float f1 = f2 - this.GI;
        float f4 = Math.abs(f1);
        float f3 = paramMotionEvent.getY(i);
        float f5 = Math.abs(f3 - this.GL);
        if (f1 != 0.0F)
        {
          float f6 = this.GI;
          if (((f6 < this.GH) && (f1 > 0.0F)) || ((f6 > getWidth() - this.GH) && (f1 < 0.0F))) {}
          for (i = 1; (i == 0) && (a(this, false, (int)f1, (int)f2, (int)f3)); i = 0)
          {
            this.GI = f2;
            this.GJ = f3;
            this.GF = true;
            return false;
          }
        }
        if ((f4 > this.nc) && (0.5F * f4 > f5))
        {
          this.na = true;
          dS();
          setScrollState(1);
          if (f1 > 0.0F)
          {
            f1 = this.GK + this.nc;
            label328:
            this.GI = f1;
            this.GJ = f3;
            setScrollingCacheEnabled(true);
          }
        }
        while ((this.na) && (j(f2)))
        {
          r.I(this);
          break;
          f1 = this.GK - this.nc;
          break label328;
          if (f5 > this.nc) {
            this.GF = true;
          }
        }
        f1 = paramMotionEvent.getX();
        this.GK = f1;
        this.GI = f1;
        f1 = paramMotionEvent.getY();
        this.GL = f1;
        this.GJ = f1;
        this.jK = paramMotionEvent.getPointerId(0);
        this.GF = false;
        this.Gs = true;
        this.Gr.computeScrollOffset();
        if ((this.pe == 2) && (Math.abs(this.Gr.getFinalX() - this.Gr.getCurrX()) > this.GP))
        {
          this.Gr.abortAnimation();
          this.GD = false;
          dP();
          this.na = true;
          dS();
          setScrollState(1);
        }
        else
        {
          v(false);
          this.na = false;
          continue;
          a(paramMotionEvent);
        }
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = getChildCount();
    int i3 = paramInt3 - paramInt1;
    int i2 = paramInt4 - paramInt2;
    paramInt1 = getPaddingLeft();
    paramInt2 = getPaddingTop();
    paramInt3 = getPaddingRight();
    int j = getPaddingBottom();
    int i4 = getScrollX();
    int k = 0;
    int m = 0;
    View localView;
    c localc;
    int n;
    int i;
    if (m < i1)
    {
      localView = getChildAt(m);
      if (localView.getVisibility() == 8) {
        break label636;
      }
      localc = (c)localView.getLayoutParams();
      if (!localc.Hl) {
        break label636;
      }
      paramInt4 = localc.gravity;
      n = localc.gravity;
      switch (paramInt4 & 0x7)
      {
      case 2: 
      case 4: 
      default: 
        paramInt4 = paramInt1;
        i = paramInt3;
        paramInt3 = paramInt1;
        paramInt1 = i;
        label161:
        switch (n & 0x70)
        {
        default: 
          i = paramInt2;
          label203:
          paramInt4 += i4;
          localView.layout(paramInt4, i, localView.getMeasuredWidth() + paramInt4, localView.getMeasuredHeight() + i);
          paramInt4 = k + 1;
        }
        break;
      }
    }
    for (;;)
    {
      m += 1;
      i = paramInt1;
      paramInt1 = paramInt3;
      paramInt3 = i;
      k = paramInt4;
      break;
      i = paramInt1 + localView.getMeasuredWidth();
      paramInt4 = paramInt1;
      paramInt1 = paramInt3;
      paramInt3 = i;
      break label161;
      i = Math.max((i3 - localView.getMeasuredWidth()) / 2, paramInt1);
      paramInt4 = paramInt1;
      paramInt1 = paramInt3;
      paramInt3 = paramInt4;
      paramInt4 = i;
      break label161;
      paramInt4 = localView.getMeasuredWidth();
      i = localView.getMeasuredWidth();
      paramInt4 = i3 - paramInt3 - paramInt4;
      i = paramInt3 + i;
      paramInt3 = paramInt1;
      paramInt1 = i;
      break label161;
      n = paramInt2 + localView.getMeasuredHeight();
      i = paramInt2;
      paramInt2 = n;
      break label203;
      i = Math.max((i2 - localView.getMeasuredHeight()) / 2, paramInt2);
      break label203;
      i = i2 - j - localView.getMeasuredHeight();
      j += localView.getMeasuredHeight();
      break label203;
      paramInt4 = i3 - paramInt1 - paramInt3;
      paramInt3 = 0;
      while (paramInt3 < i1)
      {
        localView = getChildAt(paramInt3);
        if (localView.getVisibility() != 8)
        {
          localc = (c)localView.getLayoutParams();
          if (!localc.Hl)
          {
            b localb = am(localView);
            if (localb != null)
            {
              float f = paramInt4;
              i = (int)(localb.hO * f) + paramInt1;
              if (localc.Hm)
              {
                localc.Hm = false;
                f = paramInt4;
                localView.measure(View.MeasureSpec.makeMeasureSpec((int)(localc.Hk * f), 1073741824), View.MeasureSpec.makeMeasureSpec(i2 - paramInt2 - j, 1073741824));
              }
              localView.layout(i, paramInt2, localView.getMeasuredWidth() + i, localView.getMeasuredHeight() + paramInt2);
            }
          }
        }
        paramInt3 += 1;
      }
      this.Gw = paramInt2;
      this.Gx = (i2 - j);
      this.GW = k;
      if (this.GT) {
        a(this.Gn, false, 0, false);
      }
      this.GT = false;
      return;
      label636:
      paramInt4 = k;
      i = paramInt1;
      paramInt1 = paramInt3;
      paramInt3 = i;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    paramInt1 = getMeasuredWidth();
    this.GH = Math.min(paramInt1 / 10, this.GG);
    paramInt1 = paramInt1 - getPaddingLeft() - getPaddingRight();
    paramInt2 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int i4 = getChildCount();
    int k = 0;
    View localView;
    int i;
    int j;
    c localc;
    int m;
    int i1;
    label183:
    int n;
    if (k < i4)
    {
      localView = getChildAt(k);
      i = paramInt1;
      j = paramInt2;
      if (localView.getVisibility() != 8)
      {
        localc = (c)localView.getLayoutParams();
        i = paramInt1;
        j = paramInt2;
        if (localc != null)
        {
          i = paramInt1;
          j = paramInt2;
          if (localc.Hl)
          {
            i = localc.gravity & 0x7;
            m = localc.gravity & 0x70;
            i1 = Integer.MIN_VALUE;
            j = Integer.MIN_VALUE;
            if ((m != 48) && (m != 80)) {
              break label333;
            }
            m = 1;
            if ((i != 3) && (i != 5)) {
              break label339;
            }
            n = 1;
            label198:
            if (m == 0) {
              break label345;
            }
            i = 1073741824;
            label208:
            if (localc.width == -2) {
              break label528;
            }
            i1 = 1073741824;
            if (localc.width == -1) {
              break label522;
            }
            i = localc.width;
          }
        }
      }
    }
    for (;;)
    {
      int i3;
      if (localc.height != -2)
      {
        i2 = 1073741824;
        j = i2;
        if (localc.height != -1)
        {
          i3 = localc.height;
          j = i2;
        }
      }
      for (int i2 = i3;; i2 = paramInt2)
      {
        localView.measure(View.MeasureSpec.makeMeasureSpec(i, i1), View.MeasureSpec.makeMeasureSpec(i2, j));
        if (m != 0)
        {
          j = paramInt2 - localView.getMeasuredHeight();
          i = paramInt1;
        }
        for (;;)
        {
          k += 1;
          paramInt1 = i;
          paramInt2 = j;
          break;
          label333:
          m = 0;
          break label183;
          label339:
          n = 0;
          break label198;
          label345:
          i = i1;
          if (n == 0) {
            break label208;
          }
          j = 1073741824;
          i = i1;
          break label208;
          i = paramInt1;
          j = paramInt2;
          if (n != 0)
          {
            i = paramInt1 - localView.getMeasuredWidth();
            j = paramInt2;
          }
        }
        this.GA = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
        this.GB = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
        this.mInLayout = true;
        dP();
        this.mInLayout = false;
        i = getChildCount();
        paramInt2 = 0;
        while (paramInt2 < i)
        {
          localView = getChildAt(paramInt2);
          if (localView.getVisibility() != 8)
          {
            localc = (c)localView.getLayoutParams();
            if ((localc == null) || (!localc.Hl))
            {
              float f = paramInt1;
              localView.measure(View.MeasureSpec.makeMeasureSpec((int)(localc.Hk * f), 1073741824), this.GB);
            }
          }
          paramInt2 += 1;
        }
        return;
      }
      label522:
      i = paramInt1;
      continue;
      label528:
      i1 = paramInt1;
      i2 = i;
      i = i1;
      i1 = i2;
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int j = getChildCount();
    int k;
    int i;
    if ((paramInt & 0x2) != 0)
    {
      k = 1;
      i = 0;
    }
    while (i != j)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        b localb = am(localView);
        if ((localb != null) && (localb.position == this.Gn) && (localView.requestFocus(paramInt, paramRect)))
        {
          return true;
          i = j - 1;
          j = -1;
          k = -1;
          continue;
        }
      }
      i += k;
    }
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof i))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (i)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.EV);
    if (this.Gm != null)
    {
      Object localObject = paramParcelable.Ho;
      localObject = paramParcelable.Hp;
      a(paramParcelable.position, false, true);
      return;
    }
    this.Go = paramParcelable.position;
    this.Gp = paramParcelable.Ho;
    this.Gq = paramParcelable.Hp;
  }
  
  public Parcelable onSaveInstanceState()
  {
    i locali = new i(super.onSaveInstanceState());
    locali.position = this.Gn;
    if (this.Gm != null) {
      locali.Ho = null;
    }
    return locali;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      d(paramInt1, paramInt3, this.Gu, this.Gu);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    if (this.GQ) {
      return true;
    }
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0)) {
      return false;
    }
    if ((this.Gm == null) || (this.Gm.getCount() == 0)) {
      return false;
    }
    if (this.jJ == null) {
      this.jJ = VelocityTracker.obtain();
    }
    this.jJ.addMovement(paramMotionEvent);
    boolean bool1 = bool2;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    default: 
      bool1 = bool2;
    }
    for (;;)
    {
      if (bool1) {
        r.I(this);
      }
      return true;
      this.Gr.abortAnimation();
      this.GD = false;
      dP();
      float f1 = paramMotionEvent.getX();
      this.GK = f1;
      this.GI = f1;
      f1 = paramMotionEvent.getY();
      this.GL = f1;
      this.GJ = f1;
      this.jK = paramMotionEvent.getPointerId(0);
      bool1 = bool2;
      continue;
      int i;
      float f2;
      if (!this.na)
      {
        i = paramMotionEvent.findPointerIndex(this.jK);
        if (i == -1)
        {
          bool1 = dR();
          continue;
        }
        f1 = paramMotionEvent.getX(i);
        float f3 = Math.abs(f1 - this.GI);
        f2 = paramMotionEvent.getY(i);
        float f4 = Math.abs(f2 - this.GJ);
        if ((f3 > this.nc) && (f3 > f4))
        {
          this.na = true;
          dS();
          if (f1 - this.GK <= 0.0F) {
            break label392;
          }
        }
      }
      Object localObject;
      label392:
      for (f1 = this.GK + this.nc;; f1 = this.GK - this.nc)
      {
        this.GI = f1;
        this.GJ = f2;
        setScrollState(1);
        setScrollingCacheEnabled(true);
        localObject = getParent();
        if (localObject != null) {
          ((ViewParent)localObject).requestDisallowInterceptTouchEvent(true);
        }
        bool1 = bool2;
        if (!this.na) {
          break;
        }
        bool1 = j(paramMotionEvent.getX(paramMotionEvent.findPointerIndex(this.jK))) | false;
        break;
      }
      bool1 = bool2;
      if (this.na)
      {
        localObject = this.jJ;
        ((VelocityTracker)localObject).computeCurrentVelocity(1000, this.GN);
        int k = (int)((VelocityTracker)localObject).getXVelocity(this.jK);
        this.GD = true;
        int j = getClientWidth();
        int m = getScrollX();
        localObject = dT();
        f1 = this.Gu / j;
        i = ((b)localObject).position;
        f2 = (m / j - ((b)localObject).hO) / (((b)localObject).Hk + f1);
        if ((Math.abs((int)(paramMotionEvent.getX(paramMotionEvent.findPointerIndex(this.jK)) - this.GK)) > this.GO) && (Math.abs(k) > this.GM))
        {
          if (k > 0) {}
          for (;;)
          {
            j = i;
            if (this.Gj.size() > 0)
            {
              paramMotionEvent = (b)this.Gj.get(0);
              localObject = (b)this.Gj.get(this.Gj.size() - 1);
              j = Math.max(paramMotionEvent.position, Math.min(i, ((b)localObject).position));
            }
            a(j, true, true, k);
            bool1 = dR();
            break;
            i += 1;
          }
        }
        if (i >= this.Gn) {}
        for (f1 = 0.4F;; f1 = 0.6F)
        {
          i += (int)(f1 + f2);
          break;
        }
        bool1 = bool2;
        if (this.na)
        {
          a(this.Gn, true, 0, false);
          bool1 = dR();
          continue;
          i = paramMotionEvent.getActionIndex();
          this.GI = paramMotionEvent.getX(i);
          this.jK = paramMotionEvent.getPointerId(i);
          bool1 = bool2;
          continue;
          a(paramMotionEvent);
          this.GI = paramMotionEvent.getX(paramMotionEvent.findPointerIndex(this.jK));
          bool1 = bool2;
        }
      }
    }
  }
  
  public void removeView(View paramView)
  {
    if (this.mInLayout)
    {
      removeViewInLayout(paramView);
      return;
    }
    super.removeView(paramView);
  }
  
  public void setAdapter(o paramo)
  {
    int k = 0;
    int i;
    int j;
    if (this.Gm != null)
    {
      this.Gm.a(null);
      this.Gm.c(this);
      i = 0;
      while (i < this.Gj.size())
      {
        b localb = (b)this.Gj.get(i);
        this.Gm.o(localb.Hi);
        i += 1;
      }
      this.Gm.cU();
      this.Gj.clear();
      for (i = 0; i < getChildCount(); i = j + 1)
      {
        j = i;
        if (!((c)getChildAt(i).getLayoutParams()).Hl)
        {
          removeViewAt(i);
          j = i - 1;
        }
      }
      this.Gn = 0;
      scrollTo(0, 0);
    }
    this.Gm = paramo;
    this.Gg = 0;
    boolean bool;
    if (this.Gm != null)
    {
      if (this.Gt == null) {
        this.Gt = new h();
      }
      this.Gm.a(this.Gt);
      this.GD = false;
      bool = this.GT;
      this.GT = true;
      this.Gg = this.Gm.getCount();
      if (this.Go < 0) {
        break label311;
      }
      a(this.Go, false, true);
      this.Go = -1;
      this.Gp = null;
      this.Gq = null;
    }
    while ((this.Ha != null) && (!this.Ha.isEmpty()))
    {
      j = this.Ha.size();
      i = k;
      while (i < j)
      {
        ((e)this.Ha.get(i)).a(this, paramo);
        i += 1;
      }
      label311:
      if (!bool) {
        dP();
      } else {
        requestLayout();
      }
    }
  }
  
  public void setCurrentItem(int paramInt)
  {
    this.GD = false;
    if (!this.GT) {}
    for (boolean bool = true;; bool = false)
    {
      a(paramInt, bool, false);
      return;
    }
  }
  
  public void setOffscreenPageLimit(int paramInt)
  {
    int i = paramInt;
    if (paramInt <= 0)
    {
      Log.w("ViewPager", "Requested offscreen page limit " + paramInt + " too small; defaulting to 1");
      i = 1;
    }
    if (i != this.GE)
    {
      this.GE = i;
      dP();
    }
  }
  
  @Deprecated
  public void setOnPageChangeListener(f paramf)
  {
    this.GY = paramf;
  }
  
  public void setPageMargin(int paramInt)
  {
    int i = this.Gu;
    this.Gu = paramInt;
    int j = getWidth();
    d(j, j, paramInt, i);
    requestLayout();
  }
  
  public void setPageMarginDrawable(int paramInt)
  {
    setPageMarginDrawable(android.support.v4.content.a.a(getContext(), paramInt));
  }
  
  public void setPageMarginDrawable(Drawable paramDrawable)
  {
    this.Gv = paramDrawable;
    if (paramDrawable != null) {
      refreshDrawableState();
    }
    if (paramDrawable == null) {}
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      invalidate();
      return;
    }
  }
  
  void setScrollState(int paramInt)
  {
    int m = 0;
    if (this.pe == paramInt) {}
    label38:
    label77:
    label83:
    do
    {
      return;
      this.pe = paramInt;
      int i;
      int j;
      if (this.Hb != null)
      {
        if (paramInt != 0)
        {
          i = 1;
          int n = getChildCount();
          j = 0;
          if (j >= n) {
            break label83;
          }
          if (i == 0) {
            break label77;
          }
        }
        for (int k = this.Hc;; k = 0)
        {
          getChildAt(j).setLayerType(k, null);
          j += 1;
          break label38;
          i = 0;
          break;
        }
      }
      if (this.GY != null) {
        this.GY.P(paramInt);
      }
      if (this.GX != null)
      {
        j = this.GX.size();
        i = m;
        while (i < j)
        {
          f localf = (f)this.GX.get(i);
          if (localf != null) {
            localf.P(paramInt);
          }
          i += 1;
        }
      }
    } while (this.GZ == null);
    this.GZ.P(paramInt);
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == this.Gv);
  }
  
  @Inherited
  @Retention(RetentionPolicy.RUNTIME)
  @Target({java.lang.annotation.ElementType.TYPE})
  public static @interface a {}
  
  static final class b
  {
    Object Hi;
    boolean Hj;
    float Hk;
    float hO;
    int position;
  }
  
  public static final class c
    extends ViewGroup.LayoutParams
  {
    float Hk = 0.0F;
    public boolean Hl;
    boolean Hm;
    int Hn;
    public int gravity;
    int position;
    
    public c()
    {
      super(-1);
    }
    
    public c(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ViewPager.Gf);
      this.gravity = paramContext.getInteger(0, 48);
      paramContext.recycle();
    }
  }
  
  final class d
    extends b
  {
    d() {}
    
    private boolean dW()
    {
      return (ViewPager.this.Gm != null) && (ViewPager.this.Gm.getCount() > 1);
    }
    
    public final void a(View paramView, android.support.v4.view.a.a parama)
    {
      super.a(paramView, parama);
      parama.setClassName(ViewPager.class.getName());
      parama.setScrollable(dW());
      if (ViewPager.this.canScrollHorizontally(1)) {
        parama.addAction(4096);
      }
      if (ViewPager.this.canScrollHorizontally(-1)) {
        parama.addAction(8192);
      }
    }
    
    public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(ViewPager.class.getName());
      paramAccessibilityEvent.setScrollable(dW());
      if ((paramAccessibilityEvent.getEventType() == 4096) && (ViewPager.this.Gm != null))
      {
        paramAccessibilityEvent.setItemCount(ViewPager.this.Gm.getCount());
        paramAccessibilityEvent.setFromIndex(ViewPager.this.Gn);
        paramAccessibilityEvent.setToIndex(ViewPager.this.Gn);
      }
    }
    
    public final boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
    {
      if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
        return true;
      }
      switch (paramInt)
      {
      default: 
        return false;
      case 4096: 
        if (ViewPager.this.canScrollHorizontally(1))
        {
          ViewPager.this.setCurrentItem(ViewPager.this.Gn + 1);
          return true;
        }
        return false;
      }
      if (ViewPager.this.canScrollHorizontally(-1))
      {
        ViewPager.this.setCurrentItem(ViewPager.this.Gn - 1);
        return true;
      }
      return false;
    }
  }
  
  public static abstract interface e
  {
    public abstract void a(ViewPager paramViewPager, o paramo);
  }
  
  public static abstract interface f
  {
    public abstract void P(int paramInt);
    
    public abstract void Q(int paramInt);
    
    public abstract void a(int paramInt1, float paramFloat, int paramInt2);
  }
  
  public static abstract interface g {}
  
  private final class h
    extends DataSetObserver
  {
    h() {}
    
    public final void onChanged()
    {
      ViewPager.this.dO();
    }
    
    public final void onInvalidated()
    {
      ViewPager.this.dO();
    }
  }
  
  public static final class i
    extends a
  {
    public static final Parcelable.Creator<i> CREATOR = new Parcelable.ClassLoaderCreator() {};
    Parcelable Ho;
    ClassLoader Hp;
    int position;
    
    i(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      ClassLoader localClassLoader = paramClassLoader;
      if (paramClassLoader == null) {
        localClassLoader = getClass().getClassLoader();
      }
      this.position = paramParcel.readInt();
      this.Ho = paramParcel.readParcelable(localClassLoader);
      this.Hp = localClassLoader;
    }
    
    public i(Parcelable paramParcelable)
    {
      super();
    }
    
    public final String toString()
    {
      return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.position);
      paramParcel.writeParcelable(this.Ho, paramInt);
    }
  }
  
  static final class j
    implements Comparator<View>
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/ViewPager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */