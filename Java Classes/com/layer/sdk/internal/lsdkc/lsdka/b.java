package com.layer.sdk.internal.lsdkc.lsdka;

import com.layer.b.d.k.2;
import com.layer.b.d.k.f;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.exceptions.LayerObjectException;
import com.layer.sdk.internal.lsdkc.d.a;
import com.layer.sdk.internal.lsdkc.e;
import com.layer.sdk.internal.lsdkd.f;
import com.layer.sdk.internal.lsdkd.i;
import com.layer.sdk.internal.lsdkd.l;
import com.layer.sdk.internal.lsdkd.l.a;
import com.layer.sdk.internal.lsdkd.lsdka.j;
import com.layer.sdk.internal.lsdkk.h.a;
import java.io.File;
import java.util.Date;
import java.util.UUID;

public class b
  extends a<a, b>
{
  private static final com.layer.sdk.internal.lsdkk.k.a a = com.layer.sdk.internal.lsdkk.k.a(b.class);
  
  public b(com.layer.a.a.a parama, a.a parama1, a parama2, j paramj)
  {
    super(parama, parama1, parama2, paramj);
  }
  
  private static boolean b(j paramj)
  {
    if (paramj.n() == null) {}
    while ((paramj.o() == null) || (paramj.o().before(new Date()))) {
      return true;
    }
    return false;
  }
  
  protected b a(final a parama)
    throws Exception
  {
    final j localj = a();
    b localb = new b();
    parama = com.layer.sdk.internal.lsdkk.h.a(e.a(parama.a(), localj), new h.a()
    {
      private void b(final File paramAnonymousFile)
      {
        final com.layer.sdk.internal.lsdkd.h localh = parama.g();
        if (localh == null) {}
        for (f localf = null;; localf = localh.m())
        {
          if (!l.a(localf, localj.getId(), com.layer.sdk.internal.lsdkd.k.a.e, new l.a()
          {
            public final void a(com.layer.sdk.internal.lsdkd.d paramAnonymous2d, Throwable paramAnonymous2Throwable)
            {
              if (com.layer.sdk.internal.lsdkk.k.a(6)) {
                com.layer.sdk.internal.lsdkk.k.d(b.wu(), "Failed to perform transactedCacheUpdate in runTask. Changeable: " + paramAnonymous2d, paramAnonymous2Throwable);
              }
              localh.n().a(new LayerObjectException(LayerException.Type.FAILED_CONTENT_OPERATION, paramAnonymous2d, paramAnonymous2Throwable.getMessage(), paramAnonymous2Throwable));
            }
            
            public final boolean a(com.layer.sdk.internal.lsdkd.d paramAnonymous2d)
            {
              ((j)paramAnonymous2d).b(paramAnonymousFile);
              return true;
            }
          }))
          {
            if (com.layer.sdk.internal.lsdkk.k.a(6)) {
              com.layer.sdk.internal.lsdkk.k.e(b.wu(), "Failed to transact partSetFileCacheHelper");
            }
            localj.a(paramAnonymousFile);
          }
          return;
        }
      }
      
      public final void a(final File paramAnonymousFile)
        throws Exception
      {
        final a.a locala = b.this.b();
        final long l2 = localj.getSize();
        if (paramAnonymousFile.exists()) {}
        for (long l1 = paramAnonymousFile.length(); l1 >= l2; l1 = 0L)
        {
          b(paramAnonymousFile);
          locala.a(b.this, localj, l2, l2);
          return;
        }
        final Object localObject2;
        final Date localDate;
        final com.layer.sdk.internal.lsdkd.h localh;
        if (b.e(localj))
        {
          localObject1 = parama.b();
          localObject2 = parama.d();
          int i = parama.e();
          int j = parama.f();
          localObject1 = (com.layer.b.f.c.a)new k.f((com.layer.b.d.k)localObject1).a(new Integer[] { Integer.valueOf(200) }).a(new k.2((com.layer.b.d.k)localObject1, (UUID)localObject2, i, j));
          localObject2 = ((com.layer.b.f.c.a)localObject1).d;
          localDate = new Date(((com.layer.b.f.c.a)localObject1).e * 1000L);
          localh = parama.g();
          if (localh != null) {
            break label305;
          }
        }
        label305:
        for (Object localObject1 = null;; localObject1 = localh.m())
        {
          if (!l.a((f)localObject1, localj.getId(), com.layer.sdk.internal.lsdkd.k.a.e, new l.a()
          {
            public final void a(com.layer.sdk.internal.lsdkd.d paramAnonymous2d, Throwable paramAnonymous2Throwable)
            {
              if (com.layer.sdk.internal.lsdkk.k.a(6)) {
                com.layer.sdk.internal.lsdkk.k.d(b.wu(), "Failed to perform transactedCacheUpdate in partSetUrlDataCacheHelper. Changeable: " + paramAnonymous2d, paramAnonymous2Throwable);
              }
              localh.n().a(new LayerObjectException(LayerException.Type.FAILED_CONTENT_OPERATION, paramAnonymous2d, paramAnonymous2Throwable.getMessage(), paramAnonymous2Throwable));
            }
            
            public final boolean a(com.layer.sdk.internal.lsdkd.d paramAnonymous2d)
            {
              paramAnonymous2d = (j)paramAnonymous2d;
              paramAnonymous2d.b(localObject2);
              paramAnonymous2d.d(localDate);
              return true;
            }
          }))
          {
            if (com.layer.sdk.internal.lsdkk.k.a(6)) {
              com.layer.sdk.internal.lsdkk.k.e(b.wu(), "Failed to transact partSetUrlDataCacheHelper");
            }
            localj.a((String)localObject2);
            localj.a(localDate);
          }
          parama.c().a(localj.n(), l2, l1, new d.a()
          {
            /* Error */
            public final void a(com.b.a.b paramAnonymous2b)
              throws java.io.IOException
            {
              // Byte code:
              //   0: aload_1
              //   1: invokevirtual 47	com/b/a/b:zp	()Lb/e;
              //   4: invokeinterface 53 1 0
              //   9: astore_1
              //   10: new 55	com/layer/sdk/internal/lsdki/lsdkc/a
              //   13: dup
              //   14: new 57	java/io/FileOutputStream
              //   17: dup
              //   18: aload_0
              //   19: getfield 28	com/layer/sdk/internal/lsdkc/lsdka/b$1$3:bqw	Ljava/io/File;
              //   22: iconst_1
              //   23: invokespecial 60	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
              //   26: aload_0
              //   27: getfield 30	com/layer/sdk/internal/lsdkc/lsdka/b$1$3:b	J
              //   30: aload_0
              //   31: getfield 32	com/layer/sdk/internal/lsdkc/lsdka/b$1$3:c	J
              //   34: new 13	com/layer/sdk/internal/lsdkc/lsdka/b$1$3$1
              //   37: dup
              //   38: aload_0
              //   39: invokespecial 63	com/layer/sdk/internal/lsdkc/lsdka/b$1$3$1:<init>	(Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;)V
              //   42: invokespecial 66	com/layer/sdk/internal/lsdki/lsdkc/a:<init>	(Ljava/io/OutputStream;JJLcom/layer/sdk/internal/lsdki/lsdkc/a$a;)V
              //   45: astore_2
              //   46: aload_0
              //   47: getfield 32	com/layer/sdk/internal/lsdkc/lsdka/b$1$3:c	J
              //   50: lconst_0
              //   51: lcmp
              //   52: ifne +82 -> 134
              //   55: iconst_2
              //   56: invokestatic 71	com/layer/sdk/internal/lsdkk/k:a	(I)Z
              //   59: ifeq +57 -> 116
              //   62: invokestatic 77	com/layer/sdk/internal/lsdkc/lsdka/b:wu	()Lcom/layer/sdk/internal/lsdkk/k$a;
              //   65: new 79	java/lang/StringBuilder
              //   68: dup
              //   69: ldc 81
              //   71: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
              //   74: aload_0
              //   75: getfield 26	com/layer/sdk/internal/lsdkc/lsdka/b$1$3:bqF	Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;
              //   78: getfield 88	com/layer/sdk/internal/lsdkc/lsdka/b$1:bqA	Lcom/layer/sdk/internal/lsdkd/lsdka/j;
              //   81: invokevirtual 94	com/layer/sdk/internal/lsdkd/lsdka/j:getId	()Landroid/net/Uri;
              //   84: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
              //   87: ldc 100
              //   89: invokevirtual 103	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
              //   92: aload_0
              //   93: getfield 26	com/layer/sdk/internal/lsdkc/lsdka/b$1$3:bqF	Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;
              //   96: getfield 88	com/layer/sdk/internal/lsdkc/lsdka/b$1:bqA	Lcom/layer/sdk/internal/lsdkd/lsdka/j;
              //   99: invokevirtual 107	com/layer/sdk/internal/lsdkd/lsdka/j:getSize	()J
              //   102: invokevirtual 110	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
              //   105: ldc 112
              //   107: invokevirtual 103	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
              //   110: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
              //   113: invokestatic 119	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
              //   116: aload_1
              //   117: aload_2
              //   118: ldc 120
              //   120: newarray <illegal type>
              //   122: invokestatic 125	com/layer/b/e/b:a	(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
              //   125: aload_1
              //   126: invokevirtual 130	java/io/InputStream:close	()V
              //   129: aload_2
              //   130: invokevirtual 133	java/io/OutputStream:close	()V
              //   133: return
              //   134: iconst_2
              //   135: invokestatic 71	com/layer/sdk/internal/lsdkk/k:a	(I)Z
              //   138: ifeq -22 -> 116
              //   141: invokestatic 77	com/layer/sdk/internal/lsdkc/lsdka/b:wu	()Lcom/layer/sdk/internal/lsdkk/k$a;
              //   144: new 79	java/lang/StringBuilder
              //   147: dup
              //   148: ldc 81
              //   150: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
              //   153: aload_0
              //   154: getfield 26	com/layer/sdk/internal/lsdkc/lsdka/b$1$3:bqF	Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;
              //   157: getfield 88	com/layer/sdk/internal/lsdkc/lsdka/b$1:bqA	Lcom/layer/sdk/internal/lsdkd/lsdka/j;
              //   160: invokevirtual 94	com/layer/sdk/internal/lsdkd/lsdka/j:getId	()Landroid/net/Uri;
              //   163: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
              //   166: ldc -121
              //   168: invokevirtual 103	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
              //   171: aload_0
              //   172: getfield 32	com/layer/sdk/internal/lsdkc/lsdka/b$1$3:c	J
              //   175: invokevirtual 110	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
              //   178: ldc -119
              //   180: invokevirtual 103	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
              //   183: aload_0
              //   184: getfield 26	com/layer/sdk/internal/lsdkc/lsdka/b$1$3:bqF	Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;
              //   187: getfield 88	com/layer/sdk/internal/lsdkc/lsdka/b$1:bqA	Lcom/layer/sdk/internal/lsdkd/lsdka/j;
              //   190: invokevirtual 107	com/layer/sdk/internal/lsdkd/lsdka/j:getSize	()J
              //   193: invokevirtual 110	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
              //   196: ldc 112
              //   198: invokevirtual 103	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
              //   201: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
              //   204: invokestatic 119	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
              //   207: goto -91 -> 116
              //   210: astore 4
              //   212: aload_1
              //   213: astore_3
              //   214: aload 4
              //   216: astore_1
              //   217: aload_3
              //   218: ifnull +7 -> 225
              //   221: aload_3
              //   222: invokevirtual 130	java/io/InputStream:close	()V
              //   225: aload_2
              //   226: ifnull +7 -> 233
              //   229: aload_2
              //   230: invokevirtual 133	java/io/OutputStream:close	()V
              //   233: aload_1
              //   234: athrow
              //   235: astore_1
              //   236: bipush 6
              //   238: invokestatic 71	com/layer/sdk/internal/lsdkk/k:a	(I)Z
              //   241: ifeq -112 -> 129
              //   244: invokestatic 77	com/layer/sdk/internal/lsdkc/lsdka/b:wu	()Lcom/layer/sdk/internal/lsdkk/k$a;
              //   247: aload_1
              //   248: invokevirtual 140	java/io/IOException:getMessage	()Ljava/lang/String;
              //   251: aload_1
              //   252: invokestatic 144	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
              //   255: goto -126 -> 129
              //   258: astore_1
              //   259: bipush 6
              //   261: invokestatic 71	com/layer/sdk/internal/lsdkk/k:a	(I)Z
              //   264: ifeq -131 -> 133
              //   267: invokestatic 77	com/layer/sdk/internal/lsdkc/lsdka/b:wu	()Lcom/layer/sdk/internal/lsdkk/k$a;
              //   270: aload_1
              //   271: invokevirtual 140	java/io/IOException:getMessage	()Ljava/lang/String;
              //   274: aload_1
              //   275: invokestatic 144	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
              //   278: return
              //   279: astore_3
              //   280: bipush 6
              //   282: invokestatic 71	com/layer/sdk/internal/lsdkk/k:a	(I)Z
              //   285: ifeq -60 -> 225
              //   288: invokestatic 77	com/layer/sdk/internal/lsdkc/lsdka/b:wu	()Lcom/layer/sdk/internal/lsdkk/k$a;
              //   291: aload_3
              //   292: invokevirtual 140	java/io/IOException:getMessage	()Ljava/lang/String;
              //   295: aload_3
              //   296: invokestatic 144	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
              //   299: goto -74 -> 225
              //   302: astore_2
              //   303: bipush 6
              //   305: invokestatic 71	com/layer/sdk/internal/lsdkk/k:a	(I)Z
              //   308: ifeq -75 -> 233
              //   311: invokestatic 77	com/layer/sdk/internal/lsdkc/lsdka/b:wu	()Lcom/layer/sdk/internal/lsdkk/k$a;
              //   314: aload_2
              //   315: invokevirtual 140	java/io/IOException:getMessage	()Ljava/lang/String;
              //   318: aload_2
              //   319: invokestatic 144	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
              //   322: goto -89 -> 233
              //   325: astore_1
              //   326: aconst_null
              //   327: astore_2
              //   328: aconst_null
              //   329: astore_3
              //   330: goto -113 -> 217
              //   333: astore_2
              //   334: aconst_null
              //   335: astore 4
              //   337: aload_1
              //   338: astore_3
              //   339: aload_2
              //   340: astore_1
              //   341: aload 4
              //   343: astore_2
              //   344: goto -127 -> 217
              // Local variable table:
              //   start	length	slot	name	signature
              //   0	347	0	this	3
              //   0	347	1	paramAnonymous2b	com.b.a.b
              //   45	185	2	locala	com.layer.sdk.internal.lsdki.lsdkc.a
              //   302	17	2	localIOException1	java.io.IOException
              //   327	1	2	localObject1	Object
              //   333	7	2	localObject2	Object
              //   343	1	2	localObject3	Object
              //   213	9	3	localb1	com.b.a.b
              //   279	17	3	localIOException2	java.io.IOException
              //   329	10	3	localb2	com.b.a.b
              //   210	5	4	localObject4	Object
              //   335	7	4	localObject5	Object
              // Exception table:
              //   from	to	target	type
              //   46	116	210	finally
              //   116	125	210	finally
              //   134	207	210	finally
              //   125	129	235	java/io/IOException
              //   129	133	258	java/io/IOException
              //   221	225	279	java/io/IOException
              //   229	233	302	java/io/IOException
              //   0	10	325	finally
              //   10	46	333	finally
            }
          });
          return;
        }
      }
    });
    if (parama != null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.d(a, "Exception", parama);
      }
      throw parama;
    }
    return localb;
  }
  
  public static class a
  {
    private final com.layer.sdk.internal.lsdkd.h a;
    private final File b;
    private final com.layer.b.d.k c;
    private final com.layer.sdk.internal.lsdkc.d d;
    private final UUID e;
    private final int f;
    private final int g;
    
    public a(com.layer.sdk.internal.lsdkd.h paramh, File paramFile, com.layer.b.d.k paramk, com.layer.sdk.internal.lsdkc.d paramd, UUID paramUUID, int paramInt1, int paramInt2)
    {
      this.a = paramh;
      this.b = paramFile;
      this.c = paramk;
      this.d = paramd;
      this.e = paramUUID;
      this.f = paramInt1;
      this.g = paramInt2;
    }
    
    public File a()
    {
      return this.b;
    }
    
    public com.layer.b.d.k b()
    {
      return this.c;
    }
    
    public com.layer.sdk.internal.lsdkc.d c()
    {
      return this.d;
    }
    
    public UUID d()
    {
      return this.e;
    }
    
    public int e()
    {
      return this.f;
    }
    
    public int f()
    {
      return this.g;
    }
    
    public com.layer.sdk.internal.lsdkd.h g()
    {
      return this.a;
    }
  }
  
  public static class b {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkc/lsdka/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */