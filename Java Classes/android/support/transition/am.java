package android.support.transition;

import android.graphics.Matrix;
import android.view.View;

class am
  implements ar
{
  public ak A(View paramView)
  {
    return ai.z(paramView);
  }
  
  public av B(View paramView)
  {
    return new at(paramView.getWindowToken());
  }
  
  public float C(View paramView)
  {
    Float localFloat = (Float)paramView.getTag(r.a.save_non_transition_alpha);
    if (localFloat != null) {
      return paramView.getAlpha() / localFloat.floatValue();
    }
    return paramView.getAlpha();
  }
  
  public void D(View paramView)
  {
    if (paramView.getTag(r.a.save_non_transition_alpha) == null) {
      paramView.setTag(r.a.save_non_transition_alpha, Float.valueOf(paramView.getAlpha()));
    }
  }
  
  public void E(View paramView)
  {
    if (paramView.getVisibility() == 0) {
      paramView.setTag(r.a.save_non_transition_alpha, null);
    }
  }
  
  public void a(View paramView, Matrix paramMatrix)
  {
    Object localObject = paramView.getParent();
    if ((localObject instanceof View))
    {
      localObject = (View)localObject;
      a((View)localObject, paramMatrix);
      paramMatrix.preTranslate(-((View)localObject).getScrollX(), -((View)localObject).getScrollY());
    }
    paramMatrix.preTranslate(paramView.getLeft(), paramView.getTop());
    paramView = paramView.getMatrix();
    if (!paramView.isIdentity()) {
      paramMatrix.preConcat(paramView);
    }
  }
  
  public void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.setLeft(paramInt1);
    paramView.setTop(paramInt2);
    paramView.setRight(paramInt3);
    paramView.setBottom(paramInt4);
  }
  
  public void b(View paramView, Matrix paramMatrix)
  {
    Object localObject = paramView.getParent();
    if ((localObject instanceof View))
    {
      localObject = (View)localObject;
      b((View)localObject, paramMatrix);
      paramMatrix.postTranslate(((View)localObject).getScrollX(), ((View)localObject).getScrollY());
    }
    paramMatrix.postTranslate(paramView.getLeft(), paramView.getTop());
    paramView = paramView.getMatrix();
    if (!paramView.isIdentity())
    {
      localObject = new Matrix();
      if (paramView.invert((Matrix)localObject)) {
        paramMatrix.postConcat((Matrix)localObject);
      }
    }
  }
  
  public void c(View paramView, float paramFloat)
  {
    Float localFloat = (Float)paramView.getTag(r.a.save_non_transition_alpha);
    if (localFloat != null)
    {
      paramView.setAlpha(localFloat.floatValue() * paramFloat);
      return;
    }
    paramView.setAlpha(paramFloat);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */