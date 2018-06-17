package com.c.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

abstract class a<T>
{
  final t bMF;
  final w bMG;
  final WeakReference<T> bMH;
  final boolean bMI;
  final int bMJ;
  final int bMK;
  final int bML;
  final Drawable bMM;
  boolean bMN;
  boolean bMO;
  final String key;
  final Object tag;
  
  a(t paramt, T paramT, w paramw, int paramInt1, int paramInt2, int paramInt3, Drawable paramDrawable, String paramString, Object paramObject, boolean paramBoolean)
  {
    this.bMF = paramt;
    this.bMG = paramw;
    if (paramT == null)
    {
      paramt = null;
      this.bMH = paramt;
      this.bMJ = paramInt1;
      this.bMK = paramInt2;
      this.bMI = paramBoolean;
      this.bML = paramInt3;
      this.bMM = paramDrawable;
      this.key = paramString;
      if (paramObject == null) {
        break label90;
      }
    }
    for (;;)
    {
      this.tag = paramObject;
      return;
      paramt = new a(this, paramT, paramt.bOg);
      break;
      label90:
      paramObject = this;
    }
  }
  
  abstract void a(Bitmap paramBitmap, t.d paramd);
  
  void cancel()
  {
    this.bMO = true;
  }
  
  abstract void error();
  
  final T getTarget()
  {
    if (this.bMH == null) {
      return null;
    }
    return (T)this.bMH.get();
  }
  
  static final class a<M>
    extends WeakReference<M>
  {
    final a bMP;
    
    public a(a parama, M paramM, ReferenceQueue<? super M> paramReferenceQueue)
    {
      super(paramReferenceQueue);
      this.bMP = parama;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */