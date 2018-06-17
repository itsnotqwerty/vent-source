package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.r;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;

public final class f
  extends u
{
  private static final String[] te = { "android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY" };
  private static final Property<Drawable, PointF> tf = new Property(PointF.class, "boundsOrigin")
  {
    private Rect tp = new Rect();
  };
  private static final Property<a, PointF> tg = new Property(PointF.class, "topLeft") {};
  private static final Property<a, PointF> th = new Property(PointF.class, "bottomRight") {};
  private static final Property<View, PointF> ti = new Property(PointF.class, "bottomRight") {};
  private static final Property<View, PointF> tj = new Property(PointF.class, "topLeft") {};
  private static final Property<View, PointF> tk = new Property(PointF.class, "position") {};
  private static s to = new s();
  private int[] tl = new int[2];
  private boolean tm = false;
  private boolean tn = false;
  
  private void a(z paramz)
  {
    View localView = paramz.view;
    if ((r.ae(localView)) || (localView.getWidth() != 0) || (localView.getHeight() != 0))
    {
      paramz.values.put("android:changeBounds:bounds", new Rect(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom()));
      paramz.values.put("android:changeBounds:parent", paramz.view.getParent());
      if (this.tn)
      {
        paramz.view.getLocationInWindow(this.tl);
        paramz.values.put("android:changeBounds:windowX", Integer.valueOf(this.tl[0]));
        paramz.values.put("android:changeBounds:windowY", Integer.valueOf(this.tl[1]));
      }
      if (this.tm) {
        paramz.values.put("android:changeBounds:clip", r.ag(localView));
      }
    }
  }
  
  public final Animator a(final ViewGroup paramViewGroup, final z paramz1, z paramz2)
  {
    if ((paramz1 == null) || (paramz2 == null))
    {
      paramz1 = null;
      return paramz1;
    }
    final Object localObject1 = paramz1.values;
    final Object localObject2 = paramz2.values;
    localObject1 = (ViewGroup)((Map)localObject1).get("android:changeBounds:parent");
    ViewGroup localViewGroup = (ViewGroup)((Map)localObject2).get("android:changeBounds:parent");
    if ((localObject1 == null) || (localViewGroup == null)) {
      return null;
    }
    localObject2 = paramz2.view;
    z localz;
    int i;
    if (this.tn)
    {
      localz = c((View)localObject1, true);
      if (localz == null) {
        if (localObject1 == localViewGroup) {
          i = 1;
        }
      }
    }
    for (;;)
    {
      label101:
      int m;
      final int n;
      final int i2;
      final int i4;
      final int i6;
      int i9;
      int i10;
      int k;
      int j;
      if (i != 0)
      {
        paramViewGroup = (Rect)paramz1.values.get("android:changeBounds:bounds");
        localObject1 = (Rect)paramz2.values.get("android:changeBounds:bounds");
        m = paramViewGroup.left;
        n = ((Rect)localObject1).left;
        int i1 = paramViewGroup.top;
        i2 = ((Rect)localObject1).top;
        int i3 = paramViewGroup.right;
        i4 = ((Rect)localObject1).right;
        int i5 = paramViewGroup.bottom;
        i6 = ((Rect)localObject1).bottom;
        int i7 = i3 - m;
        int i8 = i5 - i1;
        i9 = i4 - n;
        i10 = i6 - i2;
        paramViewGroup = (Rect)paramz1.values.get("android:changeBounds:clip");
        localObject1 = (Rect)paramz2.values.get("android:changeBounds:clip");
        k = 0;
        j = 0;
        if ((i7 == 0) || (i8 == 0))
        {
          i = k;
          if (i9 != 0)
          {
            i = k;
            if (i10 == 0) {}
          }
        }
        else
        {
          if ((m != n) || (i1 != i2)) {
            j = 1;
          }
          if (i3 == i4)
          {
            i = j;
            if (i5 == i6) {}
          }
          else
          {
            i = j + 1;
          }
        }
        if ((paramViewGroup == null) || (paramViewGroup.equals(localObject1)))
        {
          j = i;
          if (paramViewGroup == null)
          {
            j = i;
            if (localObject1 == null) {}
          }
        }
        else
        {
          j = i + 1;
        }
        if (j <= 0) {
          break label1158;
        }
        if (!this.tm)
        {
          al.b((View)localObject2, m, i1, i3, i5);
          if (j == 2) {
            if ((i7 == i9) && (i8 == i10))
            {
              paramViewGroup = this.uK.getPath(m, i1, n, i2);
              paramViewGroup = h.a(localObject2, tk, paramViewGroup);
            }
          }
          for (;;)
          {
            paramz1 = paramViewGroup;
            if (!(((View)localObject2).getParent() instanceof ViewGroup)) {
              break;
            }
            paramz1 = (ViewGroup)((View)localObject2).getParent();
            ae.c(paramz1, true);
            a(new v()
            {
              boolean tB = false;
              
              public final void a(u paramAnonymousu)
              {
                if (!this.tB) {
                  ae.c(paramz1, false);
                }
                paramAnonymousu.b(this);
              }
              
              public final void cl()
              {
                ae.c(paramz1, false);
              }
              
              public final void cm()
              {
                ae.c(paramz1, true);
              }
            });
            return paramViewGroup;
            i = 0;
            break label101;
            if (localViewGroup == localz.view)
            {
              i = 1;
              break label101;
            }
            i = 0;
            break label101;
            paramz1 = new a((View)localObject2);
            paramViewGroup = this.uK.getPath(m, i1, n, i2);
            paramz2 = h.a(paramz1, tg, paramViewGroup);
            paramViewGroup = this.uK.getPath(i3, i5, i4, i6);
            localObject1 = h.a(paramz1, th, paramViewGroup);
            paramViewGroup = new AnimatorSet();
            paramViewGroup.playTogether(new Animator[] { paramz2, localObject1 });
            paramViewGroup.addListener(new AnimatorListenerAdapter()
            {
              private f.a mViewBounds = paramz1;
            });
            continue;
            if ((m != n) || (i1 != i2))
            {
              paramViewGroup = this.uK.getPath(m, i1, n, i2);
              paramViewGroup = h.a(localObject2, tj, paramViewGroup);
            }
            else
            {
              paramViewGroup = this.uK.getPath(i3, i5, i4, i6);
              paramViewGroup = h.a(localObject2, ti, paramViewGroup);
            }
          }
        }
        al.b((View)localObject2, m, i1, Math.max(i7, i9) + m, Math.max(i8, i10) + i1);
        paramz1 = null;
        if ((m != n) || (i1 != i2))
        {
          paramz1 = this.uK.getPath(m, i1, n, i2);
          paramz1 = h.a(localObject2, tk, paramz1);
        }
        if (paramViewGroup != null) {
          break label1171;
        }
        paramViewGroup = new Rect(0, 0, i7, i8);
      }
      label1158:
      label1171:
      for (;;)
      {
        if (localObject1 == null) {}
        for (paramz2 = new Rect(0, 0, i9, i10);; paramz2 = (z)localObject1)
        {
          if (!paramViewGroup.equals(paramz2))
          {
            r.c((View)localObject2, paramViewGroup);
            paramz2 = ObjectAnimator.ofObject(localObject2, "clipBounds", to, new Object[] { paramViewGroup, paramz2 });
            paramz2.addListener(new AnimatorListenerAdapter()
            {
              private boolean tv;
              
              public final void onAnimationCancel(Animator paramAnonymousAnimator)
              {
                this.tv = true;
              }
              
              public final void onAnimationEnd(Animator paramAnonymousAnimator)
              {
                if (!this.tv)
                {
                  r.c(localObject2, localObject1);
                  al.b(localObject2, n, i2, i4, i6);
                }
              }
            });
          }
          for (;;)
          {
            paramViewGroup = paramz2;
            if (paramz1 == null) {
              break;
            }
            if (paramz2 == null)
            {
              paramViewGroup = paramz1;
              break;
            }
            paramViewGroup = new AnimatorSet();
            paramViewGroup.playTogether(new Animator[] { paramz1, paramz2 });
            break;
            i = ((Integer)paramz1.values.get("android:changeBounds:windowX")).intValue();
            j = ((Integer)paramz1.values.get("android:changeBounds:windowY")).intValue();
            k = ((Integer)paramz2.values.get("android:changeBounds:windowX")).intValue();
            m = ((Integer)paramz2.values.get("android:changeBounds:windowY")).intValue();
            if ((i != k) || (j != m))
            {
              paramViewGroup.getLocationInWindow(this.tl);
              paramz1 = Bitmap.createBitmap(((View)localObject2).getWidth(), ((View)localObject2).getHeight(), Bitmap.Config.ARGB_8888);
              ((View)localObject2).draw(new Canvas(paramz1));
              paramz1 = new BitmapDrawable(paramz1);
              final float f = al.C((View)localObject2);
              al.c((View)localObject2, 0.0F);
              al.A(paramViewGroup).add(paramz1);
              paramz2 = this.uK.getPath(i - this.tl[0], j - this.tl[1], k - this.tl[0], m - this.tl[1]);
              paramz2 = ObjectAnimator.ofPropertyValuesHolder(paramz1, new PropertyValuesHolder[] { n.a(tf, paramz2) });
              paramz2.addListener(new AnimatorListenerAdapter()
              {
                public final void onAnimationEnd(Animator paramAnonymousAnimator)
                {
                  al.A(paramViewGroup).remove(paramz1);
                  al.c(localObject2, f);
                }
              });
              return paramz2;
            }
            return null;
            paramz2 = null;
          }
        }
      }
      i = 1;
    }
  }
  
  public final void b(z paramz)
  {
    a(paramz);
  }
  
  public final void c(z paramz)
  {
    a(paramz);
  }
  
  public final String[] getTransitionProperties()
  {
    return te;
  }
  
  private static final class a
  {
    private View mView;
    int tD;
    int tE;
    int tF;
    int tG;
    int tH;
    int tI;
    
    a(View paramView)
    {
      this.mView = paramView;
    }
    
    final void cn()
    {
      al.b(this.mView, this.tD, this.tE, this.tF, this.tG);
      this.tH = 0;
      this.tI = 0;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */