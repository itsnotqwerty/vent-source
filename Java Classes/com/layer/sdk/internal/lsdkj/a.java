package com.layer.sdk.internal.lsdkj;

import com.layer.a.c.b;
import com.layer.a.c.b.a;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;

public class a
  extends b<a, Void>
{
  private static final k.a a = k.a(a.class);
  
  public a(b.a parama, a parama1)
  {
    super(parama, parama1);
  }
  
  /* Error */
  protected Void a(a parama)
    throws java.lang.Exception
  {
    // Byte code:
    //   0: invokestatic 37	com/layer/sdk/internal/lsdkk/k:d	()Z
    //   3: ifeq +8 -> 11
    //   6: ldc 39
    //   8: invokestatic 43	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
    //   11: aload_1
    //   12: invokestatic 46	com/layer/sdk/internal/lsdkj/a$a:c	(Lcom/layer/sdk/internal/lsdkj/a$a;)Lcom/layer/b/a/a;
    //   15: astore_2
    //   16: aload_1
    //   17: invokestatic 50	com/layer/sdk/internal/lsdkj/a$a:b	(Lcom/layer/sdk/internal/lsdkj/a$a;)Ljava/lang/String;
    //   20: astore_1
    //   21: aload_2
    //   22: invokevirtual 55	com/layer/b/a/a:e	()V
    //   25: aload_2
    //   26: getfield 59	com/layer/b/a/a:i	Ljava/lang/Object;
    //   29: astore_3
    //   30: aload_3
    //   31: monitorenter
    //   32: aload_2
    //   33: aload_1
    //   34: invokestatic 65	com/layer/b/a/g:dy	(Ljava/lang/String;)Lcom/layer/b/a/g;
    //   37: putfield 69	com/layer/b/a/a:bug	Lcom/layer/b/a/g;
    //   40: aload_2
    //   41: aload_1
    //   42: putfield 73	com/layer/b/a/a:j	Ljava/lang/String;
    //   45: aload_3
    //   46: monitorexit
    //   47: invokestatic 37	com/layer/sdk/internal/lsdkk/k:d	()Z
    //   50: ifeq +8 -> 58
    //   53: ldc 75
    //   55: invokestatic 43	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
    //   58: aconst_null
    //   59: areturn
    //   60: astore_2
    //   61: aload_3
    //   62: monitorexit
    //   63: aload_2
    //   64: athrow
    //   65: astore_2
    //   66: bipush 6
    //   68: invokestatic 80	com/layer/b/e/a:a	(I)Z
    //   71: ifeq +11 -> 82
    //   74: aload_2
    //   75: invokevirtual 84	java/io/UnsupportedEncodingException:getMessage	()Ljava/lang/String;
    //   78: aload_2
    //   79: invokestatic 88	com/layer/b/e/a:g	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   82: new 90	java/lang/IllegalArgumentException
    //   85: dup
    //   86: new 92	java/lang/StringBuilder
    //   89: dup
    //   90: ldc 94
    //   92: invokespecial 96	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   95: aload_1
    //   96: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: invokespecial 104	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   105: athrow
    //   106: astore_1
    //   107: bipush 6
    //   109: invokestatic 105	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   112: ifeq +12 -> 124
    //   115: getstatic 18	com/layer/sdk/internal/lsdkj/a:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   118: ldc 107
    //   120: aload_1
    //   121: invokestatic 110	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   124: new 112	com/layer/sdk/exceptions/LayerException
    //   127: dup
    //   128: getstatic 118	com/layer/sdk/exceptions/LayerException$Type:UNKNOWN	Lcom/layer/sdk/exceptions/LayerException$Type;
    //   131: ldc 107
    //   133: invokespecial 121	com/layer/sdk/exceptions/LayerException:<init>	(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V
    //   136: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	137	0	this	a
    //   0	137	1	parama	a
    //   15	26	2	locala	com.layer.b.a.a
    //   60	4	2	localObject1	Object
    //   65	14	2	localUnsupportedEncodingException	java.io.UnsupportedEncodingException
    // Exception table:
    //   from	to	target	type
    //   32	47	60	finally
    //   61	63	60	finally
    //   21	32	65	java/io/UnsupportedEncodingException
    //   63	65	65	java/io/UnsupportedEncodingException
    //   0	11	106	java/lang/Exception
    //   11	21	106	java/lang/Exception
    //   21	32	106	java/lang/Exception
    //   47	58	106	java/lang/Exception
    //   63	65	106	java/lang/Exception
    //   66	82	106	java/lang/Exception
    //   82	106	106	java/lang/Exception
  }
  
  public static class a
  {
    private final com.layer.b.a.a a;
    private final String b;
    
    public a(com.layer.b.a.a parama, String paramString)
    {
      this.a = parama;
      this.b = paramString;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkj/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */