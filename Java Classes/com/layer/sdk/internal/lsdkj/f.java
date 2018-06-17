package com.layer.sdk.internal.lsdkj;

import com.layer.a.c.b;
import com.layer.a.c.b.a;
import com.layer.b.d.k.7;
import com.layer.b.d.k.f;
import com.layer.sdk.internal.lsdkk.k.a;

public class f
  extends b<a, Void>
{
  k.a a = com.layer.sdk.internal.lsdkk.k.a(f.class);
  
  public f(b.a parama, a parama1)
  {
    super(parama, parama1);
  }
  
  protected Void a(a parama)
  {
    try
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(this.a, "Deauthenticate : Calling Transport.deinit");
      }
      parama = a.b(parama);
      ((Boolean)new k.f(parama).a(new Integer[] { Integer.valueOf(200) }).a(new k.7(parama))).booleanValue();
    }
    catch (Exception parama)
    {
      for (;;)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(this.a, "Failed to deauthenticate", parama);
        }
      }
    }
    return null;
  }
  
  public static class a
  {
    private final com.layer.b.d.k a;
    
    public a(com.layer.b.d.k paramk)
    {
      this.a = paramk;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkj/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */