package org.a;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import org.a.b.e;
import org.a.b.f;
import org.a.b.g;

public final class c
{
  static volatile int dco = 0;
  static final f dcp = new f();
  static final org.a.b.c dcq = new org.a.b.c();
  static boolean dcr = g.fM("slf4j.detectLoggerNameMismatch");
  private static final String[] dcs = { "1.6", "1.7" };
  private static String dct = "org/slf4j/impl/StaticLoggerBinder.class";
  
  /* Error */
  private static a NA()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_0
    //   2: getstatic 20	org/a/c:dco	I
    //   5: ifne +160 -> 165
    //   8: ldc 2
    //   10: monitorenter
    //   11: getstatic 20	org/a/c:dco	I
    //   14: ifne +148 -> 162
    //   17: iconst_1
    //   18: putstatic 20	org/a/c:dco	I
    //   21: aconst_null
    //   22: astore_2
    //   23: ldc 66
    //   25: invokestatic 70	org/a/b/g:fL	(Ljava/lang/String;)Ljava/lang/String;
    //   28: astore_3
    //   29: aload_3
    //   30: ifnonnull +180 -> 210
    //   33: iconst_0
    //   34: istore_1
    //   35: iload_1
    //   36: ifne +195 -> 231
    //   39: invokestatic 74	org/a/c:Nz	()Ljava/util/Set;
    //   42: astore_2
    //   43: aload_2
    //   44: invokestatic 78	org/a/c:j	(Ljava/util/Set;)Z
    //   47: ifeq +369 -> 416
    //   50: ldc 80
    //   52: invokestatic 84	org/a/b/g:fN	(Ljava/lang/String;)V
    //   55: aload_2
    //   56: invokeinterface 90 1 0
    //   61: astore_3
    //   62: aload_3
    //   63: invokeinterface 96 1 0
    //   68: ifeq +155 -> 223
    //   71: aload_3
    //   72: invokeinterface 100 1 0
    //   77: checkcast 102	java/net/URL
    //   80: astore 4
    //   82: new 104	java/lang/StringBuilder
    //   85: dup
    //   86: ldc 106
    //   88: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   91: aload 4
    //   93: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   96: ldc 114
    //   98: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   104: invokestatic 84	org/a/b/g:fN	(Ljava/lang/String;)V
    //   107: goto -45 -> 62
    //   110: astore_2
    //   111: aload_2
    //   112: invokevirtual 124	java/lang/NoClassDefFoundError:getMessage	()Ljava/lang/String;
    //   115: astore_3
    //   116: aload_3
    //   117: ifnull +302 -> 419
    //   120: aload_3
    //   121: ldc 126
    //   123: invokevirtual 130	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   126: ifeq +231 -> 357
    //   129: iload_0
    //   130: ifeq +239 -> 369
    //   133: iconst_4
    //   134: putstatic 20	org/a/c:dco	I
    //   137: ldc -124
    //   139: invokestatic 84	org/a/b/g:fN	(Ljava/lang/String;)V
    //   142: ldc -122
    //   144: invokestatic 84	org/a/b/g:fN	(Ljava/lang/String;)V
    //   147: ldc -120
    //   149: invokestatic 84	org/a/b/g:fN	(Ljava/lang/String;)V
    //   152: getstatic 20	org/a/c:dco	I
    //   155: iconst_3
    //   156: if_icmpne +6 -> 162
    //   159: invokestatic 139	org/a/c:Ny	()V
    //   162: ldc 2
    //   164: monitorexit
    //   165: getstatic 20	org/a/c:dco	I
    //   168: tableswitch	default:+32->200, 1:+244->412, 2:+234->402, 3:+223->391, 4:+230->398
    //   200: new 141	java/lang/IllegalStateException
    //   203: dup
    //   204: ldc -113
    //   206: invokespecial 144	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   209: athrow
    //   210: aload_3
    //   211: invokevirtual 147	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   214: ldc -107
    //   216: invokevirtual 130	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   219: istore_1
    //   220: goto -185 -> 35
    //   223: ldc -105
    //   225: invokestatic 84	org/a/b/g:fN	(Ljava/lang/String;)V
    //   228: goto +188 -> 416
    //   231: invokestatic 157	org/a/c/a:NC	()Lorg/a/c/a;
    //   234: pop
    //   235: iconst_3
    //   236: putstatic 20	org/a/c:dco	I
    //   239: aload_2
    //   240: ifnull +42 -> 282
    //   243: aload_2
    //   244: invokestatic 78	org/a/c:j	(Ljava/util/Set;)Z
    //   247: ifeq +35 -> 282
    //   250: new 104	java/lang/StringBuilder
    //   253: dup
    //   254: ldc -97
    //   256: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   259: astore_2
    //   260: invokestatic 157	org/a/c/a:NC	()Lorg/a/c/a;
    //   263: pop
    //   264: aload_2
    //   265: invokestatic 162	org/a/c/a:ND	()Ljava/lang/String;
    //   268: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: ldc 114
    //   273: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   279: invokestatic 84	org/a/b/g:fN	(Ljava/lang/String;)V
    //   282: invokestatic 165	org/a/c:Nw	()V
    //   285: invokestatic 168	org/a/c:Nx	()V
    //   288: getstatic 27	org/a/c:dcp	Lorg/a/b/f;
    //   291: astore_2
    //   292: aload_2
    //   293: getfield 172	org/a/b/f:dcC	Ljava/util/Map;
    //   296: invokeinterface 177 1 0
    //   301: aload_2
    //   302: getfield 181	org/a/b/f:dcD	Ljava/util/concurrent/LinkedBlockingQueue;
    //   305: invokevirtual 184	java/util/concurrent/LinkedBlockingQueue:clear	()V
    //   308: goto -156 -> 152
    //   311: astore_2
    //   312: aload_2
    //   313: invokevirtual 185	java/lang/NoSuchMethodError:getMessage	()Ljava/lang/String;
    //   316: astore_3
    //   317: aload_3
    //   318: ifnull +31 -> 349
    //   321: aload_3
    //   322: ldc -69
    //   324: invokevirtual 130	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   327: ifeq +22 -> 349
    //   330: iconst_2
    //   331: putstatic 20	org/a/c:dco	I
    //   334: ldc -67
    //   336: invokestatic 84	org/a/b/g:fN	(Ljava/lang/String;)V
    //   339: ldc -65
    //   341: invokestatic 84	org/a/b/g:fN	(Ljava/lang/String;)V
    //   344: ldc -63
    //   346: invokestatic 84	org/a/b/g:fN	(Ljava/lang/String;)V
    //   349: aload_2
    //   350: athrow
    //   351: astore_2
    //   352: ldc 2
    //   354: monitorexit
    //   355: aload_2
    //   356: athrow
    //   357: aload_3
    //   358: ldc -61
    //   360: invokevirtual 130	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   363: ifne -234 -> 129
    //   366: goto +53 -> 419
    //   369: aload_2
    //   370: invokestatic 199	org/a/c:k	(Ljava/lang/Throwable;)V
    //   373: aload_2
    //   374: athrow
    //   375: astore_2
    //   376: aload_2
    //   377: invokestatic 199	org/a/c:k	(Ljava/lang/Throwable;)V
    //   380: new 141	java/lang/IllegalStateException
    //   383: dup
    //   384: ldc -55
    //   386: aload_2
    //   387: invokespecial 204	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   390: athrow
    //   391: invokestatic 157	org/a/c/a:NC	()Lorg/a/c/a;
    //   394: getfield 208	org/a/c/a:dcI	Lorg/a/a;
    //   397: areturn
    //   398: getstatic 32	org/a/c:dcq	Lorg/a/b/c;
    //   401: areturn
    //   402: new 141	java/lang/IllegalStateException
    //   405: dup
    //   406: ldc -46
    //   408: invokespecial 144	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   411: athrow
    //   412: getstatic 27	org/a/c:dcp	Lorg/a/b/f;
    //   415: areturn
    //   416: goto -185 -> 231
    //   419: iconst_0
    //   420: istore_0
    //   421: goto -292 -> 129
    // Local variable table:
    //   start	length	slot	name	signature
    //   1	420	0	i	int
    //   34	186	1	bool	boolean
    //   22	34	2	localSet	Set
    //   110	134	2	localNoClassDefFoundError	NoClassDefFoundError
    //   259	43	2	localObject1	Object
    //   311	39	2	localNoSuchMethodError	NoSuchMethodError
    //   351	23	2	localThrowable	Throwable
    //   375	12	2	localException	Exception
    //   28	330	3	localObject2	Object
    //   80	12	4	localURL	URL
    // Exception table:
    //   from	to	target	type
    //   23	29	110	java/lang/NoClassDefFoundError
    //   39	62	110	java/lang/NoClassDefFoundError
    //   62	107	110	java/lang/NoClassDefFoundError
    //   210	220	110	java/lang/NoClassDefFoundError
    //   223	228	110	java/lang/NoClassDefFoundError
    //   231	239	110	java/lang/NoClassDefFoundError
    //   243	282	110	java/lang/NoClassDefFoundError
    //   282	308	110	java/lang/NoClassDefFoundError
    //   23	29	311	java/lang/NoSuchMethodError
    //   39	62	311	java/lang/NoSuchMethodError
    //   62	107	311	java/lang/NoSuchMethodError
    //   210	220	311	java/lang/NoSuchMethodError
    //   223	228	311	java/lang/NoSuchMethodError
    //   231	239	311	java/lang/NoSuchMethodError
    //   243	282	311	java/lang/NoSuchMethodError
    //   282	308	311	java/lang/NoSuchMethodError
    //   11	21	351	finally
    //   23	29	351	finally
    //   39	62	351	finally
    //   62	107	351	finally
    //   111	116	351	finally
    //   120	129	351	finally
    //   133	152	351	finally
    //   152	162	351	finally
    //   162	165	351	finally
    //   210	220	351	finally
    //   223	228	351	finally
    //   231	239	351	finally
    //   243	282	351	finally
    //   282	308	351	finally
    //   312	317	351	finally
    //   321	349	351	finally
    //   349	351	351	finally
    //   352	355	351	finally
    //   357	366	351	finally
    //   369	375	351	finally
    //   376	391	351	finally
    //   23	29	375	java/lang/Exception
    //   39	62	375	java/lang/Exception
    //   62	107	375	java/lang/Exception
    //   210	220	375	java/lang/Exception
    //   223	228	375	java/lang/Exception
    //   231	239	375	java/lang/Exception
    //   243	282	375	java/lang/Exception
    //   282	308	375	java/lang/Exception
  }
  
  private static void Nw()
  {
    synchronized (dcp)
    {
      dcp.dcB = true;
      Iterator localIterator = new ArrayList(dcp.dcC.values()).iterator();
      if (localIterator.hasNext())
      {
        e locale = (e)localIterator.next();
        locale.dcw = fK(locale.name);
      }
    }
  }
  
  private static void Nx()
  {
    LinkedBlockingQueue localLinkedBlockingQueue = dcp.dcD;
    int k = localLinkedBlockingQueue.size();
    ArrayList localArrayList = new ArrayList(128);
    int i = 0;
    for (;;)
    {
      label47:
      org.a.a.b localb;
      e locale;
      String str;
      int j;
      if (localLinkedBlockingQueue.drainTo(localArrayList, 128) != 0)
      {
        Iterator localIterator = localArrayList.iterator();
        if (localIterator.hasNext())
        {
          localb = (org.a.a.b)localIterator.next();
          if (localb != null)
          {
            locale = localb.dcu;
            str = locale.name;
            if (locale.dcw == null) {}
            for (j = 1; j != 0; j = 0) {
              throw new IllegalStateException("Delegate logger cannot be null at this state.");
            }
            if (((locale.dcw instanceof org.a.b.b)) || ((locale.NB()) && (!locale.NB()))) {}
          }
        }
      }
      try
      {
        locale.dcy.invoke(locale.dcw, new Object[] { localb });
        for (;;)
        {
          j = i + 1;
          if (i != 0) {
            break label282;
          }
          if (!localb.dcu.NB()) {
            break label238;
          }
          g.fN("A number (" + k + ") of logging calls during the initialization phase have been intercepted and are");
          g.fN("now being replayed. These are subject to the filtering rules of the underlying logging system.");
          g.fN("See also http://www.slf4j.org/codes.html#replay");
          i = j;
          break;
          g.fN(str);
        }
        label238:
        if (!(localb.dcu.dcw instanceof org.a.b.b))
        {
          g.fN("The following set of substitute loggers may have been accessed");
          g.fN("during the initialization phase. Logging calls during this");
          g.fN("phase were not honored. However, subsequent logging calls to these");
          g.fN("loggers will work as normally expected.");
          g.fN("See also http://www.slf4j.org/codes.html#substituteLogger");
        }
        label282:
        i = j;
        break label47;
        localArrayList.clear();
        continue;
        return;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        for (;;) {}
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        for (;;) {}
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        for (;;) {}
      }
    }
  }
  
  private static final void Ny()
  {
    for (;;)
    {
      int i;
      try
      {
        String str = org.a.c.a.dcG;
        String[] arrayOfString = dcs;
        int k = arrayOfString.length;
        i = 0;
        int j = 0;
        if (i < k)
        {
          if (str.startsWith(arrayOfString[i])) {
            j = 1;
          }
        }
        else
        {
          if (j == 0)
          {
            g.fN("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(dcs).toString());
            g.fN("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
          }
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        g.h("Unexpected problem occured during version sanity check", localThrowable);
        return;
      }
      catch (NoSuchFieldError localNoSuchFieldError)
      {
        return;
      }
      i += 1;
    }
  }
  
  private static Set<URL> Nz()
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    for (;;)
    {
      try
      {
        Object localObject = c.class.getClassLoader();
        if (localObject == null)
        {
          localObject = ClassLoader.getSystemResources(dct);
          if (((Enumeration)localObject).hasMoreElements())
          {
            localLinkedHashSet.add((URL)((Enumeration)localObject).nextElement());
            continue;
          }
          return localLinkedHashSet;
        }
      }
      catch (IOException localIOException)
      {
        g.h("Error getting resources from path", localIOException);
      }
      Enumeration localEnumeration = localIOException.getResources(dct);
    }
  }
  
  public static b fK(String paramString)
  {
    return NA().fK(paramString);
  }
  
  private static boolean j(Set<URL> paramSet)
  {
    return paramSet.size() > 1;
  }
  
  private static void k(Throwable paramThrowable)
  {
    dco = 2;
    g.h("Failed to instantiate SLF4J LoggerFactory", paramThrowable);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/org/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */