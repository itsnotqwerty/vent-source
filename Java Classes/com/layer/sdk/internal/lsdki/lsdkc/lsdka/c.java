package com.layer.sdk.internal.lsdki.lsdkc.lsdka;

import com.layer.a.c.a;
import com.layer.b.d.k.13;
import com.layer.b.d.k.b;
import com.layer.b.d.k.c;
import com.layer.b.f.c.d;
import com.layer.sdk.internal.lsdke.lsdka.a.a;
import com.layer.sdk.internal.lsdki.a.e;
import com.layer.sdk.internal.lsdki.b;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.internal.lsdkk.q;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class c
  extends a<a, Iterable<com.layer.b.d.c>>
{
  private static final k.a e = com.layer.sdk.internal.lsdkk.k.a(c.class);
  private final com.layer.b.d.k a;
  private final com.layer.sdk.internal.lsdki.lsdkc.c.b c;
  private final com.layer.sdk.internal.lsdki.lsdkc.c.c d;
  
  public c(com.layer.b.d.k paramk, com.layer.sdk.internal.lsdki.lsdkc.c.b paramb, com.layer.sdk.internal.lsdki.lsdkc.c.c paramc, a parama)
  {
    super(parama);
    this.a = paramk;
    this.c = paramb;
    this.d = paramc;
  }
  
  private c a(LinkedHashSet<UUID> paramLinkedHashSet, List<com.layer.b.d.h> paramList)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if (paramLinkedHashSet.isEmpty()) {
      return new c(new LinkedHashMap(), 0);
    }
    Iterator localIterator = paramList.iterator();
    int j = 0;
    while (localIterator.hasNext())
    {
      com.layer.b.d.h localh = (com.layer.b.d.h)localIterator.next();
      if (paramLinkedHashSet.contains(localh.b()))
      {
        LinkedHashSet localLinkedHashSet = new LinkedHashSet();
        int n = localh.d;
        int i;
        int k;
        label121:
        int m;
        if (localh.bwF == null)
        {
          i = n + 1;
          if (localh.bwG != null) {
            break label314;
          }
          k = n + 1;
          if (localh.bwH != null) {
            break label327;
          }
          m = n + 1;
          label135:
          if ((!localh.yu()) || (!localh.bEM.b()) || (localh.bEM.a <= 0)) {
            break label340;
          }
          n /= localh.bEM.a;
          label178:
          int i1 = n * localh.bwI.intValue();
          n = Math.min(i, m);
          if (n - i1 <= q.a(localh)) {
            break label347;
          }
          m = n - i1;
          label219:
          if (i != k) {
            break label357;
          }
          paramList = new HashSet();
          label233:
          if (n <= q.a(localh)) {
            break label387;
          }
          i = n - 1;
          k = j;
        }
        for (;;)
        {
          if (i < m) {
            break label400;
          }
          j = k;
          if (!paramList.contains(Integer.valueOf(i)))
          {
            j = k + 1;
            localLinkedHashSet.add(Integer.valueOf(i));
          }
          i -= 1;
          k = j;
          continue;
          i = localh.bwF.intValue();
          break;
          label314:
          k = localh.bwG.intValue();
          break label121;
          label327:
          m = localh.bwH.intValue();
          break label135;
          label340:
          n = 51;
          break label178;
          label347:
          m = q.a(localh);
          break label219;
          label357:
          paramList = this.c.a(a.a.a, localh.b(), Integer.valueOf(i), Integer.valueOf(k));
          break label233;
          label387:
          i = q.a(localh);
          k = j;
        }
        label400:
        j = k;
        if (localLinkedHashSet.size() > 0)
        {
          localLinkedHashMap.put(localh.b(), localLinkedHashSet);
          j = k;
        }
      }
    }
    return new c(localLinkedHashMap, j);
  }
  
  private c a(List<com.layer.b.d.h> paramList, int paramInt)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    Iterator localIterator = paramList.iterator();
    int j = 0;
    int i = paramInt;
    paramInt = j;
    com.layer.b.d.h localh;
    int i1;
    int k;
    label72:
    int m;
    label86:
    int n;
    label101:
    Object localObject;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localh = (com.layer.b.d.h)localIterator.next();
        if (i > 0)
        {
          i1 = localh.d;
          if (localh.bwF == null)
          {
            k = i1 + 1;
            if (localh.bwG != null) {
              break label360;
            }
            m = i1 + 1;
            if (localh.bwH != null) {
              break label373;
            }
            n = q.a(localh);
            localObject = null;
            paramList = (List<com.layer.b.d.h>)localObject;
            if (localh.yu())
            {
              paramList = (List<com.layer.b.d.h>)localObject;
              if (localh.bEM.j()) {
                paramList = Integer.valueOf(localh.bEM.bpD);
              }
            }
            if (((k == q.a(localh)) && (m > i1)) || ((paramList != null) && (k <= n) && (m >= paramList.intValue()))) {
              continue;
            }
            if (k != m) {
              break label386;
            }
            localObject = new HashSet();
            label194:
            if (paramList == null) {
              break label418;
            }
            j = paramList.intValue() - 1;
            label206:
            if (j >= q.a(localh)) {
              break label489;
            }
            j = i1;
            if (com.layer.sdk.internal.lsdkk.k.a(5))
            {
              com.layer.sdk.internal.lsdkk.k.d(e, "last_message_seq is below seq bounds. Stream: " + localh);
              j = i1;
            }
          }
        }
      }
    }
    label360:
    label373:
    label386:
    label418:
    label489:
    for (;;)
    {
      paramList = new LinkedHashSet();
      i1 = j;
      for (;;)
      {
        j = i;
        if (i1 < n) {
          break;
        }
        if (i1 >= k)
        {
          j = i;
          if (i1 < m) {}
        }
        else
        {
          j = i;
          if (!((Set)localObject).contains(Integer.valueOf(i1)))
          {
            paramList.add(Integer.valueOf(i1));
            i -= 1;
            j = i;
            if (i <= 0) {
              break;
            }
            j = i;
          }
        }
        i1 -= 1;
        i = j;
      }
      k = localh.bwF.intValue();
      break label72;
      m = localh.bwG.intValue();
      break label86;
      n = localh.bwH.intValue();
      break label101;
      localObject = this.c.a(a.a.a, localh.b(), Integer.valueOf(k), Integer.valueOf(m));
      break label194;
      j = i1;
      break label206;
      i = j;
      if (!paramList.isEmpty())
      {
        localLinkedHashMap.put(localh.b(), paramList);
        paramInt = paramList.size() + paramInt;
      }
      for (;;)
      {
        break;
        if (i <= 0) {
          this.d.b().set(true);
        }
        return new c(localLinkedHashMap, paramInt);
      }
    }
  }
  
  private c a(List<com.layer.b.d.h> paramList, int paramInt, Iterable<com.layer.b.d.c> paramIterable, HashMap<UUID, HashSet<com.layer.b.d.c>> paramHashMap, HashMap<UUID, Integer> paramHashMap1)
  {
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    paramIterable = paramIterable.iterator();
    int k = 0;
    int i;
    while (paramIterable.hasNext())
    {
      localObject1 = (com.layer.b.d.c)paramIterable.next();
      i = k + 1;
      localObject2 = ((com.layer.b.d.c)localObject1).bvS;
      if (!localHashMap1.containsKey(localObject2)) {
        localHashMap1.put(localObject2, new HashSet());
      }
      ((HashSet)localHashMap1.get(localObject2)).add(Integer.valueOf(((d)localObject1).d));
      if (((d)localObject1).bCE == com.layer.b.f.c.e.bDq)
      {
        if (!paramHashMap.containsKey(localObject2)) {
          paramHashMap.put(localObject2, new HashSet());
        }
        ((HashSet)paramHashMap.get(localObject2)).add(localObject1);
      }
      if (!localHashMap2.containsKey(localObject2))
      {
        localHashMap2.put(localObject2, Integer.valueOf(((d)localObject1).d));
        k = i;
      }
      else
      {
        k = i;
        if (((Integer)localHashMap2.get(localObject2)).intValue() > ((d)localObject1).d)
        {
          localHashMap2.put(localObject2, Integer.valueOf(((d)localObject1).d));
          k = i;
        }
      }
    }
    Object localObject1 = new LinkedHashMap();
    int m = 0;
    Object localObject2 = paramList.iterator();
    com.layer.b.d.h localh;
    label330:
    int j;
    label386:
    int n;
    for (;;)
    {
      if (((Iterator)localObject2).hasNext())
      {
        localh = (com.layer.b.d.h)((Iterator)localObject2).next();
        if (localHashMap1.containsKey(localh.b())) {
          if (localh.bwF != null)
          {
            i = localh.bwF.intValue();
            i = Math.min(((Integer)localHashMap2.get(localh.b())).intValue(), i);
            if (!paramHashMap.containsKey(localh.b())) {
              break label596;
            }
            j = ((HashSet)paramHashMap.get(localh.b())).size();
            if (j >= localh.bwI.intValue()) {
              break label619;
            }
            if ((!localh.yu()) || (!localh.bEM.b()) || (localh.bEM.a <= 0)) {
              break label602;
            }
            n = localh.d / localh.bEM.a;
            label445:
            j = (localh.bwI.intValue() - j) * n;
            if (i <= j) {
              break label609;
            }
            i -= j;
            label475:
            j = i;
          }
        }
      }
    }
    for (;;)
    {
      LinkedHashSet localLinkedHashSet = new LinkedHashSet();
      paramList = null;
      n = localh.d;
      i = m;
      if (n <= j) {
        if (k + i >= paramInt)
        {
          this.d.b().set(true);
          n = 1;
          label533:
          if (!localLinkedHashSet.isEmpty()) {
            ((LinkedHashMap)localObject1).put(localh.b(), localLinkedHashSet);
          }
          m = i;
          if (n != 0) {
            break;
          }
          paramHashMap1.put(localh.b(), Integer.valueOf(j));
          m = i;
          break;
          i = q.a(localh);
          break label330;
          label596:
          j = 0;
          break label386;
          label602:
          n = 51;
          break label445;
          label609:
          i = q.a(localh);
          break label475;
          label619:
          paramList = (HashSet)paramHashMap.get(localh.b());
          if (paramList == null) {
            break label910;
          }
          paramList = paramList.iterator();
          label642:
          j = i;
          if (!paramList.hasNext()) {
            continue;
          }
          paramIterable = (com.layer.b.d.c)paramList.next();
          if (paramIterable.f >= i) {
            break label907;
          }
          i = paramIterable.f;
        }
      }
      label736:
      label750:
      label802:
      label850:
      label863:
      label889:
      label898:
      label907:
      for (;;)
      {
        break label642;
        paramIterable = paramList;
        int i1 = i;
        int i2;
        if (!((HashSet)localHashMap1.get(localh.b())).contains(Integer.valueOf(n)))
        {
          i1 = localh.d;
          if (localh.bwF != null) {
            break label850;
          }
          m = i1 + 1;
          if (localh.bwG != null) {
            break label863;
          }
          i2 = i1 + 1;
          if (n >= m)
          {
            paramIterable = paramList;
            i1 = i;
            if (n < i2) {}
          }
          else
          {
            if (paramList != null) {
              break label889;
            }
            paramList = this.c.a(a.a.a, localh.b(), Integer.valueOf(m), Integer.valueOf(i2));
            if (paramList.contains(Integer.valueOf(n))) {
              break label898;
            }
            localLinkedHashSet.add(Integer.valueOf(n));
            i1 = i + 1;
            paramIterable = paramList;
          }
        }
        for (;;)
        {
          n -= 1;
          paramList = paramIterable;
          i = i1;
          break;
          m = localh.bwF.intValue();
          break label736;
          i2 = localh.bwG.intValue();
          break label750;
          return new c((LinkedHashMap)localObject1, m);
          break label802;
          n = 0;
          break label533;
          paramIterable = paramList;
          i1 = i;
        }
      }
      label910:
      j = i;
    }
  }
  
  private c a(List<com.layer.b.d.h> paramList, boolean paramBoolean)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if (paramList.isEmpty()) {
      return new c(new LinkedHashMap(), 0);
    }
    Iterator localIterator = paramList.iterator();
    int k = 0;
    while (localIterator.hasNext())
    {
      com.layer.b.d.h localh = (com.layer.b.d.h)localIterator.next();
      LinkedHashSet localLinkedHashSet = new LinkedHashSet();
      int i2 = localh.d;
      int j;
      label98:
      int m;
      label112:
      int i;
      label144:
      int n;
      int i1;
      if (localh.bwF == null)
      {
        j = i2 + 1;
        if (localh.bwG != null) {
          break label283;
        }
        m = i2 + 1;
        paramList = null;
        if (localh.yu()) {
          paramList = localh.bEM;
        }
        if ((paramList == null) || (!paramList.j())) {
          break label296;
        }
        i = paramList.bpD;
        if ((i >= j) && (m > i2)) {
          break label315;
        }
        paramList = null;
        n = k;
        i1 = i2;
        if (paramBoolean)
        {
          if (j != m) {
            break label317;
          }
          paramList = new HashSet();
          i1 = i2;
          n = k;
        }
      }
      for (;;)
      {
        if (i1 < i) {
          break label356;
        }
        if (paramBoolean)
        {
          k = n;
          if (paramList.contains(Integer.valueOf(i1))) {}
        }
        else if (i1 >= j)
        {
          k = n;
          if (i1 < m) {}
        }
        else
        {
          k = n + 1;
          localLinkedHashSet.add(Integer.valueOf(i1));
        }
        i1 -= 1;
        n = k;
        continue;
        j = localh.bwF.intValue();
        break label98;
        label283:
        m = localh.bwG.intValue();
        break label112;
        label296:
        if (i2 >= 30)
        {
          i = i2 - 30;
          break label144;
        }
        i = 0;
        break label144;
        label315:
        break;
        label317:
        paramList = this.c.a(a.a.a, localh.b(), Integer.valueOf(j), Integer.valueOf(m));
        n = k;
        i1 = i2;
      }
      label356:
      k = n;
      if (localLinkedHashSet.size() > 0)
      {
        localLinkedHashMap.put(localh.b(), localLinkedHashSet);
        k = n;
      }
    }
    return new c(localLinkedHashMap, k);
  }
  
  private LinkedHashSet<UUID> a(List<com.layer.b.d.h> paramList)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      com.layer.b.d.h localh = (com.layer.b.d.h)paramList.next();
      Integer localInteger = localh.bwI;
      if ((localInteger != null) && (localInteger.intValue() > 0)) {
        localLinkedHashSet.add(localh.b());
      }
    }
    return localLinkedHashSet;
  }
  
  private ConcurrentLinkedQueue<com.layer.b.d.c> a(int paramInt, Map<UUID, LinkedHashSet<Integer>> paramMap)
    throws InterruptedException
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("GetEventsTask: Fetching events");
    }
    final CountDownLatch localCountDownLatch = new CountDownLatch(paramInt);
    final ConcurrentLinkedQueue localConcurrentLinkedQueue1 = new ConcurrentLinkedQueue();
    ConcurrentLinkedQueue localConcurrentLinkedQueue2 = new ConcurrentLinkedQueue();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Object localObject1 = (Map.Entry)paramMap.next();
      final UUID localUUID = (UUID)((Map.Entry)localObject1).getKey();
      localObject1 = ((LinkedHashSet)((Map.Entry)localObject1).getValue()).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        final Integer localInteger = (Integer)((Iterator)localObject1).next();
        Object localObject2 = new k.c()
        {
          public final void a(com.layer.b.d.m paramAnonymousm)
          {
            try
            {
              if (com.layer.sdk.internal.lsdkk.k.a(6)) {
                com.layer.sdk.internal.lsdkk.k.d(c.wq(), "Exception in fetchEvents. Stream: " + localUUID + " Seq: " + localInteger + " ", paramAnonymousm);
              }
              c.a(c.this, new com.layer.a.c.e(c.this, new c.b(localUUID, localInteger), paramAnonymousm.getMessage(), paramAnonymousm));
              return;
            }
            finally
            {
              localCountDownLatch.countDown();
            }
          }
        };
        try
        {
          com.layer.b.d.k localk = this.a;
          paramInt = localInteger.intValue();
          localObject2 = new k.b(localk, (k.c)localObject2).jdMethod_do(200).a(new k.13(localk, localUUID, paramInt));
          if (localObject2 != null) {
            localConcurrentLinkedQueue2.add(localObject2);
          }
        }
        catch (Exception localException)
        {
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.d(e, "Exception in fetchEvents. Stream: " + localUUID + " Seq: " + localInteger + " ", localException);
          }
          a(new com.layer.a.c.e(this, new b(localUUID, localInteger), localException.getMessage(), localException));
          localCountDownLatch.countDown();
        }
      }
    }
    localCountDownLatch.await();
    paramMap = localConcurrentLinkedQueue2.iterator();
    while (paramMap.hasNext()) {
      ((com.b.a.h)paramMap.next()).c();
    }
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("GetEventsTask: Fetched events");
    }
    return localConcurrentLinkedQueue1;
  }
  
  private void a(List<com.layer.b.d.h> paramList, int paramInt, ConcurrentLinkedQueue<com.layer.b.d.c> paramConcurrentLinkedQueue, HashMap<UUID, HashSet<com.layer.b.d.c>> paramHashMap, HashMap<UUID, Integer> paramHashMap1)
    throws InterruptedException
  {
    int i = 0;
    int j;
    c localc;
    do
    {
      j = i + 1;
      localc = a(paramList, paramInt, paramConcurrentLinkedQueue, paramHashMap, paramHashMap1);
      paramConcurrentLinkedQueue.addAll(a(localc.c.intValue(), localc.bsB));
      if (j >= 5) {
        break;
      }
      i = j;
    } while (localc.c.intValue() > 0);
    if ((localc.c.intValue() > 0) && (j == 5)) {
      this.d.b().set(true);
    }
  }
  
  protected Iterable<com.layer.b.d.c> a(a parama)
    throws Exception
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("GetEventsTask: Run");
    }
    ConcurrentLinkedQueue localConcurrentLinkedQueue = new ConcurrentLinkedQueue();
    Object localObject1;
    if (parama.c())
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(e, "Historic sync first iteration. Args: " + parama);
      }
      localObject1 = this.c.a(parama.b());
      this.d.b().set(true);
      localObject1 = a((List)localObject1, false);
      localConcurrentLinkedQueue.addAll(a(((c)localObject1).c.intValue(), ((c)localObject1).bsB));
      if (localConcurrentLinkedQueue.size() > 0) {
        this.c.b(localConcurrentLinkedQueue);
      }
    }
    for (;;)
    {
      ((b)a.b(parama).get()).b(localConcurrentLinkedQueue.size());
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(e, "Completing getEventsTask. EventsCount: " + localConcurrentLinkedQueue.size() + ". mResults: " + this.d.toString());
      }
      return localConcurrentLinkedQueue;
      Object localObject2 = this.c.n();
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(e, "Subsequent sync iteration");
      }
      Object localObject3 = a((List)localObject2, true);
      ((c)localObject3).a((List)localObject2, parama.a(), this.d);
      Object localObject4 = a((List)localObject2, parama.a());
      localObject1 = null;
      LinkedHashSet localLinkedHashSet = a((List)localObject2);
      if (localLinkedHashSet.size() > 0) {
        localObject1 = a(localLinkedHashSet, (List)localObject2);
      }
      if (localObject4 != null) {
        ((c)localObject3).a((c)localObject4, parama.a(), this.d);
      }
      if (localObject1 != null) {
        ((c)localObject3).a((c)localObject1, parama.a(), this.d);
      }
      if (((c)localObject3).c.intValue() > 0) {
        localConcurrentLinkedQueue.addAll(a(((c)localObject3).c.intValue(), ((c)localObject3).bsB));
      }
      if (localConcurrentLinkedQueue.size() > 0)
      {
        localObject3 = new HashMap();
        localObject4 = new HashMap();
        if ((localObject1 != null) && (((c)localObject1).c.intValue() > 0) && (localConcurrentLinkedQueue.size() < parama.a())) {
          a((List)localObject2, parama.a(), localConcurrentLinkedQueue, (HashMap)localObject3, (HashMap)localObject4);
        }
        this.c.b(localConcurrentLinkedQueue);
        localObject1 = new HashMap();
        localObject2 = ((List)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          com.layer.b.d.h localh = (com.layer.b.d.h)((Iterator)localObject2).next();
          int i = -1;
          if (((HashMap)localObject3).containsKey(localh.b()))
          {
            j = localh.bwI.intValue() - ((HashSet)((HashMap)localObject3).get(localh.b())).size();
            i = j;
            if (j <= 0) {
              i = 0;
            }
            ((HashMap)localObject1).put(localh.b(), Integer.valueOf(i));
          }
          int j = i;
          if (((HashMap)localObject4).containsKey(localh.b()))
          {
            j = i;
            if (((Integer)((HashMap)localObject4).get(localh.b())).intValue() == q.a(localh))
            {
              ((HashMap)localObject1).put(localh.b(), Integer.valueOf(0));
              j = 0;
            }
          }
          if ((localLinkedHashSet.contains(localh.b())) && (j != 0)) {
            this.d.b().set(true);
          }
        }
        if (((HashMap)localObject1).size() > 0) {
          this.c.a((HashMap)localObject1);
        }
        if (((HashMap)localObject4).size() > 0) {
          this.c.b((HashMap)localObject4);
        }
      }
    }
  }
  
  public static final class a
  {
    private final int a;
    private final int b;
    private final a.e c;
    private final boolean d;
    private final AtomicReference<b> e;
    
    public a(int paramInt1, int paramInt2, a.e parame, boolean paramBoolean, AtomicReference<b> paramAtomicReference)
    {
      if (paramInt1 <= 0) {
        throw new IllegalArgumentException("Max number of events should be greater than zero " + paramInt1);
      }
      this.a = paramInt1;
      this.b = paramInt2;
      this.c = parame;
      this.d = paramBoolean;
      this.e = paramAtomicReference;
    }
    
    public final int a()
    {
      return this.a;
    }
    
    public final int b()
    {
      return this.b;
    }
    
    public final boolean c()
    {
      return this.d;
    }
    
    public final String toString()
    {
      return "Arg{mMaxNumberOfEvents=" + this.a + ", mCountOfConvForHistoricSyncFirstIteration=" + this.b + ", mType=" + this.c + ", mIsHistoricSyncFirstIteration=" + this.d + ", mSyncReconProgress=" + this.e + '}';
    }
  }
  
  public static final class b
  {
    private final UUID a;
    private final Integer b;
    
    public b(UUID paramUUID, Integer paramInteger)
    {
      this.a = paramUUID;
      this.b = paramInteger;
    }
  }
  
  private final class c
  {
    LinkedHashMap<UUID, LinkedHashSet<Integer>> bsB;
    Integer c;
    
    c(int paramInt)
    {
      this.bsB = paramInt;
      int i;
      this.c = Integer.valueOf(i);
    }
    
    final void a(c paramc, int paramInt, com.layer.sdk.internal.lsdki.lsdkc.c.c paramc1)
    {
      paramc = paramc.bsB.entrySet().iterator();
      Map.Entry localEntry;
      if (paramc.hasNext())
      {
        localEntry = (Map.Entry)paramc.next();
        if (this.c.intValue() >= paramInt) {
          paramc1.b().set(true);
        }
      }
      else
      {
        return;
      }
      Object localObject = (LinkedHashSet)localEntry.getValue();
      int i = 0;
      if (((LinkedHashSet)localObject).size() + this.c.intValue() <= paramInt)
      {
        if (this.bsB.containsKey(localEntry.getKey()))
        {
          i = ((LinkedHashSet)this.bsB.get(localEntry.getKey())).size();
          ((LinkedHashSet)this.bsB.get(localEntry.getKey())).addAll((Collection)localObject);
        }
        for (i = ((LinkedHashSet)this.bsB.get(localEntry.getKey())).size() - i;; i = ((LinkedHashSet)localObject).size())
        {
          this.c = Integer.valueOf(this.c.intValue() + i);
          break;
          this.bsB.put(localEntry.getKey(), localObject);
        }
      }
      if (!this.bsB.containsKey(localEntry.getKey())) {
        this.bsB.put(localEntry.getKey(), new LinkedHashSet());
      }
      localObject = ((LinkedHashSet)localObject).iterator();
      label267:
      if (((Iterator)localObject).hasNext())
      {
        Integer localInteger = (Integer)((Iterator)localObject).next();
        if (!((LinkedHashSet)this.bsB.get(localEntry.getKey())).add(localInteger)) {
          break label359;
        }
        i += 1;
      }
      label359:
      for (;;)
      {
        if (this.c.intValue() + i >= paramInt)
        {
          c.a(c.this).b().set(true);
          break;
        }
        break label267;
        break;
      }
    }
    
    final void a(List<com.layer.b.d.h> paramList, int paramInt, com.layer.sdk.internal.lsdki.lsdkc.c.c paramc)
    {
      if (this.c.intValue() <= paramInt) {
        return;
      }
      LinkedHashMap localLinkedHashMap = new LinkedHashMap();
      paramList = paramList.iterator();
      int i = 0;
      while (paramList.hasNext())
      {
        com.layer.b.d.h localh = (com.layer.b.d.h)paramList.next();
        if (i >= paramInt) {
          break;
        }
        if (this.bsB.containsKey(localh.b()))
        {
          Object localObject = (LinkedHashSet)this.bsB.get(localh.b());
          if (((LinkedHashSet)localObject).size() + i <= paramInt)
          {
            localLinkedHashMap.put(localh.b(), localObject);
            i = ((LinkedHashSet)localObject).size() + i;
          }
          else
          {
            LinkedHashSet localLinkedHashSet = new LinkedHashSet();
            localObject = ((LinkedHashSet)localObject).iterator();
            int j;
            do
            {
              j = i;
              if (!((Iterator)localObject).hasNext()) {
                break;
              }
              localLinkedHashSet.add((Integer)((Iterator)localObject).next());
              j = i + 1;
              i = j;
            } while (j < paramInt);
            if (localLinkedHashSet.size() > 0) {
              localLinkedHashMap.put(localh.b(), localLinkedHashSet);
            }
            i = j;
          }
        }
      }
      paramc.b().set(true);
      this.bsB = localLinkedHashMap;
      this.c = Integer.valueOf(i);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdka/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */