package io.intercom.a.b.a.b.a;

import io.intercom.a.b.a.b.f;
import io.intercom.a.b.a.d.b;
import io.intercom.a.b.a.e;
import io.intercom.a.b.a.i;
import io.intercom.a.b.a.j;
import io.intercom.a.b.a.k;
import io.intercom.a.b.a.l;
import io.intercom.a.b.a.p;
import io.intercom.a.b.a.r;
import io.intercom.a.b.a.s;
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
  public static final r<Number> cSA = new r()
  {
    private static Number g(io.intercom.a.b.a.d.a paramAnonymousa)
      throws IOException
    {
      if (paramAnonymousa.Kh() == b.cTE)
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
        throw new p(paramAnonymousa);
      }
    }
  };
  public static final s cSB = a(Byte.TYPE, Byte.class, cSA);
  public static final r<Number> cSC = new r()
  {
    private static Number g(io.intercom.a.b.a.d.a paramAnonymousa)
      throws IOException
    {
      if (paramAnonymousa.Kh() == b.cTE)
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
        throw new p(paramAnonymousa);
      }
    }
  };
  public static final s cSD = a(Short.TYPE, Short.class, cSC);
  public static final r<Number> cSE = new r()
  {
    private static Number g(io.intercom.a.b.a.d.a paramAnonymousa)
      throws IOException
    {
      if (paramAnonymousa.Kh() == b.cTE)
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
        throw new p(paramAnonymousa);
      }
    }
  };
  public static final s cSF = a(Integer.TYPE, Integer.class, cSE);
  public static final r<AtomicInteger> cSG = new r()
  {
    private static AtomicInteger m(io.intercom.a.b.a.d.a paramAnonymousa)
      throws IOException
    {
      try
      {
        paramAnonymousa = new AtomicInteger(paramAnonymousa.nextInt());
        return paramAnonymousa;
      }
      catch (NumberFormatException paramAnonymousa)
      {
        throw new p(paramAnonymousa);
      }
    }
  }.Kc();
  public static final s cSH = a(AtomicInteger.class, cSG);
  public static final r<AtomicBoolean> cSI = new r() {}.Kc();
  public static final s cSJ = a(AtomicBoolean.class, cSI);
  public static final r<AtomicIntegerArray> cSK = new r()
  {
    private static AtomicIntegerArray f(io.intercom.a.b.a.d.a paramAnonymousa)
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
          throw new p(paramAnonymousa);
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
  }.Kc();
  public static final s cSL = a(AtomicIntegerArray.class, cSK);
  public static final r<Number> cSM = new r()
  {
    private static Number g(io.intercom.a.b.a.d.a paramAnonymousa)
      throws IOException
    {
      if (paramAnonymousa.Kh() == b.cTE)
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
        throw new p(paramAnonymousa);
      }
    }
  };
  public static final r<Number> cSN = new r() {};
  public static final r<Number> cSO = new r() {};
  public static final r<Number> cSP = new r() {};
  public static final s cSQ = a(Number.class, cSP);
  public static final r<Character> cSR = new r() {};
  public static final s cSS = a(Character.TYPE, Character.class, cSR);
  public static final r<String> cST = new r() {};
  public static final r<BigDecimal> cSU = new r()
  {
    private static BigDecimal h(io.intercom.a.b.a.d.a paramAnonymousa)
      throws IOException
    {
      if (paramAnonymousa.Kh() == b.cTE)
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
        throw new p(paramAnonymousa);
      }
    }
  };
  public static final r<BigInteger> cSV = new r()
  {
    private static BigInteger i(io.intercom.a.b.a.d.a paramAnonymousa)
      throws IOException
    {
      if (paramAnonymousa.Kh() == b.cTE)
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
        throw new p(paramAnonymousa);
      }
    }
  };
  public static final s cSW = a(String.class, cST);
  public static final r<StringBuilder> cSX = new r() {};
  public static final s cSY = a(StringBuilder.class, cSX);
  public static final r<StringBuffer> cSZ = new r() {};
  public static final r<Class> cSt = new r() {}.Kc();
  public static final s cSu = a(Class.class, cSt);
  public static final r<BitSet> cSv = new r()
  {
    private static BitSet j(io.intercom.a.b.a.d.a paramAnonymousa)
      throws IOException
    {
      BitSet localBitSet = new BitSet();
      paramAnonymousa.beginArray();
      Object localObject = paramAnonymousa.Kh();
      int i = 0;
      if (localObject != b.cTx)
      {
        boolean bool;
        switch (n.29.bim[localObject.ordinal()])
        {
        default: 
          throw new p("Invalid bitset value type: " + localObject);
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
          localObject = paramAnonymousa.Kh();
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
            throw new p("Error: Expecting: bitset number value (1, 0), Found: " + (String)localObject);
          }
        }
      }
      paramAnonymousa.endArray();
      return localBitSet;
    }
  }.Kc();
  public static final s cSw = a(BitSet.class, cSv);
  public static final r<Boolean> cSx = new r() {};
  public static final r<Boolean> cSy = new r() {};
  public static final s cSz = a(Boolean.TYPE, Boolean.class, cSx);
  public static final s cTa = a(StringBuffer.class, cSZ);
  public static final r<URL> cTb = new r() {};
  public static final s cTc = a(URL.class, cTb);
  public static final r<URI> cTd = new r()
  {
    private static URI k(io.intercom.a.b.a.d.a paramAnonymousa)
      throws IOException
    {
      if (paramAnonymousa.Kh() == b.cTE) {
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
          throw new j(paramAnonymousa);
        }
      }
    }
  };
  public static final s cTe = a(URI.class, cTd);
  public static final r<InetAddress> cTf = new r() {};
  public static final s cTg = b(InetAddress.class, cTf);
  public static final r<UUID> cTh = new r() {};
  public static final s cTi = a(UUID.class, cTh);
  public static final r<Currency> cTj = new r() {}.Kc();
  public static final s cTk = a(Currency.class, cTj);
  public static final s cTl = new s()
  {
    public final <T> r<T> a(e paramAnonymouse, io.intercom.a.b.a.c.a<T> paramAnonymousa)
    {
      if (paramAnonymousa.bkb != Timestamp.class) {
        return null;
      }
      new r() {};
    }
  };
  public static final r<Calendar> cTm = new r() {};
  public static final s cTn = new s()
  {
    public final <T> r<T> a(e paramAnonymouse, io.intercom.a.b.a.c.a<T> paramAnonymousa)
    {
      paramAnonymouse = paramAnonymousa.bkb;
      if ((paramAnonymouse == this.bjP) || (paramAnonymouse == this.bjQ)) {
        return this.cSi;
      }
      return null;
    }
    
    public final String toString()
    {
      return "Factory[type=" + this.bjP.getName() + "+" + this.bjQ.getName() + ",adapter=" + this.cSi + "]";
    }
  };
  public static final r<Locale> cTo = new r() {};
  public static final s cTp = a(Locale.class, cTo);
  public static final r<i> cTq = new r()
  {
    private void a(io.intercom.a.b.a.d.c paramAnonymousc, i paramAnonymousi)
      throws IOException
    {
      if ((paramAnonymousi == null) || ((paramAnonymousi instanceof k)))
      {
        paramAnonymousc.Kn();
        return;
      }
      if ((paramAnonymousi instanceof io.intercom.a.b.a.n))
      {
        paramAnonymousi = paramAnonymousi.Ka();
        if ((paramAnonymousi.value instanceof Number))
        {
          paramAnonymousc.b(paramAnonymousi.ve());
          return;
        }
        if ((paramAnonymousi.value instanceof Boolean))
        {
          paramAnonymousc.bx(paramAnonymousi.getAsBoolean());
          return;
        }
        paramAnonymousc.fe(paramAnonymousi.vf());
        return;
      }
      if ((paramAnonymousi instanceof io.intercom.a.b.a.g))
      {
        paramAnonymousc.Kj();
        if ((paramAnonymousi instanceof io.intercom.a.b.a.g))
        {
          paramAnonymousi = ((io.intercom.a.b.a.g)paramAnonymousi).iterator();
          while (paramAnonymousi.hasNext()) {
            a(paramAnonymousc, (i)paramAnonymousi.next());
          }
        }
        throw new IllegalStateException("Not a JSON Array: " + paramAnonymousi);
        paramAnonymousc.Kk();
        return;
      }
      if ((paramAnonymousi instanceof l))
      {
        paramAnonymousc.Kl();
        if ((paramAnonymousi instanceof l))
        {
          paramAnonymousi = ((l)paramAnonymousi).cRu.entrySet().iterator();
          while (paramAnonymousi.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)paramAnonymousi.next();
            paramAnonymousc.fd((String)localEntry.getKey());
            a(paramAnonymousc, (i)localEntry.getValue());
          }
        }
        throw new IllegalStateException("Not a JSON Object: " + paramAnonymousi);
        paramAnonymousc.Km();
        return;
      }
      throw new IllegalArgumentException("Couldn't write " + paramAnonymousi.getClass());
    }
    
    private i l(io.intercom.a.b.a.d.a paramAnonymousa)
      throws IOException
    {
      switch (n.29.bim[paramAnonymousa.Kh().ordinal()])
      {
      default: 
        throw new IllegalArgumentException();
      case 3: 
        return new io.intercom.a.b.a.n(paramAnonymousa.nextString());
      case 1: 
        return new io.intercom.a.b.a.n(new f(paramAnonymousa.nextString()));
      case 2: 
        return new io.intercom.a.b.a.n(Boolean.valueOf(paramAnonymousa.nextBoolean()));
      case 4: 
        paramAnonymousa.nextNull();
        return k.cRt;
      case 5: 
        localObject = new io.intercom.a.b.a.g();
        paramAnonymousa.beginArray();
        while (paramAnonymousa.hasNext()) {
          ((io.intercom.a.b.a.g)localObject).a(l(paramAnonymousa));
        }
        paramAnonymousa.endArray();
        return (i)localObject;
      }
      Object localObject = new l();
      paramAnonymousa.beginObject();
      while (paramAnonymousa.hasNext()) {
        ((l)localObject).a(paramAnonymousa.nextName(), l(paramAnonymousa));
      }
      paramAnonymousa.endObject();
      return (i)localObject;
    }
  };
  public static final s cTr = b(i.class, cTq);
  public static final s cTs = new s()
  {
    public final <T> r<T> a(e paramAnonymouse, io.intercom.a.b.a.c.a<T> paramAnonymousa)
    {
      paramAnonymousa = paramAnonymousa.bkb;
      if ((!Enum.class.isAssignableFrom(paramAnonymousa)) || (paramAnonymousa == Enum.class)) {
        return null;
      }
      paramAnonymouse = paramAnonymousa;
      if (!paramAnonymousa.isEnum()) {
        paramAnonymouse = paramAnonymousa.getSuperclass();
      }
      return new n.a(paramAnonymouse);
    }
  };
  
  public static <TT> s a(Class<TT> paramClass, final r<TT> paramr)
  {
    new s()
    {
      public final <T> r<T> a(e paramAnonymouse, io.intercom.a.b.a.c.a<T> paramAnonymousa)
      {
        if (paramAnonymousa.bkb == this.bjM) {
          return paramr;
        }
        return null;
      }
      
      public final String toString()
      {
        return "Factory[type=" + this.bjM.getName() + ",adapter=" + paramr + "]";
      }
    };
  }
  
  public static <TT> s a(Class<TT> paramClass1, final Class<TT> paramClass2, final r<? super TT> paramr)
  {
    new s()
    {
      public final <T> r<T> a(e paramAnonymouse, io.intercom.a.b.a.c.a<T> paramAnonymousa)
      {
        paramAnonymouse = paramAnonymousa.bkb;
        if ((paramAnonymouse == this.bjN) || (paramAnonymouse == paramClass2)) {
          return paramr;
        }
        return null;
      }
      
      public final String toString()
      {
        return "Factory[type=" + paramClass2.getName() + "+" + this.bjN.getName() + ",adapter=" + paramr + "]";
      }
    };
  }
  
  private static <T1> s b(Class<T1> paramClass, final r<T1> paramr)
  {
    new s()
    {
      public final <T2> r<T2> a(final e paramAnonymouse, io.intercom.a.b.a.c.a<T2> paramAnonymousa)
      {
        paramAnonymouse = paramAnonymousa.bkb;
        if (!this.bjR.isAssignableFrom(paramAnonymouse)) {
          return null;
        }
        new r()
        {
          public final T1 a(io.intercom.a.b.a.d.a paramAnonymous2a)
            throws IOException
          {
            paramAnonymous2a = n.28.this.cSi.a(paramAnonymous2a);
            if ((paramAnonymous2a != null) && (!paramAnonymouse.isInstance(paramAnonymous2a))) {
              throw new p("Expected a " + paramAnonymouse.getName() + " but was " + paramAnonymous2a.getClass().getName());
            }
            return paramAnonymous2a;
          }
          
          public final void a(io.intercom.a.b.a.d.c paramAnonymous2c, T1 paramAnonymous2T1)
            throws IOException
          {
            n.28.this.cSi.a(paramAnonymous2c, paramAnonymous2T1);
          }
        };
      }
      
      public final String toString()
      {
        return "Factory[typeHierarchy=" + this.bjR.getName() + ",adapter=" + paramr + "]";
      }
    };
  }
  
  private static final class a<T extends Enum<T>>
    extends r<T>
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
          Object localObject2 = (io.intercom.a.b.a.a.c)paramClass.getField((String)localObject1).getAnnotation(io.intercom.a.b.a.a.c.class);
          if (localObject2 != null)
          {
            String str = ((io.intercom.a.b.a.a.c)localObject2).value();
            localObject2 = ((io.intercom.a.b.a.a.c)localObject2).vm();
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/a/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */