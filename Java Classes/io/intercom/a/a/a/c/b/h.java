package io.intercom.a.a.a.c.b;

import android.support.v4.g.k.a;
import android.util.Log;
import io.intercom.a.a.a.c.a.c;
import io.intercom.a.a.a.c.d.f.d;
import io.intercom.a.a.a.c.j;
import io.intercom.a.a.a.c.k;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public final class h<DataType, ResourceType, Transcode>
{
  private final List<? extends k<DataType, ResourceType>> cJX;
  final d<ResourceType, Transcode> cJY;
  private final k.a<List<Throwable>> cJZ;
  private final String cKa;
  private final Class<DataType> csM;
  
  public h(Class<DataType> paramClass, Class<ResourceType> paramClass1, Class<Transcode> paramClass2, List<? extends k<DataType, ResourceType>> paramList, d<ResourceType, Transcode> paramd, k.a<List<Throwable>> parama)
  {
    this.csM = paramClass;
    this.cJX = paramList;
    this.cJY = paramd;
    this.cJZ = parama;
    this.cKa = ("Failed DecodePath{" + paramClass.getSimpleName() + "->" + paramClass1.getSimpleName() + "->" + paramClass2.getSimpleName() + "}");
  }
  
  private u<ResourceType> a(c<DataType> paramc, int paramInt1, int paramInt2, j paramj, List<Throwable> paramList)
    throws p
  {
    Object localObject1 = null;
    int j = this.cJX.size();
    int i = 0;
    for (;;)
    {
      Object localObject2 = localObject1;
      if (i >= j) {
        break label152;
      }
      localk = (k)this.cJX.get(i);
      try
      {
        if (!localk.a(paramc.HV(), paramj)) {
          break label191;
        }
        localObject2 = localk.a(paramc.HV(), paramInt1, paramInt2, paramj);
        localObject1 = localObject2;
      }
      catch (RuntimeException localRuntimeException)
      {
        for (;;)
        {
          if (Log.isLoggable("DecodePath", 2)) {
            Log.v("DecodePath", "Failed to decode data for " + localk, localRuntimeException);
          }
          paramList.add(localRuntimeException);
        }
        if (localRuntimeException != null) {
          break label178;
        }
        throw new p(this.cKa, new ArrayList(paramList));
        return localRuntimeException;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        for (;;) {}
      }
      catch (IOException localIOException)
      {
        for (;;) {}
      }
      localObject2 = localObject1;
      if (localObject1 != null) {
        break label152;
      }
      i += 1;
    }
  }
  
  final u<ResourceType> a(c<DataType> paramc, int paramInt1, int paramInt2, j paramj)
    throws p
  {
    List localList = (List)io.intercom.a.a.a.i.h.checkNotNull(this.cJZ.as(), "Argument must not be null");
    try
    {
      paramc = a(paramc, paramInt1, paramInt2, paramj, localList);
      return paramc;
    }
    finally
    {
      this.cJZ.j(localList);
    }
  }
  
  public final String toString()
  {
    return "DecodePath{ dataClass=" + this.csM + ", decoders=" + this.cJX + ", transcoder=" + this.cJY + '}';
  }
  
  static abstract interface a<ResourceType>
  {
    public abstract u<ResourceType> a(u<ResourceType> paramu);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */