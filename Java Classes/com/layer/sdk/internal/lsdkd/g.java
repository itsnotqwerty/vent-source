package com.layer.sdk.internal.lsdkd;

import android.net.Uri;
import com.layer.sdk.changes.LayerChange.Type;
import com.layer.sdk.internal.lsdkd.lsdka.c.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class g
  implements f.b
{
  private j a;
  
  public g(j paramj)
  {
    this.a = paramj;
  }
  
  private d a(d paramd, Map<Uri, Boolean> paramMap)
  {
    paramd = paramd.getId();
    b(paramd, paramMap);
    return this.a.a(paramd, false);
  }
  
  private boolean a(Uri paramUri, Map<Uri, Boolean> paramMap)
  {
    if (!paramMap.containsKey(paramUri)) {
      return false;
    }
    return ((Boolean)paramMap.get(paramUri)).booleanValue();
  }
  
  private void b(Uri paramUri, Map<Uri, Boolean> paramMap)
  {
    if (!paramMap.containsKey(paramUri)) {
      paramMap.put(paramUri, Boolean.valueOf(this.a.a(paramUri)));
    }
  }
  
  public void a(c paramc)
  {
    k localk = this.a.a(k.a.d);
    Object localObject1;
    Object localObject2;
    try
    {
      localObject1 = paramc.a().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject3 = (b)((Iterator)localObject1).next();
        if ((((b)localObject3).getChangeType().equals(LayerChange.Type.UPDATE)) && (((b)localObject3).b().equals(c.a.a)))
        {
          localObject2 = (Uri)((b)localObject3).getOldValue();
          localObject3 = (Uri)((b)localObject3).getNewValue();
          this.a.a((Uri)localObject2, (Uri)localObject3);
        }
      }
      localObject2 = new HashMap();
    }
    finally
    {
      this.a.a(localk, true);
    }
    Object localObject3 = paramc.a().iterator();
    for (;;)
    {
      if (((Iterator)localObject3).hasNext())
      {
        b localb = (b)((Iterator)localObject3).next();
        d locald = localb.a();
        Uri localUri = locald.getId();
        localObject1 = null;
        paramc = (c)localObject1;
        if (localb.getChangeType().equals(LayerChange.Type.INSERT))
        {
          paramc = (c)localObject1;
          if ((locald instanceof com.layer.sdk.internal.lsdkd.lsdka.c))
          {
            com.layer.sdk.internal.lsdkd.lsdka.c localc = (com.layer.sdk.internal.lsdkd.lsdka.c)locald;
            paramc = (c)localObject1;
            if (localc.isDistinct()) {
              paramc = this.a.c(localc.k());
            }
          }
        }
        if (paramc != null)
        {
          this.a.a(localk, new d[] { paramc });
          b(paramc.getId(), (Map)localObject2);
          localObject1 = (com.layer.sdk.internal.lsdkd.lsdka.c)localb.getObject();
          this.a.a(paramc.getId(), ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).getId());
          this.a.c(paramc.getId());
          ((com.layer.sdk.internal.lsdkd.lsdka.c)paramc).a((d)localObject1);
        }
        for (;;)
        {
          switch (1.bqe[localb.getChangeType().ordinal()])
          {
          case 1: 
            if (paramc != null) {
              break label396;
            }
            throw new IllegalStateException("Foreground changeable cannot be null for insert " + localb.toString());
            paramc = a(locald, (Map)localObject2);
          }
        }
        label396:
        localk.a(paramc);
        paramc.a(localb);
        continue;
        if (paramc != null)
        {
          localk.a(paramc);
          if (a(localUri, (Map)localObject2)) {
            paramc.a(localb);
          } else {
            paramc.b(localb);
          }
        }
        else
        {
          localk.a(localb);
          continue;
          if (paramc != null)
          {
            localk.a(paramc);
            if (a(localUri, (Map)localObject2)) {
              paramc.a(localb);
            } else {
              paramc.b(localb);
            }
          }
          else
          {
            localk.a(localb);
          }
        }
      }
      else
      {
        this.a.a(localk, true);
        return;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */