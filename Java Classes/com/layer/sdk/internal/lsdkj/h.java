package com.layer.sdk.internal.lsdkj;

import com.layer.a.c.b.a;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import java.io.IOException;

public class h
  extends com.layer.a.c.b<a, Void>
{
  private static final k.a a = k.a(h.class);
  
  public h(b.a parama, a parama1)
  {
    super(parama, parama1);
  }
  
  protected Void a(a parama)
  {
    try
    {
      com.layer.b.b.a locala1 = a.b(parama).a();
      if (locala1 == null)
      {
        if (k.a(2))
        {
          k.a(a, "No config to fetch.");
          return null;
        }
      }
      else
      {
        com.layer.b.b.a locala2 = a.b(parama).b();
        if (a.b(parama).b(locala2, locala1))
        {
          locala2 = a.b(parama).a(locala2, locala1);
          a.b(parama).a(locala2);
          if (a.c(parama) != null) {
            a.c(parama).a(locala2);
          }
          a.d(parama).u();
        }
        if (a.c(parama) != null)
        {
          a.c(parama).b(locala1);
          return null;
        }
      }
    }
    catch (IOException localIOException)
    {
      if (a.c(parama) != null) {
        a.c(parama).a(localIOException);
      }
      if (k.a(6)) {
        k.d(a, "Could not fetch config", localIOException);
      }
      throw new LayerException(LayerException.Type.UNKNOWN, "Could not fetch config", localIOException);
    }
    return null;
  }
  
  public static class a
  {
    private final com.layer.b.b.b a;
    private final com.layer.sdk.internal.lsdka.a b;
    private final com.layer.sdk.internal.a c;
    
    public a(com.layer.b.b.b paramb, com.layer.sdk.internal.lsdka.a parama, com.layer.sdk.internal.a parama1)
    {
      this.a = paramb;
      this.b = parama;
      this.c = parama1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkj/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */