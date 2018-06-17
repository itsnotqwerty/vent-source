package io.intercom.a.b.a.b.a;

import io.intercom.a.b.a.a.b;
import io.intercom.a.b.a.b.c;
import io.intercom.a.b.a.c.a;
import io.intercom.a.b.a.e;
import io.intercom.a.b.a.o;
import io.intercom.a.b.a.r;
import io.intercom.a.b.a.s;

public final class d
  implements s
{
  private final c cRm;
  
  public d(c paramc)
  {
    this.cRm = paramc;
  }
  
  static r<?> a(c paramc, e parame, a<?> parama, b paramb)
  {
    Object localObject = paramc.b(a.N(paramb.value())).vo();
    if ((localObject instanceof r)) {}
    for (paramc = (r)localObject;; paramc = ((s)localObject).a(parame, parama))
    {
      parame = paramc;
      if (paramc != null)
      {
        parame = paramc;
        if (paramb.vl()) {
          parame = paramc.Kc();
        }
      }
      return parame;
      if (!(localObject instanceof s)) {
        break;
      }
    }
    if (((localObject instanceof o)) || ((localObject instanceof io.intercom.a.b.a.h)))
    {
      if ((localObject instanceof o))
      {
        paramc = (o)localObject;
        label112:
        if (!(localObject instanceof io.intercom.a.b.a.h)) {
          break label148;
        }
      }
      label148:
      for (localObject = (io.intercom.a.b.a.h)localObject;; localObject = null)
      {
        paramc = new l(paramc, (io.intercom.a.b.a.h)localObject, parame, parama);
        break;
        paramc = null;
        break label112;
      }
    }
    throw new IllegalArgumentException("Invalid attempt to bind an instance of " + localObject.getClass().getName() + " as a @JsonAdapter for " + parama.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
  }
  
  public final <T> r<T> a(e parame, a<T> parama)
  {
    b localb = (b)parama.bkb.getAnnotation(b.class);
    if (localb == null) {
      return null;
    }
    return a(this.cRm, parame, parama, localb);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */