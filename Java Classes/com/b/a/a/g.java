package com.b.a.a;

import b.c;
import com.b.a.y;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;

public class g
{
  private static final g bIw = ;
  
  public static void a(String paramString)
  {
    System.out.println(paramString);
  }
  
  public static String b()
  {
    return "OkHttp";
  }
  
  public static g zw()
  {
    return bIw;
  }
  
  /* Error */
  private static g zx()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: ldc 49
    //   5: invokestatic 55	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   8: pop
    //   9: new 57	com/b/a/a/f
    //   12: dup
    //   13: aconst_null
    //   14: ldc 59
    //   16: iconst_1
    //   17: anewarray 51	java/lang/Class
    //   20: dup
    //   21: iconst_0
    //   22: getstatic 65	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   25: aastore
    //   26: invokespecial 68	com/b/a/a/f:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   29: astore 5
    //   31: new 57	com/b/a/a/f
    //   34: dup
    //   35: aconst_null
    //   36: ldc 70
    //   38: iconst_1
    //   39: anewarray 51	java/lang/Class
    //   42: dup
    //   43: iconst_0
    //   44: ldc 72
    //   46: aastore
    //   47: invokespecial 68	com/b/a/a/f:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   50: astore 6
    //   52: ldc 74
    //   54: invokestatic 55	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   57: astore_1
    //   58: aload_1
    //   59: ldc 76
    //   61: iconst_1
    //   62: anewarray 51	java/lang/Class
    //   65: dup
    //   66: iconst_0
    //   67: ldc 78
    //   69: aastore
    //   70: invokevirtual 82	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   73: astore_0
    //   74: aload_1
    //   75: ldc 84
    //   77: iconst_1
    //   78: anewarray 51	java/lang/Class
    //   81: dup
    //   82: iconst_0
    //   83: ldc 78
    //   85: aastore
    //   86: invokevirtual 82	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   89: astore_1
    //   90: ldc 86
    //   92: invokestatic 55	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   95: pop
    //   96: new 57	com/b/a/a/f
    //   99: dup
    //   100: ldc 88
    //   102: ldc 90
    //   104: iconst_0
    //   105: anewarray 51	java/lang/Class
    //   108: invokespecial 68	com/b/a/a/f:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   111: astore_2
    //   112: new 57	com/b/a/a/f
    //   115: dup
    //   116: aconst_null
    //   117: ldc 92
    //   119: iconst_1
    //   120: anewarray 51	java/lang/Class
    //   123: dup
    //   124: iconst_0
    //   125: ldc 88
    //   127: aastore
    //   128: invokespecial 68	com/b/a/a/f:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   131: astore_3
    //   132: new 6	com/b/a/a/g$a
    //   135: dup
    //   136: aload 5
    //   138: aload 6
    //   140: aload_0
    //   141: aload_1
    //   142: aload_2
    //   143: aload_3
    //   144: invokespecial 95	com/b/a/a/g$a:<init>	(Lcom/b/a/a/f;Lcom/b/a/a/f;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/b/a/a/f;Lcom/b/a/a/f;)V
    //   147: areturn
    //   148: astore_0
    //   149: ldc 97
    //   151: invokestatic 55	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   154: pop
    //   155: goto -146 -> 9
    //   158: astore_0
    //   159: ldc 99
    //   161: invokestatic 55	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   164: astore_0
    //   165: new 101	java/lang/StringBuilder
    //   168: dup
    //   169: invokespecial 102	java/lang/StringBuilder:<init>	()V
    //   172: ldc 99
    //   174: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: ldc 108
    //   179: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   185: invokestatic 55	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   188: astore_1
    //   189: new 101	java/lang/StringBuilder
    //   192: dup
    //   193: invokespecial 102	java/lang/StringBuilder:<init>	()V
    //   196: ldc 99
    //   198: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: ldc 113
    //   203: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   209: invokestatic 55	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   212: astore_2
    //   213: new 101	java/lang/StringBuilder
    //   216: dup
    //   217: invokespecial 102	java/lang/StringBuilder:<init>	()V
    //   220: ldc 99
    //   222: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: ldc 115
    //   227: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   233: invokestatic 55	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   236: astore_3
    //   237: new 9	com/b/a/a/g$b
    //   240: dup
    //   241: aload_0
    //   242: ldc 117
    //   244: iconst_2
    //   245: anewarray 51	java/lang/Class
    //   248: dup
    //   249: iconst_0
    //   250: ldc 119
    //   252: aastore
    //   253: dup
    //   254: iconst_1
    //   255: aload_1
    //   256: aastore
    //   257: invokevirtual 82	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   260: aload_0
    //   261: ldc 121
    //   263: iconst_1
    //   264: anewarray 51	java/lang/Class
    //   267: dup
    //   268: iconst_0
    //   269: ldc 119
    //   271: aastore
    //   272: invokevirtual 82	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   275: aload_0
    //   276: ldc 123
    //   278: iconst_1
    //   279: anewarray 51	java/lang/Class
    //   282: dup
    //   283: iconst_0
    //   284: ldc 119
    //   286: aastore
    //   287: invokevirtual 82	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   290: aload_2
    //   291: aload_3
    //   292: invokespecial 126	com/b/a/a/g$b:<init>	(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    //   295: astore_0
    //   296: aload_0
    //   297: areturn
    //   298: astore_0
    //   299: new 2	com/b/a/a/g
    //   302: dup
    //   303: invokespecial 127	com/b/a/a/g:<init>	()V
    //   306: areturn
    //   307: astore_2
    //   308: aconst_null
    //   309: astore_2
    //   310: aload 4
    //   312: astore_3
    //   313: goto -181 -> 132
    //   316: astore_0
    //   317: aconst_null
    //   318: astore_0
    //   319: aconst_null
    //   320: astore_2
    //   321: aconst_null
    //   322: astore_1
    //   323: aload 4
    //   325: astore_3
    //   326: goto -194 -> 132
    //   329: astore_0
    //   330: aconst_null
    //   331: astore_0
    //   332: aconst_null
    //   333: astore_1
    //   334: aconst_null
    //   335: astore_2
    //   336: aload_2
    //   337: astore_3
    //   338: aload_0
    //   339: astore_2
    //   340: aload_3
    //   341: astore_0
    //   342: goto -19 -> 323
    //   345: astore_0
    //   346: goto -47 -> 299
    //   349: astore_1
    //   350: goto -31 -> 319
    //   353: astore_1
    //   354: aconst_null
    //   355: astore_3
    //   356: aconst_null
    //   357: astore_1
    //   358: aload_0
    //   359: astore_2
    //   360: aload_3
    //   361: astore_0
    //   362: goto -26 -> 336
    //   365: astore_2
    //   366: aconst_null
    //   367: astore_3
    //   368: aload_0
    //   369: astore_2
    //   370: aload_3
    //   371: astore_0
    //   372: goto -36 -> 336
    //   375: astore_3
    //   376: aload_0
    //   377: astore_3
    //   378: aload_2
    //   379: astore_0
    //   380: aload_3
    //   381: astore_2
    //   382: goto -46 -> 336
    //   385: astore_3
    //   386: goto -76 -> 310
    // Local variable table:
    //   start	length	slot	name	signature
    //   73	68	0	localMethod	Method
    //   148	1	0	localClassNotFoundException1	ClassNotFoundException
    //   158	1	0	localClassNotFoundException2	ClassNotFoundException
    //   164	133	0	localObject1	Object
    //   298	1	0	localClassNotFoundException3	ClassNotFoundException
    //   316	1	0	localClassNotFoundException4	ClassNotFoundException
    //   318	1	0	localObject2	Object
    //   329	1	0	localNoSuchMethodException1	NoSuchMethodException
    //   331	11	0	localObject3	Object
    //   345	14	0	localNoSuchMethodException2	NoSuchMethodException
    //   361	19	0	localObject4	Object
    //   57	277	1	localObject5	Object
    //   349	1	1	localClassNotFoundException5	ClassNotFoundException
    //   353	1	1	localNoSuchMethodException3	NoSuchMethodException
    //   357	1	1	localObject6	Object
    //   111	180	2	localObject7	Object
    //   307	1	2	localClassNotFoundException6	ClassNotFoundException
    //   309	51	2	localObject8	Object
    //   365	1	2	localNoSuchMethodException4	NoSuchMethodException
    //   369	13	2	localObject9	Object
    //   131	240	3	localObject10	Object
    //   375	1	3	localNoSuchMethodException5	NoSuchMethodException
    //   377	4	3	localObject11	Object
    //   385	1	3	localClassNotFoundException7	ClassNotFoundException
    //   1	323	4	localObject12	Object
    //   29	108	5	localf1	f
    //   50	89	6	localf2	f
    // Exception table:
    //   from	to	target	type
    //   3	9	148	java/lang/ClassNotFoundException
    //   9	52	158	java/lang/ClassNotFoundException
    //   132	148	158	java/lang/ClassNotFoundException
    //   149	155	158	java/lang/ClassNotFoundException
    //   159	296	298	java/lang/ClassNotFoundException
    //   90	112	307	java/lang/ClassNotFoundException
    //   52	74	316	java/lang/ClassNotFoundException
    //   52	74	329	java/lang/NoSuchMethodException
    //   159	296	345	java/lang/NoSuchMethodException
    //   74	90	349	java/lang/ClassNotFoundException
    //   74	90	353	java/lang/NoSuchMethodException
    //   90	112	365	java/lang/NoSuchMethodException
    //   112	132	375	java/lang/NoSuchMethodException
    //   112	132	385	java/lang/ClassNotFoundException
  }
  
  public void a(Socket paramSocket)
    throws SocketException
  {}
  
  public void a(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
    throws IOException
  {
    paramSocket.connect(paramInetSocketAddress, paramInt);
  }
  
  public void a(SSLSocket paramSSLSocket, String paramString, List<y> paramList) {}
  
  public void b(Socket paramSocket)
    throws SocketException
  {}
  
  public void d(SSLSocket paramSSLSocket) {}
  
  public String e(SSLSocket paramSSLSocket)
  {
    return null;
  }
  
  private static final class a
    extends g
  {
    private final Method bIA;
    private final f<Socket> bIB;
    private final f<Socket> bIC;
    private final f<Socket> bIx;
    private final f<Socket> bIy;
    private final Method bIz;
    
    public a(f<Socket> paramf1, f<Socket> paramf2, Method paramMethod1, Method paramMethod2, f<Socket> paramf3, f<Socket> paramf4)
    {
      this.bIx = paramf1;
      this.bIy = paramf2;
      this.bIz = paramMethod1;
      this.bIA = paramMethod2;
      this.bIB = paramf3;
      this.bIC = paramf4;
    }
    
    public final void a(Socket paramSocket)
      throws SocketException
    {
      if (this.bIz == null) {
        return;
      }
      try
      {
        this.bIz.invoke(null, new Object[] { paramSocket });
        return;
      }
      catch (IllegalAccessException paramSocket)
      {
        throw new RuntimeException(paramSocket);
      }
      catch (InvocationTargetException paramSocket)
      {
        throw new RuntimeException(paramSocket.getCause());
      }
    }
    
    public final void a(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
      throws IOException
    {
      try
      {
        paramSocket.connect(paramInetSocketAddress, paramInt);
        return;
      }
      catch (SecurityException paramSocket)
      {
        paramInetSocketAddress = new IOException("Exception in connect");
        paramInetSocketAddress.initCause(paramSocket);
        throw paramInetSocketAddress;
      }
    }
    
    public final void a(SSLSocket paramSSLSocket, String paramString, List<y> paramList)
    {
      if (paramString != null)
      {
        this.bIx.b(paramSSLSocket, new Object[] { Boolean.valueOf(true) });
        this.bIy.b(paramSSLSocket, new Object[] { paramString });
      }
      if ((this.bIC != null) && (this.bIC.a(paramSSLSocket)))
      {
        paramString = new c();
        int j = paramList.size();
        int i = 0;
        while (i < j)
        {
          y localy = (y)paramList.get(i);
          if (localy != y.bJR)
          {
            paramString.fF(localy.toString().length());
            paramString.fl(localy.toString());
          }
          i += 1;
        }
        paramString = paramString.Lg();
        this.bIC.d(paramSSLSocket, new Object[] { paramString });
      }
    }
    
    public final void b(Socket paramSocket)
      throws SocketException
    {
      if (this.bIA == null) {
        return;
      }
      try
      {
        this.bIA.invoke(null, new Object[] { paramSocket });
        return;
      }
      catch (IllegalAccessException paramSocket)
      {
        throw new RuntimeException(paramSocket);
      }
      catch (InvocationTargetException paramSocket)
      {
        throw new RuntimeException(paramSocket.getCause());
      }
    }
    
    public final String e(SSLSocket paramSSLSocket)
    {
      if (this.bIB == null) {
        return null;
      }
      if (!this.bIB.a(paramSSLSocket)) {
        return null;
      }
      paramSSLSocket = (byte[])this.bIB.d(paramSSLSocket, new Object[0]);
      if (paramSSLSocket != null) {
        return new String(paramSSLSocket, i.bII);
      }
      return null;
    }
  }
  
  private static final class b
    extends g
  {
    private final Method bID;
    private final Method bIE;
    private final Class<?> bIF;
    private final Method bIz;
    private final Class<?> e;
    
    public b(Method paramMethod1, Method paramMethod2, Method paramMethod3, Class<?> paramClass1, Class<?> paramClass2)
    {
      this.bID = paramMethod1;
      this.bIE = paramMethod2;
      this.bIz = paramMethod3;
      this.bIF = paramClass1;
      this.e = paramClass2;
    }
    
    public final void a(SSLSocket paramSSLSocket, String paramString, List<y> paramList)
    {
      paramString = new ArrayList(paramList.size());
      int j = paramList.size();
      int i = 0;
      Object localObject;
      while (i < j)
      {
        localObject = (y)paramList.get(i);
        if (localObject != y.bJR) {
          paramString.add(((y)localObject).toString());
        }
        i += 1;
      }
      try
      {
        paramList = g.class.getClassLoader();
        localObject = this.bIF;
        Class localClass = this.e;
        paramString = new g.c(paramString);
        paramString = Proxy.newProxyInstance(paramList, new Class[] { localObject, localClass }, paramString);
        this.bID.invoke(null, new Object[] { paramSSLSocket, paramString });
        return;
      }
      catch (IllegalAccessException paramSSLSocket)
      {
        throw new AssertionError(paramSSLSocket);
      }
      catch (InvocationTargetException paramSSLSocket)
      {
        for (;;) {}
      }
    }
    
    public final void d(SSLSocket paramSSLSocket)
    {
      try
      {
        this.bIz.invoke(null, new Object[] { paramSSLSocket });
        return;
      }
      catch (IllegalAccessException paramSSLSocket)
      {
        throw new AssertionError();
      }
      catch (InvocationTargetException paramSSLSocket)
      {
        for (;;) {}
      }
    }
    
    public final String e(SSLSocket paramSSLSocket)
    {
      try
      {
        paramSSLSocket = (g.c)Proxy.getInvocationHandler(this.bIE.invoke(null, new Object[] { paramSSLSocket }));
        if ((!g.c.a(paramSSLSocket)) && (g.c.b(paramSSLSocket) == null))
        {
          b.bIr.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
          return null;
        }
        if (g.c.a(paramSSLSocket)) {
          return null;
        }
        paramSSLSocket = g.c.b(paramSSLSocket);
        return paramSSLSocket;
      }
      catch (IllegalAccessException paramSSLSocket)
      {
        throw new AssertionError();
      }
      catch (InvocationTargetException paramSSLSocket)
      {
        for (;;) {}
      }
    }
  }
  
  private static final class c
    implements InvocationHandler
  {
    private final List<String> a;
    private boolean b;
    private String c;
    
    public c(List<String> paramList)
    {
      this.a = paramList;
    }
    
    public final Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
      throws Throwable
    {
      String str = paramMethod.getName();
      Class localClass = paramMethod.getReturnType();
      paramObject = paramArrayOfObject;
      if (paramArrayOfObject == null) {
        paramObject = i.bIH;
      }
      if ((str.equals("supports")) && (Boolean.TYPE == localClass)) {
        return Boolean.valueOf(true);
      }
      if ((str.equals("unsupported")) && (Void.TYPE == localClass))
      {
        this.b = true;
        return null;
      }
      if ((str.equals("protocols")) && (paramObject.length == 0)) {
        return this.a;
      }
      if (((str.equals("selectProtocol")) || (str.equals("select"))) && (String.class == localClass) && (paramObject.length == 1) && ((paramObject[0] instanceof List)))
      {
        paramObject = (List)paramObject[0];
        int j = ((List)paramObject).size();
        int i = 0;
        while (i < j)
        {
          if (this.a.contains(((List)paramObject).get(i)))
          {
            paramObject = (String)((List)paramObject).get(i);
            this.c = ((String)paramObject);
            return paramObject;
          }
          i += 1;
        }
        paramObject = (String)this.a.get(0);
        this.c = ((String)paramObject);
        return paramObject;
      }
      if (((str.equals("protocolSelected")) || (str.equals("selected"))) && (paramObject.length == 1))
      {
        this.c = ((String)paramObject[0]);
        return null;
      }
      return paramMethod.invoke(this, (Object[])paramObject);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */