package com.layer.sdk.internal.lsdkc;

import android.net.Uri;
import com.layer.a.c.c.b;
import com.layer.sdk.changes.LayerChange;
import com.layer.sdk.changes.LayerChange.Type;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.exceptions.LayerObjectException;
import com.layer.sdk.internal.lsdkc.lsdka.c.a;
import com.layer.sdk.internal.lsdkd.f.b;
import com.layer.sdk.internal.lsdkd.h;
import com.layer.sdk.internal.lsdkd.l;
import com.layer.sdk.internal.lsdkd.l.a;
import com.layer.sdk.internal.lsdkd.lsdka.j;
import com.layer.sdk.internal.lsdkk.o;
import com.layer.sdk.listeners.LayerProgressListener;
import com.layer.sdk.listeners.LayerProgressListener.Operation;
import com.layer.sdk.messaging.Conversation;
import com.layer.sdk.messaging.LayerObject.Type;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.MessagePart;
import com.layer.sdk.messaging.MessagePart.TransferStatus;
import java.io.File;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class a
  implements com.layer.sdk.internal.lsdkc.lsdka.a.a, f.b
{
  private static final com.layer.sdk.internal.lsdkk.k.a a = com.layer.sdk.internal.lsdkk.k.a(a.class);
  private final b b;
  private final com.layer.b.d.k c;
  private final d d;
  private final a e;
  private final File f;
  private final ConcurrentHashMap<Uri, com.layer.sdk.internal.lsdkc.lsdka.a> g = new ConcurrentHashMap();
  private final com.layer.a.a.b.a h = new com.layer.a.a.b.a();
  private final com.layer.a.a.b.a i = new com.layer.a.a.b.a();
  private final b j;
  private final com.layer.sdk.internal.lsdka.c k;
  private final h l;
  private final f m;
  private final Object n = new Object();
  private volatile boolean o = false;
  
  public a(f paramf, b paramb, com.layer.b.d.k paramk, d paramd, File paramFile, a parama, com.layer.sdk.internal.lsdka.c paramc, h paramh, o paramo)
  {
    this.m = paramf;
    this.b = paramb;
    this.c = paramk;
    this.d = paramd;
    this.f = paramFile;
    this.e = parama;
    this.j = new b(paramo);
    this.k = paramc;
    this.l = paramh;
    if (this.l == null) {
      throw new IllegalArgumentException("Null ChangeableContext");
    }
    if (this.l.m() != null) {
      this.l.m().a(this);
    }
  }
  
  private com.layer.sdk.internal.lsdkc.lsdka.a a(Uri paramUri)
  {
    return (com.layer.sdk.internal.lsdkc.lsdka.a)this.g.get(paramUri);
  }
  
  private com.layer.sdk.internal.lsdkc.lsdka.a a(com.layer.sdk.internal.lsdkc.lsdka.a parama)
  {
    com.layer.sdk.internal.lsdkc.lsdka.a locala = (com.layer.sdk.internal.lsdkc.lsdka.a)this.g.putIfAbsent(parama.a().getId(), parama);
    if (locala == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "New ContentTask queued: " + parama);
      }
      parama.f();
      this.e.p().execute(parama);
      return parama;
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(a, "Existing ContentTask already queued: " + locala);
    }
    return locala;
  }
  
  private void a(Uri paramUri, File paramFile, boolean paramBoolean, com.layer.sdk.internal.lsdkd.k.a parama)
  {
    if (paramFile != null) {
      paramFile.delete();
    }
    if ((paramBoolean) && (this.l != null && (this.l.m() != null && (!l.a(this.l.m(), paramUri, parama, new l.a()
    {
      public final void a(com.layer.sdk.internal.lsdkd.d paramAnonymousd, Throwable paramAnonymousThrowable)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(a.ws(), "Failed to perform transactedCacheUpdate in delete. Changeable: " + paramAnonymousd, paramAnonymousThrowable);
        }
        a.a(a.this).n().a(new LayerObjectException(LayerException.Type.FAILED_CONTENT_OPERATION, paramAnonymousd, paramAnonymousThrowable.getMessage(), paramAnonymousThrowable));
      }
      
      public final boolean a(com.layer.sdk.internal.lsdkd.d paramAnonymousd)
      {
        paramAnonymousd = (j)paramAnonymousd;
        paramAnonymousd.a(Boolean.valueOf(true));
        paramAnonymousd.b(MessagePart.TransferStatus.READY_FOR_DOWNLOAD);
        paramAnonymousd.b(null);
        return true;
      }
    })) && (com.layer.sdk.internal.lsdkk.k.a(6))) {
      com.layer.sdk.internal.lsdkk.k.e(a, "Failed to perform transactedCacheUpdate in delete");
    }
  }
  
  private void a(j paramj, final MessagePart.TransferStatus paramTransferStatus)
  {
    if ((this.l == null) || (this.l.m() == null))
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "Not setting message part's transfer status due to null context or cache");
      }
      return;
    }
    final Date localDate = new Date();
    if ((!l.a(this.l.m(), paramj.getId(), com.layer.sdk.internal.lsdkd.k.a.e, new l.a()
    {
      public final void a(com.layer.sdk.internal.lsdkd.d paramAnonymousd, Throwable paramAnonymousThrowable)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(a.ws(), "Failed to perform transactedCacheUpdate in setTransferStatus. Changeable: " + paramAnonymousd, paramAnonymousThrowable);
        }
        a.a(a.this).n().a(new LayerObjectException(LayerException.Type.FAILED_CONTENT_OPERATION, paramAnonymousd, paramAnonymousThrowable.getMessage(), paramAnonymousThrowable));
      }
      
      public final boolean a(com.layer.sdk.internal.lsdkd.d paramAnonymousd)
      {
        paramAnonymousd = (j)paramAnonymousd;
        paramAnonymousd.b(paramTransferStatus);
        paramAnonymousd.c(localDate);
        paramAnonymousd.a(Boolean.valueOf(false));
        return true;
      }
    })) && (com.layer.sdk.internal.lsdkk.k.a(6))) {
      com.layer.sdk.internal.lsdkk.k.e(a, "Failed to perform transactedCacheUpdate in setTransferStatus");
    }
    paramj.a(paramTransferStatus);
    paramj.b(localDate);
    paramj.d(false);
  }
  
  private com.layer.sdk.internal.lsdkc.lsdka.a b(com.layer.sdk.internal.lsdkc.lsdka.a parama)
  {
    parama = parama.a().getId();
    return (com.layer.sdk.internal.lsdkc.lsdka.a)this.g.remove(parama);
  }
  
  private boolean b(Uri paramUri)
  {
    return a(paramUri) != null;
  }
  
  private static LayerProgressListener.Operation c(com.layer.sdk.internal.lsdkc.lsdka.a parama)
  {
    if ((parama instanceof com.layer.sdk.internal.lsdkc.lsdka.b)) {
      return LayerProgressListener.Operation.DOWNLOAD;
    }
    if ((parama instanceof com.layer.sdk.internal.lsdkc.lsdka.c)) {
      return LayerProgressListener.Operation.UPLOAD;
    }
    throw new IllegalArgumentException("Unknown task: " + parama);
  }
  
  private static Integer d(j paramj)
  {
    Object localObject = (com.layer.sdk.internal.lsdkd.lsdka.i)paramj.getMessage();
    int i1 = 0;
    localObject = ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject).getMessageParts().iterator();
    while (((Iterator)localObject).hasNext())
    {
      if ((MessagePart)((Iterator)localObject).next() == paramj) {
        return Integer.valueOf(i1);
      }
      i1 += 1;
    }
    return null;
  }
  
  /* Error */
  public c a(j paramj)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 141	com/layer/sdk/internal/lsdkd/lsdka/j:getId	()Landroid/net/Uri;
    //   4: ifnonnull +14 -> 18
    //   7: new 109	java/lang/IllegalArgumentException
    //   10: dup
    //   11: ldc_w 294
    //   14: invokespecial 114	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   17: athrow
    //   18: aload_1
    //   19: invokevirtual 298	com/layer/sdk/internal/lsdkd/lsdka/j:getSize	()J
    //   22: ldc2_w 299
    //   25: lcmp
    //   26: ifgt +63 -> 89
    //   29: aload_1
    //   30: iconst_1
    //   31: invokevirtual 303	com/layer/sdk/internal/lsdkd/lsdka/j:c	(Z)[B
    //   34: astore_2
    //   35: aload_2
    //   36: ifnonnull +14 -> 50
    //   39: new 109	java/lang/IllegalArgumentException
    //   42: dup
    //   43: ldc_w 305
    //   46: invokespecial 114	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   49: athrow
    //   50: aload_2
    //   51: arraylength
    //   52: i2l
    //   53: aload_1
    //   54: invokevirtual 298	com/layer/sdk/internal/lsdkd/lsdka/j:getSize	()J
    //   57: lcmp
    //   58: ifeq +14 -> 72
    //   61: new 109	java/lang/IllegalArgumentException
    //   64: dup
    //   65: ldc_w 307
    //   68: invokespecial 114	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   71: athrow
    //   72: aload_1
    //   73: aload_2
    //   74: invokevirtual 310	com/layer/sdk/internal/lsdkd/lsdka/j:a	([B)Lcom/layer/sdk/internal/lsdkd/lsdka/j;
    //   77: pop
    //   78: aload_1
    //   79: getstatic 316	com/layer/sdk/messaging/MessagePart$TransferStatus:COMPLETE	Lcom/layer/sdk/messaging/MessagePart$TransferStatus;
    //   82: invokevirtual 221	com/layer/sdk/internal/lsdkd/lsdka/j:a	(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V
    //   85: getstatic 319	com/layer/sdk/internal/lsdkc/a$c:a	Lcom/layer/sdk/internal/lsdkc/a$c;
    //   88: areturn
    //   89: aload_1
    //   90: invokevirtual 322	com/layer/sdk/internal/lsdkd/lsdka/j:f	()Ljava/io/File;
    //   93: astore_2
    //   94: aload_2
    //   95: ifnull +33 -> 128
    //   98: aload_2
    //   99: invokevirtual 325	java/io/File:exists	()Z
    //   102: ifeq +26 -> 128
    //   105: aload_2
    //   106: invokevirtual 328	java/io/File:length	()J
    //   109: aload_1
    //   110: invokevirtual 298	com/layer/sdk/internal/lsdkd/lsdka/j:getSize	()J
    //   113: lcmp
    //   114: ifne +14 -> 128
    //   117: aload_1
    //   118: getstatic 331	com/layer/sdk/messaging/MessagePart$TransferStatus:AWAITING_UPLOAD	Lcom/layer/sdk/messaging/MessagePart$TransferStatus;
    //   121: invokevirtual 221	com/layer/sdk/internal/lsdkd/lsdka/j:a	(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V
    //   124: getstatic 333	com/layer/sdk/internal/lsdkc/a$c:b	Lcom/layer/sdk/internal/lsdkc/a$c;
    //   127: areturn
    //   128: aload_1
    //   129: invokevirtual 336	com/layer/sdk/internal/lsdkd/lsdka/j:h	()Ljava/io/InputStream;
    //   132: astore 4
    //   134: aload 4
    //   136: ifnonnull +14 -> 150
    //   139: new 109	java/lang/IllegalArgumentException
    //   142: dup
    //   143: ldc_w 305
    //   146: invokespecial 114	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   149: athrow
    //   150: aload_0
    //   151: getfield 94	com/layer/sdk/internal/lsdkc/a:f	Ljava/io/File;
    //   154: aload_1
    //   155: invokestatic 341	com/layer/sdk/internal/lsdkc/e:a	(Ljava/io/File;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Ljava/io/File;
    //   158: astore 5
    //   160: new 343	java/io/FileOutputStream
    //   163: dup
    //   164: aload 5
    //   166: invokespecial 346	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   169: astore_3
    //   170: aload_3
    //   171: astore_2
    //   172: aload 4
    //   174: aload_3
    //   175: aload_1
    //   176: invokevirtual 298	com/layer/sdk/internal/lsdkd/lsdka/j:getSize	()J
    //   179: invokestatic 351	com/layer/sdk/internal/lsdkk/h:a	(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    //   182: aload_3
    //   183: astore_2
    //   184: aload 5
    //   186: invokevirtual 328	java/io/File:length	()J
    //   189: aload_1
    //   190: invokevirtual 298	com/layer/sdk/internal/lsdkd/lsdka/j:getSize	()J
    //   193: lcmp
    //   194: ifne +60 -> 254
    //   197: aload_3
    //   198: astore_2
    //   199: aload_1
    //   200: aload 5
    //   202: invokevirtual 354	com/layer/sdk/internal/lsdkd/lsdka/j:a	(Ljava/io/File;)Lcom/layer/sdk/internal/lsdkd/lsdka/j;
    //   205: pop
    //   206: aload_3
    //   207: astore_2
    //   208: aload_1
    //   209: getstatic 331	com/layer/sdk/messaging/MessagePart$TransferStatus:AWAITING_UPLOAD	Lcom/layer/sdk/messaging/MessagePart$TransferStatus;
    //   212: invokevirtual 221	com/layer/sdk/internal/lsdkd/lsdka/j:a	(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V
    //   215: aload_3
    //   216: astore_2
    //   217: getstatic 333	com/layer/sdk/internal/lsdkc/a$c:b	Lcom/layer/sdk/internal/lsdkc/a$c;
    //   220: astore_1
    //   221: aload 4
    //   223: ifnull +8 -> 231
    //   226: aload 4
    //   228: invokevirtual 359	java/io/InputStream:close	()V
    //   231: aload_3
    //   232: invokevirtual 362	java/io/OutputStream:close	()V
    //   235: aload_1
    //   236: areturn
    //   237: astore_1
    //   238: new 364	com/layer/sdk/exceptions/LayerException
    //   241: dup
    //   242: getstatic 370	com/layer/sdk/exceptions/LayerException$Type:DEVICE_PERSISTENCE_FAILURE	Lcom/layer/sdk/exceptions/LayerException$Type;
    //   245: aload_1
    //   246: invokevirtual 372	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   249: aload_1
    //   250: invokespecial 375	com/layer/sdk/exceptions/LayerException:<init>	(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   253: athrow
    //   254: aload_3
    //   255: astore_2
    //   256: aload 5
    //   258: invokevirtual 187	java/io/File:delete	()Z
    //   261: pop
    //   262: aload_3
    //   263: astore_2
    //   264: new 109	java/lang/IllegalArgumentException
    //   267: dup
    //   268: ldc_w 307
    //   271: invokespecial 114	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   274: athrow
    //   275: astore_1
    //   276: aload_3
    //   277: astore_2
    //   278: new 364	com/layer/sdk/exceptions/LayerException
    //   281: dup
    //   282: getstatic 370	com/layer/sdk/exceptions/LayerException$Type:DEVICE_PERSISTENCE_FAILURE	Lcom/layer/sdk/exceptions/LayerException$Type;
    //   285: ldc_w 377
    //   288: aload_1
    //   289: invokespecial 375	com/layer/sdk/exceptions/LayerException:<init>	(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   292: athrow
    //   293: astore_1
    //   294: aload 4
    //   296: ifnull +8 -> 304
    //   299: aload 4
    //   301: invokevirtual 359	java/io/InputStream:close	()V
    //   304: aload_2
    //   305: ifnull +7 -> 312
    //   308: aload_2
    //   309: invokevirtual 362	java/io/OutputStream:close	()V
    //   312: aload_1
    //   313: athrow
    //   314: astore_1
    //   315: new 364	com/layer/sdk/exceptions/LayerException
    //   318: dup
    //   319: getstatic 370	com/layer/sdk/exceptions/LayerException$Type:DEVICE_PERSISTENCE_FAILURE	Lcom/layer/sdk/exceptions/LayerException$Type;
    //   322: aload_1
    //   323: invokevirtual 372	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   326: aload_1
    //   327: invokespecial 375	com/layer/sdk/exceptions/LayerException:<init>	(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   330: athrow
    //   331: astore_1
    //   332: aconst_null
    //   333: astore_2
    //   334: goto -40 -> 294
    //   337: astore_1
    //   338: aconst_null
    //   339: astore_2
    //   340: goto -62 -> 278
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	343	0	this	a
    //   0	343	1	paramj	j
    //   34	306	2	localObject	Object
    //   169	108	3	localFileOutputStream	java.io.FileOutputStream
    //   132	168	4	localInputStream	java.io.InputStream
    //   158	99	5	localFile	File
    // Exception table:
    //   from	to	target	type
    //   226	231	237	java/lang/Exception
    //   231	235	237	java/lang/Exception
    //   172	182	275	java/io/IOException
    //   184	197	275	java/io/IOException
    //   199	206	275	java/io/IOException
    //   208	215	275	java/io/IOException
    //   217	221	275	java/io/IOException
    //   256	262	275	java/io/IOException
    //   264	275	275	java/io/IOException
    //   172	182	293	finally
    //   184	197	293	finally
    //   199	206	293	finally
    //   208	215	293	finally
    //   217	221	293	finally
    //   256	262	293	finally
    //   264	275	293	finally
    //   278	293	293	finally
    //   299	304	314	java/lang/Exception
    //   308	312	314	java/lang/Exception
    //   160	170	331	finally
    //   160	170	337	java/io/IOException
  }
  
  public void a()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(a, "Closing ContentManager");
    }
    synchronized (this.n)
    {
      this.o = true;
      if ((this.l != null) && (this.l.m() != null)) {
        this.l.m().b(this);
      }
      Iterator localIterator = this.g.values().iterator();
      if (localIterator.hasNext()) {
        ((com.layer.sdk.internal.lsdkc.lsdka.a)localIterator.next()).a(true);
      }
    }
    this.j.a();
  }
  
  public void a(com.layer.a.c.c paramc)
  {
    if (this.o) {}
    while (this.b.d()) {
      return;
    }
    Object localObject = (com.layer.sdk.internal.lsdkc.lsdka.a)paramc;
    paramc = ((com.layer.sdk.internal.lsdkc.lsdka.a)localObject).a();
    localObject = c((com.layer.sdk.internal.lsdkc.lsdka.a)localObject);
    switch (5.b[localObject.ordinal()])
    {
    }
    for (;;)
    {
      this.j.a(paramc, (LayerProgressListener.Operation)localObject);
      return;
      a(paramc, MessagePart.TransferStatus.UPLOADING);
      continue;
      a(paramc, MessagePart.TransferStatus.DOWNLOADING);
    }
  }
  
  public void a(com.layer.a.c.c paramc, long paramLong, Throwable paramThrowable)
  {
    if (this.o) {}
    Object localObject;
    do
    {
      do
      {
        return;
      } while (this.b.d());
      localObject = (com.layer.sdk.internal.lsdkc.lsdka.a)paramc;
      paramc = ((com.layer.sdk.internal.lsdkc.lsdka.a)localObject).a();
      localObject = c((com.layer.sdk.internal.lsdkc.lsdka.a)localObject);
    } while (!com.layer.sdk.internal.lsdkk.k.a(6));
    com.layer.sdk.internal.lsdkk.k.d(a, "MessagePart " + paramc.getId() + " retrying " + localObject + " in " + paramLong, paramThrowable);
  }
  
  public void a(com.layer.a.c.c paramc, c.b paramb, Throwable paramThrowable)
  {
    if (this.o) {}
    while (this.b.d()) {
      return;
    }
    paramc = (com.layer.sdk.internal.lsdkc.lsdka.a)paramc;
    paramb = paramc.a();
    LayerProgressListener.Operation localOperation = c(paramc);
    b(paramc);
    switch (5.b[localOperation.ordinal()])
    {
    }
    for (;;)
    {
      this.j.a(paramb, localOperation, paramThrowable);
      return;
      a(paramb, MessagePart.TransferStatus.AWAITING_UPLOAD);
      continue;
      a(paramb, MessagePart.TransferStatus.READY_FOR_DOWNLOAD);
    }
  }
  
  public void a(com.layer.sdk.internal.lsdkc.lsdka.a parama, j paramj, long paramLong1, long paramLong2)
  {
    if (this.o) {}
    while (this.b.d()) {
      return;
    }
    this.j.a(paramj, c(parama), paramLong1, paramLong2);
  }
  
  public void a(com.layer.sdk.internal.lsdkd.c paramc)
  {
    if (this.o) {}
    for (;;)
    {
      return;
      paramc = paramc.a().iterator();
      while (paramc.hasNext())
      {
        Object localObject = (LayerChange)paramc.next();
        if ((((LayerChange)localObject).getObjectType() == LayerObject.Type.MESSAGE_PART) && (((LayerChange)localObject).getChangeType() == LayerChange.Type.DELETE))
        {
          localObject = (j)((LayerChange)localObject).getObject();
          if (localObject != null) {
            a((j)localObject, false, com.layer.sdk.internal.lsdkd.k.a.e);
          }
        }
      }
    }
  }
  
  public void a(MessagePart paramMessagePart, LayerProgressListener paramLayerProgressListener)
  {
    if (this.o) {
      return;
    }
    if (paramMessagePart == null)
    {
      this.j.a(null, paramLayerProgressListener);
      return;
    }
    this.j.a(paramMessagePart.getId(), paramLayerProgressListener);
  }
  
  public boolean a(j paramj, LayerProgressListener paramLayerProgressListener)
  {
    if (this.o) {
      return false;
    }
    Uri localUri = paramj.getId();
    if (localUri == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "No message part ID " + paramj);
      }
      return false;
    }
    if (b(localUri))
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "Already managing " + paramj);
      }
      return false;
    }
    if (this.l.m().a(localUri, false) == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "No message part in persistence for " + paramj);
      }
      return false;
    }
    if (paramj.getTransferStatus() != MessagePart.TransferStatus.AWAITING_UPLOAD)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "Cannot upload MessagePart when it is " + paramj.getTransferStatus());
      }
      return false;
    }
    if (paramLayerProgressListener != null) {
      a(paramj, paramLayerProgressListener);
    }
    paramLayerProgressListener = ((com.layer.sdk.internal.lsdkd.lsdka.c)paramj.getMessage().getConversation()).j();
    paramLayerProgressListener = new c.a(this.l, this.c, this.d, paramLayerProgressListener);
    paramj = new com.layer.sdk.internal.lsdkc.lsdka.c(this.h.wo(), this, paramLayerProgressListener, paramj);
    return a(paramj) == paramj;
  }
  
  public boolean a(final j paramj, final boolean paramBoolean, final com.layer.sdk.internal.lsdkd.k.a parama)
  {
    if (this.o) {}
    while ((paramj.getTransferStatus() != MessagePart.TransferStatus.COMPLETE) || (paramj.k())) {
      return false;
    }
    this.e.q().execute(new Runnable()
    {
      public final void run()
      {
        a.a(a.this, paramj.getId(), paramj.f(), paramBoolean, parama);
      }
    });
    return true;
  }
  
  public c b(j paramj)
  {
    if (paramj.getId() == null) {
      throw new IllegalArgumentException("MessagePart has no ID");
    }
    if (paramj.g() != null)
    {
      paramj.a(MessagePart.TransferStatus.COMPLETE);
      return c.a;
    }
    Object localObject;
    if ((paramj.getSize() <= 2048L) && (com.layer.sdk.internal.lsdkk.k.a(5)))
    {
      if ((paramj.q() != null) && (paramj.getMessage() != null) && (paramj.getMessage().getConversation() != null) && (paramj.getMessage().getConversation().getId() != null))
      {
        localObject = paramj.getMessage().getConversation().getId().toString();
        com.layer.sdk.internal.lsdkk.k.a locala = a;
        StringBuilder localStringBuilder = new StringBuilder("MessagePart has no inline content but has size ").append(paramj.getSize()).append(" less than 2048 (Conversation ID: ").append((String)localObject).append(", Message ID: ");
        if (paramj.m() == null) {
          break label245;
        }
        localObject = paramj.m();
        label162:
        com.layer.sdk.internal.lsdkk.k.d(locala, localObject + ")");
      }
    }
    else
    {
      if (paramj.f() == null) {
        break label262;
      }
      if ((!paramj.f().exists()) || (paramj.f().length() != paramj.getSize())) {
        break label252;
      }
      paramj.a(MessagePart.TransferStatus.COMPLETE);
    }
    for (;;)
    {
      return c.b;
      localObject = "Cannot find conversation ID for new message part: " + paramj;
      break;
      label245:
      localObject = "N/A";
      break label162;
      label252:
      paramj.a(MessagePart.TransferStatus.READY_FOR_DOWNLOAD);
    }
    label262:
    paramj.a(MessagePart.TransferStatus.READY_FOR_DOWNLOAD);
    return c.b;
  }
  
  public void b()
  {
    this.b.c();
  }
  
  public void b(com.layer.a.c.c paramc)
  {
    if (this.o) {}
    do
    {
      do
      {
        return;
      } while (this.b.d());
      paramc = (com.layer.sdk.internal.lsdkc.lsdka.a)paramc;
      localObject = paramc.a();
      a((j)localObject, MessagePart.TransferStatus.COMPLETE);
      b(paramc);
      d();
      this.j.b((j)localObject, c(paramc));
    } while ((this.k == null) || (c(paramc) != LayerProgressListener.Operation.UPLOAD));
    paramc = new HashSet();
    Object localObject = ((j)localObject).getMessage();
    if (localObject != null)
    {
      localObject = (com.layer.sdk.internal.lsdkd.lsdka.c)((Message)localObject).getConversation();
      if (localObject != null)
      {
        localObject = ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).j();
        if (localObject != null) {
          paramc.add(localObject);
        }
      }
    }
    this.k.a(paramc);
  }
  
  public void b(MessagePart paramMessagePart, LayerProgressListener paramLayerProgressListener)
  {
    if (this.o) {
      return;
    }
    if (paramMessagePart == null)
    {
      this.j.b(null, paramLayerProgressListener);
      return;
    }
    this.j.b(paramMessagePart.getId(), paramLayerProgressListener);
  }
  
  public boolean b(j paramj, LayerProgressListener paramLayerProgressListener)
  {
    if (this.o) {
      return false;
    }
    if (paramLayerProgressListener != null) {
      a(paramj, paramLayerProgressListener);
    }
    paramLayerProgressListener = paramj.getId();
    if (paramLayerProgressListener == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "No message part ID " + paramj);
      }
      return false;
    }
    if (b(paramLayerProgressListener))
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "Already managing " + paramj);
      }
      return false;
    }
    if (paramj.r())
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "MessagePart is deleted: " + paramj);
      }
      return false;
    }
    if (this.l.m().a(paramLayerProgressListener, false) == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "No message part in persistence for " + paramj);
      }
      return false;
    }
    if (paramj.getTransferStatus() != MessagePart.TransferStatus.READY_FOR_DOWNLOAD)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "Cannot download MessagePart when it is " + paramj.getTransferStatus());
      }
      return false;
    }
    paramLayerProgressListener = ((com.layer.sdk.internal.lsdkd.lsdka.c)paramj.getMessage().getConversation()).j();
    if (paramLayerProgressListener == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "No stream ID for " + paramj);
      }
      return false;
    }
    Integer localInteger1 = ((com.layer.sdk.internal.lsdkd.lsdka.i)paramj.getMessage()).p();
    if (localInteger1 == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "No message seq for " + paramj);
      }
      return false;
    }
    Integer localInteger2 = d(paramj);
    if (localInteger2 == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "No message part index for " + paramj);
      }
      return false;
    }
    paramLayerProgressListener = new com.layer.sdk.internal.lsdkc.lsdka.b.a(this.l, this.f, this.c, this.d, paramLayerProgressListener, localInteger1.intValue(), localInteger2.intValue());
    paramj = new com.layer.sdk.internal.lsdkc.lsdka.b(this.i.wo(), this, paramLayerProgressListener, paramj);
    return a(paramj) == paramj;
  }
  
  public void c()
  {
    if (this.o) {}
    for (;;)
    {
      return;
      Iterator localIterator = this.b.a(new MessagePart.TransferStatus[] { MessagePart.TransferStatus.READY_FOR_DOWNLOAD, MessagePart.TransferStatus.AWAITING_UPLOAD }).iterator();
      while (localIterator.hasNext())
      {
        j localj = (j)localIterator.next();
        localj = (j)this.l.m().a(localj.getId(), false);
        if (c(localj)) {
          switch (5.bqe[localj.getTransferStatus().ordinal()])
          {
          default: 
            break;
          case 1: 
            a(localj, null);
            break;
          case 2: 
            b(localj, null);
          }
        }
      }
    }
  }
  
  public boolean c(j paramj)
  {
    Object localObject = paramj.getTransferStatus();
    if (localObject == MessagePart.TransferStatus.AWAITING_UPLOAD) {
      return true;
    }
    if (localObject != MessagePart.TransferStatus.READY_FOR_DOWNLOAD) {
      return false;
    }
    if (paramj.k()) {
      return false;
    }
    if (paramj.getMessage() == null) {
      return false;
    }
    localObject = (com.layer.sdk.internal.lsdkd.lsdka.c)paramj.getMessage().getConversation();
    if (localObject == null) {
      return false;
    }
    if (((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).j() == null) {
      return false;
    }
    localObject = this.m.a();
    long l1 = this.m.b();
    long l2 = this.m.c();
    if ((l2 > 0L) && (paramj.getSize() > l2)) {
      return false;
    }
    if (localObject == null) {
      return true;
    }
    if (((Set)localObject).contains(paramj.getMimeType())) {
      return true;
    }
    return paramj.getSize() <= l1;
  }
  
  public void d()
  {
    if (this.o) {
      return;
    }
    this.e.q().execute(new Runnable()
    {
      public final void run()
      {
        long l2 = a.b(a.this).c();
        if (l2 <= 0L) {}
        label184:
        for (;;)
        {
          return;
          long l3 = (0.8D * l2);
          long l1 = a.c(a.this).a();
          if (l1 > l3)
          {
            Iterator localIterator = a.c(a.this).b().iterator();
            for (;;)
            {
              if (!localIterator.hasNext()) {
                break label184;
              }
              com.layer.sdk.internal.lsdke.lsdkc.a.a locala = (com.layer.sdk.internal.lsdke.lsdkc.a.a)localIterator.next();
              if (l1 <= l3) {
                break;
              }
              if (com.layer.sdk.internal.lsdkk.k.a(2)) {
                com.layer.sdk.internal.lsdkk.k.a(a.ws(), "Deleting " + locala.b() + " bytes of content to get below " + l2 + " bytes of total usage");
              }
              a.a(a.this, locala.a(), new File(locala.c()), true, com.layer.sdk.internal.lsdkd.k.a.a);
              l1 -= locala.b().longValue();
            }
          }
        }
      }
    });
  }
  
  public static abstract interface a
  {
    public abstract com.layer.a.b.a p();
    
    public abstract com.layer.a.b.a q();
  }
  
  public static abstract interface b
  {
    public abstract long a();
    
    public abstract List<j> a(MessagePart.TransferStatus... paramVarArgs);
    
    public abstract List<com.layer.sdk.internal.lsdke.lsdkc.a.a> b();
    
    public abstract void c();
    
    public abstract boolean d();
  }
  
  public static enum c
  {
    private c() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkc/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */