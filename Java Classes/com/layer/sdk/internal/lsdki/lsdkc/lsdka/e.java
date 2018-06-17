package com.layer.sdk.internal.lsdki.lsdkc.lsdka;

import com.layer.a.c.a;
import com.layer.b.d.b;
import com.layer.b.d.i;
import com.layer.b.d.k.3;
import com.layer.b.d.k.f;
import com.layer.b.d.m;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdkk.k.a;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

public class e
  extends a<Void, UUID>
{
  private static final k.a g = com.layer.sdk.internal.lsdkk.k.a(h.class);
  private final com.layer.b.d.k a;
  private final c.b c;
  private final UUID d;
  private final Integer e;
  private final Integer f;
  
  public e(com.layer.b.d.k paramk, c.b paramb, UUID paramUUID, Integer paramInteger1, Integer paramInteger2)
  {
    super(null);
    this.a = paramk;
    this.c = paramb;
    this.d = paramUUID;
    this.e = paramInteger1;
    this.f = paramInteger2;
  }
  
  protected UUID a(Void paramVoid)
    throws Exception
  {
    try
    {
      paramVoid = this.a;
      Object localObject = this.d;
      Integer localInteger1 = this.e;
      Integer localInteger2 = this.f;
      paramVoid = (List)new k.f(paramVoid).a(new Integer[] { Integer.valueOf(200) }).a(new k.3(paramVoid, (UUID)localObject, localInteger1, localInteger2));
      if ((paramVoid != null) && (!paramVoid.isEmpty()))
      {
        localObject = paramVoid.iterator();
        while (((Iterator)localObject).hasNext()) {
          ((i)((Iterator)localObject).next()).a(this.d);
        }
      }
      return null;
    }
    catch (m paramVoid)
    {
      localObject = paramVoid.buL;
      switch (1.bqe[paramVoid.bvU.ordinal()])
      {
      }
      for (;;)
      {
        return null;
        this.c.c(paramVoid);
        paramVoid = this.d;
        return paramVoid;
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(g, "Recoverable exception while getting mutations: " + this.d, paramVoid);
        }
        a(new com.layer.a.c.e(this, this.d, paramVoid.getMessage(), paramVoid));
        continue;
        if (localObject == b.buQ)
        {
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(g, "Stream was deleted while getting mutations: " + this.d);
          }
        }
        else
        {
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.d(g, "Unrecoverable exception while getting mutations: " + this.d, paramVoid);
          }
          a(new com.layer.a.c.e(this, this.d, paramVoid.getMessage(), paramVoid));
        }
      }
    }
    catch (LayerException paramVoid)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.d(g, "Unrecoverable exception while getting mutations: " + this.d, paramVoid);
      }
      a(new com.layer.a.c.e(this, this.d, paramVoid.getMessage(), paramVoid));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdka/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */