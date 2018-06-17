package com.layer.sdk.internal.lsdki.lsdkc.lsdka;

import android.text.TextUtils;
import com.layer.a.c.a;
import com.layer.b.d.k.10;
import com.layer.b.d.k.11;
import com.layer.b.d.k.b;
import com.layer.b.d.k.c;
import com.layer.b.d.m;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class k
  extends a<Set<com.layer.sdk.internal.lsdkd.lsdka.e>, Void>
{
  private static final com.layer.sdk.internal.lsdkk.k.a a = com.layer.sdk.internal.lsdkk.k.a(k.class);
  private final com.layer.b.d.k c;
  private final c.b d;
  
  public k(com.layer.b.d.k paramk, c.b paramb, Set<com.layer.sdk.internal.lsdkd.lsdka.e> paramSet)
  {
    super(paramSet);
    this.c = paramk;
    this.d = paramb;
  }
  
  protected Void a(Set<com.layer.sdk.internal.lsdkd.lsdka.e> paramSet)
    throws Exception
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("PostIdentityUpdatesTask: Run");
    }
    Object localObject1 = new HashSet();
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet3 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    paramSet = paramSet.iterator();
    Object localObject2;
    while (paramSet.hasNext())
    {
      localObject2 = (com.layer.sdk.internal.lsdkd.lsdka.e)paramSet.next();
      if (TextUtils.isEmpty(((com.layer.sdk.internal.lsdkd.lsdka.e)localObject2).getUserId()))
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(a, "Skipping identity during update posting: user ID is null or empty");
        }
      }
      else if (((com.layer.sdk.internal.lsdkd.lsdka.e)localObject2).isFollowed())
      {
        ((Set)localObject1).add(((com.layer.sdk.internal.lsdkd.lsdka.e)localObject2).getUserId());
        localHashSet3.add(localObject2);
      }
      else
      {
        localHashSet1.add(((com.layer.sdk.internal.lsdkd.lsdka.e)localObject2).getUserId());
        localHashSet2.add(localObject2);
      }
    }
    if (!((Set)localObject1).isEmpty()) {}
    for (int i = 1;; i = 0)
    {
      int j = i;
      if (!localHashSet1.isEmpty()) {
        j = i + 1;
      }
      if (j != 0)
      {
        paramSet = new CountDownLatch(j);
        if (!((Set)localObject1).isEmpty())
        {
          localObject2 = this.c;
          new k.b((com.layer.b.d.k)localObject2, new a(localHashSet3, paramSet, (byte)0)).jdMethod_do(204).a(new k.10((com.layer.b.d.k)localObject2, (Set)localObject1));
        }
        if (!localHashSet1.isEmpty())
        {
          localObject1 = this.c;
          new k.b((com.layer.b.d.k)localObject1, new a(localHashSet2, paramSet, (byte)0)).jdMethod_do(204).a(new k.11((com.layer.b.d.k)localObject1, localHashSet1));
        }
        paramSet.await(1L, TimeUnit.MINUTES);
      }
      return null;
    }
  }
  
  private final class a
    implements k.c<Void>
  {
    private final CountDownLatch bsE;
    private final Set<com.layer.sdk.internal.lsdkd.lsdka.e> c;
    
    private a(CountDownLatch paramCountDownLatch)
    {
      CountDownLatch localCountDownLatch;
      this.bsE = localCountDownLatch;
      this.c = paramCountDownLatch;
    }
    
    public final void a(m paramm)
    {
      for (;;)
      {
        try
        {
          int i = k.1.bqe[paramm.bvU.ordinal()];
          switch (i)
          {
          default: 
            return;
          }
        }
        finally
        {
          this.bsE.countDown();
        }
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(k.wq(), "Retry-able exception while updating identities, will retry", paramm);
        }
        k.a(k.this, new com.layer.a.c.e(k.this, this.c, paramm.getMessage(), paramm));
        continue;
        k.a(k.this).b(this.c);
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(k.wq(), "Unrecoverable exception while updating identities, will not retry: 16842960", paramm);
        }
        k.b(k.this, new com.layer.a.c.e(k.this, this.c, paramm.getMessage(), paramm));
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdka/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */