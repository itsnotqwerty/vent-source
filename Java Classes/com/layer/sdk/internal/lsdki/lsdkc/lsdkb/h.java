package com.layer.sdk.internal.lsdki.lsdkc.lsdkb;

import com.layer.a.c.d;
import com.layer.a.c.e;
import com.layer.sdk.LayerClient.Options.HistoricSyncPolicy;
import com.layer.sdk.internal.lsdki.b;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdki.lsdkc.c.c;
import com.layer.sdk.internal.lsdkk.k.a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class h
  extends com.layer.a.a
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(h.class);
  private final UUID b;
  private final String c;
  private final c.b d;
  private final com.layer.b.d.k e;
  private final LayerClient.Options.HistoricSyncPolicy f;
  private final AtomicReference<b> g;
  private final AtomicBoolean h;
  private final AtomicReference<HashSet<UUID>> i;
  private final c.c j;
  private List<com.layer.b.d.h> k;
  
  public h(UUID paramUUID, String paramString, com.layer.a.b.a parama, c.b paramb, com.layer.b.d.k paramk, LayerClient.Options.HistoricSyncPolicy paramHistoricSyncPolicy, AtomicReference<b> paramAtomicReference, AtomicBoolean paramAtomicBoolean, AtomicReference<HashSet<UUID>> paramAtomicReference1, c.c paramc)
  {
    super(parama);
    this.b = paramUUID;
    this.c = paramString;
    this.d = paramb;
    this.e = paramk;
    this.f = paramHistoricSyncPolicy;
    this.g = paramAtomicReference;
    this.h = paramAtomicBoolean;
    this.i = paramAtomicReference1;
    this.j = paramc;
  }
  
  protected void a(d paramd, int paramInt1, int paramInt2)
  {
    switch (paramInt2)
    {
    }
    for (;;)
    {
      return;
      a(paramd);
      return;
      if (this.k == null)
      {
        this.k = ((List)((com.layer.sdk.internal.lsdki.lsdkc.lsdka.h)paramd).h());
        return;
        paramd = paramd.i().iterator();
        while (paramd.hasNext())
        {
          e locale = (e)paramd.next();
          com.layer.sdk.internal.lsdkk.k.e(a, locale.toString());
        }
      }
    }
  }
  
  public boolean a()
  {
    com.layer.sdk.internal.lsdki.lsdkc.lsdka.h localh = new com.layer.sdk.internal.lsdki.lsdkc.lsdka.h(this.b, this.c, this.e, this.d, this.f, this.g, this.h, this.i, this.j);
    a(new d[] { localh.b() });
    a(localh);
    return true;
  }
  
  public List<com.layer.b.d.h> b()
  {
    return this.k;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdkb/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */