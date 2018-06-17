package com.layer.sdk.internal.lsdkj;

import com.layer.a.a.a;
import com.layer.a.c.c;
import com.layer.a.c.c.a;
import com.layer.b.d.f;
import com.layer.b.d.m;
import com.layer.sdk.internal.lsdkk.k.a;

public class e
  extends c<a, Void>
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(e.class);
  
  public e(a parama, c.a parama1, a parama2)
  {
    super(parama, parama1, parama2);
  }
  
  protected Void a(a parama)
    throws Exception
  {
    try
    {
      a.b(parama).e();
      return null;
    }
    catch (m localm)
    {
      do
      {
        f localf = localm.bvU;
        if (localf == null)
        {
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(a, "Failed to connect: " + localm.getMessage());
          }
          throw localm;
        }
        switch (1.bqe[localf.ordinal()])
        {
        default: 
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(a, "Failed to connect: " + localm.getMessage());
          }
          throw localm;
        }
      } while (!com.layer.sdk.internal.lsdkk.k.a(2));
      com.layer.sdk.internal.lsdkk.k.a(a, "Received a challenge during initial connection test. Silencing to handle on subsequent request.");
      return null;
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "Failed to connect: " + localm.getMessage());
      }
      throw localm;
      a(new com.layer.a.c.e(this, parama, "Could not connect", localm));
      a(false);
      return null;
    }
    catch (Exception parama)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "Failed to connect: " + parama.getMessage());
      }
      throw parama;
    }
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkj/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */