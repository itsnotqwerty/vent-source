package io.intercom.a.a.a.c.b;

import android.support.v4.g.k.a;
import io.intercom.a.a.a.c.a.c;
import io.intercom.a.a.a.c.d.f.d;
import io.intercom.a.a.a.c.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class s<Data, ResourceType, Transcode>
{
  private final k.a<List<Throwable>> cJZ;
  private final List<? extends h<Data, ResourceType, Transcode>> cKS;
  private final String cKa;
  private final Class<Data> csM;
  
  public s(Class<Data> paramClass, Class<ResourceType> paramClass1, Class<Transcode> paramClass2, List<h<Data, ResourceType, Transcode>> paramList, k.a<List<Throwable>> parama)
  {
    this.csM = paramClass;
    this.cJZ = parama;
    this.cKS = ((List)io.intercom.a.a.a.i.h.h(paramList));
    this.cKa = ("Failed LoadPath{" + paramClass.getSimpleName() + "->" + paramClass1.getSimpleName() + "->" + paramClass2.getSimpleName() + "}");
  }
  
  private u<Transcode> a(c<Data> paramc, j paramj, int paramInt1, int paramInt2, h.a<ResourceType> parama, List<Throwable> paramList)
    throws p
  {
    int j = this.cKS.size();
    Object localObject1 = null;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label110;
      }
      Object localObject2 = (h)this.cKS.get(i);
      try
      {
        u localu = parama.a(((h)localObject2).a(paramc, paramInt1, paramInt2, paramj));
        localObject2 = ((h)localObject2).cJY.e(localu);
        localObject1 = localObject2;
      }
      catch (p localp)
      {
        for (;;)
        {
          paramList.add(localp);
        }
      }
      localObject2 = localObject1;
      if (localObject1 != null) {
        break label114;
      }
      i += 1;
    }
    label110:
    Object localObject3 = localObject1;
    label114:
    if (localObject3 == null) {
      throw new p(this.cKa, new ArrayList(paramList));
    }
    return (u<Transcode>)localObject3;
  }
  
  public final u<Transcode> a(c<Data> paramc, j paramj, int paramInt1, int paramInt2, h.a<ResourceType> parama)
    throws p
  {
    List localList = (List)io.intercom.a.a.a.i.h.checkNotNull(this.cJZ.as(), "Argument must not be null");
    try
    {
      paramc = a(paramc, paramj, paramInt1, paramInt2, parama, localList);
      return paramc;
    }
    finally
    {
      this.cJZ.j(localList);
    }
  }
  
  public final String toString()
  {
    return "LoadPath{decodePaths=" + Arrays.toString(this.cKS.toArray(new h[this.cKS.size()])) + '}';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */