package com.layer.sdk.internal.lsdkk;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class m
{
  public static com.layer.sdk.internal.lsdkd.lsdka.m a(com.layer.sdk.internal.lsdkd.lsdka.m paramm)
  {
    if (paramm == null) {
      return null;
    }
    return a(b(paramm));
  }
  
  public static com.layer.sdk.internal.lsdkd.lsdka.m a(g paramg)
  {
    com.layer.sdk.internal.lsdkd.lsdka.m localm = new com.layer.sdk.internal.lsdkd.lsdka.m();
    paramg = paramg.entrySet().iterator();
    while (paramg.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramg.next();
      localm.a((c)localEntry.getKey(), (i)localEntry.getValue());
    }
    return localm;
  }
  
  public static a a(com.layer.sdk.internal.lsdkd.lsdka.m paramm1, com.layer.sdk.internal.lsdkd.lsdka.m paramm2)
  {
    paramm2 = b(paramm1, paramm2);
    Iterator localIterator = paramm2.b().entrySet().iterator();
    Map.Entry localEntry;
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      if (((m.a.a)localEntry.getValue()).a() != m.a.a.a) {
        paramm1.b((c)localEntry.getKey());
      }
    }
    localIterator = paramm2.a().entrySet().iterator();
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      paramm1.a((c)localEntry.getKey(), ((m.a.a)localEntry.getValue()).a());
    }
    localIterator = paramm2.c().entrySet().iterator();
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      paramm1.a((c)localEntry.getKey(), ((m.a.a)localEntry.getValue()).a());
    }
    return paramm2;
  }
  
  public static List<c> a(g paramg1, g paramg2)
  {
    if ((paramg1 == null) || (paramg1.isEmpty())) {
      return new ArrayList();
    }
    if ((paramg2 == null) || (paramg2.isEmpty())) {
      return new ArrayList(paramg1.keySet());
    }
    ArrayList localArrayList = new ArrayList(paramg1.size());
    paramg1 = paramg1.keySet().iterator();
    while (paramg1.hasNext())
    {
      c localc = (c)paramg1.next();
      if (!paramg2.a(localc, m.g.a.a)) {
        localArrayList.add(localc);
      }
    }
    return localArrayList;
  }
  
  private static void a(g paramg, c paramc, com.layer.sdk.internal.lsdkd.lsdka.m paramm)
  {
    Iterator localIterator = paramm.a().keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (b)localIterator.next();
      c localc = c.a(paramc, (b)localObject);
      localObject = paramm.a((b)localObject);
      if ((localObject instanceof com.layer.sdk.internal.lsdkd.lsdka.m)) {
        a(paramg, localc, (com.layer.sdk.internal.lsdkd.lsdka.m)localObject);
      } else if ((localObject instanceof e)) {
        paramg.a(localc, (e)localObject);
      } else {
        throw new IllegalArgumentException("Unknown value type: " + localObject);
      }
    }
  }
  
  public static a b(com.layer.sdk.internal.lsdkd.lsdka.m paramm1, com.layer.sdk.internal.lsdkd.lsdka.m paramm2)
  {
    a locala = new a();
    g localg = b(paramm1);
    paramm2 = b(paramm2);
    Object localObject1 = paramm2.keySet().iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (c)((Iterator)localObject1).next();
      i locali = (i)paramm2.get(localObject2);
      if (localg.a((CharSequence)localObject2)) {}
      for (paramm1 = (i)localg.get(localObject2); paramm1 == null; paramm1 = m.a.a.a) {
        throw new IllegalArgumentException("Old metadata has null value");
      }
      m.a.a locala1 = new m.a.a(paramm1, locali);
      if (paramm1 == m.a.a.a)
      {
        if (!(locali instanceof f)) {
          locala.a().a((c)localObject2, locala1);
        }
      }
      else if (!(locali instanceof f))
      {
        if (paramm1.equals(locali)) {
          locala.d().a((c)localObject2, locala1);
        } else {
          locala.c().a((c)localObject2, locala1);
        }
      }
      else {
        locala.b().a((c)localObject2, locala1);
      }
    }
    paramm1 = localg.keySet().iterator();
    while (paramm1.hasNext())
    {
      localObject1 = (c)paramm1.next();
      if (!paramm2.a((CharSequence)localObject1))
      {
        localObject2 = (i)localg.get(localObject1);
        if (localObject2 != null) {
          locala.b().a((c)localObject1, new m.a.a((i)localObject2, m.a.a.a));
        }
      }
    }
    return locala;
  }
  
  public static g b(com.layer.sdk.internal.lsdkd.lsdka.m paramm)
  {
    g localg = new g();
    a(localg, null, paramm);
    return localg;
  }
  
  public static class a
  {
    final b bsW = new b();
    final b bsX = new b();
    final b bsY = new b();
    final b bsZ = new b();
    
    public b a()
    {
      return this.bsY;
    }
    
    public b b()
    {
      return this.bsZ;
    }
    
    public b c()
    {
      return this.bsX;
    }
    
    public b d()
    {
      return this.bsW;
    }
    
    public boolean e()
    {
      return (!this.bsY.isEmpty()) || (!this.bsX.isEmpty()) || (!this.bsZ.isEmpty());
    }
    
    public static class a
    {
      public static final m.i a = new m.i() {};
      final m.i bta;
      final m.i btb;
      
      public a(m.i parami1, m.i parami2)
      {
        this.bta = parami1;
        this.btb = parami2;
      }
      
      public m.i a()
      {
        return this.btb;
      }
      
      public boolean equals(Object paramObject)
      {
        if (this == paramObject) {}
        do
        {
          return true;
          if ((paramObject == null) || (getClass() != paramObject.getClass())) {
            return false;
          }
          paramObject = (a)paramObject;
          if (this.bta != null)
          {
            if (this.bta.equals(((a)paramObject).bta)) {}
          }
          else {
            while (((a)paramObject).bta != null) {
              return false;
            }
          }
          if (this.btb == null) {
            break;
          }
        } while (this.btb.equals(((a)paramObject).btb));
        while (((a)paramObject).btb != null) {
          return false;
        }
        return true;
      }
      
      public int hashCode()
      {
        int j = 0;
        if (this.bta != null) {}
        for (int i = this.bta.hashCode();; i = 0)
        {
          if (this.btb != null) {
            j = this.btb.hashCode();
          }
          return i * 31 + j;
        }
      }
    }
    
    public static class b
      extends m.d<m.a.a>
    {}
  }
  
  public static class b
    implements CharSequence
  {
    public static final Pattern a = Pattern.compile("^[a-z0-9_\\-]+$", 2);
    private final CharSequence b;
    
    public b(CharSequence paramCharSequence)
    {
      if (paramCharSequence == null) {
        throw new IllegalArgumentException("Key cannot have a null value");
      }
      if (!a.matcher(paramCharSequence).matches()) {
        throw new IllegalArgumentException("Invalid MetadataImpl key format: '" + paramCharSequence + "'");
      }
      this.b = paramCharSequence.subSequence(0, paramCharSequence.length());
    }
    
    public char charAt(int paramInt)
    {
      return this.b.charAt(paramInt);
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (b)paramObject;
      return this.b.equals(((b)paramObject).b);
    }
    
    public int hashCode()
    {
      return this.b.hashCode();
    }
    
    public int length()
    {
      return this.b.length();
    }
    
    public CharSequence subSequence(int paramInt1, int paramInt2)
    {
      return this.b.subSequence(paramInt1, paramInt2);
    }
    
    public String toString()
    {
      return this.b.toString();
    }
  }
  
  public static class c
    implements CharSequence
  {
    public static final Pattern a = Pattern.compile("^[a-z0-9_\\-]+(\\.[a-z0-9_\\-]+)*$", 2);
    private final CharSequence b;
    
    public c(CharSequence paramCharSequence)
    {
      if (!a.matcher(paramCharSequence).matches()) {
        throw new IllegalArgumentException("Invalid MetadataImpl key path format: '" + paramCharSequence + "'");
      }
      this.b = paramCharSequence.subSequence(0, paramCharSequence.length());
    }
    
    public static c a(c paramc, m.b paramb)
    {
      if (paramc == null) {
        return new c(paramb);
      }
      return new c(paramc + "." + paramb);
    }
    
    public boolean a(c paramc)
    {
      if (paramc == null) {
        return false;
      }
      m.b[] arrayOfb = a();
      paramc = paramc.a();
      int i = 0;
      for (;;)
      {
        if (i >= paramc.length) {
          break label49;
        }
        if ((i >= arrayOfb.length) || (!arrayOfb[i].equals(paramc[i]))) {
          break;
        }
        i += 1;
      }
      label49:
      return true;
    }
    
    public m.b[] a()
    {
      String[] arrayOfString = toString().split("\\.");
      m.b[] arrayOfb = new m.b[arrayOfString.length];
      int i = 0;
      while (i < arrayOfString.length)
      {
        arrayOfb[i] = new m.b(arrayOfString[i]);
        i += 1;
      }
      return arrayOfb;
    }
    
    public char charAt(int paramInt)
    {
      return this.b.charAt(paramInt);
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1;
      if (this == paramObject) {
        bool1 = true;
      }
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (paramObject == null);
        bool1 = bool2;
      } while (!(paramObject instanceof c));
      paramObject = (c)paramObject;
      return this.b.equals(((c)paramObject).b);
    }
    
    public int hashCode()
    {
      return this.b.hashCode();
    }
    
    public int length()
    {
      return this.b.length();
    }
    
    public CharSequence subSequence(int paramInt1, int paramInt2)
    {
      return this.b.subSequence(paramInt1, paramInt2);
    }
    
    public String toString()
    {
      return this.b.toString();
    }
  }
  
  public static abstract class d<T>
    extends HashMap<m.c, T>
  {
    private T a(m.c paramc)
    {
      return (T)super.get(paramc);
    }
    
    public T a(m.c paramc, T paramT)
    {
      return (T)super.put(paramc, paramT);
    }
    
    public T a(CharSequence paramCharSequence, T paramT)
    {
      if ((paramCharSequence instanceof m.c)) {
        return (T)super.put((m.c)paramCharSequence, paramT);
      }
      return (T)super.put(new m.c(paramCharSequence), paramT);
    }
    
    public boolean a(CharSequence paramCharSequence)
    {
      if ((paramCharSequence instanceof m.c)) {
        return super.containsKey((m.c)paramCharSequence);
      }
      if ((paramCharSequence instanceof m.b)) {
        return super.containsKey(new m.c((m.b)paramCharSequence));
      }
      return super.containsKey(new m.c(paramCharSequence));
    }
    
    public boolean containsKey(Object paramObject)
    {
      if ((paramObject instanceof CharSequence)) {
        return a((CharSequence)paramObject);
      }
      return super.containsKey(paramObject);
    }
    
    public T get(Object paramObject)
    {
      if ((paramObject instanceof m.c)) {
        return (T)a((m.c)paramObject);
      }
      if ((paramObject instanceof m.b)) {
        return (T)a(new m.c((m.b)paramObject));
      }
      if ((paramObject instanceof CharSequence)) {
        return (T)a(new m.c((CharSequence)paramObject));
      }
      return (T)super.get(paramObject);
    }
  }
  
  public static abstract interface e
    extends m.i
  {}
  
  public static class f
    implements m.e
  {}
  
  public static class g
    extends m.d<m.e>
  {
    public boolean a(m.c paramc, a parama)
    {
      switch (m.1.bqe[parama.ordinal()])
      {
      default: 
        return false;
      case 1: 
        return a(paramc);
      }
      parama = keySet().iterator();
      while (parama.hasNext()) {
        if (((m.c)parama.next()).a(paramc)) {
          return true;
        }
      }
      return false;
    }
    
    public static enum a
    {
      private a() {}
    }
  }
  
  public static class h
    implements m.e, CharSequence
  {
    private final CharSequence a;
    private Long b;
    
    public h(CharSequence paramCharSequence)
    {
      this(paramCharSequence, null);
    }
    
    public h(CharSequence paramCharSequence, Long paramLong)
    {
      if (paramCharSequence == null) {
        throw new IllegalArgumentException("MetadataString cannot have a null value");
      }
      this.a = paramCharSequence;
      this.b = paramLong;
    }
    
    public Long a()
    {
      return this.b;
    }
    
    public char charAt(int paramInt)
    {
      return this.a.charAt(paramInt);
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1;
      if (this == paramObject) {
        bool1 = true;
      }
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (paramObject == null);
          bool1 = bool2;
        } while (!(paramObject instanceof h));
        paramObject = (h)paramObject;
        bool1 = bool2;
      } while (length() != ((h)paramObject).length());
      int i = 0;
      for (;;)
      {
        if (i >= length()) {
          break label81;
        }
        bool1 = bool2;
        if (charAt(i) != ((h)paramObject).charAt(i)) {
          break;
        }
        i += 1;
      }
      label81:
      return true;
    }
    
    public int hashCode()
    {
      return this.a.hashCode();
    }
    
    public int length()
    {
      return this.a.length();
    }
    
    public CharSequence subSequence(int paramInt1, int paramInt2)
    {
      return this.a.subSequence(paramInt1, paramInt2);
    }
    
    public String toString()
    {
      return this.a.toString();
    }
  }
  
  public static abstract interface i {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */