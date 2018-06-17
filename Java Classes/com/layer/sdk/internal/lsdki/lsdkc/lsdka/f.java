package com.layer.sdk.internal.lsdki.lsdkc.lsdka;

import com.layer.a.c.a;
import com.layer.a.c.e;
import com.layer.b.d.k.21;
import com.layer.b.d.k.f;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.internal.lsdkk.k.a;

public class f
  extends a<Void, Void>
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(f.class);
  private final String c;
  private final com.layer.b.d.k d;
  
  public f(com.layer.b.d.k paramk, String paramString)
  {
    super(null);
    this.d = paramk;
    this.c = paramString;
  }
  
  protected Void a(Void paramVoid)
    throws Exception
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("GetPresenceTask: Run");
    }
    try
    {
      this.d.a(this.c, com.layer.b.f.a.m.bAm);
      paramVoid = this.d;
      new k.f(paramVoid).a(new Integer[] { Integer.valueOf(200) }).a(new k.21(paramVoid));
      return null;
    }
    catch (LayerException paramVoid)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.d(a, "Error in GetPresenceTask", paramVoid);
      }
      a(new e(this, null, paramVoid.getMessage(), paramVoid));
      return null;
    }
    catch (com.layer.b.d.m paramVoid)
    {
      for (;;) {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdka/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */