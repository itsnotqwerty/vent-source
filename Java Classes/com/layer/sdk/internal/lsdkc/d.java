package com.layer.sdk.internal.lsdkc;

import com.b.a.aa.a;
import com.b.a.ab;
import com.b.a.ac;
import com.b.a.o;
import com.b.a.r;
import com.b.a.w;
import com.b.a.x;
import com.b.a.y;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.internal.lsdki.lsdkc.a;
import com.layer.sdk.internal.lsdki.lsdkc.a.a;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

public class d
{
  private static final k.a a = k.a(d.class);
  private final String b;
  private final x c;
  private final Object d = new Object();
  private volatile boolean e = false;
  
  public d(String paramString)
  {
    this.b = paramString;
    this.c = new x();
    this.c.a(30000L, TimeUnit.MILLISECONDS);
    this.c.b(30000L, TimeUnit.MILLISECONDS);
    this.c.a(TimeUnit.MILLISECONDS);
    this.c.Af();
    this.c.x(Arrays.asList(new y[] { y.bMk }));
    this.c.bMi = false;
    this.c.bLW.a(20);
    this.c.bLW.b(20);
  }
  
  /* Error */
  public long a(String paramString, long paramLong)
    throws java.lang.Exception
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 99	com/layer/sdk/internal/lsdkc/d:a	(Ljava/lang/String;)Lcom/b/a/aa$a;
    //   5: ldc 101
    //   7: ldc 103
    //   9: invokevirtual 109	com/b/a/aa$a:Q	(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;
    //   12: ldc 111
    //   14: new 113	java/lang/StringBuilder
    //   17: dup
    //   18: ldc 115
    //   20: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   23: lload_2
    //   24: invokevirtual 121	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   27: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   30: invokevirtual 109	com/b/a/aa$a:Q	(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;
    //   33: ldc 127
    //   35: aconst_null
    //   36: invokevirtual 130	com/b/a/aa$a:a	(Ljava/lang/String;Lcom/b/a/ab;)Lcom/b/a/aa$a;
    //   39: invokevirtual 134	com/b/a/aa$a:An	()Lcom/b/a/aa;
    //   42: astore_1
    //   43: aload_0
    //   44: getfield 43	com/layer/sdk/internal/lsdkc/d:c	Lcom/b/a/x;
    //   47: aload_1
    //   48: invokevirtual 137	com/b/a/x:e	(Lcom/b/a/aa;)Lcom/b/a/h;
    //   51: astore_1
    //   52: aload_1
    //   53: invokevirtual 143	com/b/a/h:xb	()Lcom/b/a/ac;
    //   56: astore 6
    //   58: aload_0
    //   59: aload 6
    //   61: iconst_3
    //   62: newarray <illegal type>
    //   64: dup
    //   65: iconst_0
    //   66: sipush 200
    //   69: iastore
    //   70: dup
    //   71: iconst_1
    //   72: sipush 206
    //   75: iastore
    //   76: dup
    //   77: iconst_2
    //   78: sipush 308
    //   81: iastore
    //   82: invokevirtual 146	com/layer/sdk/internal/lsdkc/d:a	(Lcom/b/a/ac;[I)V
    //   85: aload 6
    //   87: getfield 151	com/b/a/ac:c	I
    //   90: sipush 308
    //   93: if_icmpne +109 -> 202
    //   96: aload 6
    //   98: ldc -103
    //   100: invokevirtual 156	com/b/a/ac:a	(Ljava/lang/String;)Ljava/lang/String;
    //   103: astore 7
    //   105: aload 7
    //   107: ifnonnull +41 -> 148
    //   110: aload 6
    //   112: ifnull +19 -> 131
    //   115: aload 6
    //   117: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   120: ifnull +11 -> 131
    //   123: aload 6
    //   125: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   128: invokevirtual 165	com/b/a/b:close	()V
    //   131: aload_1
    //   132: getfield 167	com/b/a/h:a	Z
    //   135: ifne +7 -> 142
    //   138: aload_1
    //   139: invokevirtual 169	com/b/a/h:c	()V
    //   142: lconst_0
    //   143: lstore 4
    //   145: lload 4
    //   147: lreturn
    //   148: aload 7
    //   150: ldc -85
    //   152: invokevirtual 177	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   155: iconst_1
    //   156: aaload
    //   157: invokestatic 183	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   160: lstore_2
    //   161: lload_2
    //   162: lconst_1
    //   163: ladd
    //   164: lstore_2
    //   165: aload 6
    //   167: ifnull +19 -> 186
    //   170: aload 6
    //   172: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   175: ifnull +11 -> 186
    //   178: aload 6
    //   180: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   183: invokevirtual 165	com/b/a/b:close	()V
    //   186: lload_2
    //   187: lstore 4
    //   189: aload_1
    //   190: getfield 167	com/b/a/h:a	Z
    //   193: ifne -48 -> 145
    //   196: aload_1
    //   197: invokevirtual 169	com/b/a/h:c	()V
    //   200: lload_2
    //   201: lreturn
    //   202: aload 6
    //   204: ifnull +19 -> 223
    //   207: aload 6
    //   209: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   212: ifnull +11 -> 223
    //   215: aload 6
    //   217: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   220: invokevirtual 165	com/b/a/b:close	()V
    //   223: lload_2
    //   224: lstore 4
    //   226: aload_1
    //   227: getfield 167	com/b/a/h:a	Z
    //   230: ifne -85 -> 145
    //   233: aload_1
    //   234: invokevirtual 169	com/b/a/h:c	()V
    //   237: lload_2
    //   238: lreturn
    //   239: astore 7
    //   241: aload 6
    //   243: ifnull +19 -> 262
    //   246: aload 6
    //   248: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   251: ifnull +11 -> 262
    //   254: aload 6
    //   256: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   259: invokevirtual 165	com/b/a/b:close	()V
    //   262: aload 7
    //   264: athrow
    //   265: astore 6
    //   267: aload_1
    //   268: getfield 167	com/b/a/h:a	Z
    //   271: ifne +7 -> 278
    //   274: aload_1
    //   275: invokevirtual 169	com/b/a/h:c	()V
    //   278: aload 6
    //   280: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	281	0	this	d
    //   0	281	1	paramString	String
    //   0	281	2	paramLong	long
    //   143	82	4	l	long
    //   56	199	6	localac	ac
    //   265	14	6	localObject1	Object
    //   103	46	7	str	String
    //   239	24	7	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   58	105	239	finally
    //   148	161	239	finally
    //   52	58	265	finally
    //   115	131	265	finally
    //   170	186	265	finally
    //   207	223	265	finally
    //   246	262	265	finally
    //   262	265	265	finally
  }
  
  protected aa.a a(String paramString)
    throws IOException
  {
    aa.a locala = new aa.a().Q("User-Agent", a());
    locala.bMq = a;
    return locala.a(paramString);
  }
  
  protected String a()
  {
    return this.b;
  }
  
  protected void a(ac paramac, int[] paramArrayOfInt)
    throws IOException
  {
    int j = paramac.c;
    int k = paramArrayOfInt.length;
    int i = 0;
    while (i < k)
    {
      if (paramArrayOfInt[i] == j) {
        return;
      }
      i += 1;
    }
    paramac = paramac.d;
    switch (j)
    {
    case 402: 
    default: 
      throw new LayerException(LayerException.Type.UNKNOWN, "Server responded: " + paramac);
    case 401: 
    case 403: 
      throw new LayerException(LayerException.Type.UNAUTHORIZED, "Server responded: " + paramac);
    }
    throw new LayerException(LayerException.Type.CONTENT_NOT_FOUND, "Server responded: " + paramac);
  }
  
  /* Error */
  public void a(String paramString, long paramLong1, long paramLong2, a parama)
    throws java.lang.Exception
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 36	com/layer/sdk/internal/lsdkc/d:e	Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: aload_1
    //   10: invokevirtual 99	com/layer/sdk/internal/lsdkc/d:a	(Ljava/lang/String;)Lcom/b/a/aa$a;
    //   13: astore_1
    //   14: lload 4
    //   16: lconst_0
    //   17: lcmp
    //   18: ifle +38 -> 56
    //   21: aload_1
    //   22: ldc -103
    //   24: new 113	java/lang/StringBuilder
    //   27: dup
    //   28: ldc -34
    //   30: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   33: lload 4
    //   35: invokevirtual 121	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   38: ldc -85
    //   40: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: lload_2
    //   44: lconst_1
    //   45: lsub
    //   46: invokevirtual 121	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   49: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: invokevirtual 109	com/b/a/aa$a:Q	(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;
    //   55: pop
    //   56: aload_1
    //   57: ldc -32
    //   59: aconst_null
    //   60: invokevirtual 130	com/b/a/aa$a:a	(Ljava/lang/String;Lcom/b/a/ab;)Lcom/b/a/aa$a;
    //   63: invokevirtual 134	com/b/a/aa$a:An	()Lcom/b/a/aa;
    //   66: astore_1
    //   67: aload_0
    //   68: getfield 43	com/layer/sdk/internal/lsdkc/d:c	Lcom/b/a/x;
    //   71: aload_1
    //   72: invokevirtual 137	com/b/a/x:e	(Lcom/b/a/aa;)Lcom/b/a/h;
    //   75: astore_1
    //   76: aload_1
    //   77: invokevirtual 143	com/b/a/h:xb	()Lcom/b/a/ac;
    //   80: astore 7
    //   82: aload_0
    //   83: aload 7
    //   85: iconst_2
    //   86: newarray <illegal type>
    //   88: dup
    //   89: iconst_0
    //   90: sipush 200
    //   93: iastore
    //   94: dup
    //   95: iconst_1
    //   96: sipush 206
    //   99: iastore
    //   100: invokevirtual 146	com/layer/sdk/internal/lsdkc/d:a	(Lcom/b/a/ac;[I)V
    //   103: aload 6
    //   105: aload 7
    //   107: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   110: invokeinterface 227 2 0
    //   115: aload 7
    //   117: ifnull +19 -> 136
    //   120: aload 7
    //   122: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   125: ifnull +11 -> 136
    //   128: aload 7
    //   130: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   133: invokevirtual 165	com/b/a/b:close	()V
    //   136: aload_1
    //   137: getfield 167	com/b/a/h:a	Z
    //   140: ifne -133 -> 7
    //   143: aload_1
    //   144: invokevirtual 169	com/b/a/h:c	()V
    //   147: return
    //   148: astore 6
    //   150: aload 7
    //   152: ifnull +19 -> 171
    //   155: aload 7
    //   157: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   160: ifnull +11 -> 171
    //   163: aload 7
    //   165: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   168: invokevirtual 165	com/b/a/b:close	()V
    //   171: aload 6
    //   173: athrow
    //   174: astore 6
    //   176: aload_1
    //   177: getfield 167	com/b/a/h:a	Z
    //   180: ifne +7 -> 187
    //   183: aload_1
    //   184: invokevirtual 169	com/b/a/h:c	()V
    //   187: aload 6
    //   189: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	190	0	this	d
    //   0	190	1	paramString	String
    //   0	190	2	paramLong1	long
    //   0	190	4	paramLong2	long
    //   0	190	6	parama	a
    //   80	84	7	localac	ac
    // Exception table:
    //   from	to	target	type
    //   82	115	148	finally
    //   76	82	174	finally
    //   120	136	174	finally
    //   155	171	174	finally
    //   171	174	174	finally
  }
  
  /* Error */
  public void a(String paramString1, File paramFile, String paramString2, long paramLong, a.a parama)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 36	com/layer/sdk/internal/lsdkc/d:e	Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: aload_1
    //   10: invokevirtual 99	com/layer/sdk/internal/lsdkc/d:a	(Ljava/lang/String;)Lcom/b/a/aa$a;
    //   13: astore_1
    //   14: lload 4
    //   16: lconst_0
    //   17: lcmp
    //   18: ifle +53 -> 71
    //   21: aload_1
    //   22: ldc 111
    //   24: new 113	java/lang/StringBuilder
    //   27: dup
    //   28: ldc -26
    //   30: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   33: lload 4
    //   35: invokevirtual 121	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   38: ldc -85
    //   40: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: aload_2
    //   44: invokevirtual 236	java/io/File:length	()J
    //   47: lconst_1
    //   48: lsub
    //   49: invokevirtual 121	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   52: ldc -18
    //   54: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: aload_2
    //   58: invokevirtual 236	java/io/File:length	()J
    //   61: invokevirtual 121	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   64: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokevirtual 109	com/b/a/aa$a:Q	(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;
    //   70: pop
    //   71: aload_1
    //   72: ldc 127
    //   74: new 9	com/layer/sdk/internal/lsdkc/d$b
    //   77: dup
    //   78: aload_2
    //   79: aload_3
    //   80: lload 4
    //   82: aload 6
    //   84: invokespecial 241	com/layer/sdk/internal/lsdkc/d$b:<init>	(Ljava/io/File;Ljava/lang/String;JLcom/layer/sdk/internal/lsdki/lsdkc/a$a;)V
    //   87: invokevirtual 130	com/b/a/aa$a:a	(Ljava/lang/String;Lcom/b/a/ab;)Lcom/b/a/aa$a;
    //   90: invokevirtual 134	com/b/a/aa$a:An	()Lcom/b/a/aa;
    //   93: astore_1
    //   94: aload_0
    //   95: getfield 43	com/layer/sdk/internal/lsdkc/d:c	Lcom/b/a/x;
    //   98: aload_1
    //   99: invokevirtual 137	com/b/a/x:e	(Lcom/b/a/aa;)Lcom/b/a/h;
    //   102: astore_1
    //   103: aload_1
    //   104: invokevirtual 143	com/b/a/h:xb	()Lcom/b/a/ac;
    //   107: astore_2
    //   108: aload_0
    //   109: aload_2
    //   110: iconst_2
    //   111: newarray <illegal type>
    //   113: dup
    //   114: iconst_0
    //   115: sipush 200
    //   118: iastore
    //   119: dup
    //   120: iconst_1
    //   121: sipush 201
    //   124: iastore
    //   125: invokevirtual 146	com/layer/sdk/internal/lsdkc/d:a	(Lcom/b/a/ac;[I)V
    //   128: aload_2
    //   129: ifnull +17 -> 146
    //   132: aload_2
    //   133: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   136: ifnull +10 -> 146
    //   139: aload_2
    //   140: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   143: invokevirtual 165	com/b/a/b:close	()V
    //   146: aload_1
    //   147: getfield 167	com/b/a/h:a	Z
    //   150: ifne -143 -> 7
    //   153: aload_1
    //   154: invokevirtual 169	com/b/a/h:c	()V
    //   157: return
    //   158: astore_3
    //   159: aload_2
    //   160: ifnull +17 -> 177
    //   163: aload_2
    //   164: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   167: ifnull +10 -> 177
    //   170: aload_2
    //   171: getfield 160	com/b/a/ac:bMz	Lcom/b/a/b;
    //   174: invokevirtual 165	com/b/a/b:close	()V
    //   177: aload_3
    //   178: athrow
    //   179: astore_2
    //   180: aload_1
    //   181: getfield 167	com/b/a/h:a	Z
    //   184: ifne +7 -> 191
    //   187: aload_1
    //   188: invokevirtual 169	com/b/a/h:c	()V
    //   191: aload_2
    //   192: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	193	0	this	d
    //   0	193	1	paramString1	String
    //   0	193	2	paramFile	File
    //   0	193	3	paramString2	String
    //   0	193	4	paramLong	long
    //   0	193	6	parama	a.a
    // Exception table:
    //   from	to	target	type
    //   108	128	158	finally
    //   103	108	179	finally
    //   132	146	179	finally
    //   163	177	179	finally
    //   177	179	179	finally
  }
  
  public void b()
  {
    synchronized (this.d)
    {
      this.e = true;
      Object localObject2 = this.c;
      k.a locala = a;
      ((x)localObject2).bLW.a(locala);
      localObject2 = this.c.bMf;
      if (localObject2 != null) {
        ((o)localObject2).d();
      }
      return;
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(com.b.a.b paramb)
      throws IOException;
  }
  
  private static final class b
    extends ab
  {
    private final File bqw;
    private final w bqx;
    private final a.a bqy;
    private final long c;
    
    public b(File paramFile, String paramString, long paramLong, a.a parama)
    {
      this.bqw = paramFile;
      this.bqx = w.dK(paramString);
      this.c = paramLong;
      this.bqy = parama;
    }
    
    public final long a()
      throws IOException
    {
      return this.bqw.length() - this.c;
    }
    
    public final void a(b.d paramd)
      throws IOException
    {
      paramd = paramd.KV();
      try
      {
        localFileInputStream = new FileInputStream(this.bqw);
        long l1;
        long l2;
        if (localFileInputStream == null) {
          break label115;
        }
      }
      finally
      {
        try
        {
          if (this.c > 0L)
          {
            l1 = 0L;
            do
            {
              l2 = l1 + localFileInputStream.skip(this.c - l1);
              l1 = l2;
            } while (l2 < this.c);
          }
          com.layer.b.e.b.a(localFileInputStream, new a(paramd, this.bqw.length(), this.c, this.bqy), new byte[32768]);
          paramd.flush();
          localFileInputStream.close();
          return;
        }
        finally
        {
          FileInputStream localFileInputStream;
          for (;;) {}
        }
        paramd = finally;
        localFileInputStream = null;
      }
      localFileInputStream.close();
      label115:
      throw paramd;
    }
    
    public final w wt()
    {
      return this.bqx;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkc/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */