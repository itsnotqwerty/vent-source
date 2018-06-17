package com.layer.sdk.internal.lsdki.lsdkc.lsdka;

import com.layer.a.c.a;
import com.layer.a.c.e;
import com.layer.b.f.a.i;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.internal.lsdkk.k.a;

public class m
  extends a<i, Void>
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(m.class);
  private final com.layer.b.d.k c;
  
  public m(com.layer.b.d.k paramk, i parami)
  {
    super(parami);
    this.c = paramk;
  }
  
  protected Void a(i parami)
    throws Exception
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("PostPresenceTask: Run");
    }
    try
    {
      this.c.a(parami.a, parami.bxp);
      return null;
    }
    catch (LayerException localLayerException)
    {
      for (;;)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(a, "Error in PostPresenceTask: " + parami, localLayerException);
        }
        a(new e(this, parami, localLayerException.getMessage(), localLayerException));
      }
    }
    catch (com.layer.b.d.m localm)
    {
      for (;;) {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdka/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */