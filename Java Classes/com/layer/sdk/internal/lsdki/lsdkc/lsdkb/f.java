package com.layer.sdk.internal.lsdki.lsdkc.lsdkb;

import com.layer.a.c.d;
import com.layer.b.d.k;
import java.util.Iterator;
import java.util.Set;

public class f
  extends com.layer.a.a
{
  private final String a;
  private final k b;
  private final boolean c;
  
  public f(com.layer.a.b.a parama, k paramk, String paramString, boolean paramBoolean)
  {
    super(parama);
    this.b = paramk;
    this.a = paramString;
    this.c = paramBoolean;
  }
  
  protected void a(d paramd, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 1) {
      a(paramd);
    }
  }
  
  public boolean a()
  {
    if (this.c) {
      a(new d[] { new com.layer.sdk.internal.lsdki.lsdkc.lsdka.f(this.b, this.a).b() });
    }
    if (c().isEmpty())
    {
      a(3);
      return false;
    }
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if (locald.g() == 1) {
        a(locald);
      }
    }
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdkb/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */