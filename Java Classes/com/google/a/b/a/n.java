package com.google.a.b.a;

import com.google.a.b.g;
import com.google.a.b.h;
import com.google.a.d.b;
import com.google.a.f;
import com.google.a.i;
import com.google.a.k;
import com.google.a.l;
import com.google.a.m;
import com.google.a.p;
import com.google.a.s;
import com.google.a.u;
import com.google.a.v;
import java.io.IOException;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

public final class n
{
  public static final u<Class> biK = new u() {}.vi();
  public static final v biL = a(Class.class, biK);
  public static final u<BitSet> biM = new u()
  {
    private static BitSet j(com.google.a.d.a paramAnonymousa)
      throws IOException
    {
      BitSet localBitSet = new BitSet();
      paramAnonymousa.beginArray();
      Object localObject = paramAnonymousa.vv();
      int i = 0;
      if (localObject != b.bkn)
      {
        boolean bool;
        switch (n.30.bim[localObject.ordinal()])
        {
        default: 
          throw new s("Invalid bitset value type: " + localObject);
        case 1: 
          if (paramAnonymousa.nextInt() != 0) {
            bool = true;
          }
          break;
        }
        for (;;)
        {
          if (bool) {
            localBitSet.set(i);
          }
          i += 1;
          localObject = paramAnonymousa.vv();
          break;
          bool = false;
          continue;
          bool = paramAnonymousa.nextBoolean();
          continue;
          localObject = paramAnonymousa.nextString();
          try
          {
            int j = Integer.parseInt((String)localObject);
            if (j != 0) {
              bool = true;
            } else {
              bool = false;
            }
          }
          catch (NumberFormatException paramAnonymousa)
          {
            throw new s("Error: Expecting: bitset number value (1, 0), Found: " + (String)localObject);
          }
        }
      }
      paramAnonymousa.endArray();
      return localBitSet;
    }
  }.vi();
  public static final v biN = a(BitSet.class, biM);
  public static final u<Boolean> biO = new u() {};
  public static final u<Boolean> biP = new u() {};
  public static final v biQ = a(Boolean.TYPE, Boolean.class, biO);
  public static final u<Number> biR = new u()
  {
    private static Number g(com.google.a.d.a paramAnonymousa)
      throws IOException
    {
      if (paramAnonymousa.vv() == b.bku)
      {
        paramAnonymousa.nextNull();
        return null;
      }
      try
      {
        byte b = (byte)paramAnonymousa.nextInt();
        return Byte.valueOf(b);
      }
      catch (NumberFormatException paramAnonymousa)
      {
        throw new s(paramAnonymousa);
      }
    }
  };
  public static final v biS = a(Byte.TYPE, Byte.class, biR);
  public static final u<Number> biT = new u()
  {
    private static Number g(com.google.a.d.a paramAnonymousa)
      throws IOException
    {
      if (paramAnonymousa.vv() == b.bku)
      {
        paramAnonymousa.nextNull();
        return null;
      }
      try
      {
        short s = (short)paramAnonymousa.nextInt();
        return Short.valueOf(s);
      }
      catch (NumberFormatException paramAnonymousa)
      {
        throw new s(paramAnonymousa);
      }
    }
  };
  public static final v biU = a(Short.TYPE, Short.class, biT);
  public static final u<Number> biV = new u()
  {
    private static Number g(com.google.a.d.a paramAnonymousa)
      throws IOException
    {
      if (paramAnonymousa.vv() == b.bku)
      {
        paramAnonymousa.nextNull();
        return null;
      }
      try
      {
        int i = paramAnonymousa.nextInt();
        return Integer.valueOf(i);
      }
      catch (NumberFormatException paramAnonymousa)
      {
        throw new s(paramAnonymousa);
      }
    }
  };
  public static final v biW = a(Integer.TYPE, Integer.class, biV);
  public static final u<AtomicInteger> biX = new u()
  {
    private static AtomicInteger m(com.google.a.d.a paramAnonymousa)
      throws IOException
    {
      try
      {
        paramAnonymousa = new AtomicInteger(paramAnonymousa.nextInt());
        return paramAnonymousa;
      }
      catch (NumberFormatException paramAnonymousa)
      {
        throw new s(paramAnonymousa);
      }
    }
  }.vi();
  public static final v biY = a(AtomicInteger.class, biX);
  public static final u<AtomicBoolean> biZ = new u() {}.vi();
  public static final u<Currency> bjA = new u() {}.vi();
  public static final v bjB = a(Currency.class, bjA);
  public static final v bjC = new v()
  {
    public final <T> u<T> a(f paramAnonymousf, com.google.a.c.a<T> paramAnonymousa)
    {
      if (paramAnonymousa.bkb != Timestamp.class) {
        return null;
      }
      new u() {};
    }
  };
  public static final u<Calendar> bjD = new u() {};
  public static final v bjE = new v()
  {
    public final <T> u<T> a(f paramAnonymousf, com.google.a.c.a<T> paramAnonymousa)
    {
      paramAnonymousf = paramAnonymousa.bkb;
      if ((paramAnonymousf == this.bjP) || (paramAnonymousf == this.bjQ)) {
        return this.biq;
      }
      return null;
    }
    
    public final String toString()
    {
      return "Factory[type=" + this.bjP.getName() + "+" + this.bjQ.getName() + ",adapter=" + this.biq + "]";
    }
  };
  public static final u<Locale> bjF = new u() {};
  public static final v bjG = a(Locale.class, bjF);
  public static final u<k> bjH = new u()
  {
    private void a(com.google.a.d.c paramAnonymousc, k paramAnonymousk)
      throws IOException
    {
      if ((paramAnonymousk == null) || ((paramAnonymousk instanceof m)))
      {
        paramAnonymousc.vF();
        return;
      }
      if ((paramAnonymousk instanceof p))
      {
        paramAnonymousk = paramAnonymousk.vh();
        if ((paramAnonymousk.value instanceof Number))
        {
          paramAnonymousc.a(paramAnonymousk.ve());
          return;
        }
        if ((paramAnonymousk.value instanceof Boolean))
        {
          paramAnonymousc.aG(paramAnonymousk.getAsBoolean());
          return;
        }
        paramAnonymousc.dp(paramAnonymousk.vf());
        return;
      }
      if ((paramAnonymousk instanceof i))
      {
        paramAnonymousc.vB();
        if ((paramAnonymousk instanceof i))
        {
          paramAnonymousk = ((i)paramAnonymousk).iterator();
          while (paramAnonymousk.hasNext()) {
            a(paramAnonymousc, (k)paramAnonymousk.next());
          }
        }
        throw new IllegalStateException("Not a JSON Array: " + paramAnonymousk);
        paramAnonymousc.vC();
        return;
      }
      if ((paramAnonymousk instanceof com.google.a.n))
      {
        paramAnonymousc.vD();
        if ((paramAnonymousk instanceof com.google.a.n))
        {
          paramAnonymousk = ((com.google.a.n)paramAnonymousk).bgU.entrySet().iterator();
          while (paramAnonymousk.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)paramAnonymousk.next();
            paramAnonymousc.jdMethod_do((String)localEntry.getKey());
            a(paramAnonymousc, (k)localEntry.getValue());
          }
        }
        throw new IllegalStateException("Not a JSON Object: " + paramAnonymousk);
        paramAnonymousc.vE();
        return;
      }
      throw new IllegalArgumentException("Couldn't write " + paramAnonymousk.getClass());
    }
    
    private k l(com.google.a.d.a paramAnonymousa)
      throws IOException
    {
      switch (n.30.bim[paramAnonymousa.vv().ordinal()])
      {
      default: 
        throw new IllegalArgumentException();
      case 3: 
        return new p(paramAnonymousa.nextString());
      case 1: 
        return new p(new g(paramAnonymousa.nextString()));
      case 2: 
        return new p(Boolean.valueOf(paramAnonymousa.nextBoolean()));
      case 4: 
        paramAnonymousa.nextNull();
        return m.bgT;
      case 5: 
        localObject = new i();
        paramAnonymousa.beginArray();
        while (paramAnonymousa.hasNext()) {
          ((i)localObject).a(l(paramAnonymousa));
        }
        paramAnonymousa.endArray();
        return (k)localObject;
      }
      Object localObject = new com.google.a.n();
      paramAnonymousa.beginObject();
      while (paramAnonymousa.hasNext()) {
        ((com.google.a.n)localObject).a(paramAnonymousa.nextName(), l(paramAnonymousa));
      }
      paramAnonymousa.endObject();
      return (k)localObject;
    }
  };
  public static final v bjI = b(k.class, bjH);
  public static final v bjJ = new v()
  {
    public final <T> u<T> a(f paramAnonymousf, com.google.a.c.a<T> paramAnonymousa)
    {
      paramAnonymousa = paramAnonymousa.bkb;
      if ((!Enum.class.isAssignableFrom(paramAnonymousa)) || (paramAnonymousa == Enum.class)) {
        return null;
      }
      paramAnonymousf = paramAnonymousa;
      if (!paramAnonymousa.isEnum()) {
        paramAnonymousf = paramAnonymousa.getSuperclass();
      }
      return new n.a(paramAnonymousf);
    }
  };
  public static final v bja = a(AtomicBoolean.class, biZ);
  public static final u<AtomicIntegerArray> bjb = new u()
  {
    private static AtomicIntegerArray f(com.google.a.d.a paramAnonymousa)
      throws IOException
    {
      ArrayList localArrayList = new ArrayList();
      paramAnonymousa.beginArray();
      while (paramAnonymousa.hasNext()) {
        try
        {
          localArrayList.add(Integer.valueOf(paramAnonymousa.nextInt()));
        }
        catch (NumberFormatException paramAnonymousa)
        {
          throw new s(paramAnonymousa);
        }
      }
      paramAnonymousa.endArray();
      int j = localArrayList.size();
      paramAnonymousa = new AtomicIntegerArray(j);
      int i = 0;
      while (i < j)
      {
        paramAnonymousa.set(i, ((Integer)localArrayList.get(i)).intValue());
        i += 1;
      }
      return paramAnonymousa;
    }
  }.vi();
  public static final v bjc = a(AtomicIntegerArray.class, bjb);
  public static final u<Number> bjd = new u()
  {
    private static Number g(com.google.a.d.a paramAnonymousa)
      throws IOException
    {
      if (paramAnonymousa.vv() == b.bku)
      {
        paramAnonymousa.nextNull();
        return null;
      }
      try
      {
        long l = paramAnonymousa.nextLong();
        return Long.valueOf(l);
      }
      catch (NumberFormatException paramAnonymousa)
      {
        throw new s(paramAnonymousa);
      }
    }
  };
  public static final u<Number> bje = new u() {};
  public static final u<Number> bjf = new u() {};
  public static final u<Number> bjg = new u() {};
  public static final v bjh = a(Number.class, bjg);
  public static final u<Character> bji = new u() {};
  public static final v bjj = a(Character.TYPE, Character.class, bji);
  public static final u<String> bjk = new u() {};
  public static final u<BigDecimal> bjl = new u()
  {
    private static BigDecimal h(com.google.a.d.a paramAnonymousa)
      throws IOException
    {
      if (paramAnonymousa.vv() == b.bku)
      {
        paramAnonymousa.nextNull();
        return null;
      }
      try
      {
        paramAnonymousa = new BigDecimal(paramAnonymousa.nextString());
        return paramAnonymousa;
      }
      catch (NumberFormatException paramAnonymousa)
      {
        throw new s(paramAnonymousa);
      }
    }
  };
  public static final u<BigInteger> bjm = new u()
  {
    private static BigInteger i(com.google.a.d.a paramAnonymousa)
      throws IOException
    {
      if (paramAnonymousa.vv() == b.bku)
      {
        paramAnonymousa.nextNull();
        return null;
      }
      try
      {
        paramAnonymousa = new BigInteger(paramAnonymousa.nextString());
        return paramAnonymousa;
      }
      catch (NumberFormatException paramAnonymousa)
      {
        throw new s(paramAnonymousa);
      }
    }
  };
  public static final v bjn = a(String.class, bjk);
  public static final u<StringBuilder> bjo = new u() {};
  public static final v bjp = a(StringBuilder.class, bjo);
  public static final u<StringBuffer> bjq = new u() {};
  public static final v bjr = a(StringBuffer.class, bjq);
  public static final u<URL> bjs = new u() {};
  public static final v bjt = a(URL.class, bjs);
  public static final u<URI> bju = new u()
  {
    private static URI k(com.google.a.d.a paramAnonymousa)
      throws IOException
    {
      if (paramAnonymousa.vv() == b.bku) {
        paramAnonymousa.nextNull();
      }
      for (;;)
      {
        return null;
        try
        {
          paramAnonymousa = paramAnonymousa.nextString();
          if ("null".equals(paramAnonymousa)) {
            continue;
          }
          paramAnonymousa = new URI(paramAnonymousa);
          return paramAnonymousa;
        }
        catch (URISyntaxException paramAnonymousa)
        {
          throw new l(paramAnonymousa);
        }
      }
    }
  };
  public static final v bjv = a(URI.class, bju);
  public static final u<InetAddress> bjw = new u() {};
  public static final v bjx = b(InetAddress.class, bjw);
  public static final u<UUID> bjy = new u() {};
  public static final v bjz = a(UUID.class, bjy);
  
  public static <TT> v a(com.google.a.c.a<TT> parama, final u<TT> paramu)
  {
    new v()
    {
      public final <T> u<T> a(f paramAnonymousf, com.google.a.c.a<T> paramAnonymousa)
      {
        if (paramAnonymousa.equals(this.bhs)) {
          return paramu;
        }
        return null;
      }
    };
  }
  
  public static <TT> v a(Class<TT> paramClass, final u<TT> paramu)
  {
    new v()
    {
      public final <T> u<T> a(f paramAnonymousf, com.google.a.c.a<T> paramAnonymousa)
      {
        if (paramAnonymousa.bkb == this.bjM) {
          return paramu;
        }
        return null;
      }
      
      public final String toString()
      {
        return "Factory[type=" + this.bjM.getName() + ",adapter=" + paramu + "]";
      }
    };
  }
  
  public static <TT> v a(Class<TT> paramClass1, final Class<TT> paramClass2, final u<? super TT> paramu)
  {
    new v()
    {
      public final <T> u<T> a(f paramAnonymousf, com.google.a.c.a<T> paramAnonymousa)
      {
        paramAnonymousf = paramAnonymousa.bkb;
        if ((paramAnonymousf == this.bjN) || (paramAnonymousf == paramClass2)) {
          return paramu;
        }
        return null;
      }
      
      public final String toString()
      {
        return "Factory[type=" + paramClass2.getName() + "+" + this.bjN.getName() + ",adapter=" + paramu + "]";
      }
    };
  }
  
  private static <T1> v b(Class<T1> paramClass, final u<T1> paramu)
  {
    new v()
    {
      public final <T2> u<T2> a(final f paramAnonymousf, com.google.a.c.a<T2> paramAnonymousa)
      {
        paramAnonymousf = paramAnonymousa.bkb;
        if (!this.bjR.isAssignableFrom(paramAnonymousf)) {
          return null;
        }
        new u()
        {
          public final T1 a(com.google.a.d.a paramAnonymous2a)
            throws IOException
          {
            paramAnonymous2a = n.29.this.biq.a(paramAnonymous2a);
            if ((paramAnonymous2a != null) && (!paramAnonymousf.isInstance(paramAnonymous2a))) {
              throw new s("Expected a " + paramAnonymousf.getName() + " but was " + paramAnonymous2a.getClass().getName());
            }
            return paramAnonymous2a;
          }
          
          public final void a(com.google.a.d.c paramAnonymous2c, T1 paramAnonymous2T1)
            throws IOException
          {
            n.29.this.biq.a(paramAnonymous2c, paramAnonymous2T1);
          }
        };
      }
      
      public final String toString()
      {
        return "Factory[typeHierarchy=" + this.bjR.getName() + ",adapter=" + paramu + "]";
      }
    };
  }
  
  private static final class a<T extends Enum<T>>
    extends u<T>
  {
    private final Map<String, T> bjU = new HashMap();
    private final Map<T, String> bjV = new HashMap();
    
    public a(Class<T> paramClass)
    {
      try
      {
        Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
        int k = arrayOfEnum.length;
        int i = 0;
        while (i < k)
        {
          Enum localEnum = arrayOfEnum[i];
          Object localObject1 = localEnum.name();
          Object localObject2 = (com.google.a.a.c)paramClass.getField((String)localObject1).getAnnotation(com.google.a.a.c.class);
          if (localObject2 != null)
          {
            String str = ((com.google.a.a.c)localObject2).value();
            localObject2 = ((com.google.a.a.c)localObject2).vm();
            int m = localObject2.length;
            int j = 0;
            for (;;)
            {
              localObject1 = str;
              if (j >= m) {
                break;
              }
              localObject1 = localObject2[j];
              this.bjU.put(localObject1, localEnum);
              j += 1;
            }
          }
          this.bjU.put(localObject1, localEnum);
          this.bjV.put(localEnum, localObject1);
          i += 1;
        }
        return;
      }
      catch (NoSuchFieldException paramClass)
      {
        throw new AssertionError(paramClass);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/a/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */