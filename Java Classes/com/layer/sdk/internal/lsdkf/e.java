package com.layer.sdk.internal.lsdkf;

import com.layer.a.c.a;
import com.layer.sdk.internal.lsdke.g;
import com.layer.sdk.internal.lsdkk.k.a;

public class e
  extends a<a, a>
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(e.class);
  private final com.layer.b.d.k c;
  private final g d;
  
  public e(com.layer.b.d.k paramk, g paramg, a parama)
  {
    super(parama);
    this.c = paramk;
    this.d = paramg;
  }
  
  /* Error */
  protected a a(a parama)
    throws java.lang.Exception
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 44	com/layer/sdk/internal/lsdkf/e$a:a	Ljava/lang/String;
    //   4: ifnull +10 -> 14
    //   7: aload_1
    //   8: getfield 48	com/layer/sdk/internal/lsdkf/e$a:bry	Ljava/lang/Boolean;
    //   11: ifnonnull +30 -> 41
    //   14: new 50	java/lang/IllegalArgumentException
    //   17: dup
    //   18: new 52	java/lang/StringBuilder
    //   21: dup
    //   22: ldc 54
    //   24: invokespecial 57	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   27: aload_1
    //   28: invokevirtual 63	java/lang/Object:toString	()Ljava/lang/String;
    //   31: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: invokespecial 69	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   40: athrow
    //   41: aload_1
    //   42: getfield 44	com/layer/sdk/internal/lsdkf/e$a:a	Ljava/lang/String;
    //   45: astore_2
    //   46: aload_1
    //   47: getfield 48	com/layer/sdk/internal/lsdkf/e$a:bry	Ljava/lang/Boolean;
    //   50: astore_3
    //   51: aload_2
    //   52: ifnull +7 -> 59
    //   55: aload_3
    //   56: ifnonnull +27 -> 83
    //   59: new 50	java/lang/IllegalArgumentException
    //   62: dup
    //   63: new 52	java/lang/StringBuilder
    //   66: dup
    //   67: ldc 71
    //   69: invokespecial 57	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   72: aload_2
    //   73: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokespecial 69	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   82: athrow
    //   83: aload_3
    //   84: invokevirtual 77	java/lang/Boolean:booleanValue	()Z
    //   87: ifeq +103 -> 190
    //   90: iconst_2
    //   91: invokestatic 80	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   94: ifeq +25 -> 119
    //   97: getstatic 24	com/layer/sdk/internal/lsdkf/e:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   100: new 52	java/lang/StringBuilder
    //   103: dup
    //   104: ldc 82
    //   106: invokespecial 57	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   109: aload_2
    //   110: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   116: invokestatic 85	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   119: aload_0
    //   120: getfield 32	com/layer/sdk/internal/lsdkf/e:c	Lcom/layer/b/d/k;
    //   123: astore 4
    //   125: new 87	com/layer/b/d/k$f
    //   128: dup
    //   129: aload 4
    //   131: invokespecial 90	com/layer/b/d/k$f:<init>	(Lcom/layer/b/d/k;)V
    //   134: iconst_2
    //   135: anewarray 92	java/lang/Integer
    //   138: dup
    //   139: iconst_0
    //   140: sipush 201
    //   143: invokestatic 96	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   146: aastore
    //   147: dup
    //   148: iconst_1
    //   149: sipush 200
    //   152: invokestatic 96	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   155: aastore
    //   156: invokevirtual 99	com/layer/b/d/k$f:a	([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;
    //   159: new 101	com/layer/b/d/k$5
    //   162: dup
    //   163: aload 4
    //   165: aload_2
    //   166: invokespecial 104	com/layer/b/d/k$5:<init>	(Lcom/layer/b/d/k;Ljava/lang/String;)V
    //   169: invokevirtual 107	com/layer/b/d/k$f:a	(Lcom/layer/b/d/k$e;)Ljava/lang/Object;
    //   172: pop
    //   173: aload_3
    //   174: invokevirtual 77	java/lang/Boolean:booleanValue	()Z
    //   177: ifeq +194 -> 371
    //   180: aload_0
    //   181: getfield 34	com/layer/sdk/internal/lsdkf/e:d	Lcom/layer/sdk/internal/lsdke/g;
    //   184: aload_2
    //   185: invokevirtual 111	com/layer/sdk/internal/lsdke/g:c	(Ljava/lang/String;)V
    //   188: aload_1
    //   189: areturn
    //   190: iconst_2
    //   191: invokestatic 80	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   194: ifeq +25 -> 219
    //   197: getstatic 24	com/layer/sdk/internal/lsdkf/e:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   200: new 52	java/lang/StringBuilder
    //   203: dup
    //   204: ldc 113
    //   206: invokespecial 57	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   209: aload_2
    //   210: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   216: invokestatic 85	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   219: aload_0
    //   220: getfield 32	com/layer/sdk/internal/lsdkf/e:c	Lcom/layer/b/d/k;
    //   223: astore 4
    //   225: new 87	com/layer/b/d/k$f
    //   228: dup
    //   229: aload 4
    //   231: invokespecial 90	com/layer/b/d/k$f:<init>	(Lcom/layer/b/d/k;)V
    //   234: iconst_2
    //   235: anewarray 92	java/lang/Integer
    //   238: dup
    //   239: iconst_0
    //   240: sipush 201
    //   243: invokestatic 96	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   246: aastore
    //   247: dup
    //   248: iconst_1
    //   249: sipush 200
    //   252: invokestatic 96	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   255: aastore
    //   256: invokevirtual 99	com/layer/b/d/k$f:a	([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;
    //   259: new 115	com/layer/b/d/k$6
    //   262: dup
    //   263: aload 4
    //   265: aload_2
    //   266: invokespecial 116	com/layer/b/d/k$6:<init>	(Lcom/layer/b/d/k;Ljava/lang/String;)V
    //   269: invokevirtual 107	com/layer/b/d/k$f:a	(Lcom/layer/b/d/k$e;)Ljava/lang/Object;
    //   272: pop
    //   273: goto -100 -> 173
    //   276: astore 4
    //   278: getstatic 120	com/layer/sdk/internal/lsdkf/e$1:bqe	[I
    //   281: aload 4
    //   283: getfield 124	com/layer/b/d/m:bvU	Lcom/layer/b/d/f;
    //   286: invokevirtual 130	com/layer/b/d/f:ordinal	()I
    //   289: iaload
    //   290: tableswitch	default:+34->324, 1:+37->327, 2:+37->327, 3:+37->327, 4:+37->327, 5:+59->349
    //   324: goto -151 -> 173
    //   327: aload_0
    //   328: new 132	com/layer/a/c/e
    //   331: dup
    //   332: aload_0
    //   333: aload_2
    //   334: aload 4
    //   336: invokevirtual 135	com/layer/b/d/m:getMessage	()Ljava/lang/String;
    //   339: aload 4
    //   341: invokespecial 138	com/layer/a/c/e:<init>	(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   344: invokevirtual 141	com/layer/sdk/internal/lsdkf/e:a	(Lcom/layer/a/c/e;)V
    //   347: aconst_null
    //   348: areturn
    //   349: aload_0
    //   350: new 132	com/layer/a/c/e
    //   353: dup
    //   354: aload_0
    //   355: aload_2
    //   356: aload 4
    //   358: invokevirtual 135	com/layer/b/d/m:getMessage	()Ljava/lang/String;
    //   361: aload 4
    //   363: invokespecial 138	com/layer/a/c/e:<init>	(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   366: invokevirtual 141	com/layer/sdk/internal/lsdkf/e:a	(Lcom/layer/a/c/e;)V
    //   369: aconst_null
    //   370: areturn
    //   371: aload_0
    //   372: getfield 34	com/layer/sdk/internal/lsdkf/e:d	Lcom/layer/sdk/internal/lsdke/g;
    //   375: aload_2
    //   376: invokevirtual 144	com/layer/sdk/internal/lsdke/g:d	(Ljava/lang/String;)Ljava/lang/Boolean;
    //   379: pop
    //   380: aload_1
    //   381: areturn
    //   382: astore_1
    //   383: aload_0
    //   384: new 132	com/layer/a/c/e
    //   387: dup
    //   388: aload_0
    //   389: aload_2
    //   390: aload_1
    //   391: invokevirtual 145	com/layer/sdk/exceptions/LayerException:getMessage	()Ljava/lang/String;
    //   394: aload_1
    //   395: invokespecial 138	com/layer/a/c/e:<init>	(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   398: invokevirtual 141	com/layer/sdk/internal/lsdkf/e:a	(Lcom/layer/a/c/e;)V
    //   401: aconst_null
    //   402: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	403	0	this	e
    //   0	403	1	parama	a
    //   45	345	2	str	String
    //   50	124	3	localBoolean	Boolean
    //   123	141	4	localk	com.layer.b.d.k
    //   276	86	4	localm	com.layer.b.d.m
    // Exception table:
    //   from	to	target	type
    //   83	119	276	com/layer/b/d/m
    //   119	173	276	com/layer/b/d/m
    //   190	219	276	com/layer/b/d/m
    //   219	273	276	com/layer/b/d/m
    //   173	188	382	com/layer/sdk/exceptions/LayerException
    //   371	380	382	com/layer/sdk/exceptions/LayerException
  }
  
  static final class a
  {
    public String a;
    public Boolean bry;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkf/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */