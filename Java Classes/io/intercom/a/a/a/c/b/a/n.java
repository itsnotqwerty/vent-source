package io.intercom.a.a.a.c.b.a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import io.intercom.a.a.a.i.i;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NavigableMap;
import java.util.Set;
import java.util.TreeMap;

@TargetApi(19)
public final class n
  implements l
{
  private static final Bitmap.Config[] cLD = { Bitmap.Config.ARGB_8888, null };
  private static final Bitmap.Config[] cLE = { Bitmap.Config.RGB_565 };
  private static final Bitmap.Config[] cLF = { Bitmap.Config.ARGB_4444 };
  private static final Bitmap.Config[] cLG = { Bitmap.Config.ALPHA_8 };
  private final b cLH = new b();
  private final h<a, Bitmap> cLh = new h();
  private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> cLp = new HashMap();
  
  static String a(int paramInt, Bitmap.Config paramConfig)
  {
    return "[" + paramInt + "](" + paramConfig + ")";
  }
  
  private void a(Integer paramInteger, Bitmap paramBitmap)
  {
    NavigableMap localNavigableMap = b(paramBitmap.getConfig());
    Integer localInteger = (Integer)localNavigableMap.get(paramInteger);
    if (localInteger == null) {
      throw new NullPointerException("Tried to decrement empty size, size: " + paramInteger + ", removed: " + h(paramBitmap) + ", this: " + this);
    }
    if (localInteger.intValue() == 1)
    {
      localNavigableMap.remove(paramInteger);
      return;
    }
    localNavigableMap.put(paramInteger, Integer.valueOf(localInteger.intValue() - 1));
  }
  
  private NavigableMap<Integer, Integer> b(Bitmap.Config paramConfig)
  {
    NavigableMap localNavigableMap = (NavigableMap)this.cLp.get(paramConfig);
    Object localObject = localNavigableMap;
    if (localNavigableMap == null)
    {
      localObject = new TreeMap();
      this.cLp.put(paramConfig, localObject);
    }
    return (NavigableMap<Integer, Integer>)localObject;
  }
  
  public final Bitmap Ix()
  {
    Bitmap localBitmap = (Bitmap)this.cLh.removeLast();
    if (localBitmap != null) {
      a(Integer.valueOf(i.l(localBitmap)), localBitmap);
    }
    return localBitmap;
  }
  
  public final String b(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return a(i.g(paramInt1, paramInt2, paramConfig), paramConfig);
  }
  
  public final void g(Bitmap paramBitmap)
  {
    int i = i.l(paramBitmap);
    a locala = this.cLH.b(i, paramBitmap.getConfig());
    this.cLh.a(locala, paramBitmap);
    paramBitmap = b(paramBitmap.getConfig());
    Integer localInteger = (Integer)paramBitmap.get(Integer.valueOf(locala.size));
    int j = locala.size;
    if (localInteger == null) {}
    for (i = 1;; i = localInteger.intValue() + 1)
    {
      paramBitmap.put(Integer.valueOf(j), Integer.valueOf(i));
      return;
    }
  }
  
  public final Bitmap get(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    int i = 0;
    int j = i.g(paramInt1, paramInt2, paramConfig);
    a locala = this.cLH.b(j, paramConfig);
    Object localObject;
    label75:
    Bitmap.Config localConfig;
    switch (1.cLI[paramConfig.ordinal()])
    {
    default: 
      localObject = new Bitmap.Config[] { paramConfig };
      int k = localObject.length;
      if (i < k)
      {
        localConfig = localObject[i];
        Integer localInteger = (Integer)b(localConfig).ceilingKey(Integer.valueOf(j));
        if ((localInteger == null) || (localInteger.intValue() > j * 8)) {
          break label274;
        }
        if (localInteger.intValue() == j)
        {
          if (localConfig == null) {
            if (paramConfig == null) {
              break label268;
            }
          }
        }
        else
        {
          label147:
          this.cLH.a(locala);
          paramConfig = this.cLH.b(localInteger.intValue(), localConfig);
          label171:
          localObject = (Bitmap)this.cLh.b(paramConfig);
          if (localObject != null)
          {
            a(Integer.valueOf(paramConfig.size), (Bitmap)localObject);
            if (((Bitmap)localObject).getConfig() == null) {
              break label283;
            }
          }
        }
      }
      break;
    }
    label268:
    label274:
    label283:
    for (paramConfig = ((Bitmap)localObject).getConfig();; paramConfig = Bitmap.Config.ARGB_8888)
    {
      ((Bitmap)localObject).reconfigure(paramInt1, paramInt2, paramConfig);
      return (Bitmap)localObject;
      localObject = cLD;
      break;
      localObject = cLE;
      break;
      localObject = cLF;
      break;
      localObject = cLG;
      break;
      if (!localConfig.equals(paramConfig)) {
        break label147;
      }
      paramConfig = locala;
      break label171;
      i += 1;
      break label75;
    }
  }
  
  public final String h(Bitmap paramBitmap)
  {
    return a(i.l(paramBitmap), paramBitmap.getConfig());
  }
  
  public final int i(Bitmap paramBitmap)
  {
    return i.l(paramBitmap);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("SizeConfigStrategy{groupedMap=").append(this.cLh).append(", sortedSizes=(");
    Iterator localIterator = this.cLp.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuilder.append(localEntry.getKey()).append('[').append(localEntry.getValue()).append("], ");
    }
    if (!this.cLp.isEmpty()) {
      localStringBuilder.replace(localStringBuilder.length() - 2, localStringBuilder.length(), "");
    }
    return ")}";
  }
  
  static final class a
    implements m
  {
    Bitmap.Config bOP;
    private final n.b cLJ;
    int size;
    
    public a(n.b paramb)
    {
      this.cLJ = paramb;
    }
    
    public final void Iy()
    {
      this.cLJ.a(this);
    }
    
    public final boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if ((paramObject instanceof a))
      {
        paramObject = (a)paramObject;
        bool1 = bool2;
        if (this.size == ((a)paramObject).size)
        {
          bool1 = bool2;
          if (i.i(this.bOP, ((a)paramObject).bOP)) {
            bool1 = true;
          }
        }
      }
      return bool1;
    }
    
    public final int hashCode()
    {
      int j = this.size;
      if (this.bOP != null) {}
      for (int i = this.bOP.hashCode();; i = 0) {
        return i + j * 31;
      }
    }
    
    public final String toString()
    {
      return n.a(this.size, this.bOP);
    }
  }
  
  static final class b
    extends d<n.a>
  {
    public final n.a b(int paramInt, Bitmap.Config paramConfig)
    {
      n.a locala = (n.a)IA();
      locala.size = paramInt;
      locala.bOP = paramConfig;
      return locala;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/a/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */