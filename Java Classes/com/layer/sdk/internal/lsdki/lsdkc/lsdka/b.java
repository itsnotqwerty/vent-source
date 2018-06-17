package com.layer.sdk.internal.lsdki.lsdkc.lsdka;

import com.layer.a.c.a;
import com.layer.a.c.e;
import com.layer.b.d.h;
import com.layer.b.d.k.19;
import com.layer.b.d.k.f;
import com.layer.b.d.m;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdkk.k.a;
import java.util.UUID;

public class b
  extends a<h, h>
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(b.class);
  private final com.layer.b.d.k c;
  private final c.b d;
  
  public b(com.layer.b.d.k paramk, c.b paramb, h paramh)
  {
    super(paramh);
    this.c = paramk;
    this.d = paramb;
  }
  
  protected h a(h paramh)
    throws Exception
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("DeleteStreamTask: Run");
    }
    for (;;)
    {
      try
      {
        com.layer.b.d.k localk = this.c;
        Object localObject = paramh.b();
        ((Boolean)new k.f(localk).a(new Integer[] { Integer.valueOf(200) }).a(new k.19(localk, (UUID)localObject))).booleanValue();
        if (localObject != com.layer.b.d.b.buQ) {
          break;
        }
      }
      catch (m localm)
      {
        try
        {
          this.d.a(paramh, true);
          return paramh;
        }
        catch (LayerException localLayerException)
        {
          if (!com.layer.sdk.internal.lsdkk.k.a(6)) {
            break label300;
          }
          com.layer.sdk.internal.lsdkk.k.d(a, "Exception while persisting update for stream delete: " + paramh.toString(), localLayerException);
          a(new e(this, paramh, localLayerException.getMessage(), localLayerException));
        }
        localm = localm;
        localObject = localm.buL;
        switch (1.bqe[localm.bvU.ordinal()])
        {
        default: 
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.d(a, "Exception while deleting stream: " + paramh.toString(), localm);
          }
          a(new e(this, paramh, localm.getMessage(), localm));
          return null;
        }
      }
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "Stream was deleted while deleting streams: " + paramh.toString());
      }
    }
    if (com.layer.sdk.internal.lsdkk.k.a(6)) {
      com.layer.sdk.internal.lsdkk.k.d(a, "Unrecoverable exception while deleting stream: " + paramh.toString(), localm);
    }
    a(new e(this, paramh.b(), localm.getMessage(), localm));
    return null;
    label300:
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdka/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */