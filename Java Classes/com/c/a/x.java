package com.c.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public final class x
{
  private static final AtomicInteger bOQ = new AtomicInteger();
  public final t bMF;
  public boolean bMI;
  public int bMJ;
  public int bMK;
  public int bML;
  public Drawable bMM;
  public final w.a bOR;
  public boolean bOS;
  public boolean bOT = true;
  public int bOU;
  public Drawable bOV;
  public Object tag;
  
  x()
  {
    this.bMF = null;
    this.bOR = new w.a(null, null);
  }
  
  x(t paramt, Uri paramUri)
  {
    if (paramt.shutdown) {
      throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
    }
    this.bMF = paramt;
    this.bOR = new w.a(paramUri, paramt.bOh);
  }
  
  public final Drawable AA()
  {
    if (this.bOU != 0) {
      return this.bMF.context.getResources().getDrawable(this.bOU);
    }
    return this.bOV;
  }
  
  public final x B(float paramFloat)
  {
    this.bOR.bOL = paramFloat;
    return this;
  }
  
  public final w R(long paramLong)
  {
    int i = bOQ.getAndIncrement();
    Object localObject = this.bOR;
    if ((((w.a)localObject).bOJ) && (((w.a)localObject).bOI)) {
      throw new IllegalStateException("Center crop and center inside can not be used together.");
    }
    if ((((w.a)localObject).bOI) && (((w.a)localObject).bOG == 0) && (((w.a)localObject).bOH == 0)) {
      throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
    }
    if ((((w.a)localObject).bOJ) && (((w.a)localObject).bOG == 0) && (((w.a)localObject).bOH == 0)) {
      throw new IllegalStateException("Center inside requires calling resize with positive width and height.");
    }
    if (((w.a)localObject).bNi == 0) {
      ((w.a)localObject).bNi = t.e.bOt;
    }
    localObject = new w(((w.a)localObject).uri, ((w.a)localObject).resourceId, ((w.a)localObject).bOE, ((w.a)localObject).bOF, ((w.a)localObject).bOG, ((w.a)localObject).bOH, ((w.a)localObject).bOI, ((w.a)localObject).bOJ, ((w.a)localObject).bOK, ((w.a)localObject).bOL, ((w.a)localObject).bOM, ((w.a)localObject).bON, ((w.a)localObject).bOO, ((w.a)localObject).bOP, ((w.a)localObject).bNi, (byte)0);
    ((w)localObject).id = i;
    ((w)localObject).bOD = paramLong;
    boolean bool = this.bMF.bOj;
    if (bool) {
      ag.b("Main", "created", ((w)localObject).Av(), ((w)localObject).toString());
    }
    t localt = this.bMF;
    w localw = localt.bOb.c((w)localObject);
    if (localw == null) {
      throw new IllegalStateException("Request transformer " + localt.bOb.getClass().getCanonicalName() + " returned null for " + localObject);
    }
    if (localw != localObject)
    {
      localw.id = i;
      localw.bOD = paramLong;
      if (bool) {
        ag.b("Main", "changed", localw.Au(), "into " + localw);
      }
    }
    return localw;
  }
  
  public final x a(ae paramae)
  {
    w.a locala = this.bOR;
    if (paramae == null) {
      throw new IllegalArgumentException("Transformation must not be null.");
    }
    if (paramae.key() == null) {
      throw new IllegalArgumentException("Transformation key must not be null.");
    }
    if (locala.bOF == null) {
      locala.bOF = new ArrayList(2);
    }
    locala.bOF.add(paramae);
    return this;
  }
  
  public final void a(ImageView paramImageView, e parame)
  {
    long l = System.nanoTime();
    ag.AC();
    if (paramImageView == null) {
      throw new IllegalArgumentException("Target must not be null.");
    }
    if (!this.bOR.Az())
    {
      this.bMF.ak(paramImageView);
      if (this.bOT) {
        u.a(paramImageView, AA());
      }
    }
    Object localObject;
    String str;
    do
    {
      return;
      if (this.bOS)
      {
        localObject = this.bOR;
        if ((((w.a)localObject).bOG != 0) || (((w.a)localObject).bOH != 0)) {}
        for (int i = 1; i != 0; i = 0) {
          throw new IllegalStateException("Fit cannot be used with resize.");
        }
        i = paramImageView.getWidth();
        int j = paramImageView.getHeight();
        if ((i == 0) || (j == 0))
        {
          if (this.bOT) {
            u.a(paramImageView, AA());
          }
          localObject = this.bMF;
          parame = new h(this, paramImageView, parame);
          ((t)localObject).bOf.put(paramImageView, parame);
          return;
        }
        this.bOR.aD(i, j);
      }
      localObject = R(l);
      str = ag.e((w)localObject);
      if (!p.dY(this.bMJ)) {
        break;
      }
      Bitmap localBitmap = this.bMF.dP(str);
      if (localBitmap == null) {
        break;
      }
      this.bMF.ak(paramImageView);
      u.a(paramImageView, this.bMF.context, localBitmap, t.d.bOn, this.bMI, this.bMF.bOi);
      if (this.bMF.bOj) {
        ag.b("Main", "completed", ((w)localObject).Av(), "from " + t.d.bOn);
      }
    } while (parame == null);
    parame.onSuccess();
    return;
    if (this.bOT) {
      u.a(paramImageView, AA());
    }
    paramImageView = new l(this.bMF, paramImageView, (w)localObject, this.bMJ, this.bMK, this.bML, this.bMM, str, this.tag, parame, this.bMI);
    this.bMF.c(paramImageView);
  }
  
  public final x aE(int paramInt1, int paramInt2)
  {
    this.bOR.aD(paramInt1, paramInt2);
    return this;
  }
  
  public final x al(Object paramObject)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("Tag invalid.");
    }
    if (this.tag != null) {
      throw new IllegalStateException("Tag already set.");
    }
    this.tag = paramObject;
    return this;
  }
  
  public final x ee(int paramInt)
  {
    if (!this.bOT) {
      throw new IllegalStateException("Already explicitly declared as no placeholder.");
    }
    if (paramInt == 0) {
      throw new IllegalArgumentException("Placeholder image resource invalid.");
    }
    if (this.bOV != null) {
      throw new IllegalStateException("Placeholder image already set.");
    }
    this.bOU = paramInt;
    return this;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */