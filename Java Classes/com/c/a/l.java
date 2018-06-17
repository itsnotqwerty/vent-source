package com.c.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

final class l
  extends a<ImageView>
{
  e bNp;
  
  l(t paramt, ImageView paramImageView, w paramw, int paramInt1, int paramInt2, int paramInt3, Drawable paramDrawable, String paramString, Object paramObject, e parame, boolean paramBoolean)
  {
    super(paramt, paramImageView, paramw, paramInt1, paramInt2, paramInt3, paramDrawable, paramString, paramObject, paramBoolean);
    this.bNp = parame;
  }
  
  public final void a(Bitmap paramBitmap, t.d paramd)
  {
    if (paramBitmap == null) {
      throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", new Object[] { this }));
    }
    ImageView localImageView = (ImageView)this.bMH.get();
    if (localImageView == null) {}
    do
    {
      return;
      Context localContext = this.bMF.context;
      boolean bool = this.bMF.bOi;
      u.a(localImageView, localContext, paramBitmap, paramd, this.bMI, bool);
    } while (this.bNp == null);
    this.bNp.onSuccess();
  }
  
  final void cancel()
  {
    super.cancel();
    if (this.bNp != null) {
      this.bNp = null;
    }
  }
  
  public final void error()
  {
    ImageView localImageView = (ImageView)this.bMH.get();
    if (localImageView == null) {}
    for (;;)
    {
      return;
      if (this.bML != 0) {
        localImageView.setImageResource(this.bML);
      }
      while (this.bNp != null)
      {
        this.bNp.onError();
        return;
        if (this.bMM != null) {
          localImageView.setImageDrawable(this.bMM);
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */