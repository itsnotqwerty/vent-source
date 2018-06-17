package com.layer.sdk.internal.lsdki.lsdkc.lsdka;

import com.layer.a.c.e;
import com.layer.b.d.h;
import com.layer.b.d.k.17;
import com.layer.b.d.k.f;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.internal.lsdke.lsdkc.c.a;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdkk.k.a;

public class a
  extends com.layer.a.c.a<h, h>
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(a.class);
  private final com.layer.b.d.k c;
  private final c.b d;
  
  public a(com.layer.b.d.k paramk, c.b paramb, h paramh)
  {
    super(paramh);
    this.c = paramk;
    this.d = paramb;
  }
  
  protected h a(h paramh)
    throws Exception
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("CreateStreamTask: Run");
    }
    try
    {
      Object localObject = this.c;
      localObject = (h)new k.f((com.layer.b.d.k)localObject).a(new Integer[] { Integer.valueOf(200) }).a(new k.17((com.layer.b.d.k)localObject, paramh));
      if (localObject == null)
      {
        paramh = null;
        return paramh;
      }
    }
    catch (com.layer.b.d.m localm)
    {
      Throwable localThrowable;
      for (;;)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(a, "Create stream failed: " + paramh, localm);
        }
        switch (1.bqe[localm.bvU.ordinal()])
        {
        }
        for (;;)
        {
          a(new e(this, paramh, localm.getMessage(), localm));
          localThrowable = null;
          break;
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.d(a, "Create stream failed with UNRECOVERABLE error : " + paramh, localThrowable);
          }
          this.d.f(paramh.bwE);
        }
        localThrowable.bwE = paramh.bwE;
        localThrowable.c = paramh.c;
        try
        {
          if (localThrowable.h)
          {
            h localh = this.d.b(localThrowable, c.a.b);
            paramh = localh;
            if (localh != null) {
              continue;
            }
          }
          else
          {
            this.d.a(localThrowable, c.a.b);
          }
        }
        catch (LayerException localLayerException)
        {
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.d(a, "Persist stream failed: " + localThrowable, localLayerException);
          }
          a(new e(this, paramh, localLayerException.getMessage(), localLayerException));
          return null;
        }
      }
      return localThrowable;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdka/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */