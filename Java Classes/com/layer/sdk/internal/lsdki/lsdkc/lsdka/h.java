package com.layer.sdk.internal.lsdki.lsdkc.lsdka;

import com.layer.a.c.a;
import com.layer.a.c.e;
import com.layer.b.d.k.18;
import com.layer.b.d.k.9;
import com.layer.b.d.k.b;
import com.layer.b.d.k.c;
import com.layer.b.d.k.f;
import com.layer.b.f.c.o;
import com.layer.sdk.LayerClient.Options.HistoricSyncPolicy;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.internal.lsdke.lsdkc.c.a;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdki.lsdkc.c.c;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.internal.lsdkk.q;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class h
  extends a<Void, List<com.layer.b.d.h>>
{
  private static final k.a k = com.layer.sdk.internal.lsdkk.k.a(h.class);
  private final UUID a;
  private final String c;
  private final com.layer.b.d.k d;
  private final c.b e;
  private final LayerClient.Options.HistoricSyncPolicy f;
  private final AtomicReference<com.layer.sdk.internal.lsdki.b> g;
  private final AtomicBoolean h;
  private final AtomicReference<HashSet<UUID>> i;
  private final c.c j;
  
  public h(UUID paramUUID, String paramString, com.layer.b.d.k paramk, c.b paramb, LayerClient.Options.HistoricSyncPolicy paramHistoricSyncPolicy, AtomicReference<com.layer.sdk.internal.lsdki.b> paramAtomicReference, AtomicBoolean paramAtomicBoolean, AtomicReference<HashSet<UUID>> paramAtomicReference1, c.c paramc)
  {
    super(null);
    this.a = paramUUID;
    this.c = paramString;
    this.d = paramk;
    this.e = paramb;
    this.f = paramHistoricSyncPolicy;
    this.g = paramAtomicReference;
    this.h = paramAtomicBoolean;
    this.i = paramAtomicReference1;
    this.j = paramc;
  }
  
  private int a(List<com.layer.b.d.h> paramList)
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = paramList.iterator();
    int m = 0;
    if (localIterator.hasNext())
    {
      com.layer.b.d.h localh = (com.layer.b.d.h)localIterator.next();
      if ((localh.yk()) && (localh.bEJ == o.bFu))
      {
        localh.bwH = Integer.valueOf(q.a(localh));
        localh.aK(false);
      }
      for (;;)
      {
        localLinkedList.add(localh);
        m = localh.d - localh.bwH.intValue() + m;
        break;
        switch (2.b[this.f.ordinal()])
        {
        default: 
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.e(k, "Unknown mHistoricSyncPolicy " + this.f.toString());
          }
          throw new IllegalStateException("Unknown mHistoricSyncPolicy " + this.f.toString());
        case 1: 
          if (localh.yu()) {}
          for (paramList = localh.bEM;; paramList = null)
          {
            if ((paramList == null) || (!paramList.f())) {
              break label255;
            }
            localh.bwH = Integer.valueOf(paramList.c);
            break;
          }
          if ((paramList != null) && (paramList.j())) {
            localh.bwH = Integer.valueOf(paramList.bpD);
          } else if ((paramList != null) && (paramList.b()) && (paramList.a == 0)) {
            localh.bwH = Integer.valueOf(localh.d);
          } else {
            localh.bwH = Integer.valueOf(q.a(localh));
          }
          break;
        case 2: 
          if (localh.yu()) {}
          for (paramList = localh.bEM;; paramList = null)
          {
            if ((paramList == null) || (!paramList.j())) {
              break label376;
            }
            localh.bwH = Integer.valueOf(paramList.bpD);
            break;
          }
          if ((paramList != null) && (paramList.b()) && (paramList.a == 0)) {
            localh.bwH = Integer.valueOf(localh.d);
          } else {
            localh.bwH = Integer.valueOf(q.a(localh));
          }
          break;
        case 3: 
          label255:
          label376:
          localh.bwH = Integer.valueOf(q.a(localh));
        }
      }
    }
    this.e.a(localLinkedList, c.a.b);
    return m;
  }
  
  private List<com.layer.b.d.h> a(final Set<UUID> paramSet, final AtomicBoolean paramAtomicBoolean)
    throws Exception
  {
    final ConcurrentLinkedQueue localConcurrentLinkedQueue1 = new ConcurrentLinkedQueue();
    for (;;)
    {
      final Object localObject1;
      ConcurrentLinkedQueue localConcurrentLinkedQueue2;
      final UUID localUUID;
      try
      {
        if (this.h.get())
        {
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(k, "Bootstrapping streams");
          }
          paramSet = this.d;
          localObject1 = this.a;
          localConcurrentLinkedQueue1.addAll((List)new k.f(paramSet).a(new Integer[] { Integer.valueOf(200) }).a(new k.18(paramSet, (UUID)localObject1)));
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(k, "Bootstrap streams count: " + localConcurrentLinkedQueue1.size());
          }
          if (localConcurrentLinkedQueue1.size() <= 0) {
            break;
          }
          a(localConcurrentLinkedQueue1);
          return new ArrayList(localConcurrentLinkedQueue1);
        }
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(k, "Individual stream sync: " + this.i.get());
        }
        localObject1 = new CountDownLatch(((HashSet)this.i.get()).size());
        localConcurrentLinkedQueue2 = new ConcurrentLinkedQueue();
        Iterator localIterator = ((HashSet)this.i.get()).iterator();
        if (!localIterator.hasNext()) {
          break label461;
        }
        localUUID = (UUID)localIterator.next();
        if (localUUID == null) {
          throw new IllegalStateException("Null stream Id");
        }
      }
      catch (Exception paramSet)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(k, "Exception in fetchStreams", paramSet);
        }
        a(new e(this, null, paramSet.getMessage(), paramSet));
        paramAtomicBoolean.set(true);
        return null;
      }
      Object localObject2 = new k.c()
      {
        public final void a(com.layer.b.d.m paramAnonymousm)
        {
          for (;;)
          {
            com.layer.b.d.b localb;
            try
            {
              localb = paramAnonymousm.buL;
              int i = h.2.bqe[paramAnonymousm.bvU.ordinal()];
              switch (i)
              {
              default: 
                return;
              }
            }
            finally
            {
              localObject1.countDown();
            }
            if (com.layer.sdk.internal.lsdkk.k.a(6)) {
              com.layer.sdk.internal.lsdkk.k.d(h.wq(), "Recoverable exception while getting streams, will retry right away: " + localUUID, paramAnonymousm);
            }
            h.a(h.this).a().getAndSet(true);
            if (com.layer.sdk.internal.lsdkk.k.a(6)) {
              com.layer.sdk.internal.lsdkk.k.d(h.wq(), "Recoverable exception while getting streams, will retry: " + localUUID, paramAnonymousm);
            }
            h.a(h.this, new e(h.this, localUUID, paramAnonymousm.getMessage(), paramAnonymousm));
            continue;
            if (localb == com.layer.b.d.b.buQ)
            {
              if (com.layer.sdk.internal.lsdkk.k.a(2)) {
                com.layer.sdk.internal.lsdkk.k.a(h.wq(), "Stream was deleted while getting streams: " + localUUID);
              }
              paramSet.add(localUUID);
            }
            else
            {
              paramAtomicBoolean.set(true);
              if (com.layer.sdk.internal.lsdkk.k.a(6)) {
                com.layer.sdk.internal.lsdkk.k.d(h.wq(), "Unrecoverable exception while getting streams, will not retry: " + localUUID, paramAnonymousm);
              }
              h.b(h.this, new e(h.this, localUUID, paramAnonymousm.getMessage(), paramAnonymousm));
            }
          }
        }
      };
      try
      {
        com.layer.b.d.k localk = this.d;
        localObject2 = new k.b(localk, (k.c)localObject2).jdMethod_do(200).a(new k.9(localk, localUUID));
        if (localObject2 == null) {
          continue;
        }
        localConcurrentLinkedQueue2.add(localObject2);
      }
      catch (Exception localException)
      {
        this.j.a().getAndSet(true);
        paramAtomicBoolean.set(true);
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(k, "Exception while getting streams: getStreamsAsync: " + localUUID, localException);
        }
        a(new e(this, localUUID, localException.getMessage(), localException));
        ((CountDownLatch)localObject1).countDown();
      }
      continue;
      label461:
      ((CountDownLatch)localObject1).await();
      paramSet = localConcurrentLinkedQueue2.iterator();
      while (paramSet.hasNext()) {
        ((com.b.a.h)paramSet.next()).c();
      }
    }
    return null;
  }
  
  private void a(com.layer.b.d.h paramh)
  {
    this.e.a(paramh, true);
  }
  
  private void a(com.layer.b.d.h paramh1, com.layer.b.d.h paramh2)
  {
    paramh2.c = new HashSet();
    if (paramh1 == null)
    {
      a(Collections.singletonList(paramh2));
      return;
    }
    b(paramh1, paramh2);
  }
  
  private void a(ConcurrentLinkedQueue<com.layer.b.d.h> paramConcurrentLinkedQueue)
  {
    if (paramConcurrentLinkedQueue == null) {
      return;
    }
    Iterator localIterator = paramConcurrentLinkedQueue.iterator();
    label11:
    label121:
    label124:
    for (;;)
    {
      com.layer.b.d.h localh;
      if (localIterator.hasNext())
      {
        localh = (com.layer.b.d.h)localIterator.next();
        if (!localh.yu()) {
          break label121;
        }
      }
      for (paramConcurrentLinkedQueue = localh.bEM;; paramConcurrentLinkedQueue = null)
      {
        if ((paramConcurrentLinkedQueue == null) || (!paramConcurrentLinkedQueue.j())) {
          break label124;
        }
        int m = paramConcurrentLinkedQueue.bpD;
        int n = localh.d;
        if ((m >= 0) && (m <= n)) {
          break label11;
        }
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(k, "Found remote stream with wrong last-message-seq. Stream : " + localh);
        }
        localh.bEM.e(false);
        break label11;
        break;
      }
    }
  }
  
  private void b(com.layer.b.d.h paramh1, com.layer.b.d.h paramh2)
  {
    com.layer.b.f.c.h localh = null;
    int n = 0;
    paramh2.bwE = paramh1.bwE;
    if (paramh1.ys()) {
      paramh2.v(paramh1.zd());
    }
    if (paramh2.d > paramh1.d) {
      n = 1;
    }
    if ((!paramh2.K()) || (paramh1.K()))
    {
      m = n;
      if (paramh2.K())
      {
        m = n;
        if (paramh2.bEO == paramh1.bEO) {}
      }
    }
    else
    {
      m = 1;
    }
    n = m;
    if (paramh2.yw()) {
      if (paramh1.yw())
      {
        n = m;
        if (paramh2.bEN == paramh1.bEN) {}
      }
      else
      {
        n = 1;
      }
    }
    int m = n;
    if (paramh2.za() != null)
    {
      m = n;
      if (!Arrays.equals(paramh2.za(), paramh1.za())) {
        m = 1;
      }
    }
    Object localObject = paramh2.c.iterator();
    String str;
    if (((Iterator)localObject).hasNext())
    {
      str = (String)((Iterator)localObject).next();
      if (paramh1.c.contains(str)) {
        break label359;
      }
      m = 1;
    }
    label359:
    for (;;)
    {
      break;
      localObject = paramh1.c.iterator();
      while (((Iterator)localObject).hasNext())
      {
        str = (String)((Iterator)localObject).next();
        if (!paramh2.c.contains(str)) {
          m = 1;
        }
      }
      if (paramh2.h != paramh1.h) {
        m = 1;
      }
      if (paramh2.yu()) {}
      for (localObject = paramh2.bEM;; localObject = null)
      {
        if (paramh1.yu()) {
          localh = paramh1.bEM;
        }
        if ((localObject == null) || (localh == null) || (((com.layer.b.f.c.h)localObject).b(localh) != 0)) {
          m = 1;
        }
        if (m != 0) {
          break;
        }
        return;
      }
      if (!paramh2.h)
      {
        this.e.a(paramh2, c.a.b);
        return;
      }
      this.e.b(paramh2, c.a.b);
      return;
    }
  }
  
  protected List<com.layer.b.d.h> a(Void paramVoid)
    throws Exception
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("GetStreamsTask: Run");
    }
    Object localObject1 = new HashSet();
    Object localObject2 = new AtomicBoolean(false);
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("GetStreamsTask: Fetching streams");
    }
    List localList = a((Set)localObject1, (AtomicBoolean)localObject2);
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("GetStreamsTask: Fetched streams");
    }
    Object localObject3;
    HashMap localHashMap;
    Object localObject4;
    Object localObject5;
    try
    {
      localObject3 = this.e.n();
      localHashMap = new HashMap();
      localObject4 = ((List)localObject3).iterator();
      while (((Iterator)localObject4).hasNext())
      {
        localObject5 = (com.layer.b.d.h)((Iterator)localObject4).next();
        localHashMap.put(((com.layer.b.d.h)localObject5).b(), localObject5);
      }
      localObject4 = new HashMap();
    }
    catch (LayerException localLayerException)
    {
      this.j.a().getAndSet(true);
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.d(k, "Exception in GetStreamsTask", localLayerException);
      }
      a(new e(this, paramVoid, localLayerException.getMessage(), localLayerException));
      return null;
    }
    if ((localLayerException != null) && (localLayerException.size() > 0))
    {
      localObject5 = localLayerException.iterator();
      while (((Iterator)localObject5).hasNext())
      {
        com.layer.b.d.h localh = (com.layer.b.d.h)((Iterator)localObject5).next();
        ((Map)localObject4).put(localh.b(), localh);
      }
    }
    if ((this.h.get()) && (!this.j.a().get()) && (!((AtomicBoolean)localObject2).get()))
    {
      localObject2 = ((List)localObject3).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (com.layer.b.d.h)((Iterator)localObject2).next();
        if (!((Map)localObject4).containsKey(((com.layer.b.d.h)localObject3).b()))
        {
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(k, "Deleting stream: " + ((com.layer.b.d.h)localObject3).toString());
          }
          a((com.layer.b.d.h)localObject3);
        }
      }
    }
    if (((Set)localObject1).size() > 0)
    {
      localObject2 = (Set)this.i.get();
      localObject1 = ((Set)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject3 = (UUID)((Iterator)localObject1).next();
        localObject4 = (com.layer.b.d.h)localHashMap.get(localObject3);
        if (localObject4 != null)
        {
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(k, "Deleting stream: " + ((com.layer.b.d.h)localObject4).toString());
          }
          a((com.layer.b.d.h)localObject4);
        }
        if ((localObject2 != null) && (((Set)localObject2).contains(localObject3))) {
          ((Set)localObject2).remove(localObject3);
        }
      }
    }
    if ((localLayerException != null) && (localLayerException.size() != 0))
    {
      localObject1 = localLayerException.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (com.layer.b.d.h)((Iterator)localObject1).next();
        if ((((com.layer.b.d.h)localObject2).yk()) && (((com.layer.b.f.c.m)localObject2).bEJ == o.bFv) && (((com.layer.b.f.c.m)localObject2).h))
        {
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.e(k, "Remote stream of type channel is distinct: " + localObject2);
          }
          throw new IllegalStateException("Channel cannot be distinct: " + ((com.layer.b.d.h)localObject2).b());
        }
      }
      localObject1 = new ArrayList();
      localObject2 = localLayerException.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (com.layer.b.d.h)((Iterator)localObject2).next();
        localObject4 = (com.layer.b.d.h)localHashMap.get(((com.layer.b.d.h)localObject3).b());
        if ((!((com.layer.b.d.h)localObject3).r()) || (((com.layer.b.f.c.m)localObject3).c == null))
        {
          a((com.layer.b.d.h)localObject4, (com.layer.b.d.h)localObject3);
        }
        else
        {
          localObject5 = this.c;
          if (((com.layer.b.f.c.m)localObject3).c == null) {
            ((com.layer.b.f.c.m)localObject3).c = new HashSet();
          }
          ((com.layer.b.f.c.m)localObject3).c.add(localObject5);
          if (localObject4 == null) {
            ((List)localObject1).add(localObject3);
          } else {
            b((com.layer.b.d.h)localObject4, (com.layer.b.d.h)localObject3);
          }
        }
      }
      int m = a((List)localObject1);
      if (!((com.layer.sdk.internal.lsdki.b)this.g.get()).a())
      {
        int n = this.e.k();
        ((com.layer.sdk.internal.lsdki.b)this.g.get()).a(m - n);
      }
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(k, "Completing getStreamsTask. Streams count: " + localLayerException.size() + ". mResults: " + this.j.toString());
      }
      return localLayerException;
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdka/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */