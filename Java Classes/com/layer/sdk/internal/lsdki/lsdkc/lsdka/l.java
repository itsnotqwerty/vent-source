package com.layer.sdk.internal.lsdki.lsdkc.lsdka;

import com.layer.a.c.a;
import com.layer.a.c.e;
import com.layer.b.d.i;
import com.layer.b.d.k.4;
import com.layer.b.d.k.f;
import com.layer.b.d.m;
import com.layer.b.f.c.p;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdkk.k.a;
import java.util.Arrays;
import java.util.UUID;

public class l
  extends a<i, i>
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(j.class);
  private final com.layer.b.d.k c;
  private final c.b d;
  
  public l(com.layer.b.d.k paramk, c.b paramb, i parami)
  {
    super(parami);
    this.c = paramk;
    this.d = paramb;
  }
  
  protected i a(i parami)
    throws Exception
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("PostMutationTask: Run");
    }
    try
    {
      com.layer.b.d.k localk = this.c;
      UUID localUUID = parami.wV();
      parami.dI(((i)new k.f(localk).a(new Integer[] { Integer.valueOf(200) }).a(new k.4(localk, parami, localUUID))).f);
      this.d.c(Arrays.asList(new i[] { parami }));
      return parami;
    }
    catch (m localm)
    {
      switch (1.bqe[localm.bvU.ordinal()])
      {
      default: 
        return parami;
      case 1: 
      case 2: 
      case 3: 
      case 4: 
        a(new e(this, parami, localm.getMessage(), localm));
        return parami;
      }
      try
      {
        this.d.d(parami.bwN);
        a(new e(this, parami, localm.getMessage(), localm));
        return parami;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.d(a, "Exception", localException);
          }
        }
      }
    }
    catch (LayerException localLayerException)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.d(a, "Exception", localLayerException);
      }
      a(new e(this, parami, localLayerException.getMessage(), localLayerException));
    }
    return parami;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdka/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */