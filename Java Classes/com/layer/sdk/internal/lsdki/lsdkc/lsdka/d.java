package com.layer.sdk.internal.lsdki.lsdkc.lsdka;

import com.layer.a.c.a;
import com.layer.a.c.e;
import com.layer.b.d.k.12;
import com.layer.b.d.k.f;
import com.layer.b.d.m;
import com.layer.b.f.a.g;
import com.layer.sdk.internal.lsdke.f;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdkk.k.a;
import java.util.List;

public class d
  extends a<Void, Void>
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(d.class);
  private final com.layer.b.d.k c;
  private final c.b d;
  
  public d(c.b paramb, com.layer.b.d.k paramk)
  {
    super(null);
    this.c = paramk;
    this.d = paramb;
  }
  
  protected Void a(Void paramVoid)
    throws Exception
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("GetIdentityUpdatesTask: Run");
    }
    for (int i = this.d.a(f.a).intValue();; i = localm.b.size()) {
      try
      {
        if (com.layer.sdk.internal.lsdkk.k.d()) {
          com.layer.sdk.internal.lsdkk.k.c("GetIdentityUpdatesTask: Fetching identity updates");
        }
        Object localObject = this.c;
        localObject = (g)new k.f((com.layer.b.d.k)localObject).a(new Integer[] { Integer.valueOf(200) }).a(new k.12((com.layer.b.d.k)localObject, i));
        if (com.layer.sdk.internal.lsdkk.k.d()) {
          com.layer.sdk.internal.lsdkk.k.c("GetIdentityUpdatesTask: Fetched identity updates");
        }
        int j = ((g)localObject).a;
        if (j > i) {
          this.d.a(j, ((g)localObject).b);
        }
        if (com.layer.sdk.internal.lsdkk.k.a(2))
        {
          paramVoid = a;
          StringBuilder localStringBuilder = new StringBuilder("Completing getIdentityUpdatesTask. IdentityCount: ");
          if (((g)localObject).b == null)
          {
            i = 0;
            com.layer.sdk.internal.lsdkk.k.a(paramVoid, i);
          }
        }
        else
        {
          return null;
        }
      }
      catch (m localm)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(a, "Exception when requesting identity updates. Current saved sequence: " + i, localm);
        }
        a(new e(this, paramVoid, localm.getMessage(), localm));
        return null;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdka/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */