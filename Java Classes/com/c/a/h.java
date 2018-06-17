package com.c.a;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

final class h
  implements ViewTreeObserver.OnPreDrawListener
{
  final WeakReference<ImageView> bMH;
  final x bNo;
  e bNp;
  
  h(x paramx, ImageView paramImageView, e parame)
  {
    this.bNo = paramx;
    this.bMH = new WeakReference(paramImageView);
    this.bNp = parame;
    paramImageView.getViewTreeObserver().addOnPreDrawListener(this);
  }
  
  public final boolean onPreDraw()
  {
    ImageView localImageView = (ImageView)this.bMH.get();
    if (localImageView == null) {}
    int i;
    int j;
    do
    {
      do
      {
        return true;
        localObject = localImageView.getViewTreeObserver();
      } while (!((ViewTreeObserver)localObject).isAlive());
      i = localImageView.getWidth();
      j = localImageView.getHeight();
    } while ((i <= 0) || (j <= 0));
    ((ViewTreeObserver)localObject).removeOnPreDrawListener(this);
    Object localObject = this.bNo;
    ((x)localObject).bOS = false;
    ((x)localObject).aE(i, j).a(localImageView, this.bNp);
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */