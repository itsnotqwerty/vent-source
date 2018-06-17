package com.layer.sdk.internal;

import android.content.Context;
import android.net.Uri;
import com.layer.sdk.internal.lsdkc.a.a;
import com.layer.sdk.internal.lsdkc.d;
import com.layer.sdk.internal.lsdkd.f;
import com.layer.sdk.internal.lsdkd.f.b;
import com.layer.sdk.internal.lsdkd.i;
import com.layer.sdk.internal.lsdkd.j;
import com.layer.sdk.internal.lsdkd.m;
import com.layer.sdk.internal.lsdke.g;
import com.layer.sdk.internal.lsdkf.c.a;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.internal.lsdkk.o;
import com.layer.sdk.internal.telemetry.TelemetryManager;
import com.layer.sdk.internal.telemetry.TelemetryManager.Measurement;
import java.io.File;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

public class b
  implements com.layer.sdk.internal.lsdkd.h
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(b.class);
  private final String b;
  private final UUID c;
  private final UUID d;
  private final String e;
  private final boolean f;
  private final i g;
  private final com.layer.b.d.k h;
  private final File i;
  private a j = a.a;
  private final com.layer.sdk.internal.lsdki.a k;
  private final g l;
  private final j m;
  private final com.layer.sdk.internal.lsdkf.c n;
  private final com.layer.sdk.internal.lsdkc.a o;
  private final Context p;
  
  public b(Context paramContext, f.b paramb, c.a parama, i parami, a.a parama1, o paramo, boolean paramBoolean1, boolean paramBoolean2, UUID paramUUID1, UUID paramUUID2, String paramString, com.layer.b.d.k paramk, d paramd, com.layer.sdk.internal.lsdkc.c paramc)
  {
    if (paramUUID1 == null) {
      throw new IllegalStateException("Null app ID");
    }
    if (paramUUID2 == null) {
      throw new IllegalStateException("Null Layer user ID");
    }
    if (paramString == null) {
      throw new IllegalStateException("Null user ID");
    }
    this.c = paramUUID1;
    this.d = paramUUID2;
    this.e = paramString;
    this.b = (paramUUID1 + "." + paramUUID2);
    this.f = paramBoolean1;
    this.h = paramk;
    this.p = paramContext;
    paramUUID1 = c();
    this.k = a();
    this.l = new g(paramContext, paramUUID1, paramBoolean2, paramUUID2, paramString);
    if (this.l.i()) {}
    for (this.j = a.c;; this.j = a.b)
    {
      this.g = parami;
      this.m = new j(this);
      this.n = b();
      this.i = com.layer.sdk.internal.lsdkc.e.a(paramContext, this.c, this.d);
      if ((!this.i.exists()) && (!this.i.mkdirs()) && (com.layer.sdk.internal.lsdkk.k.a(6))) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Could not create content directory");
      }
      this.o = new com.layer.sdk.internal.lsdkc.a(paramc, this.l, this.h, paramd, this.i, parama1, this.g, this, paramo);
      this.o.b();
      m().a(paramb);
      f().a(parama);
      long l3 = com.layer.sdk.internal.lsdkk.h.b(this.i);
      long l2 = 0L;
      paramContext = paramContext.getDatabasePath(paramUUID1);
      long l1 = l2;
      if (paramContext.exists())
      {
        l1 = l2;
        if (paramContext.isFile()) {
          l1 = 0L + paramContext.length();
        }
      }
      TelemetryManager.record(TelemetryManager.Measurement.STORAGE_USED_BY_SDK, l1 + l3);
      return;
    }
  }
  
  private void a(String paramString)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(a, "LayerSession::deleteLocalDatabase:Enter");
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(a, "Attempting to delete the local database file(s)");
    }
    Object localObject1 = this.p.getDatabasePath("layer.pathtest.db").getParentFile();
    if (localObject1 == null) {}
    do
    {
      return;
      localObject1 = ((File)localObject1).listFiles();
    } while ((localObject1 == null) || (localObject1.length == 0));
    int i3 = 1;
    int i5 = localObject1.length;
    int i2 = 0;
    label78:
    Object localObject2;
    int i1;
    if (i2 < i5)
    {
      localObject2 = localObject1[i2];
      i1 = i3;
      if (((File)localObject2).exists())
      {
        i1 = i3;
        if (!((File)localObject2).isDirectory())
        {
          i1 = i3;
          if (((File)localObject2).getName().startsWith(paramString))
          {
            i1 = 100;
            for (;;)
            {
              int i4 = i1 - 1;
              if ((i1 <= 0) || (!((File)localObject2).exists()) || (((File)localObject2).delete())) {
                break;
              }
              try
              {
                TimeUnit.MILLISECONDS.sleep(50L);
                i1 = i4;
              }
              catch (InterruptedException localInterruptedException)
              {
                if (com.layer.sdk.internal.lsdkk.k.a(6)) {
                  com.layer.sdk.internal.lsdkk.k.d(a, "Sleep interrupted ", localInterruptedException);
                }
                i1 = i4;
              }
            }
            if (!((File)localObject2).exists()) {
              break label252;
            }
            if (!com.layer.sdk.internal.lsdkk.k.a(6)) {
              break label335;
            }
            com.layer.sdk.internal.lsdkk.k.e(a, "Failed to delete file: " + ((File)localObject2).getName());
            i1 = 0;
          }
        }
      }
    }
    for (;;)
    {
      i2 += 1;
      i3 = i1;
      break label78;
      label252:
      i1 = i3;
      if (com.layer.sdk.internal.lsdkk.k.a(2))
      {
        com.layer.sdk.internal.lsdkk.k.a(a, "Deleted file: " + ((File)localObject2).getName());
        i1 = i3;
        continue;
        if (i3 != 0)
        {
          if (!com.layer.sdk.internal.lsdkk.k.a(2)) {
            break;
          }
          com.layer.sdk.internal.lsdkk.k.a(a, "Removed local database file(s)");
          return;
        }
        if (!com.layer.sdk.internal.lsdkk.k.a(6)) {
          break;
        }
        com.layer.sdk.internal.lsdkk.k.e(a, "Failed to delete local database file(s)");
        return;
        label335:
        i1 = 0;
      }
    }
  }
  
  private void q()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(a, "Attempting to delete all content");
    }
    if (com.layer.sdk.internal.lsdkk.h.a(this.i)) {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "Deleted all content");
      }
    }
    while (!com.layer.sdk.internal.lsdkk.k.a(6)) {
      return;
    }
    com.layer.sdk.internal.lsdkk.k.e(a, "Could not delete content");
  }
  
  protected com.layer.sdk.internal.lsdki.a a()
  {
    return new com.layer.sdk.internal.lsdki.a();
  }
  
  /* Error */
  public void a(com.layer.sdk.LayerClient.DeauthenticationAction paramDeauthenticationAction)
  {
    // Byte code:
    //   0: iconst_2
    //   1: invokestatic 148	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   4: ifeq +12 -> 16
    //   7: getstatic 47	com/layer/sdk/internal/b:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   10: ldc_w 286
    //   13: invokestatic 215	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   16: iconst_2
    //   17: invokestatic 148	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   20: ifeq +26 -> 46
    //   23: getstatic 47	com/layer/sdk/internal/b:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   26: new 75	java/lang/StringBuilder
    //   29: dup
    //   30: ldc_w 288
    //   33: invokespecial 262	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   36: aload_1
    //   37: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   40: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: invokestatic 215	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   46: aload_0
    //   47: invokevirtual 290	com/layer/sdk/internal/b:o	()V
    //   50: aload_0
    //   51: getfield 160	com/layer/sdk/internal/b:o	Lcom/layer/sdk/internal/lsdkc/a;
    //   54: invokevirtual 292	com/layer/sdk/internal/lsdkc/a:a	()V
    //   57: aload_0
    //   58: getfield 130	com/layer/sdk/internal/b:n	Lcom/layer/sdk/internal/lsdkf/c;
    //   61: invokevirtual 294	com/layer/sdk/internal/lsdkf/c:c	()V
    //   64: aload_0
    //   65: getfield 125	com/layer/sdk/internal/b:m	Lcom/layer/sdk/internal/lsdkd/j;
    //   68: invokevirtual 295	com/layer/sdk/internal/lsdkd/j:c	()V
    //   71: aload_0
    //   72: getfield 125	com/layer/sdk/internal/b:m	Lcom/layer/sdk/internal/lsdkd/j;
    //   75: invokevirtual 296	com/layer/sdk/internal/lsdkd/j:a	()V
    //   78: aload_0
    //   79: getfield 104	com/layer/sdk/internal/b:k	Lcom/layer/sdk/internal/lsdki/a;
    //   82: invokevirtual 297	com/layer/sdk/internal/lsdki/a:c	()V
    //   85: aload_0
    //   86: getfield 111	com/layer/sdk/internal/b:l	Lcom/layer/sdk/internal/lsdke/g;
    //   89: invokevirtual 300	com/layer/sdk/internal/lsdke/g:h	()Lcom/layer/sdk/internal/lsdke/g;
    //   92: pop
    //   93: aload_1
    //   94: getstatic 306	com/layer/sdk/LayerClient$DeauthenticationAction:CLEAR_LOCAL_DATA	Lcom/layer/sdk/LayerClient$DeauthenticationAction;
    //   97: if_acmpne +15 -> 112
    //   100: aload_0
    //   101: aload_0
    //   102: invokevirtual 99	com/layer/sdk/internal/b:c	()Ljava/lang/String;
    //   105: invokespecial 308	com/layer/sdk/internal/b:a	(Ljava/lang/String;)V
    //   108: aload_0
    //   109: invokespecial 310	com/layer/sdk/internal/b:q	()V
    //   112: iconst_2
    //   113: invokestatic 148	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   116: ifeq +12 -> 128
    //   119: getstatic 47	com/layer/sdk/internal/b:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   122: ldc_w 312
    //   125: invokestatic 215	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   128: iconst_2
    //   129: invokestatic 148	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   132: ifeq +12 -> 144
    //   135: getstatic 47	com/layer/sdk/internal/b:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   138: ldc_w 314
    //   141: invokestatic 215	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   144: return
    //   145: astore_1
    //   146: bipush 6
    //   148: invokestatic 148	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   151: ifeq -43 -> 108
    //   154: getstatic 47	com/layer/sdk/internal/b:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   157: ldc_w 316
    //   160: aload_1
    //   161: invokestatic 259	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   164: goto -56 -> 108
    //   167: astore_1
    //   168: bipush 6
    //   170: invokestatic 148	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   173: ifeq -61 -> 112
    //   176: getstatic 47	com/layer/sdk/internal/b:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   179: ldc_w 316
    //   182: aload_1
    //   183: invokestatic 259	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   186: goto -74 -> 112
    //   189: astore_2
    //   190: aload_1
    //   191: getstatic 306	com/layer/sdk/LayerClient$DeauthenticationAction:CLEAR_LOCAL_DATA	Lcom/layer/sdk/LayerClient$DeauthenticationAction;
    //   194: if_acmpne +15 -> 209
    //   197: aload_0
    //   198: aload_0
    //   199: invokevirtual 99	com/layer/sdk/internal/b:c	()Ljava/lang/String;
    //   202: invokespecial 308	com/layer/sdk/internal/b:a	(Ljava/lang/String;)V
    //   205: aload_0
    //   206: invokespecial 310	com/layer/sdk/internal/b:q	()V
    //   209: aload_2
    //   210: athrow
    //   211: astore_1
    //   212: bipush 6
    //   214: invokestatic 148	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   217: ifeq -12 -> 205
    //   220: getstatic 47	com/layer/sdk/internal/b:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   223: ldc_w 316
    //   226: aload_1
    //   227: invokestatic 259	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   230: goto -25 -> 205
    //   233: astore_1
    //   234: bipush 6
    //   236: invokestatic 148	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   239: ifeq -30 -> 209
    //   242: getstatic 47	com/layer/sdk/internal/b:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   245: ldc_w 316
    //   248: aload_1
    //   249: invokestatic 259	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   252: goto -43 -> 209
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	255	0	this	b
    //   0	255	1	paramDeauthenticationAction	com.layer.sdk.LayerClient.DeauthenticationAction
    //   189	21	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   100	108	145	java/lang/Exception
    //   108	112	167	java/lang/Exception
    //   46	93	189	finally
    //   197	205	211	java/lang/Exception
    //   205	209	233	java/lang/Exception
  }
  
  public void a(a parama)
  {
    this.j = parama;
  }
  
  public boolean a(UUID paramUUID1, UUID paramUUID2)
  {
    return (this.c.equals(paramUUID1)) && (this.d.equals(paramUUID2));
  }
  
  protected com.layer.sdk.internal.lsdkf.c b()
  {
    return new com.layer.sdk.internal.lsdkf.c(this);
  }
  
  public String c()
  {
    if (this.f) {
      return null;
    }
    return "layer." + this.b + ".db";
  }
  
  public UUID d()
  {
    return this.d;
  }
  
  public com.layer.sdk.internal.lsdki.a e()
  {
    return this.k;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b)) {
      return false;
    }
    paramObject = (b)paramObject;
    return this.b.equals(((b)paramObject).b);
  }
  
  public com.layer.sdk.internal.lsdkf.c f()
  {
    return this.n;
  }
  
  public com.layer.sdk.internal.lsdkc.a g()
  {
    return this.o;
  }
  
  public com.layer.b.d.k h()
  {
    return this.h;
  }
  
  public String i()
  {
    return this.e;
  }
  
  public com.layer.sdk.internal.lsdkd.lsdka.e j()
  {
    Uri localUri = m.c(this.e);
    return (com.layer.sdk.internal.lsdkd.lsdka.e)m().a(localUri, false);
  }
  
  public g k()
  {
    return this.l;
  }
  
  public com.layer.sdk.internal.lsdke.b l()
  {
    return this.l;
  }
  
  public f m()
  {
    return this.m;
  }
  
  public i n()
  {
    return this.g;
  }
  
  public void o()
  {
    this.k.a();
    this.n.b();
  }
  
  public a p()
  {
    return this.j;
  }
  
  public static enum a
  {
    private a() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */