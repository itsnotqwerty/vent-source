package com.layer.sdk.internal.lsdke;

import android.content.Context;
import com.layer.b.a.a.a;
import com.layer.b.a.b;
import com.layer.b.a.d;
import com.layer.sdk.internal.lsdkk.a;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.n;
import java.security.PublicKey;

public class h
  implements b
{
  private final PublicKey[] a = e.a(new a());
  private final n b;
  
  public h(Context paramContext)
  {
    this.b = new n(paramContext);
  }
  
  /* Error */
  public void a(android.net.Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 31	com/layer/sdk/internal/lsdke/h:b	Lcom/layer/sdk/internal/lsdkk/n;
    //   6: astore_2
    //   7: aload_1
    //   8: ifnonnull +16 -> 24
    //   11: aconst_null
    //   12: astore_1
    //   13: aload_2
    //   14: ldc 35
    //   16: aload_1
    //   17: invokevirtual 38	com/layer/sdk/internal/lsdkk/n:a	(Ljava/lang/String;Ljava/lang/String;)Z
    //   20: pop
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: aload_1
    //   25: invokevirtual 44	android/net/Uri:toString	()Ljava/lang/String;
    //   28: astore_1
    //   29: goto -16 -> 13
    //   32: astore_1
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_1
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	h
    //   0	37	1	paramUri	android.net.Uri
    //   6	8	2	localn	n
    // Exception table:
    //   from	to	target	type
    //   2	7	32	finally
    //   13	21	32	finally
    //   24	29	32	finally
  }
  
  public void a(a.a parama)
  {
    try
    {
      this.b.a("session", parama);
      return;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  public void a(d paramd)
  {
    if (paramd == null) {}
    for (;;)
    {
      try
      {
        this.b.a("tls", null);
        return;
      }
      finally {}
      this.b.a("tls", paramd.c());
    }
  }
  
  public PublicKey[] a()
  {
    return this.a;
  }
  
  public a.a b()
  {
    try
    {
      a.a locala = (a.a)this.b.b("session");
      return locala;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public android.net.Uri c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 31	com/layer/sdk/internal/lsdke/h:b	Lcom/layer/sdk/internal/lsdkk/n;
    //   6: ldc 35
    //   8: invokevirtual 72	com/layer/sdk/internal/lsdkk/n:d	(Ljava/lang/String;)Ljava/lang/String;
    //   11: astore_2
    //   12: aload_2
    //   13: ifnonnull +9 -> 22
    //   16: aconst_null
    //   17: astore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_1
    //   21: areturn
    //   22: aload_2
    //   23: invokestatic 77	com/layer/sdk/internal/lsdkd/m:a	(Ljava/lang/String;)Landroid/net/Uri;
    //   26: astore_1
    //   27: goto -9 -> 18
    //   30: astore_1
    //   31: aload_2
    //   32: invokestatic 83	java/util/UUID:fromString	(Ljava/lang/String;)Ljava/util/UUID;
    //   35: iconst_1
    //   36: invokestatic 86	com/layer/sdk/internal/lsdkd/m:a	(Ljava/util/UUID;Z)Landroid/net/Uri;
    //   39: astore_1
    //   40: goto -22 -> 18
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	h
    //   17	10	1	localUri1	android.net.Uri
    //   30	1	1	localIllegalArgumentException	IllegalArgumentException
    //   39	1	1	localUri2	android.net.Uri
    //   43	4	1	localObject	Object
    //   11	21	2	str	String
    // Exception table:
    //   from	to	target	type
    //   22	27	30	java/lang/IllegalArgumentException
    //   2	12	43	finally
    //   22	27	43	finally
    //   31	40	43	finally
  }
  
  public d d()
  {
    for (;;)
    {
      try
      {
        if (k.d()) {
          k.c("TransportPersistence: Reading saved connection credentials");
        }
        localObject5 = this.b.d("tls");
        if (localObject5 == null)
        {
          localObject1 = null;
          return (d)localObject1;
        }
        Object localObject1 = new a();
        localObject3 = a();
        localObject4 = ((String)localObject5).split("[|]");
        if (localObject4.length < 3) {
          throw new IllegalArgumentException("Input string has " + localObject4.length + " instead 3 parts: " + (String)localObject5);
        }
      }
      finally {}
      Object localObject5 = b.f.fp(localObject4[0]).g();
      byte[] arrayOfByte = b.f.fp(localObject4[1]).g();
      Object localObject4 = b.f.fp(localObject4[2]).g();
      Object localObject3 = new d(localf, com.layer.b.a.e.a(localf, (byte[])localObject5, arrayOfByte), com.layer.b.a.e.a(localf, (byte[])localObject4), (PublicKey[])localObject3);
      Object localObject2 = localObject3;
      if (k.d())
      {
        k.c("TransportPersistence: Returning requested credentials");
        localObject2 = localObject3;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */