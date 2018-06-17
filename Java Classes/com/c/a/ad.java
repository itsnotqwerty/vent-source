package com.c.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

public final class ad
  extends a<ac>
{
  public ad(t paramt, ac paramac, w paramw, int paramInt1, int paramInt2, Drawable paramDrawable, String paramString, Object paramObject, int paramInt3)
  {
    super(paramt, paramac, paramw, paramInt1, paramInt2, paramInt3, paramDrawable, paramString, paramObject, false);
  }
  
  final void a(Bitmap paramBitmap, t.d paramd)
  {
    if (paramBitmap == null) {
      throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", new Object[] { this }));
    }
    paramd = (ac)getTarget();
    if (paramd != null)
    {
      paramd.b(paramBitmap);
      if (paramBitmap.isRecycled()) {
        throw new IllegalStateException("Target callback must not recycle bitmap!");
      }
    }
  }
  
  final void error()
  {
    ac localac = (ac)getTarget();
    if (localac != null)
    {
      if (this.bML != 0)
      {
        this.bMF.context.getResources().getDrawable(this.bML);
        localac.wc();
      }
    }
    else {
      return;
    }
    localac.wc();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */