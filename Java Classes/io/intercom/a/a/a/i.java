package io.intercom.a.a.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import io.intercom.a.a.a.d.p;
import io.intercom.a.a.a.g.a;
import io.intercom.a.a.a.g.a.b;
import io.intercom.a.a.a.g.d;
import io.intercom.a.a.a.g.f;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class i<TranscodeType>
  implements Cloneable
{
  protected static final io.intercom.a.a.a.g.g cGg = new io.intercom.a.a.a.g.g().b(io.intercom.a.a.a.c.b.i.cKd).b(g.cFU).Jx();
  private final io.intercom.a.a.a.g.g cFG;
  private final c cFo;
  public final e cFu;
  private final Class<TranscodeType> cGh;
  protected io.intercom.a.a.a.g.g cGi;
  private k<?, ? super TranscodeType> cGj;
  private Object cGk;
  public f<TranscodeType> cGl;
  private i<TranscodeType> cGm;
  private i<TranscodeType> cGn;
  private Float cGo;
  private boolean cGp = true;
  private boolean cGq;
  private boolean cGr;
  private final Context context;
  private final j requestManager;
  
  protected i(c paramc, j paramj, Class<TranscodeType> paramClass, Context paramContext)
  {
    this.cFo = paramc;
    this.requestManager = paramj;
    this.cGh = paramClass;
    this.cFG = paramj.cGi;
    this.context = paramContext;
    this.cGj = paramj.y(paramClass);
    this.cGi = this.cFG;
    this.cFu = paramc.cFu;
  }
  
  private io.intercom.a.a.a.g.g HA()
  {
    if (this.cFG == this.cGi) {
      return this.cGi.Jy();
    }
    return this.cGi;
  }
  
  private i<TranscodeType> HB()
  {
    try
    {
      i locali = (i)super.clone();
      locali.cGi = locali.cGi.Jy();
      locali.cGj = locali.cGj.HD();
      return locali;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
  
  private <Y extends io.intercom.a.a.a.g.a.h<TranscodeType>> Y a(Y paramY, f<TranscodeType> paramf, io.intercom.a.a.a.g.g paramg)
  {
    io.intercom.a.a.a.i.i.JS();
    io.intercom.a.a.a.i.h.checkNotNull(paramY, "Argument must not be null");
    if (!this.cGq) {
      throw new IllegalArgumentException("You must call #load() before calling #into()");
    }
    paramg = paramg.JA();
    paramf = a(paramY, paramf, null, this.cGj, paramg.cJg, paramg.cPX, paramg.cPW, paramg);
    paramg = paramY.getRequest();
    if (paramf.a(paramg))
    {
      paramf.recycle();
      if (!((io.intercom.a.a.a.g.c)io.intercom.a.a.a.i.h.checkNotNull(paramg, "Argument must not be null")).isRunning()) {
        paramg.begin();
      }
      return paramY;
    }
    this.requestManager.b(paramY);
    paramY.setRequest(paramf);
    paramg = this.requestManager;
    paramg.cGB.cPA.add(paramY);
    paramg = paramg.cGz;
    paramg.cPu.add(paramf);
    if (!paramg.cPw)
    {
      paramf.begin();
      return paramY;
    }
    paramg.cPv.add(paramf);
    return paramY;
  }
  
  private io.intercom.a.a.a.g.c a(io.intercom.a.a.a.g.a.h<TranscodeType> paramh, f<TranscodeType> paramf, d paramd, k<?, ? super TranscodeType> paramk, g paramg, int paramInt1, int paramInt2, io.intercom.a.a.a.g.g paramg1)
  {
    if (this.cGn != null) {
      paramd = new a(paramd);
    }
    for (d locald = paramd;; locald = null)
    {
      Object localObject;
      if (this.cGm != null)
      {
        if (this.cGr) {
          throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        }
        localObject = this.cGm.cGj;
        if (!this.cGm.cGp) {
          break label476;
        }
        localObject = paramk;
      }
      label341:
      label473:
      label476:
      for (;;)
      {
        g localg;
        int j;
        int i;
        if (this.cGm.cGi.isSet(8))
        {
          localg = this.cGm.cGi.cJg;
          j = this.cGm.cGi.cPX;
          i = this.cGm.cGi.cPW;
          if ((!io.intercom.a.a.a.i.i.aR(paramInt1, paramInt2)) || (this.cGm.cGi.JC())) {
            break label473;
          }
          j = paramg1.cPX;
          i = paramg1.cPW;
        }
        for (;;)
        {
          paramd = new io.intercom.a.a.a.g.j(paramd);
          paramk = a(paramh, paramf, paramg1, paramd, paramk, paramg, paramInt1, paramInt2);
          this.cGr = true;
          paramg = this.cGm.a(paramh, paramf, paramd, (k)localObject, localg, j, i, this.cGm.cGi);
          this.cGr = false;
          paramd.a(paramk, paramg);
          for (;;)
          {
            if (locald != null) {
              break label341;
            }
            return paramd;
            localg = a(paramg);
            break;
            if (this.cGo != null)
            {
              paramd = new io.intercom.a.a.a.g.j(paramd);
              paramd.a(a(paramh, paramf, paramg1, paramd, paramk, paramg, paramInt1, paramInt2), a(paramh, paramf, paramg1.Jy().C(this.cGo.floatValue()), paramd, paramk, a(paramg), paramInt1, paramInt2));
            }
            else
            {
              paramd = a(paramh, paramf, paramg1, paramd, paramk, paramg, paramInt1, paramInt2);
            }
          }
          int k = this.cGn.cGi.cPX;
          int m = this.cGn.cGi.cPW;
          j = k;
          i = m;
          if (io.intercom.a.a.a.i.i.aR(paramInt1, paramInt2))
          {
            j = k;
            i = m;
            if (!this.cGn.cGi.JC())
            {
              j = paramg1.cPX;
              i = paramg1.cPW;
            }
          }
          paramh = this.cGn.a(paramh, paramf, locald, this.cGn.cGj, this.cGn.cGi.cJg, j, i, this.cGn.cGi);
          locald.cPJ = paramd;
          locald.cPK = paramh;
          return locald;
        }
      }
    }
  }
  
  private io.intercom.a.a.a.g.c a(io.intercom.a.a.a.g.a.h<TranscodeType> paramh, f<TranscodeType> paramf, io.intercom.a.a.a.g.g paramg, d paramd, k<?, ? super TranscodeType> paramk, g paramg1, int paramInt1, int paramInt2)
  {
    return io.intercom.a.a.a.g.i.a(this.context, this.cFu, this.cGk, this.cGh, paramg, paramInt1, paramInt2, paramg1, paramh, paramf, this.cGl, paramd, this.cFu.cFq, paramk.cGG);
  }
  
  private g a(g paramg)
  {
    switch (2.cGv[paramg.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("unknown priority: " + this.cGi.cJg);
    case 1: 
      return g.cFT;
    case 2: 
      return g.cFS;
    }
    return g.cFR;
  }
  
  public final <Y extends io.intercom.a.a.a.g.a.h<TranscodeType>> Y a(Y paramY, f<TranscodeType> paramf)
  {
    return a(paramY, paramf, HA());
  }
  
  public final i<TranscodeType> a(io.intercom.a.a.a.g.g paramg)
  {
    io.intercom.a.a.a.i.h.checkNotNull(paramg, "Argument must not be null");
    for (io.intercom.a.a.a.g.g localg = HA(); localg.cQc; localg = localg.Jy()) {}
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 2)) {
      localg.cPS = paramg.cPS;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 262144)) {
      localg.cQd = paramg.cQd;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 1048576)) {
      localg.cKC = paramg.cKC;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 4)) {
      localg.diskCacheStrategy = paramg.diskCacheStrategy;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 8)) {
      localg.cJg = paramg.cJg;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 16)) {
      localg.cPT = paramg.cPT;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 32)) {
      localg.cPU = paramg.cPU;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 64)) {
      localg.bOV = paramg.bOV;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 128)) {
      localg.cPV = paramg.cPV;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 256)) {
      localg.cIM = paramg.cIM;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 512))
    {
      localg.cPX = paramg.cPX;
      localg.cPW = paramg.cPW;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 1024)) {
      localg.cIX = paramg.cIX;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 4096)) {
      localg.cJb = paramg.cJb;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 8192)) {
      localg.cPZ = paramg.cPZ;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 16384)) {
      localg.cQa = paramg.cQa;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 32768)) {
      localg.cQb = paramg.cQb;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 65536)) {
      localg.cPY = paramg.cPY;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 131072)) {
      localg.cJh = paramg.cJh;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 2048))
    {
      localg.cJd.putAll(paramg.cJd);
      localg.cJi = paramg.cJi;
    }
    if (io.intercom.a.a.a.g.g.aN(paramg.cPR, 524288)) {
      localg.cJu = paramg.cJu;
    }
    if (!localg.cPY)
    {
      localg.cJd.clear();
      localg.cPR &= 0xF7FF;
      localg.cJh = false;
      localg.cPR &= 0xFFFDFFFF;
      localg.cJi = true;
    }
    localg.cPR |= paramg.cPR;
    localg.cIZ.a(paramg.cIZ);
    this.cGi = localg.JB();
    return this;
  }
  
  public final i<TranscodeType> a(k<?, ? super TranscodeType> paramk)
  {
    this.cGj = ((k)io.intercom.a.a.a.i.h.checkNotNull(paramk, "Argument must not be null"));
    this.cGp = false;
    return this;
  }
  
  public final i<TranscodeType> aq(Object paramObject)
  {
    this.cGk = paramObject;
    this.cGq = true;
    return this;
  }
  
  public final io.intercom.a.a.a.g.a.i<ImageView, TranscodeType> c(ImageView paramImageView)
  {
    io.intercom.a.a.a.i.i.JS();
    io.intercom.a.a.a.i.h.checkNotNull(paramImageView, "Argument must not be null");
    Object localObject2 = this.cGi;
    Object localObject1 = localObject2;
    if (!((io.intercom.a.a.a.g.g)localObject2).isSet(2048))
    {
      localObject1 = localObject2;
      if (((io.intercom.a.a.a.g.g)localObject2).cPY)
      {
        localObject1 = localObject2;
        if (paramImageView.getScaleType() == null) {}
      }
    }
    switch (2.cGu[paramImageView.getScaleType().ordinal()])
    {
    default: 
      localObject1 = localObject2;
      localObject2 = this.cGh;
      if (!Bitmap.class.equals(localObject2)) {
        break;
      }
    }
    for (paramImageView = new b(paramImageView);; paramImageView = new io.intercom.a.a.a.g.a.c(paramImageView))
    {
      return (io.intercom.a.a.a.g.a.i)a(paramImageView, null, (io.intercom.a.a.a.g.g)localObject1);
      localObject1 = ((io.intercom.a.a.a.g.g)localObject2).Jy().a(io.intercom.a.a.a.c.d.a.j.cNG, new io.intercom.a.a.a.c.d.a.g());
      break;
      localObject1 = ((io.intercom.a.a.a.g.g)localObject2).Jy().Jz();
      break;
      localObject1 = ((io.intercom.a.a.a.g.g)localObject2).Jy().b(io.intercom.a.a.a.c.d.a.j.cNF, new io.intercom.a.a.a.c.d.a.n());
      break;
      localObject1 = ((io.intercom.a.a.a.g.g)localObject2).Jy().Jz();
      break;
      if (!Drawable.class.isAssignableFrom((Class)localObject2)) {
        break label219;
      }
    }
    label219:
    throw new IllegalArgumentException("Unhandled class: " + localObject2 + ", try .as*(Class).transcode(ResourceTranscoder)");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */