package com.layer.sdk.internal.lsdkj;

import com.layer.a.c.b.a;
import com.layer.b.d.k.22;
import com.layer.b.d.k.f;
import com.layer.b.d.m;
import com.layer.b.f.c.j;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.internal.a;
import com.layer.sdk.internal.lsdkk.k.a;

public class i
  extends com.layer.a.c.b<a, Void>
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(i.class);
  
  public i(b.a parama, a parama1)
  {
    super(parama, parama1);
  }
  
  protected Void a(a parama)
  {
    try
    {
      com.layer.b.d.k localk = a.c(parama);
      String str = a.b(parama);
      j localj = j.bEb;
      if (((Boolean)new k.f(localk).a(new Integer[] { Integer.valueOf(200) }).a(new k.22(localk, str, localj))).booleanValue())
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(a, "Successfully registered FCM Registration id with Layer Server");
        }
        if (a.d(parama).A() != null) {
          a.d(parama).A().a(a.d(parama), a.b(parama));
        }
      }
      else
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(a, "Failed posting FCM Registration id with Layer Server");
        }
        throw new LayerException(LayerException.Type.UNKNOWN, "Could not set FCM token");
      }
    }
    catch (m parama)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Failed posting FCM Registration id with Layer Server with exception: " + parama.toString());
      }
      throw new LayerException(LayerException.Type.UNKNOWN, "Could not set FCM token", parama);
    }
    return null;
  }
  
  public static class a
  {
    private final a a;
    private final com.layer.b.d.k b;
    private final String c;
    
    public a(a parama, com.layer.b.d.k paramk, String paramString)
    {
      this.a = parama;
      this.b = paramk;
      this.c = paramString;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkj/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */