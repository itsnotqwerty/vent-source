package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import java.util.Map;

public abstract class as
  extends u
{
  private static final String[] te = { "android:visibility:visibility", "android:visibility:parent" };
  int ow = 3;
  
  private static void a(z paramz)
  {
    int i = paramz.view.getVisibility();
    paramz.values.put("android:visibility:visibility", Integer.valueOf(i));
    paramz.values.put("android:visibility:parent", paramz.view.getParent());
    int[] arrayOfInt = new int[2];
    paramz.view.getLocationOnScreen(arrayOfInt);
    paramz.values.put("android:visibility:screenLocation", arrayOfInt);
  }
  
  private static b b(z paramz1, z paramz2)
  {
    b localb = new b((byte)0);
    localb.vU = false;
    localb.vV = false;
    if ((paramz1 != null) && (paramz1.values.containsKey("android:visibility:visibility")))
    {
      localb.vW = ((Integer)paramz1.values.get("android:visibility:visibility")).intValue();
      localb.vY = ((ViewGroup)paramz1.values.get("android:visibility:parent"));
      if ((paramz2 == null) || (!paramz2.values.containsKey("android:visibility:visibility"))) {
        break label178;
      }
      localb.vX = ((Integer)paramz2.values.get("android:visibility:visibility")).intValue();
      localb.vZ = ((ViewGroup)paramz2.values.get("android:visibility:parent"));
    }
    for (;;)
    {
      if ((paramz1 != null) && (paramz2 != null))
      {
        if ((localb.vW == localb.vX) && (localb.vY == localb.vZ))
        {
          return localb;
          localb.vW = -1;
          localb.vY = null;
          break;
          label178:
          localb.vX = -1;
          localb.vZ = null;
          continue;
        }
        if (localb.vW != localb.vX) {
          if (localb.vW == 0)
          {
            localb.vV = false;
            localb.vU = true;
          }
        }
      }
    }
    for (;;)
    {
      return localb;
      if (localb.vX == 0)
      {
        localb.vV = true;
        localb.vU = true;
        continue;
        if (localb.vZ == null)
        {
          localb.vV = false;
          localb.vU = true;
        }
        else if (localb.vY == null)
        {
          localb.vV = true;
          localb.vU = true;
          continue;
          if ((paramz1 == null) && (localb.vX == 0))
          {
            localb.vV = true;
            localb.vU = true;
          }
          else if ((paramz2 == null) && (localb.vW == 0))
          {
            localb.vV = false;
            localb.vU = true;
          }
        }
      }
    }
  }
  
  public Animator a(View paramView, z paramz)
  {
    return null;
  }
  
  public final Animator a(final ViewGroup paramViewGroup, z paramz1, final z paramz2)
  {
    Object localObject1 = b(paramz1, paramz2);
    int i;
    label139:
    Canvas localCanvas;
    Object localObject3;
    Object localObject2;
    int j;
    if ((((b)localObject1).vU) && ((((b)localObject1).vY != null) || (((b)localObject1).vZ != null)))
    {
      if (((b)localObject1).vV)
      {
        if (((this.ow & 0x1) != 1) || (paramz2 == null)) {
          return null;
        }
        if (paramz1 == null)
        {
          paramViewGroup = (View)paramz2.view.getParent();
          if (b(c(paramViewGroup, false), b(paramViewGroup, false)).vU) {
            return null;
          }
        }
        return a(paramz2.view, paramz1);
      }
      i = ((b)localObject1).vX;
      if ((this.ow & 0x2) == 2)
      {
        if (paramz1 != null)
        {
          localObject1 = paramz1.view;
          if (paramz2 == null) {
            break label284;
          }
          paramz2 = paramz2.view;
          localCanvas = null;
          localObject3 = null;
          if ((paramz2 != null) && (paramz2.getParent() != null)) {
            break label729;
          }
          if (paramz2 == null) {
            break label289;
          }
          localObject2 = localObject3;
        }
        for (;;)
        {
          if ((paramz2 != null) && (paramz1 != null))
          {
            localObject1 = (int[])paramz1.values.get("android:visibility:screenLocation");
            i = localObject1[0];
            j = localObject1[1];
            localObject1 = new int[2];
            paramViewGroup.getLocationOnScreen((int[])localObject1);
            paramz2.offsetLeftAndRight(i - localObject1[0] - paramz2.getLeft());
            paramz2.offsetTopAndBottom(j - localObject1[1] - paramz2.getTop());
            paramViewGroup = ae.b(paramViewGroup);
            paramViewGroup.add(paramz2);
            paramz1 = b(paramz2, paramz1);
            if (paramz1 == null)
            {
              paramViewGroup.remove(paramz2);
              return paramz1;
              localObject1 = null;
              break;
              label284:
              paramz2 = null;
              break label139;
              label289:
              paramz2 = localCanvas;
              localObject2 = localObject3;
              if (localObject1 == null) {
                continue;
              }
              if (((View)localObject1).getParent() != null)
              {
                paramz2 = localCanvas;
                localObject2 = localObject3;
                if (!(((View)localObject1).getParent() instanceof View)) {
                  continue;
                }
                paramz2 = (View)((View)localObject1).getParent();
                if (!b(b(paramz2, true), c(paramz2, true)).vU)
                {
                  Matrix localMatrix = new Matrix();
                  localMatrix.setTranslate(-paramz2.getScrollX(), -paramz2.getScrollY());
                  al.a((View)localObject1, localMatrix);
                  al.b(paramViewGroup, localMatrix);
                  RectF localRectF = new RectF(0.0F, 0.0F, ((View)localObject1).getWidth(), ((View)localObject1).getHeight());
                  localMatrix.mapRect(localRectF);
                  j = Math.round(localRectF.left);
                  int k = Math.round(localRectF.top);
                  int m = Math.round(localRectF.right);
                  int n = Math.round(localRectF.bottom);
                  localObject2 = new ImageView(((View)localObject1).getContext());
                  ((ImageView)localObject2).setScaleType(ImageView.ScaleType.CENTER_CROP);
                  localCanvas = null;
                  int i2 = Math.round(localRectF.width());
                  int i1 = Math.round(localRectF.height());
                  paramz2 = localCanvas;
                  if (i2 > 0)
                  {
                    paramz2 = localCanvas;
                    if (i1 > 0)
                    {
                      float f = Math.min(1.0F, 1048576.0F / (i2 * i1));
                      i2 = (int)(i2 * f);
                      i1 = (int)(i1 * f);
                      localMatrix.postTranslate(-localRectF.left, -localRectF.top);
                      localMatrix.postScale(f, f);
                      paramz2 = Bitmap.createBitmap(i2, i1, Bitmap.Config.ARGB_8888);
                      localCanvas = new Canvas(paramz2);
                      localCanvas.concat(localMatrix);
                      ((View)localObject1).draw(localCanvas);
                    }
                  }
                  if (paramz2 != null) {
                    ((ImageView)localObject2).setImageBitmap(paramz2);
                  }
                  ((ImageView)localObject2).measure(View.MeasureSpec.makeMeasureSpec(m - j, 1073741824), View.MeasureSpec.makeMeasureSpec(n - k, 1073741824));
                  ((ImageView)localObject2).layout(j, k, m, n);
                  paramz2 = (z)localObject2;
                  localObject2 = localObject3;
                  continue;
                }
                if (paramz2.getParent() != null) {
                  break label858;
                }
                j = paramz2.getId();
                if ((j == -1) || (paramViewGroup.findViewById(j) == null) || (!this.uB)) {
                  break label858;
                }
              }
            }
          }
        }
      }
    }
    label729:
    label858:
    for (paramz2 = (z)localObject1;; paramz2 = null)
    {
      localObject2 = localObject3;
      break;
      if (i == 4)
      {
        localObject2 = paramz2;
        paramz2 = localCanvas;
        break;
      }
      if (localObject1 == paramz2)
      {
        localObject2 = paramz2;
        paramz2 = localCanvas;
        break;
      }
      paramz2 = (z)localObject1;
      localObject2 = localObject3;
      break;
      paramz1.addListener(new AnimatorListenerAdapter()
      {
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          paramViewGroup.remove(paramz2);
        }
      });
      return paramz1;
      if (localObject2 != null)
      {
        j = ((View)localObject2).getVisibility();
        al.k((View)localObject2, 0);
        paramViewGroup = b((View)localObject2, paramz1);
        if (paramViewGroup != null)
        {
          paramz1 = new a((View)localObject2, i);
          paramViewGroup.addListener(paramz1);
          a.a(paramViewGroup, paramz1);
          a(paramz1);
          return paramViewGroup;
        }
        al.k((View)localObject2, j);
        return paramViewGroup;
      }
      return null;
      return null;
    }
  }
  
  public final boolean a(z paramz1, z paramz2)
  {
    if ((paramz1 == null) && (paramz2 == null)) {}
    do
    {
      do
      {
        return false;
      } while ((paramz1 != null) && (paramz2 != null) && (paramz2.values.containsKey("android:visibility:visibility") != paramz1.values.containsKey("android:visibility:visibility")));
      paramz1 = b(paramz1, paramz2);
    } while ((!paramz1.vU) || ((paramz1.vW != 0) && (paramz1.vX != 0)));
    return true;
  }
  
  public Animator b(View paramView, z paramz)
  {
    return null;
  }
  
  public void b(z paramz)
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
    extends AnimatorListenerAdapter
    implements b.a, u.c
  {
    private final View mView;
    boolean tB = false;
    private final int vQ;
    private final ViewGroup vR;
    private final boolean vS;
    private boolean vT;
    
    a(View paramView, int paramInt)
    {
      this.mView = paramView;
      this.vQ = paramInt;
      this.vR = ((ViewGroup)paramView.getParent());
      this.vS = true;
      l(true);
    }
    
    private void cw()
    {
      if (!this.tB)
      {
        al.k(this.mView, this.vQ);
        if (this.vR != null) {
          this.vR.invalidate();
        }
      }
      l(false);
    }
    
    private void l(boolean paramBoolean)
    {
      if ((this.vS) && (this.vT != paramBoolean) && (this.vR != null))
      {
        this.vT = paramBoolean;
        ae.c(this.vR, paramBoolean);
      }
    }
    
    public final void a(u paramu)
    {
      cw();
      paramu.b(this);
    }
    
    public final void cl()
    {
      l(false);
    }
    
    public final void cm()
    {
      l(true);
    }
    
    public final void co() {}
    
    public final void onAnimationCancel(Animator paramAnimator)
    {
      this.tB = true;
    }
    
    public final void onAnimationEnd(Animator paramAnimator)
    {
      cw();
    }
    
    public final void onAnimationPause(Animator paramAnimator)
    {
      if (!this.tB) {
        al.k(this.mView, this.vQ);
      }
    }
    
    public final void onAnimationRepeat(Animator paramAnimator) {}
    
    public final void onAnimationResume(Animator paramAnimator)
    {
      if (!this.tB) {
        al.k(this.mView, 0);
      }
    }
    
    public final void onAnimationStart(Animator paramAnimator) {}
  }
  
  private static final class b
  {
    boolean vU;
    boolean vV;
    int vW;
    int vX;
    ViewGroup vY;
    ViewGroup vZ;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/as.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */