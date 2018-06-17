package com.layer.sdk.internal.lsdkc.lsdka;

import com.layer.a.c.e;
import com.layer.b.d.k.26;
import com.layer.b.d.k.f;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.exceptions.LayerObjectException;
import com.layer.sdk.internal.lsdkd.f;
import com.layer.sdk.internal.lsdkd.h;
import com.layer.sdk.internal.lsdkd.i;
import com.layer.sdk.internal.lsdkd.l;
import com.layer.sdk.internal.lsdkd.l.a;
import com.layer.sdk.internal.lsdkd.lsdka.j;
import java.util.UUID;

public class c
  extends a<a, b>
{
  private static final com.layer.sdk.internal.lsdkk.k.a a = com.layer.sdk.internal.lsdkk.k.a(c.class);
  
  public c(com.layer.a.a.a parama, a.a parama1, a parama2, j paramj)
  {
    super(parama, parama1, parama2, paramj);
  }
  
  protected b a(a parama)
    throws Exception
  {
    Object localObject1 = null;
    b localb = new b();
    final j localj = a();
    final a.a locala = b();
    label493:
    for (;;)
    {
      try
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(a, "PostContentTask : Executing for MessagePart : " + localj);
        }
        final Object localObject2 = localj.n();
        long l1;
        if (localObject2 == null)
        {
          localObject2 = parama.c();
          if (localObject2 == null)
          {
            a(new e(this, parama, "No stream ID", new LayerException(LayerException.Type.INVALID_CONTENT, "MessagePart not associated with a Stream")));
            return null;
          }
          final Object localObject3 = parama.a();
          String str = localj.getMimeType();
          l1 = localj.getSize();
          localObject2 = (String)new k.f((com.layer.b.d.k)localObject3).a(new Integer[] { Integer.valueOf(200) }).a(new k.26((com.layer.b.d.k)localObject3, str, l1, (UUID)localObject2));
          localObject3 = parama.d();
          if (localObject3 == null)
          {
            if ((!l.a((f)localObject1, localj.getId(), com.layer.sdk.internal.lsdkd.k.a.e, new l.a()
            {
              public final void a(com.layer.sdk.internal.lsdkd.d paramAnonymousd, Throwable paramAnonymousThrowable)
              {
                if (com.layer.sdk.internal.lsdkk.k.a(6)) {
                  com.layer.sdk.internal.lsdkk.k.d(c.wu(), "Exception in PostContentTask : Updating url for MessagePart : " + localj, paramAnonymousThrowable);
                }
                localObject3.n().a(new LayerObjectException(LayerException.Type.FAILED_CONTENT_OPERATION, paramAnonymousd, paramAnonymousThrowable.getMessage(), paramAnonymousThrowable));
              }
              
              public final boolean a(com.layer.sdk.internal.lsdkd.d paramAnonymousd)
              {
                ((j)paramAnonymousd).b(localObject2);
                return true;
              }
            })) && (com.layer.sdk.internal.lsdkk.k.a(6))) {
              com.layer.sdk.internal.lsdkk.k.e(a, "Failed to transact transactedCacheUpdate while updating messagePart url: " + localj);
            }
            localj.a((String)localObject2);
            l1 = 0L;
            if (com.layer.sdk.internal.lsdkk.k.a(2))
            {
              com.layer.sdk.internal.lsdkk.k.a(a, "MessagePart " + localj.getId() + " uploading " + localj.getSize() + " bytes. MessagePart : " + localj);
              break label493;
              parama.b().a((String)localObject1, localj.f(), localj.getMimeType(), l1, new com.layer.sdk.internal.lsdki.lsdkc.a.a()
              {
                public final void a(long paramAnonymousLong1, long paramAnonymousLong2, long paramAnonymousLong3)
                {
                  locala.a(c.this, localj, paramAnonymousLong1, paramAnonymousLong2);
                }
              });
              return localb;
            }
          }
          else
          {
            localObject1 = ((h)localObject3).m();
            continue;
          }
        }
        else
        {
          long l2 = parama.b().a((String)localObject2, localj.getSize());
          localObject1 = localObject2;
          l1 = l2;
          if (!com.layer.sdk.internal.lsdkk.k.a(2)) {
            continue;
          }
          com.layer.sdk.internal.lsdkk.k.a(a, "MessagePart " + localj.getId() + " resuming upload from " + l2 + " of " + localj.getSize() + " bytes. MessagePart : " + localj);
          localObject1 = localObject2;
          l1 = l2;
          continue;
        }
        localObject1 = localObject2;
      }
      catch (Exception parama)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(a, "Exception in PostContentTask for MessagePart : " + localj, parama);
        }
        throw parama;
      }
    }
  }
  
  public static final class a
  {
    private final com.layer.b.d.k a;
    private final com.layer.sdk.internal.lsdkc.d b;
    private final h c;
    private final UUID d;
    
    public a(h paramh, com.layer.b.d.k paramk, com.layer.sdk.internal.lsdkc.d paramd, UUID paramUUID)
    {
      this.a = paramk;
      this.b = paramd;
      this.c = paramh;
      this.d = paramUUID;
    }
    
    public final com.layer.b.d.k a()
    {
      return this.a;
    }
    
    public final com.layer.sdk.internal.lsdkc.d b()
    {
      return this.b;
    }
    
    public final UUID c()
    {
      return this.d;
    }
    
    public final h d()
    {
      return this.c;
    }
  }
  
  public static class b {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkc/lsdka/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */