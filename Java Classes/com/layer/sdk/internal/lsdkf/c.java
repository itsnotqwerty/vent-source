package com.layer.sdk.internal.lsdkf;

import com.layer.a.b.a;
import com.layer.sdk.internal.lsdke.g;
import com.layer.sdk.internal.lsdkk.j;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.internal.lsdkk.q;
import com.layer.sdk.internal.lsdkk.q.a;
import com.layer.sdk.policy.Policy;
import com.layer.sdk.policy.Policy.PolicyType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class c
{
  static final k.a b = k.a(c.class);
  protected final a a = new q.a("PolicyExecutor", 5L, TimeUnit.SECONDS, 10);
  final com.layer.sdk.internal.b bsb;
  final LinkedHashSet<Policy> bsc = new LinkedHashSet();
  final j<a> bsd = new j();
  private final Object c = new Object();
  volatile boolean d = false;
  
  public c(com.layer.sdk.internal.b paramb)
  {
    this.bsb = paramb;
  }
  
  public static Set<String> a(LinkedHashSet<Policy> paramLinkedHashSet)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    paramLinkedHashSet = paramLinkedHashSet.iterator();
    while (paramLinkedHashSet.hasNext())
    {
      Policy localPolicy = (Policy)paramLinkedHashSet.next();
      if ((localPolicy != null) && (localPolicy.getSentByUserID() != null)) {
        localLinkedHashSet.add(localPolicy.getSentByUserID());
      }
    }
    return localLinkedHashSet;
  }
  
  static LinkedHashSet<Policy> v(List<String> paramList)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      localLinkedHashSet.add(new b(Policy.PolicyType.BLOCK, str));
    }
    return localLinkedHashSet;
  }
  
  public Boolean a(final Policy paramPolicy)
  {
    synchronized (this.bsc)
    {
      if (k.a(2)) {
        k.a(b, "PolicyManager::addPolicy:Enter " + paramPolicy);
      }
      if ((this.bsc.contains(paramPolicy)) || (paramPolicy.getPolicyType() != Policy.PolicyType.BLOCK)) {
        return Boolean.valueOf(false);
      }
      ArrayList localArrayList1 = new ArrayList(this.bsc);
      this.bsc.add(paramPolicy);
      ArrayList localArrayList2 = new ArrayList(this.bsc);
      this.a.execute(new Runnable()
      {
        public final void run()
        {
          c.a(c.this).k().a(paramPolicy.getSentByUserID(), Boolean.valueOf(false));
          c.this.d();
        }
      });
      paramPolicy = this.bsd.iterator();
      if (paramPolicy.hasNext()) {
        ((a)paramPolicy.next()).a(localArrayList1, localArrayList2);
      }
    }
    if (k.a(2)) {
      k.a(b, "PolicyManager::addPolicy:Exit");
    }
    return Boolean.valueOf(true);
  }
  
  public LinkedHashSet<Policy> a()
  {
    synchronized (this.bsc)
    {
      LinkedHashSet localLinkedHashSet2 = new LinkedHashSet(this.bsc);
      return localLinkedHashSet2;
    }
  }
  
  public void a(a parama)
  {
    this.bsd.a(parama);
  }
  
  public Boolean b(final Policy paramPolicy)
  {
    synchronized (this.bsc)
    {
      if (k.a(2)) {
        k.a(b, "PolicyManager::removePolicy:Enter " + paramPolicy);
      }
      if ((!this.bsc.contains(paramPolicy)) || (paramPolicy.getPolicyType() != Policy.PolicyType.BLOCK)) {
        return Boolean.valueOf(false);
      }
      ArrayList localArrayList1 = new ArrayList(this.bsc);
      this.bsc.remove(paramPolicy);
      ArrayList localArrayList2 = new ArrayList(this.bsc);
      this.a.execute(new Runnable()
      {
        public final void run()
        {
          c.a(c.this).k().b(paramPolicy.getSentByUserID(), Boolean.valueOf(false));
          c.this.d();
        }
      });
      paramPolicy = this.bsd.iterator();
      if (paramPolicy.hasNext()) {
        ((a)paramPolicy.next()).a(localArrayList1, localArrayList2);
      }
    }
    if (k.a(2)) {
      k.a(b, "PolicyManager::addPolicy:Exit");
    }
    return Boolean.valueOf(true);
  }
  
  public void b()
  {
    if (k.a(2)) {
      k.a(b, "Pausing PolicyManager");
    }
    this.a.a();
  }
  
  final void b(e.a parama)
  {
    if (this.d) {}
    for (;;)
    {
      return;
      Iterator localIterator = this.bsd.iterator();
      while (localIterator.hasNext()) {
        ((a)localIterator.next()).a(parama.a, parama.bry.booleanValue());
      }
    }
  }
  
  public void c()
  {
    if (k.a(2)) {
      k.a(b, "Closing PolicyManager");
    }
    synchronized (this.c)
    {
      this.d = true;
      q.a(this.a);
      q.b(this.a);
      this.bsd.a();
      return;
    }
  }
  
  public void d()
  {
    if (this.d) {
      return;
    }
    if (k.a(2)) {
      k.a(b, "Executing policy sync");
    }
    new d(this.a, this.bsb.h(), this.bsb.k(), this).a();
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString, boolean paramBoolean);
    
    public abstract void a(List<Policy> paramList1, List<Policy> paramList2);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkf/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */