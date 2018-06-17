package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class k
{
  public final m aBl;
  public final e aBm;
  public boolean aBn;
  public long aBo;
  public long aBp;
  public long aBq;
  private long aBr;
  private long aBs;
  public boolean aBt;
  final Map<Class<? extends l>, l> aBu;
  final List<q> aBv;
  
  private k(k paramk)
  {
    this.aBl = paramk.aBl;
    this.aBm = paramk.aBm;
    this.aBo = paramk.aBo;
    this.aBp = paramk.aBp;
    this.aBq = paramk.aBq;
    this.aBr = paramk.aBr;
    this.aBs = paramk.aBs;
    this.aBv = new ArrayList(paramk.aBv);
    this.aBu = new HashMap(paramk.aBu.size());
    paramk = paramk.aBu.entrySet().iterator();
    while (paramk.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramk.next();
      l locall = j((Class)localEntry.getKey());
      ((l)localEntry.getValue()).b(locall);
      this.aBu.put((Class)localEntry.getKey(), locall);
    }
  }
  
  k(m paramm, e parame)
  {
    ae.E(paramm);
    ae.E(parame);
    this.aBl = paramm;
    this.aBm = parame;
    this.aBr = 1800000L;
    this.aBs = 3024000000L;
    this.aBu = new HashMap();
    this.aBv = new ArrayList();
  }
  
  @TargetApi(19)
  private static <T extends l> T j(Class<T> paramClass)
  {
    try
    {
      paramClass = (l)paramClass.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
      return paramClass;
    }
    catch (Exception paramClass)
    {
      if ((paramClass instanceof InstantiationException)) {
        throw new IllegalArgumentException("dataType doesn't have default constructor", paramClass);
      }
      if ((paramClass instanceof IllegalAccessException)) {
        throw new IllegalArgumentException("dataType default constructor is not accessible", paramClass);
      }
      if ((Build.VERSION.SDK_INT >= 19) && ((paramClass instanceof ReflectiveOperationException))) {
        throw new IllegalArgumentException("Linkage exception", paramClass);
      }
      throw new RuntimeException(paramClass);
    }
  }
  
  public final void a(l paraml)
  {
    ae.E(paraml);
    Class localClass = paraml.getClass();
    if (localClass.getSuperclass() != l.class) {
      throw new IllegalArgumentException();
    }
    paraml.b(i(localClass));
  }
  
  public final <T extends l> T h(Class<T> paramClass)
  {
    return (l)this.aBu.get(paramClass);
  }
  
  public final <T extends l> T i(Class<T> paramClass)
  {
    l locall2 = (l)this.aBu.get(paramClass);
    l locall1 = locall2;
    if (locall2 == null)
    {
      locall1 = j(paramClass);
      this.aBu.put(paramClass, locall1);
    }
    return locall1;
  }
  
  public final k mK()
  {
    return new k(this);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */