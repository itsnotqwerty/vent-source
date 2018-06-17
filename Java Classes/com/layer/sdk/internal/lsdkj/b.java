package com.layer.sdk.internal.lsdkj;

import com.layer.a.a.a;
import com.layer.a.c.c;
import com.layer.a.c.c.a;
import com.layer.a.c.e;
import com.layer.b.d.f;
import com.layer.b.d.m;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.internal.lsdkk.k.a;

public class b
  extends c<a, Void>
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(b.class);
  
  public b(a parama, c.a parama1, a parama2)
  {
    super(parama, parama1, parama2);
  }
  
  protected Void a(a parama)
    throws Exception
  {
    try
    {
      if (com.layer.sdk.internal.lsdkk.k.d()) {
        com.layer.sdk.internal.lsdkk.k.c("Sending authentication request");
      }
      a.b(parama).aJ(true);
      if (com.layer.sdk.internal.lsdkk.k.d()) {
        com.layer.sdk.internal.lsdkk.k.c("Authentication request succeeded");
      }
    }
    catch (m localm)
    {
      do
      {
        f localf = localm.bvU;
        if (localf == null) {
          throw localm;
        }
        switch (1.bqe[localf.ordinal()])
        {
        default: 
          throw localm;
        case 1: 
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(a, "Received a challenge during authentication");
          }
          break;
        }
      } while (!com.layer.sdk.internal.lsdkk.k.d());
      com.layer.sdk.internal.lsdkk.k.c("Authentication request succeeded but challenged");
      return null;
      throw localm;
      a(new e(this, parama, "Could not authenticate", localm));
      a(false);
      return null;
    }
    catch (Exception parama)
    {
      throw new LayerException(LayerException.Type.UNKNOWN, "Could not authenticate", parama);
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkj/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */