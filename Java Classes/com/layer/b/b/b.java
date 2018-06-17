package com.layer.b.b;

import com.b.a.o;
import com.b.a.x;
import com.b.a.y;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

public abstract class b
{
  public static String a = "certification_url";
  public static String b = "authentication_url";
  public static String c = "messaging_url";
  public static String d = "telemetry_url";
  private com.layer.b.d.a e;
  private URL f;
  
  public b(com.layer.b.d.a parama, URL paramURL)
  {
    this.e = parama;
    this.f = paramURL;
  }
  
  private URL a(String paramString)
    throws MalformedURLException
  {
    if (paramString == null) {
      return null;
    }
    return new URL(paramString);
  }
  
  private <T> boolean a(T paramT1, T paramT2)
  {
    return (paramT2 != null) && (!paramT2.equals(paramT1));
  }
  
  /* Error */
  public a a()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 72	com/layer/b/b/b:c	()Lcom/b/a/x;
    //   4: astore 4
    //   6: new 74	com/b/a/aa$a
    //   9: dup
    //   10: invokespecial 75	com/b/a/aa$a:<init>	()V
    //   13: ldc 77
    //   15: ldc 79
    //   17: invokevirtual 83	com/b/a/aa$a:Q	(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;
    //   20: astore_1
    //   21: aload 4
    //   23: aload_0
    //   24: getfield 46	com/layer/b/b/b:e	Lcom/layer/b/d/a;
    //   27: aload_1
    //   28: invokevirtual 88	com/layer/b/d/a:a	(Lcom/b/a/aa$a;)Lcom/b/a/aa$a;
    //   31: invokevirtual 92	com/b/a/aa$a:Am	()Lcom/b/a/aa$a;
    //   34: aload_0
    //   35: getfield 48	com/layer/b/b/b:f	Ljava/net/URL;
    //   38: invokevirtual 96	com/b/a/aa$a:g	(Ljava/net/URL;)Lcom/b/a/aa$a;
    //   41: invokevirtual 100	com/b/a/aa$a:An	()Lcom/b/a/aa;
    //   44: invokevirtual 105	com/b/a/x:e	(Lcom/b/a/aa;)Lcom/b/a/h;
    //   47: astore_3
    //   48: aload_3
    //   49: invokevirtual 111	com/b/a/h:xb	()Lcom/b/a/ac;
    //   52: astore_1
    //   53: aload_1
    //   54: invokevirtual 117	com/b/a/ac:Ap	()Lcom/b/a/b;
    //   57: astore_2
    //   58: aload_1
    //   59: invokevirtual 120	com/b/a/ac:c	()I
    //   62: sipush 200
    //   65: if_icmpeq +162 -> 227
    //   68: bipush 6
    //   70: invokestatic 125	com/layer/b/e/a:a	(I)Z
    //   73: ifeq +34 -> 107
    //   76: new 127	java/lang/StringBuilder
    //   79: dup
    //   80: ldc -127
    //   82: invokespecial 130	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   85: aload_0
    //   86: getfield 48	com/layer/b/b/b:f	Ljava/net/URL;
    //   89: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   92: ldc -120
    //   94: invokevirtual 139	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: aload_1
    //   98: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   101: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   104: invokestatic 145	com/layer/b/e/a:c	(Ljava/lang/String;)V
    //   107: new 67	java/io/IOException
    //   110: dup
    //   111: new 127	java/lang/StringBuilder
    //   114: dup
    //   115: ldc -109
    //   117: invokespecial 130	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   120: aload_1
    //   121: invokevirtual 120	com/b/a/ac:c	()I
    //   124: invokevirtual 150	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   127: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: invokespecial 151	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   133: athrow
    //   134: astore_1
    //   135: aload_2
    //   136: ifnull +7 -> 143
    //   139: aload_2
    //   140: invokevirtual 155	com/b/a/b:close	()V
    //   143: aload_3
    //   144: ifnull +7 -> 151
    //   147: aload_3
    //   148: invokevirtual 157	com/b/a/h:c	()V
    //   151: aload 4
    //   153: invokevirtual 161	com/b/a/x:Ag	()Lcom/b/a/o;
    //   156: astore_2
    //   157: aload_2
    //   158: ifnull +7 -> 165
    //   161: aload_2
    //   162: invokevirtual 165	com/b/a/o:d	()V
    //   165: aload_1
    //   166: athrow
    //   167: astore_1
    //   168: bipush 6
    //   170: invokestatic 125	com/layer/b/e/a:a	(I)Z
    //   173: ifeq +26 -> 199
    //   176: new 127	java/lang/StringBuilder
    //   179: dup
    //   180: ldc -89
    //   182: invokespecial 130	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   185: aload_0
    //   186: getfield 48	com/layer/b/b/b:f	Ljava/net/URL;
    //   189: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   192: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   195: aload_1
    //   196: invokestatic 170	com/layer/b/e/a:g	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   199: new 67	java/io/IOException
    //   202: dup
    //   203: new 127	java/lang/StringBuilder
    //   206: dup
    //   207: ldc -84
    //   209: invokespecial 130	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   212: aload_0
    //   213: getfield 48	com/layer/b/b/b:f	Ljava/net/URL;
    //   216: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   219: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   222: aload_1
    //   223: invokespecial 174	java/io/IOException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   226: athrow
    //   227: new 176	org/json/JSONObject
    //   230: dup
    //   231: new 178	java/lang/String
    //   234: dup
    //   235: aload_2
    //   236: invokevirtual 182	com/b/a/b:yf	()[B
    //   239: invokespecial 185	java/lang/String:<init>	([B)V
    //   242: invokespecial 186	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   245: astore_1
    //   246: aload_2
    //   247: ifnull +7 -> 254
    //   250: aload_2
    //   251: invokevirtual 155	com/b/a/b:close	()V
    //   254: aload_3
    //   255: invokevirtual 157	com/b/a/h:c	()V
    //   258: aload 4
    //   260: invokevirtual 161	com/b/a/x:Ag	()Lcom/b/a/o;
    //   263: astore_2
    //   264: aload_2
    //   265: ifnull +7 -> 272
    //   268: aload_2
    //   269: invokevirtual 165	com/b/a/o:d	()V
    //   272: aload_0
    //   273: aload_1
    //   274: getstatic 27	com/layer/b/b/b:a	Ljava/lang/String;
    //   277: invokevirtual 190	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   280: invokespecial 192	com/layer/b/b/b:a	(Ljava/lang/String;)Ljava/net/URL;
    //   283: astore_2
    //   284: aload_0
    //   285: aload_1
    //   286: getstatic 31	com/layer/b/b/b:b	Ljava/lang/String;
    //   289: invokevirtual 190	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   292: invokespecial 192	com/layer/b/b/b:a	(Ljava/lang/String;)Ljava/net/URL;
    //   295: astore_3
    //   296: new 8	com/layer/b/b/b$2
    //   299: dup
    //   300: aload_0
    //   301: aload_0
    //   302: aload_1
    //   303: getstatic 35	com/layer/b/b/b:c	Ljava/lang/String;
    //   306: invokevirtual 190	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   309: invokespecial 192	com/layer/b/b/b:a	(Ljava/lang/String;)Ljava/net/URL;
    //   312: aload_3
    //   313: aload_2
    //   314: aload_0
    //   315: aload_1
    //   316: getstatic 39	com/layer/b/b/b:d	Ljava/lang/String;
    //   319: invokevirtual 190	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   322: invokespecial 192	com/layer/b/b/b:a	(Ljava/lang/String;)Ljava/net/URL;
    //   325: invokespecial 195	com/layer/b/b/b$2:<init>	(Lcom/layer/b/b/b;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)V
    //   328: areturn
    //   329: astore_2
    //   330: bipush 6
    //   332: invokestatic 125	com/layer/b/e/a:a	(I)Z
    //   335: ifeq -81 -> 254
    //   338: aload_2
    //   339: invokevirtual 198	java/io/IOException:getMessage	()Ljava/lang/String;
    //   342: aload_2
    //   343: invokestatic 170	com/layer/b/e/a:g	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   346: goto -92 -> 254
    //   349: astore_2
    //   350: bipush 6
    //   352: invokestatic 125	com/layer/b/e/a:a	(I)Z
    //   355: ifeq -212 -> 143
    //   358: aload_2
    //   359: invokevirtual 198	java/io/IOException:getMessage	()Ljava/lang/String;
    //   362: aload_2
    //   363: invokestatic 170	com/layer/b/e/a:g	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   366: goto -223 -> 143
    //   369: astore_1
    //   370: aconst_null
    //   371: astore_2
    //   372: aconst_null
    //   373: astore_3
    //   374: goto -239 -> 135
    //   377: astore_1
    //   378: aconst_null
    //   379: astore_2
    //   380: goto -245 -> 135
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	383	0	this	b
    //   20	101	1	localObject1	Object
    //   134	32	1	localObject2	Object
    //   167	56	1	localJSONException	org.json.JSONException
    //   245	71	1	localJSONObject	org.json.JSONObject
    //   369	1	1	localObject3	Object
    //   377	1	1	localObject4	Object
    //   57	257	2	localObject5	Object
    //   329	14	2	localIOException1	IOException
    //   349	14	2	localIOException2	IOException
    //   371	9	2	localObject6	Object
    //   47	327	3	localObject7	Object
    //   4	255	4	localx	x
    // Exception table:
    //   from	to	target	type
    //   58	107	134	finally
    //   107	134	134	finally
    //   227	246	134	finally
    //   139	143	167	org/json/JSONException
    //   147	151	167	org/json/JSONException
    //   151	157	167	org/json/JSONException
    //   161	165	167	org/json/JSONException
    //   165	167	167	org/json/JSONException
    //   250	254	167	org/json/JSONException
    //   254	264	167	org/json/JSONException
    //   268	272	167	org/json/JSONException
    //   272	329	167	org/json/JSONException
    //   330	346	167	org/json/JSONException
    //   350	366	167	org/json/JSONException
    //   250	254	329	java/io/IOException
    //   139	143	349	java/io/IOException
    //   6	48	369	finally
    //   48	58	377	finally
  }
  
  public a a(final a parama1, a parama2)
  {
    final URL localURL1;
    final URL localURL2;
    label33:
    final URL localURL3;
    if (parama2.wD() == null)
    {
      localURL1 = parama1.wD();
      if (parama2.wC() != null) {
        break label91;
      }
      localURL2 = parama1.wC();
      if (parama2.wE() != null) {
        break label102;
      }
      localURL3 = parama1.wE();
      label50:
      if (parama2.wF() != null) {
        break label113;
      }
    }
    label91:
    label102:
    label113:
    for (parama1 = parama1.wF();; parama1 = parama2.wF())
    {
      new a()
      {
        public final URL wC()
        {
          return localURL2;
        }
        
        public final URL wD()
        {
          return localURL1;
        }
        
        public final URL wE()
        {
          return localURL3;
        }
        
        public final URL wF()
        {
          return parama1;
        }
      };
      localURL1 = parama2.wD();
      break;
      localURL2 = parama2.wC();
      break label33;
      localURL3 = parama2.wE();
      break label50;
    }
  }
  
  protected a a(Map<String, ?> paramMap)
  {
    final URL localURL1 = com.layer.b.e.c.a((String)paramMap.get(b));
    final URL localURL2 = com.layer.b.e.c.a((String)paramMap.get(a));
    new a()
    {
      public final URL wC()
      {
        return localURL2;
      }
      
      public final URL wD()
      {
        return localURL1;
      }
      
      public final URL wE()
      {
        return this.btc;
      }
      
      public final URL wF()
      {
        return this.btf;
      }
    };
  }
  
  public abstract void a(a parama);
  
  public abstract a b();
  
  protected Map<String, String> b(a parama)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(b, parama.wD().toString());
    localHashMap.put(a, parama.wC().toString());
    localHashMap.put(c, parama.wE().toString());
    localHashMap.put(d, parama.wF().toString());
    return localHashMap;
  }
  
  public boolean b(a parama1, a parama2)
  {
    return (a(parama1.wD(), parama2.wD())) || (a(parama1.wE(), parama2.wE())) || (a(parama1.wC(), parama2.wC()));
  }
  
  protected x c()
    throws IOException
  {
    Object localObject = new o(1, 20000L);
    localObject = new x().b((o)localObject).a(new com.layer.b.a.c()).b(new HostnameVerifier()
    {
      public final boolean verify(String paramAnonymousString, SSLSession paramAnonymousSSLSession)
      {
        return true;
      }
    }).x(Arrays.asList(new y[] { y.bMk }));
    ((x)localObject).a(20000L, TimeUnit.MILLISECONDS);
    return (x)localObject;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/b/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */