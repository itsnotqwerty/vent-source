package okhttp3;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.c.g;
import okhttp3.internal.c.j;

public final class v
  implements e
{
  final j cZk;
  private n cZl;
  final w cZm;
  final t cgQ;
  private boolean executed;
  final boolean forWebSocket;
  
  private v(t paramt, w paramw, boolean paramBoolean)
  {
    this.cgQ = paramt;
    this.cZm = paramw;
    this.forWebSocket = paramBoolean;
    this.cZk = new j(paramt, paramBoolean);
  }
  
  public static v a(t paramt, w paramw, boolean paramBoolean)
  {
    paramw = new v(paramt, paramw, paramBoolean);
    paramw.cZl = paramt.cYZ.Mz();
    return paramw;
  }
  
  final y ME()
    throws IOException
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(this.cgQ.interceptors);
    localArrayList.add(this.cZk);
    localArrayList.add(new okhttp3.internal.c.a(this.cgQ.cZa));
    Object localObject = this.cgQ;
    if (((t)localObject).cZb != null) {}
    for (localObject = ((t)localObject).cZb.cWc;; localObject = ((t)localObject).cWc)
    {
      localArrayList.add(new okhttp3.internal.a.a((okhttp3.internal.a.f)localObject));
      localArrayList.add(new okhttp3.internal.b.a(this.cgQ));
      if (!this.forWebSocket) {
        localArrayList.addAll(this.cgQ.networkInterceptors);
      }
      localArrayList.add(new okhttp3.internal.c.b(this.forWebSocket));
      return new g(localArrayList, null, null, null, 0, this.cZm, this, this.cZl, this.cgQ.connectTimeout, this.cgQ.readTimeout, this.cgQ.writeTimeout).c(this.cZm);
    }
  }
  
  public final y Ma()
    throws IOException
  {
    try
    {
      if (this.executed) {
        throw new IllegalStateException("Already Executed");
      }
    }
    finally {}
    this.executed = true;
    Object localObject2 = okhttp3.internal.g.f.Ng().getStackTraceForCloseable("response.body().close()");
    this.cZk.callStackTrace = localObject2;
    n.Mf();
    try
    {
      this.cgQ.cYY.a(this);
      localObject2 = ME();
      if (localObject2 == null) {
        throw new IOException("Canceled");
      }
    }
    catch (IOException localIOException)
    {
      n.My();
      throw localIOException;
    }
    finally
    {
      this.cgQ.cYY.b(this);
    }
    this.cgQ.cYY.b(this);
    return localy;
  }
  
  final class a
    extends okhttp3.internal.b
  {
    /* Error */
    protected final void execute()
    {
      // Byte code:
      //   0: iconst_1
      //   1: istore_1
      //   2: aload_0
      //   3: getfield 15	okhttp3/v$a:cZn	Lokhttp3/v;
      //   6: invokevirtual 19	okhttp3/v:ME	()Lokhttp3/y;
      //   9: pop
      //   10: aload_0
      //   11: getfield 15	okhttp3/v$a:cZn	Lokhttp3/v;
      //   14: getfield 23	okhttp3/v:cZk	Lokhttp3/internal/c/j;
      //   17: getfield 29	okhttp3/internal/c/j:canceled	Z
      //   20: istore_2
      //   21: iload_2
      //   22: ifeq +13 -> 35
      //   25: new 13	java/io/IOException
      //   28: dup
      //   29: ldc 31
      //   31: invokespecial 35	java/io/IOException:<init>	(Ljava/lang/String;)V
      //   34: pop
      //   35: aload_0
      //   36: getfield 15	okhttp3/v$a:cZn	Lokhttp3/v;
      //   39: getfield 39	okhttp3/v:cgQ	Lokhttp3/t;
      //   42: getfield 45	okhttp3/t:cYY	Lokhttp3/l;
      //   45: aload_0
      //   46: invokevirtual 50	okhttp3/l:a	(Lokhttp3/v$a;)V
      //   49: return
      //   50: astore_3
      //   51: iconst_0
      //   52: istore_1
      //   53: iload_1
      //   54: ifeq +184 -> 238
      //   57: invokestatic 56	okhttp3/internal/g/f:Ng	()Lokhttp3/internal/g/f;
      //   60: astore 5
      //   62: new 58	java/lang/StringBuilder
      //   65: dup
      //   66: ldc 60
      //   68: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   71: astore 6
      //   73: aload_0
      //   74: getfield 15	okhttp3/v$a:cZn	Lokhttp3/v;
      //   77: astore 7
      //   79: new 58	java/lang/StringBuilder
      //   82: dup
      //   83: invokespecial 63	java/lang/StringBuilder:<init>	()V
      //   86: astore 8
      //   88: aload 7
      //   90: getfield 23	okhttp3/v:cZk	Lokhttp3/internal/c/j;
      //   93: getfield 29	okhttp3/internal/c/j:canceled	Z
      //   96: ifeq +135 -> 231
      //   99: ldc 65
      //   101: astore 4
      //   103: aload 8
      //   105: aload 4
      //   107: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   110: astore 8
      //   112: aload 7
      //   114: getfield 72	okhttp3/v:forWebSocket	Z
      //   117: ifeq +148 -> 265
      //   120: ldc 74
      //   122: astore 4
      //   124: aload 8
      //   126: aload 4
      //   128: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   131: ldc 76
      //   133: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   136: astore 4
      //   138: aload 7
      //   140: getfield 80	okhttp3/v:cZm	Lokhttp3/w;
      //   143: getfield 86	okhttp3/w:cVX	Lokhttp3/q;
      //   146: ldc 88
      //   148: invokevirtual 94	okhttp3/q:ft	(Ljava/lang/String;)Lokhttp3/q$a;
      //   151: astore 7
      //   153: aload 7
      //   155: ldc 96
      //   157: ldc 98
      //   159: iconst_0
      //   160: iconst_0
      //   161: iconst_0
      //   162: iconst_1
      //   163: invokestatic 102	okhttp3/q:canonicalize	(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
      //   166: putfield 108	okhttp3/q$a:encodedUsername	Ljava/lang/String;
      //   169: aload 7
      //   171: ldc 96
      //   173: ldc 98
      //   175: iconst_0
      //   176: iconst_0
      //   177: iconst_0
      //   178: iconst_1
      //   179: invokestatic 102	okhttp3/q:canonicalize	(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
      //   182: putfield 111	okhttp3/q$a:encodedPassword	Ljava/lang/String;
      //   185: aload 5
      //   187: iconst_4
      //   188: aload 6
      //   190: aload 4
      //   192: aload 7
      //   194: invokevirtual 115	okhttp3/q$a:MC	()Lokhttp3/q;
      //   197: invokevirtual 119	okhttp3/q:toString	()Ljava/lang/String;
      //   200: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   203: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   206: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   209: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   212: aload_3
      //   213: invokevirtual 124	okhttp3/internal/g/f:log	(ILjava/lang/String;Ljava/lang/Throwable;)V
      //   216: aload_0
      //   217: getfield 15	okhttp3/v$a:cZn	Lokhttp3/v;
      //   220: getfield 39	okhttp3/v:cgQ	Lokhttp3/t;
      //   223: getfield 45	okhttp3/t:cYY	Lokhttp3/l;
      //   226: aload_0
      //   227: invokevirtual 50	okhttp3/l:a	(Lokhttp3/v$a;)V
      //   230: return
      //   231: ldc 96
      //   233: astore 4
      //   235: goto -132 -> 103
      //   238: invokestatic 129	okhttp3/n:My	()V
      //   241: goto -25 -> 216
      //   244: astore_3
      //   245: aload_0
      //   246: getfield 15	okhttp3/v$a:cZn	Lokhttp3/v;
      //   249: getfield 39	okhttp3/v:cgQ	Lokhttp3/t;
      //   252: getfield 45	okhttp3/t:cYY	Lokhttp3/l;
      //   255: aload_0
      //   256: invokevirtual 50	okhttp3/l:a	(Lokhttp3/v$a;)V
      //   259: aload_3
      //   260: athrow
      //   261: astore_3
      //   262: goto -209 -> 53
      //   265: ldc -125
      //   267: astore 4
      //   269: goto -145 -> 124
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	272	0	this	a
      //   1	53	1	i	int
      //   20	2	2	bool	boolean
      //   50	163	3	localIOException1	IOException
      //   244	16	3	localObject1	Object
      //   261	1	3	localIOException2	IOException
      //   101	167	4	localObject2	Object
      //   60	126	5	localf	okhttp3.internal.g.f
      //   71	118	6	localStringBuilder1	StringBuilder
      //   77	116	7	localObject3	Object
      //   86	39	8	localStringBuilder2	StringBuilder
      // Exception table:
      //   from	to	target	type
      //   2	21	50	java/io/IOException
      //   2	21	244	finally
      //   25	35	244	finally
      //   57	99	244	finally
      //   103	120	244	finally
      //   124	216	244	finally
      //   238	241	244	finally
      //   25	35	261	java/io/IOException
    }
    
    final String host()
    {
      return this.cZn.cZm.cVX.host;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */