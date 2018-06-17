package com.layer.sdk.internal.lsdki.lsdka;

import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.layer.b.f.c.g;
import com.layer.b.f.c.p;
import com.layer.sdk.LayerClient.DeletionMode;
import com.layer.sdk.changes.LayerChange.Type;
import com.layer.sdk.internal.lsdkd.lsdka.e.a;
import com.layer.sdk.internal.lsdkd.lsdka.j;
import com.layer.sdk.internal.lsdkd.lsdka.n;
import com.layer.sdk.internal.lsdki.a.e;
import com.layer.sdk.internal.lsdki.d.a;
import com.layer.sdk.internal.lsdki.d.b;
import com.layer.sdk.internal.lsdki.d.c;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.internal.lsdkk.m.c;
import com.layer.sdk.internal.lsdkk.m.h;
import com.layer.sdk.internal.lsdkk.q;
import com.layer.sdk.messaging.Conversation.HistoricSyncStatus;
import com.layer.sdk.messaging.Message.RecipientStatus;
import com.layer.sdk.messaging.MessagePart.TransferStatus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class a
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(a.class);
  
  public static int a(a parama, c paramc, SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("InboundRecon: Start model conversions");
    }
    if (parama.n() == null) {
      throw new IllegalArgumentException("Null transaction");
    }
    Object localObject2 = new com.layer.sdk.internal.lsdke.a(parama.c());
    ArrayList localArrayList1 = new ArrayList();
    HashSet localHashSet = new HashSet();
    ((com.layer.sdk.internal.lsdke.a)localObject2).h(paramSQLiteDatabase);
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("InboundRecon: Deleted invalid changes");
    }
    List localList2 = ((com.layer.sdk.internal.lsdke.a)localObject2).a(paramSQLiteDatabase);
    localArrayList1.addAll(a(parama, (b)localObject2, paramSQLiteDatabase, localList2));
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("InboundRecon: Processed mutations");
    }
    List localList3 = ((com.layer.sdk.internal.lsdke.a)localObject2).b(paramSQLiteDatabase);
    localArrayList1.addAll(a(parama, (com.layer.sdk.internal.lsdke.a)localObject2, paramSQLiteDatabase, localList3));
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("InboundRecon: Processed identities");
    }
    ArrayList localArrayList2 = new ArrayList();
    localArrayList1.addAll(a(parama, (b)localObject2, paramSQLiteDatabase, paramBoolean, localHashSet, paramc, localArrayList2));
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("InboundRecon: Processed streams");
    }
    if ((!parama.y()) && (paramc.d().get()))
    {
      if (com.layer.sdk.internal.lsdkk.k.d()) {
        com.layer.sdk.internal.lsdkk.k.c("InboundRecon: Completing due to more streams to process");
      }
      return localList2.size() + localArrayList1.size();
    }
    List localList4 = ((com.layer.sdk.internal.lsdke.a)localObject2).c(paramSQLiteDatabase);
    if (localList4.size() >= 500) {
      paramc.d().set(true);
    }
    localArrayList1.addAll(a(parama, (b)localObject2, paramSQLiteDatabase, localList4, localHashSet, new AtomicInteger(0)));
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("InboundRecon: Processed events");
    }
    Object localObject1 = new LinkedList();
    AtomicInteger localAtomicInteger = new AtomicInteger(0);
    if (!paramc.d().get())
    {
      localList1 = ((com.layer.sdk.internal.lsdke.a)localObject2).d(paramSQLiteDatabase);
      if (localList1.size() >= 500) {
        paramc.d().set(true);
      }
      localArrayList1.addAll(a(parama, (b)localObject2, paramSQLiteDatabase, localList1, localHashSet, localAtomicInteger));
      localObject1 = localList1;
      if (com.layer.sdk.internal.lsdkk.k.d())
      {
        com.layer.sdk.internal.lsdkk.k.c("InboundRecon: Processed extra events");
        localObject1 = localList1;
      }
    }
    List localList1 = ((com.layer.sdk.internal.lsdke.a)localObject2).g(paramSQLiteDatabase);
    localArrayList1.addAll(b(parama, (b)localObject2, paramSQLiteDatabase, localList1));
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("InboundRecon: Processed remote keyed values");
    }
    c(parama, (b)localObject2, paramSQLiteDatabase, ((com.layer.sdk.internal.lsdke.a)localObject2).e(paramSQLiteDatabase));
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("InboundRecon: Processed presence");
    }
    if ((paramc.e().get()) && (localArrayList1.size() > 0)) {
      ((com.layer.sdk.internal.lsdke.a)localObject2).f(paramSQLiteDatabase);
    }
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("InboundRecon: Deleted synced changes");
    }
    if (paramBoolean)
    {
      localObject2 = localHashSet.iterator();
      while (((Iterator)localObject2).hasNext()) {
        if (a(parama, paramSQLiteDatabase, (com.layer.sdk.internal.lsdkd.lsdka.i)((Iterator)localObject2).next())) {
          paramc.c().incrementAndGet();
        }
      }
    }
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("InboundRecon: Marked messages delivered");
    }
    return localList2.size() + localArrayList2.size() + localList3.size() + localList4.size() + ((List)localObject1).size() + localAtomicInteger.get() + localList1.size() - localArrayList1.size();
  }
  
  private static com.layer.sdk.internal.lsdkd.lsdka.c a(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, boolean paramBoolean)
  {
    Object localObject1;
    Object localObject2;
    if (!paramBoolean)
    {
      localObject1 = paramb.a(paramSQLiteDatabase, com.layer.b.f.c.f.bDJ, paramh.b()).iterator();
      for (;;)
      {
        if (((Iterator)localObject1).hasNext())
        {
          localObject2 = (com.layer.b.d.i)((Iterator)localObject1).next();
          if (((p)localObject2).bFy == g.bDL) {
            if (com.layer.sdk.internal.lsdkk.k.a(2)) {
              com.layer.sdk.internal.lsdkk.k.a(a, "Initially marking conversation deleted due to: " + localObject2);
            }
          }
        }
      }
    }
    for (int i = 1;; i = 0)
    {
      if (d(paramh))
      {
        localObject1 = new com.layer.sdk.internal.lsdkd.lsdka.a(com.layer.sdk.internal.lsdkd.m.a(paramh), null);
        ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).b(paramh.bwE);
        ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).a(paramh.b());
        ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).e(paramh.h);
        ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).a(a(paramh));
        ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).a(Integer.valueOf(b(paramh)));
        ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).b(Integer.valueOf(c(paramh)));
        if (!paramh.zg()) {
          break label274;
        }
        ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).a(new Date(paramh.n));
      }
      for (;;)
      {
        if (i != 0)
        {
          ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).d(true);
          ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).n();
        }
        if (parama.m().b(((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).getId(), false) == null) {
          break label319;
        }
        return null;
        if (e(paramh))
        {
          localObject1 = new com.layer.sdk.internal.lsdkd.lsdka.c(com.layer.sdk.internal.lsdkd.m.a(paramh), null, false);
          break;
        }
        localObject1 = new com.layer.sdk.internal.lsdkd.lsdka.c(com.layer.sdk.internal.lsdkd.m.a(paramh), null);
        break;
        label274:
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(a, "Stream.created_at not set on server. Setting Conversation.created_at to current_timestamp. Stream = " + paramh);
        }
        ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).a(new Date());
      }
      label319:
      if ((!paramh.r()) || (paramh.c == null)) {
        paramh.c = new HashSet();
      }
      if (!paramh.c.isEmpty())
      {
        localObject2 = new HashSet(paramh.c);
        ((Set)localObject2).remove(parama.i());
        if ((!((Set)localObject2).isEmpty()) && (parama.r().containsAll((Collection)localObject2)))
        {
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(a, "blocking conversation creation between " + Arrays.toString(paramh.c.toArray()));
          }
          return null;
        }
      }
      parama = paramh.c.iterator();
      while (parama.hasNext())
      {
        localObject2 = (String)parama.next();
        Long localLong = paramb.a(paramSQLiteDatabase, paramh, (String)localObject2);
        com.layer.sdk.internal.lsdkd.lsdka.d locald = new com.layer.sdk.internal.lsdkd.lsdka.d();
        locald.b(((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).g());
        locald.a((String)localObject2);
        locald.c(localLong);
        ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).c(Collections.singletonList(locald));
      }
      ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).a(paramh.g);
      return (com.layer.sdk.internal.lsdkd.lsdka.c)localObject1;
    }
  }
  
  private static Conversation.HistoricSyncStatus a(com.layer.b.d.h paramh)
  {
    if ((paramh.bwF == null) || (paramh.bwI.intValue() > 0)) {
      return Conversation.HistoricSyncStatus.SYNC_PENDING;
    }
    if (paramh.bwF.intValue() == q.a(paramh)) {
      return Conversation.HistoricSyncStatus.NO_MORE_AVAILABLE;
    }
    return Conversation.HistoricSyncStatus.MORE_AVAILABLE;
  }
  
  private static Collection<? extends com.layer.sdk.internal.lsdki.d> a(a parama, com.layer.sdk.internal.lsdke.a parama1, SQLiteDatabase paramSQLiteDatabase, List<com.layer.sdk.internal.lsdki.d> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    HashSet localHashSet3 = new HashSet();
    Object localObject3;
    if (parama.y())
    {
      localObject2 = parama1.a(parama.f().intValue());
      localObject1 = new HashSet();
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = com.layer.sdk.internal.lsdke.lsdkc.b.d(paramSQLiteDatabase, ((com.layer.b.d.h)((Iterator)localObject2).next()).bwE);
        if (localObject3 != null) {
          ((Set)localObject1).addAll((Collection)localObject3);
        }
      }
      localObject1 = com.layer.sdk.internal.lsdke.lsdkc.b.a(paramSQLiteDatabase, (Set)localObject1);
      if (localObject1 != null)
      {
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext()) {
          localHashSet3.add(((com.layer.sdk.internal.lsdkd.lsdka.e)((Iterator)localObject1).next()).e());
        }
      }
    }
    Object localObject2 = new HashSet();
    Object localObject1 = paramList.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (com.layer.sdk.internal.lsdki.d)((Iterator)localObject1).next();
      if ((!parama.y()) || (localHashSet3.contains(((com.layer.sdk.internal.lsdki.d)localObject3).c()))) {
        ((Set)localObject2).add(((com.layer.sdk.internal.lsdki.d)localObject3).c());
      }
    }
    localObject1 = new HashMap();
    localObject2 = parama1.a(paramSQLiteDatabase, (Set)localObject2);
    if (localObject2 != null)
    {
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (com.layer.sdk.internal.lsdkd.lsdka.e)((Iterator)localObject2).next();
        ((HashMap)localObject1).put(((com.layer.sdk.internal.lsdkd.lsdka.e)localObject3).e(), localObject3);
      }
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localObject2 = (com.layer.sdk.internal.lsdki.d)paramList.next();
      if (((com.layer.sdk.internal.lsdki.d)localObject2).b() != d.c.f)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(a, "Cannot process non-identity changes. Change: " + localObject2);
        }
        throw new IllegalArgumentException("Cannot process non-identity changes. Change: " + localObject2);
      }
      localObject3 = ((com.layer.sdk.internal.lsdki.d)localObject2).c();
      if ((!parama.y()) || (localHashSet3.contains(localObject3)))
      {
        localObject3 = (com.layer.sdk.internal.lsdkd.lsdka.e)((HashMap)localObject1).get(localObject3);
        switch (1.b[localObject2.d().ordinal()])
        {
        default: 
        case 1: 
          for (;;)
          {
            localHashSet2.add(localObject2);
            break;
            ((com.layer.sdk.internal.lsdkd.lsdka.e)localObject3).c(new com.layer.sdk.internal.lsdkd.b(LayerChange.Type.INSERT, (com.layer.sdk.internal.lsdkd.d)localObject3, null, null, null));
            localHashSet1.add(localObject3);
          }
        case 2: 
          com.layer.sdk.internal.lsdkd.lsdka.e locale = (com.layer.sdk.internal.lsdkd.lsdka.e)parama.m().a(((com.layer.sdk.internal.lsdkd.lsdka.e)localObject3).getId(), false);
          d.b localb = ((com.layer.sdk.internal.lsdki.d)localObject2).e();
          if (localb == null)
          {
            if (com.layer.sdk.internal.lsdkk.k.a(6)) {
              com.layer.sdk.internal.lsdkk.k.e(a, "No known field for identity update. Change: " + localObject2 + ". identity: " + localObject3);
            }
            throw new IllegalArgumentException("No known field for identity update. Change: " + localObject2 + ". identity: " + localObject3);
          }
          switch (1.brd[localb.ordinal()])
          {
          default: 
            if (com.layer.sdk.internal.lsdkk.k.a(6)) {
              com.layer.sdk.internal.lsdkk.k.e(a, "No known field for identity update. Change: " + localObject2 + ". identity: " + localObject3);
            }
            throw new IllegalArgumentException("No known field for identity update. Change: " + localObject2 + ". identity: " + localObject3);
          case 1: 
            locale.a(e.a.a, ((com.layer.sdk.internal.lsdkd.lsdka.e)localObject3).getDisplayName());
          }
          for (;;)
          {
            localHashSet1.add(locale);
            break;
            locale.a(e.a.b, ((com.layer.sdk.internal.lsdkd.lsdka.e)localObject3).getFirstName());
            continue;
            locale.a(e.a.c, ((com.layer.sdk.internal.lsdkd.lsdka.e)localObject3).getLastName());
            continue;
            locale.a(e.a.d, ((com.layer.sdk.internal.lsdkd.lsdka.e)localObject3).getPhoneNumber());
            continue;
            locale.a(e.a.e, ((com.layer.sdk.internal.lsdkd.lsdka.e)localObject3).getEmailAddress());
            continue;
            locale.a(e.a.f, ((com.layer.sdk.internal.lsdkd.lsdka.e)localObject3).getAvatarImageUrl());
            continue;
            locale.a(e.a.h, ((com.layer.sdk.internal.lsdkd.lsdka.e)localObject3).getPublicKey());
            continue;
            locale.a(e.a.i, Boolean.valueOf(((com.layer.sdk.internal.lsdkd.lsdka.e)localObject3).isFollowed()));
          }
        }
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(a, "Cannot delete an identity. Change: " + localObject2 + ". identity: " + localObject3);
        }
        throw new IllegalArgumentException("Cannot delete an identity. Change: " + localObject2 + ". identity: " + localObject3);
      }
    }
    parama1.a(paramSQLiteDatabase, localHashSet2);
    parama1 = localHashSet1.iterator();
    while (parama1.hasNext())
    {
      paramSQLiteDatabase = (com.layer.sdk.internal.lsdkd.lsdka.e)parama1.next();
      parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { paramSQLiteDatabase });
    }
    return localArrayList;
  }
  
  private static List<com.layer.sdk.internal.lsdki.d> a(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, List<com.layer.sdk.internal.lsdki.d> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      com.layer.sdk.internal.lsdki.d locald = (com.layer.sdk.internal.lsdki.d)paramList.next();
      if (locald.b() != d.c.b) {
        throw new IllegalArgumentException("Cannot process non-mutation changes. Change: " + locald);
      }
      Object localObject2 = paramb.h(paramSQLiteDatabase, locald.c());
      if (localObject2 == null)
      {
        paramb.a(paramSQLiteDatabase, locald);
      }
      else if (((p)localObject2).bFy != g.bDL)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(a, "Cannot process mutation of this type: " + localObject2);
        }
        paramb.a(paramSQLiteDatabase, locald);
      }
      else
      {
        Object localObject1 = ((com.layer.b.d.i)localObject2).wV();
        int i = ((p)localObject2).bpD;
        switch (1.bqe[localObject2.bFz.ordinal()])
        {
        default: 
          break;
        case 1: 
          localObject1 = paramb.a(paramSQLiteDatabase, (UUID)localObject1, Integer.valueOf(i));
          if (localObject1 == null)
          {
            paramb.a(paramSQLiteDatabase, locald);
          }
          else if (((com.layer.b.f.c.d)localObject1).bCE != com.layer.b.f.c.e.bDq)
          {
            paramb.a(paramSQLiteDatabase, locald);
          }
          else
          {
            localObject1 = com.layer.sdk.internal.lsdkd.m.a((com.layer.b.d.c)localObject1);
            localObject1 = parama.m().c((Uri)localObject1, false);
            if (localObject1 == null)
            {
              paramb.a(paramSQLiteDatabase, locald);
            }
            else
            {
              ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).b(true);
              parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { localObject1 });
            }
          }
          break;
        case 2: 
          label671:
          for (;;)
          {
            paramb.a(paramSQLiteDatabase, locald);
            break;
            localObject2 = paramb.a(paramSQLiteDatabase, (UUID)localObject1);
            if (localObject2 == null)
            {
              paramb.a(paramSQLiteDatabase, locald);
              break;
            }
            localObject2 = com.layer.sdk.internal.lsdkd.m.a((com.layer.b.d.h)localObject2);
            localObject2 = parama.m().b((Uri)localObject2, false);
            if (localObject2 == null)
            {
              paramb.a(paramSQLiteDatabase, locald);
              break;
            }
            boolean bool;
            if (i == 0) {
              bool = parama.m().a((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2, false).isEmpty();
            }
            for (;;)
            {
              if ((!bool) || (((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2).isDeleted())) {
                break label671;
              }
              parama.m().a(parama.n(), (com.layer.sdk.internal.lsdkd.d)localObject2, LayerClient.DeletionMode.ALL_MY_DEVICES, com.layer.sdk.internal.lsdkd.f.a);
              break;
              localObject1 = paramb.a(paramSQLiteDatabase, (UUID)localObject1, Integer.valueOf(i));
              if ((localObject1 == null) || (((com.layer.b.f.c.d)localObject1).bCE != com.layer.b.f.c.e.bDq))
              {
                if (com.layer.sdk.internal.lsdkk.k.a(5)) {
                  com.layer.sdk.internal.lsdkk.k.d(a, "Ignoring conversation deletion mutation; target event is not a message: " + localObject1);
                }
                bool = false;
              }
              else
              {
                long l = com.layer.sdk.internal.lsdkd.lsdka.k.a((com.layer.b.d.c)localObject1);
                localObject1 = parama.m().a((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2, false).iterator();
                i = 0;
                while (((Iterator)localObject1).hasNext())
                {
                  com.layer.sdk.internal.lsdkd.lsdka.i locali = (com.layer.sdk.internal.lsdkd.lsdka.i)((Iterator)localObject1).next();
                  if (locali.getPosition() <= Long.valueOf(l).longValue())
                  {
                    if (!locali.isDeleted()) {
                      parama.m().a(parama.n(), locali, LayerClient.DeletionMode.ALL_MY_DEVICES, com.layer.sdk.internal.lsdkd.f.a);
                    }
                  }
                  else {
                    i += 1;
                  }
                }
                if (i == 0) {
                  bool = true;
                } else {
                  bool = false;
                }
              }
            }
          }
        }
      }
    }
    return localArrayList;
  }
  
  private static List<com.layer.sdk.internal.lsdki.d> a(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, List<com.layer.sdk.internal.lsdki.d> paramList, Set<com.layer.sdk.internal.lsdkd.lsdka.i> paramSet, AtomicInteger paramAtomicInteger)
  {
    ArrayList localArrayList = new ArrayList();
    LinkedHashSet localLinkedHashSet1 = new LinkedHashSet();
    HashSet localHashSet1 = new HashSet();
    LinkedHashSet localLinkedHashSet2 = new LinkedHashSet();
    if (parama.y())
    {
      localObject1 = paramb.a(parama.f().intValue()).iterator();
      while (((Iterator)localObject1).hasNext()) {
        localLinkedHashSet2.add(((com.layer.b.d.h)((Iterator)localObject1).next()).bwE);
      }
    }
    Object localObject1 = new HashMap();
    Object localObject2 = new LinkedList();
    Object localObject3 = paramList.iterator();
    while (((Iterator)localObject3).hasNext()) {
      ((List)localObject2).add(((com.layer.sdk.internal.lsdki.d)((Iterator)localObject3).next()).c());
    }
    localObject2 = paramb.a(paramSQLiteDatabase, (List)localObject2);
    if (localObject2 != null)
    {
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (com.layer.b.d.c)((Iterator)localObject2).next();
        ((HashMap)localObject1).put(((com.layer.b.d.c)localObject3).bvQ, localObject3);
      }
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localObject2 = (com.layer.sdk.internal.lsdki.d)paramList.next();
      if (((com.layer.sdk.internal.lsdki.d)localObject2).b() != d.c.a) {
        throw new IllegalArgumentException("Cannot process non-event changes in processEvents. Change: " + localObject2);
      }
      Object localObject4 = ((com.layer.sdk.internal.lsdki.d)localObject2).c();
      if (localObject4 == null)
      {
        localHashSet1.add(((com.layer.sdk.internal.lsdki.d)localObject2).c());
      }
      else
      {
        localObject3 = (com.layer.b.d.c)((HashMap)localObject1).get(localObject4);
        if ((localObject3 != null) && (localLinkedHashSet1.contains(localObject3))) {
          localHashSet1.add(((com.layer.sdk.internal.lsdki.d)localObject2).c());
        } else if ((!parama.y()) || (localObject3 == null) || (localLinkedHashSet2.contains(((com.layer.b.d.c)localObject3).bvR))) {
          switch (1.b[localObject2.d().ordinal()])
          {
          default: 
            break;
          case 1: 
            if (localObject3 == null)
            {
              localHashSet1.add(((com.layer.sdk.internal.lsdki.d)localObject2).c());
            }
            else
            {
              localObject4 = new LinkedHashMap();
              HashSet localHashSet2 = new HashSet();
              if (a(parama, paramb, paramSQLiteDatabase, (com.layer.b.d.c)localObject3, paramSet, localLinkedHashSet1, (LinkedHashMap)localObject4, localHashSet2))
              {
                localHashSet1.add(((com.layer.sdk.internal.lsdki.d)localObject2).c());
                localObject2 = new HashSet();
                if (localLinkedHashSet1.size() > 0) {
                  a(parama, paramb, paramSQLiteDatabase, paramSet, localLinkedHashSet1, localHashSet1, (HashMap)localObject4, (HashSet)localObject2);
                }
                if (!((LinkedHashMap)localObject4).isEmpty()) {
                  parama.m().a(parama.n(), ((LinkedHashMap)localObject4).values());
                }
                localObject3 = localHashSet2.iterator();
                while (((Iterator)localObject3).hasNext())
                {
                  localObject4 = (j)((Iterator)localObject3).next();
                  if (parama.l().g().c((j)localObject4)) {
                    parama.l().g().b((j)localObject4, null);
                  }
                }
                localObject2 = ((HashSet)localObject2).iterator();
                while (((Iterator)localObject2).hasNext())
                {
                  localObject3 = (com.layer.b.d.c)((Iterator)localObject2).next();
                  if (b(parama, paramb, paramSQLiteDatabase, ((com.layer.b.d.c)localObject3).bvQ)) {
                    localHashSet1.add(((com.layer.b.d.c)localObject3).bvQ);
                  }
                }
                paramAtomicInteger.addAndGet(localLinkedHashSet1.size());
                localLinkedHashSet1.clear();
              }
              else
              {
                localArrayList.add(localObject2);
              }
            }
            break;
          case 2: 
            if (localObject3 == null) {
              localHashSet1.add(((com.layer.sdk.internal.lsdki.d)localObject2).c());
            } else if (b(parama, paramb, paramSQLiteDatabase, (com.layer.b.d.c)localObject3)) {
              localHashSet1.add(((com.layer.sdk.internal.lsdki.d)localObject2).c());
            } else {
              localArrayList.add(localObject2);
            }
            break;
          case 3: 
            if (b(parama, paramb, paramSQLiteDatabase, (Long)localObject4)) {
              localHashSet1.add(((com.layer.sdk.internal.lsdki.d)localObject2).c());
            } else {
              localArrayList.add(localObject2);
            }
            break;
          }
        }
      }
    }
    paramb.d(paramSQLiteDatabase, localHashSet1);
    return localArrayList;
  }
  
  private static List<com.layer.sdk.internal.lsdki.d> a(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean, Set<com.layer.sdk.internal.lsdkd.lsdka.i> paramSet, c paramc, List<com.layer.sdk.internal.lsdki.d> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    HashSet localHashSet = new HashSet();
    Object localObject1 = paramb.a(paramSQLiteDatabase, d.a.c);
    paramList.addAll((Collection)localObject1);
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (com.layer.sdk.internal.lsdki.d)((Iterator)localObject1).next();
      if (a(parama, paramb, paramSQLiteDatabase, ((com.layer.sdk.internal.lsdki.d)localObject2).c())) {
        localHashSet.add(localObject2);
      } else {
        localArrayList.add(localObject2);
      }
    }
    localObject1 = new LinkedHashSet();
    if (parama.y())
    {
      localObject2 = paramb.a(parama.f().intValue()).iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((HashSet)localObject1).add(((com.layer.b.d.h)((Iterator)localObject2).next()).bwE);
      }
    }
    Object localObject2 = paramb.a(paramSQLiteDatabase, d.a.b);
    paramList.addAll((Collection)localObject2);
    localObject2 = ((List)localObject2).iterator();
    Object localObject4;
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (com.layer.sdk.internal.lsdki.d)((Iterator)localObject2).next();
      localObject4 = paramb.j(paramSQLiteDatabase, ((com.layer.sdk.internal.lsdki.d)localObject3).c());
      if (localObject4 == null) {
        localHashSet.add(localObject3);
      } else if (a(parama, (com.layer.b.d.h)localObject4)) {
        localHashSet.add(localObject3);
      } else {
        localArrayList.add(localObject3);
      }
    }
    Object localObject3 = paramb.a(paramSQLiteDatabase, d.a.a);
    paramList.addAll((Collection)localObject3);
    localObject2 = new HashSet();
    localObject3 = ((List)localObject3).iterator();
    while (((Iterator)localObject3).hasNext())
    {
      localObject4 = (com.layer.sdk.internal.lsdki.d)((Iterator)localObject3).next();
      Object localObject5 = ((com.layer.sdk.internal.lsdki.d)localObject4).c();
      if ((parama.y()) && (!((HashSet)localObject1).contains(localObject5)))
      {
        paramc.d().set(true);
      }
      else
      {
        localObject5 = paramb.j(paramSQLiteDatabase, (Long)localObject5);
        if (localObject5 == null)
        {
          localHashSet.add(localObject4);
        }
        else
        {
          localObject5 = a(parama, paramb, paramSQLiteDatabase, (com.layer.b.d.h)localObject5, false);
          if (localObject5 != null) {
            ((Set)localObject2).add(localObject5);
          }
          localHashSet.add(localObject4);
        }
      }
    }
    if ((parama.t() == a.e.b) && (parama.e().get() < 3)) {}
    for (boolean bool = true;; bool = false)
    {
      parama.m().a(parama.n(), (Collection)localObject2, bool);
      paramb.a(paramSQLiteDatabase, localHashSet);
      localArrayList.addAll(a(parama, paramb, paramSQLiteDatabase, paramBoolean, paramSet, paramc, paramList, (Set)localObject1));
      return localArrayList;
    }
  }
  
  private static List<com.layer.sdk.internal.lsdki.d> a(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean, Set<com.layer.sdk.internal.lsdkd.lsdka.i> paramSet, c paramc, List<com.layer.sdk.internal.lsdki.d> paramList, Set<Long> paramSet1)
  {
    ArrayList localArrayList = new ArrayList();
    HashSet localHashSet = new HashSet();
    Object localObject1 = paramb.a(paramSQLiteDatabase, 500);
    if (((List)localObject1).size() == 500) {
      paramc.d().getAndSet(true);
    }
    paramList.addAll((Collection)localObject1);
    paramList = ((List)localObject1).iterator();
    while (paramList.hasNext())
    {
      localObject1 = (com.layer.sdk.internal.lsdki.d)paramList.next();
      if ((parama.y()) && (!paramSet1.contains(((com.layer.sdk.internal.lsdki.d)localObject1).c()))) {
        paramc.d().set(true);
      } else {
        switch (1.bqK[localObject1.b().ordinal()])
        {
        default: 
          break;
        case 1: 
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.e(a, "Cannot process event changes in processStreams. Change: " + localObject1);
          }
          throw new IllegalArgumentException("Cannot process event changes in processStreams. Change: " + localObject1);
        case 2: 
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.e(a, "Stream change should have been processed already. Change: " + localObject1);
          }
          throw new IllegalArgumentException("Stream change should have been processed already. Change: " + localObject1);
        case 3: 
          Long localLong = ((com.layer.sdk.internal.lsdki.d)localObject1).c();
          Object localObject2;
          Object localObject3;
          switch (1.b[localObject1.d().ordinal()])
          {
          default: 
            break;
          case 1: 
            localObject2 = paramb.a(paramSQLiteDatabase, localLong);
            localObject3 = paramb.b(paramSQLiteDatabase, localLong);
            if (localObject3 == null)
            {
              localHashSet.add(localObject1);
            }
            else
            {
              localObject3 = b(parama, (com.layer.b.d.h)localObject3);
              if (localObject3 == null) {
                localHashSet.add(localObject1);
              } else if (a(parama, (com.layer.sdk.internal.lsdkd.lsdka.c)localObject3, localLong, (String)localObject2, paramBoolean, paramb, paramSQLiteDatabase, paramSet)) {
                localHashSet.add(localObject1);
              } else {
                localArrayList.add(localObject1);
              }
            }
            break;
          case 2: 
            throw new IllegalArgumentException("Cannot update a stream member. Change: " + localObject1 + ". streamMemberId: " + localLong);
          case 3: 
            localObject2 = paramb.d(paramSQLiteDatabase, localLong);
            if (localObject2 == null)
            {
              localHashSet.add(localObject1);
            }
            else
            {
              localObject3 = paramb.e(paramSQLiteDatabase, ((com.layer.sdk.internal.lsdkd.lsdka.d)localObject2).c());
              if (localObject3 == null)
              {
                localHashSet.add(localObject1);
              }
              else
              {
                localObject3 = parama.m().b((Uri)localObject3, false);
                if (localObject3 == null) {
                  throw new IllegalStateException("No conversation found for stream. Change: " + localObject1 + ". participant: " + localObject2);
                }
                if (a(parama, paramb, paramSQLiteDatabase, (com.layer.sdk.internal.lsdkd.lsdka.c)localObject3, localLong, ((com.layer.sdk.internal.lsdkd.lsdka.d)localObject2).a())) {
                  localHashSet.add(localObject1);
                } else {
                  localArrayList.add(localObject1);
                }
              }
            }
            break;
          }
          break;
        }
      }
    }
    paramb.a(paramSQLiteDatabase, localHashSet);
    return localArrayList;
  }
  
  private static void a(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, Set<com.layer.sdk.internal.lsdkd.lsdka.i> paramSet, LinkedHashSet<com.layer.b.d.c> paramLinkedHashSet, Set<Long> paramSet1, HashMap<Uri, com.layer.sdk.internal.lsdkd.d> paramHashMap, HashSet<com.layer.b.d.c> paramHashSet)
  {
    paramLinkedHashSet = paramLinkedHashSet.iterator();
    while (paramLinkedHashSet.hasNext())
    {
      com.layer.b.d.c localc = (com.layer.b.d.c)paramLinkedHashSet.next();
      switch (1.bsw[localc.bCE.ordinal()])
      {
      default: 
        throw new IllegalStateException("Unexpected event in eventsTargetingInsertions. Event: " + localc);
      case 1: 
      case 2: 
      case 3: 
      case 4: 
      case 5: 
        paramSet1.add(localc.bvQ);
        break;
      case 6: 
      case 7: 
        if (a(parama, paramb, paramSQLiteDatabase, localc, paramSet, paramHashMap)) {
          paramSet1.add(localc.bvQ);
        }
        break;
      case 8: 
        paramHashSet.add(localc);
      }
    }
  }
  
  private static boolean a(a parama, SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdkd.lsdka.i parami)
  {
    Object localObject = parama.m().b(parami.g(), false);
    if (!((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).isDeliveryReceiptsEnabled()) {}
    do
    {
      Message.RecipientStatus localRecipientStatus;
      do
      {
        do
        {
          return false;
        } while ((!((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).isReadReceiptsEnabled()) || ((parami.o() != null) && (parami.o().equals(parama.i()))));
        localRecipientStatus = parami.a(parama.i());
      } while ((Message.RecipientStatus.DELIVERED.equals(localRecipientStatus)) || (Message.RecipientStatus.READ.equals(localRecipientStatus)));
      localObject = ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).m();
    } while (!parama.c().j(paramSQLiteDatabase, (Long)localObject).c.contains(parama.i()));
    parami.a(parama.i(), Message.RecipientStatus.DELIVERED, null);
    parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { parami });
    return true;
  }
  
  private static boolean a(a parama, com.layer.b.d.h paramh)
  {
    com.layer.sdk.internal.lsdkd.lsdka.c localc = b(parama, paramh);
    if (localc == null) {
      return true;
    }
    if ((e(paramh)) && (localc.isReadReceiptsEnabled()))
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Channel became a Conversation! stream: " + paramh + ". Conversation: " + localc);
      }
      throw new IllegalStateException("Channel became a Conversation! stream: " + paramh + ". Conversation: " + localc);
    }
    localc.b(paramh.b());
    localc.c(paramh.bwE);
    localc.f(paramh.h);
    localc.c(com.layer.sdk.internal.lsdkd.m.a(paramh));
    localc.b(a(paramh));
    localc.c(Integer.valueOf(b(paramh)));
    localc.d(Integer.valueOf(c(paramh)));
    parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { localc });
    parama.q().add(localc.g());
    return true;
  }
  
  private static boolean a(a parama, com.layer.sdk.internal.lsdkd.lsdka.c paramc, Long paramLong, String paramString, boolean paramBoolean, b paramb, SQLiteDatabase paramSQLiteDatabase, Set<com.layer.sdk.internal.lsdkd.lsdka.i> paramSet)
  {
    if (!paramc.k().contains(paramString))
    {
      paramb = new com.layer.sdk.internal.lsdkd.lsdka.d(paramString);
      paramb.b(paramc.g());
      paramb.c(paramLong);
      paramc.c(Collections.singletonList(paramb));
      parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { paramc });
      if ((paramBoolean) && (paramc.isReadReceiptsEnabled()) && (paramString.equals(parama.i())))
      {
        paramSet.addAll(parama.m().a(paramc, false));
        break label127;
      }
    }
    label127:
    do
    {
      do
      {
        return true;
        parama = paramc.l().iterator();
      } while (!parama.hasNext());
      paramc = (com.layer.sdk.internal.lsdkd.lsdka.d)parama.next();
      if (!paramc.a().equals(paramString)) {
        break;
      }
    } while (paramc.d() != null);
    paramc.c(paramLong);
    paramb.a(paramSQLiteDatabase, paramc.b(), paramLong);
    return true;
  }
  
  private static boolean a(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc)
  {
    com.layer.sdk.internal.lsdkd.lsdka.c localc = b(parama, paramb.a(paramSQLiteDatabase, paramc.bvS));
    if (localc == null) {
      return true;
    }
    long l = paramc.bCM;
    paramSQLiteDatabase = paramc.c;
    paramb = paramb.a(localc, paramSQLiteDatabase, l);
    paramb = parama.m().b(paramb, false);
    paramc = paramb.iterator();
    while (paramc.hasNext()) {
      ((com.layer.sdk.internal.lsdkd.lsdka.i)paramc.next()).a(paramSQLiteDatabase, Message.RecipientStatus.READ, Integer.valueOf(-1));
    }
    parama.m().b(parama.n(), (com.layer.sdk.internal.lsdkd.d[])paramb.toArray(new com.layer.sdk.internal.lsdkd.d[paramb.size()]));
    return true;
  }
  
  private static boolean a(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc, Set<com.layer.sdk.internal.lsdkd.lsdka.i> paramSet, HashMap<Uri, com.layer.sdk.internal.lsdkd.d> paramHashMap)
  {
    com.layer.b.d.c localc = paramb.a(paramSQLiteDatabase, paramc.bvS, Integer.valueOf(paramc.bCG));
    if (localc == null) {}
    label509:
    label626:
    for (;;)
    {
      return true;
      if (!localc.bCE.equals(com.layer.b.f.c.e.bDu)) {
        if (!localc.bCE.equals(com.layer.b.f.c.e.bDq))
        {
          if (com.layer.sdk.internal.lsdkk.k.a(5))
          {
            com.layer.sdk.internal.lsdkk.k.d(a, "Illegal state : Ignoring event: Cannot process a receipt for EventType. Event client-id:" + paramc.d() + " " + paramc.toString() + ". MessageEvent client-id:" + localc.d() + " " + localc.toString());
            return true;
          }
        }
        else
        {
          Object localObject2 = com.layer.sdk.internal.lsdkd.m.a(localc);
          Object localObject1 = localObject2;
          if (!paramHashMap.containsKey(localObject2))
          {
            localObject2 = com.layer.sdk.internal.lsdkd.m.b(localc);
            localObject1 = localObject2;
            if (paramHashMap.containsKey(localObject2)) {}
          }
          for (paramb = paramb.g(paramSQLiteDatabase, localc.bvQ);; paramb = (b)localObject1)
          {
            if (paramb == null) {
              break label626;
            }
            switch (1.bsw[paramc.bCE.ordinal()])
            {
            default: 
              if (com.layer.sdk.internal.lsdkk.k.a(6)) {
                com.layer.sdk.internal.lsdkk.k.e(a, "Cannot process receipt for: " + paramc.bCE);
              }
              throw new IllegalArgumentException("Cannot process receipt for: " + paramc.bCE);
            }
            String str;
            for (paramSQLiteDatabase = Message.RecipientStatus.DELIVERED;; paramSQLiteDatabase = Message.RecipientStatus.READ)
            {
              str = paramc.c;
              if (str != null) {
                break;
              }
              if (com.layer.sdk.internal.lsdkk.k.a(6)) {
                com.layer.sdk.internal.lsdkk.k.e(a, "Null recipient creator ID in recipient event. Event: " + paramc);
              }
              throw new IllegalArgumentException("Null recipient creator ID in recipient event. Event: " + paramc);
            }
            if (paramHashMap.containsKey(paramb))
            {
              localObject1 = (com.layer.sdk.internal.lsdkd.lsdka.i)paramHashMap.get(paramb);
              ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a(parama.l());
            }
            for (;;)
            {
              if (((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).r()) {
                break label509;
              }
              if (!com.layer.sdk.internal.lsdkk.k.a(5)) {
                break;
              }
              com.layer.sdk.internal.lsdkk.k.d(a, "Illegal state : Ignoring event: Cannot process a receipt for CHANNEL Message. Event client-id:" + paramc.d() + " " + paramc.toString() + ". Message client-id:" + localc.d() + " " + localc.toString() + ". Message: " + localObject1);
              return true;
              localObject1 = (com.layer.sdk.internal.lsdkd.lsdka.i)parama.m().a(paramb, false);
            }
            if (paramc.c.equals(parama.i())) {
              paramSet.remove(localObject1);
            }
            localObject2 = ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a(paramc.c);
            paramSet = (Set<com.layer.sdk.internal.lsdkd.lsdka.i>)localObject2;
            if (localObject2 == null) {
              paramSet = Message.RecipientStatus.PENDING;
            }
            if (paramSQLiteDatabase.ordinal() <= paramSet.ordinal()) {
              break;
            }
            ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a(str, paramSQLiteDatabase, Integer.valueOf(paramc.d));
            if (paramHashMap.containsKey(paramb)) {
              break;
            }
            parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { localObject1 });
            return true;
          }
        }
      }
    }
  }
  
  private static boolean a(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc, Set<com.layer.sdk.internal.lsdkd.lsdka.i> paramSet, LinkedHashSet<com.layer.b.d.c> paramLinkedHashSet, LinkedHashMap<Uri, com.layer.sdk.internal.lsdkd.d> paramLinkedHashMap, Set<j> paramSet1)
  {
    boolean bool = true;
    switch (1.bsw[paramc.bCE.ordinal()])
    {
    case 4: 
    default: 
      bool = false;
    case 1: 
    case 2: 
    case 3: 
    case 5: 
    case 8: 
    case 11: 
      return bool;
    case 9: 
      return b(parama, paramb, paramSQLiteDatabase, paramc, paramSet, paramLinkedHashSet, paramLinkedHashMap, paramSet1);
    case 6: 
    case 7: 
      return a(parama, paramb, paramSQLiteDatabase, paramc, paramSet, new LinkedHashMap());
    }
    return a(parama, paramb, paramSQLiteDatabase, paramc);
  }
  
  private static boolean a(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdkd.lsdka.c paramc, Long paramLong, String paramString)
  {
    if (paramc.k().contains(paramString))
    {
      com.layer.sdk.internal.lsdkd.lsdka.d locald = new com.layer.sdk.internal.lsdkd.lsdka.d(paramString);
      locald.b(paramc.g());
      locald.c(paramLong);
      paramc.d(Collections.singletonList(locald));
      parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { paramc });
      paramb.a(paramSQLiteDatabase, paramc.g(), paramString);
    }
    return true;
  }
  
  private static boolean a(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    paramb = paramb.c(paramSQLiteDatabase, paramLong);
    if (paramb == null) {}
    do
    {
      return true;
      paramb = parama.m().b(paramb, false);
      paramSQLiteDatabase = parama.m().a(paramb, false).iterator();
      while (paramSQLiteDatabase.hasNext())
      {
        paramLong = (com.layer.sdk.internal.lsdkd.lsdka.i)paramSQLiteDatabase.next();
        if (!paramLong.c()) {
          parama.m().a(parama.n(), paramLong, LayerClient.DeletionMode.ALL_PARTICIPANTS, com.layer.sdk.internal.lsdkd.f.a);
        }
      }
    } while (paramb.c());
    parama.m().a(parama.n(), paramb, LayerClient.DeletionMode.ALL_PARTICIPANTS, com.layer.sdk.internal.lsdkd.f.a);
    return true;
  }
  
  private static int b(com.layer.b.d.h paramh)
  {
    if ((paramh.yu()) && (paramh.bEM.b())) {
      return paramh.bEM.a;
    }
    return 0;
  }
  
  private static com.layer.sdk.internal.lsdkd.lsdka.c b(a parama, com.layer.b.d.h paramh)
  {
    Object localObject;
    if (paramh == null) {
      localObject = null;
    }
    do
    {
      com.layer.sdk.internal.lsdkd.lsdka.c localc;
      do
      {
        return (com.layer.sdk.internal.lsdkd.lsdka.c)localObject;
        localc = (com.layer.sdk.internal.lsdkd.lsdka.c)parama.m().a(com.layer.sdk.internal.lsdkd.m.a(paramh.c()), false);
        localObject = localc;
      } while (localc != null);
      localObject = localc;
    } while (!paramh.ys());
    return (com.layer.sdk.internal.lsdkd.lsdka.c)parama.m().a(com.layer.sdk.internal.lsdkd.m.a(paramh.wV()), false);
  }
  
  private static List<com.layer.sdk.internal.lsdki.d> b(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, List<com.layer.sdk.internal.lsdki.d> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      com.layer.sdk.internal.lsdki.d locald = (com.layer.sdk.internal.lsdki.d)paramList.next();
      if (locald.b() != d.c.c)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(a, "Cannot process " + locald.b() + " changes in processRemoteKeyedValues");
        }
        throw new IllegalArgumentException("Cannot process " + locald.b() + " changes in processRemoteKeyedValues");
      }
      com.layer.sdk.internal.lsdkd.lsdka.o localo = paramb.i(paramSQLiteDatabase, locald.c());
      Object localObject1;
      Object localObject2;
      switch (1.bsy[localo.c().ordinal()])
      {
      default: 
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(a, "Processing remote keyed value type not implemented. Object type: " + localo.c());
        }
        throw new IllegalArgumentException("Processing remote keyed value type not implemented. Object type: " + localo.c());
      case 1: 
        localObject1 = localo.d();
        localObject2 = paramb.c(paramSQLiteDatabase, (Long)localObject1);
        if (localObject2 == null)
        {
          if (parama.y()) {
            localArrayList.add(locald);
          } else {
            paramb.a(paramSQLiteDatabase, locald);
          }
        }
        else
        {
          com.layer.sdk.internal.lsdkd.lsdka.c localc = parama.m().b((Uri)localObject2, false);
          switch (1.b[locald.d().ordinal()])
          {
          }
          for (;;)
          {
            paramb.a(paramSQLiteDatabase, locald);
            break;
            if (localo.g() != null)
            {
              localc.a(new m.c(localo.f()), new m.h(localo.g(), localo.h()));
              parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { localc });
            }
            else if (com.layer.sdk.internal.lsdkk.k.a(5))
            {
              com.layer.sdk.internal.lsdkk.k.d(a, "Ignoring REMOTE_KEYED_VALUES Update with null value. remoteKeyedValue:" + localo.toString() + " .streamDbId: " + localObject1 + ". conversationUri: " + localObject2 + ". ConversationImpl " + localc.toString());
              continue;
              localc.a(new m.c(localo.f()));
              parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { localc });
            }
          }
        }
        break;
      case 2: 
        localObject1 = paramb.f(paramSQLiteDatabase, localo.d());
        localObject2 = (com.layer.sdk.internal.lsdkd.lsdka.e)parama.m().a((Uri)localObject1, false);
        switch (1.b[locald.d().ordinal()])
        {
        }
        for (;;)
        {
          paramb.a(paramSQLiteDatabase, locald);
          break;
          if (localo.g() != null)
          {
            ((com.layer.sdk.internal.lsdkd.lsdka.e)localObject2).a(new m.c(localo.f()), new m.h(localo.g(), localo.h()));
            parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { localObject2 });
          }
          else if (com.layer.sdk.internal.lsdkk.k.a(5))
          {
            com.layer.sdk.internal.lsdkk.k.d(a, "Ignoring REMOTE_KEYED_VALUES Update with null value. remoteKeyedValue:" + localo.toString() + ". identityUri: " + localObject1 + ". IdentityImpl " + ((com.layer.sdk.internal.lsdkd.lsdka.e)localObject2).toString());
            continue;
            ((com.layer.sdk.internal.lsdkd.lsdka.e)localObject2).a(new m.c(localo.f()));
            parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { localObject2 });
          }
        }
      }
    }
    return localArrayList;
  }
  
  private static boolean b(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc)
  {
    switch (1.bsw[paramc.bCE.ordinal()])
    {
    }
    do
    {
      return true;
      com.layer.b.d.h localh = paramb.a(paramSQLiteDatabase, paramc.bvS);
      parama = b(parama, localh);
      if (parama != null)
      {
        paramb.a(paramSQLiteDatabase, parama.g(), paramc.j);
        return true;
      }
      throw new IllegalArgumentException("Could not find conversation for stream: " + localh);
      if (!paramc.xE()) {
        throw new IllegalArgumentException("Cannot update a message event with no seq. Event: " + paramc);
      }
      paramb = paramb.g(paramSQLiteDatabase, paramc.bvQ);
    } while (paramb == null);
    paramb = parama.m().c(paramb, false);
    paramb.b(Integer.valueOf(paramc.d));
    paramb.d(new Date(paramc.e));
    parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { paramb });
    parama.q().add(paramb.h());
    return true;
  }
  
  private static boolean b(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc, Set<com.layer.sdk.internal.lsdkd.lsdka.i> paramSet, LinkedHashSet<com.layer.b.d.c> paramLinkedHashSet, LinkedHashMap<Uri, com.layer.sdk.internal.lsdkd.d> paramLinkedHashMap, Set<j> paramSet1)
  {
    Object localObject4 = paramb.a(paramSQLiteDatabase, paramc.bvS);
    if (localObject4 == null) {
      return false;
    }
    if ((paramc.c != null) && (parama.r().contains(paramc.c)))
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "blocking message from " + paramc.c);
      }
      return true;
    }
    int j = 0;
    Object localObject1 = paramb.a(paramSQLiteDatabase, com.layer.b.f.c.f.bDI, paramc.bvS, Integer.valueOf(paramc.d));
    int i = j;
    if (!((List)localObject1).isEmpty())
    {
      i = j;
      if (((com.layer.b.d.i)((List)localObject1).get(((List)localObject1).size() - 1)).bFy == g.bDL)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(a, "Initially marking message deleted due to Event: " + LayerClient.DeletionMode.ALL_MY_DEVICES);
        }
        i = 1;
      }
    }
    localObject1 = null;
    Object localObject3 = paramb.a(paramSQLiteDatabase, com.layer.b.f.c.f.bDJ, paramc.bvS);
    Object localObject2 = ((List)localObject3).iterator();
    Object localObject5;
    Object localObject6;
    long l;
    while (((Iterator)localObject2).hasNext())
    {
      localObject5 = (com.layer.b.d.i)((Iterator)localObject2).next();
      localObject6 = paramb.a(paramSQLiteDatabase, ((com.layer.b.d.i)localObject5).wV(), Integer.valueOf(((p)localObject5).bpD));
      if ((localObject6 == null) || (((com.layer.b.f.c.d)localObject6).bCE != com.layer.b.f.c.e.bDq))
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(a, "Ignoring stream deletion mutation; target event could not be found or is not a message. Mutation: " + localObject5 + " . mutationTargetMessageEvent: " + localObject6);
        }
      }
      else
      {
        l = com.layer.sdk.internal.lsdkd.lsdka.k.a((com.layer.b.d.c)localObject6);
        if ((localObject1 != null) && (((Long)localObject1).longValue() >= l)) {
          break label1295;
        }
        localObject1 = Long.valueOf(l);
      }
    }
    label838:
    label886:
    label1097:
    label1103:
    label1111:
    label1118:
    label1295:
    for (;;)
    {
      break;
      l = com.layer.sdk.internal.lsdkd.lsdka.k.a(paramc);
      j = i;
      if (localObject1 != null)
      {
        j = i;
        if (l <= ((Long)localObject1).longValue())
        {
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(a, "Initially marking message deleted due to Stream: " + LayerClient.DeletionMode.ALL_MY_DEVICES);
          }
          j = 1;
        }
      }
      localObject1 = b(parama, (com.layer.b.d.h)localObject4);
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject1 = a(parama, paramb, paramSQLiteDatabase, (com.layer.b.d.h)localObject4, true);
        if (localObject1 != null) {
          parama.m().a(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { localObject1 });
        }
        localObject1 = b(parama, (com.layer.b.d.h)localObject4);
        localObject2 = localObject1;
        if (localObject1 == null) {
          return true;
        }
      }
      if ((j == 0) && (!((List)localObject3).isEmpty()) && (!((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2).c()) && (((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2).d()))
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(a, "Resurrecting conversation due to new message insertion: " + paramc);
        }
        ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2).b(false);
        parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { localObject2 });
      }
      boolean bool = d((com.layer.b.d.h)localObject4);
      if (bool) {}
      for (localObject3 = com.layer.sdk.internal.lsdkd.m.b(paramc);; localObject3 = com.layer.sdk.internal.lsdkd.m.a(paramc))
      {
        localObject1 = parama.m().c((Uri)localObject3, false);
        if (localObject1 == null) {
          break;
        }
        paramSet.add(localObject1);
        parama.q().add(((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).q());
        return true;
      }
      com.layer.b.f.c.a locala;
      j localj;
      if (bool)
      {
        localObject1 = new com.layer.sdk.internal.lsdkd.lsdka.b((Uri)localObject3, null);
        ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a(Integer.valueOf(paramc.d));
        ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a(paramc.c, paramc.bCH);
        ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a(((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2).g());
        ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a(((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2).getId());
        ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).c(paramc.bvQ);
        ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a(new Date(paramc.e));
        ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).b(new Date(paramc.e));
        ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a(l);
        if (j != 0)
        {
          ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).d(true);
          ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).s();
        }
        paramLinkedHashMap.put(((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).getId(), localObject1);
        if (!paramc.xm()) {
          break label1118;
        }
        localObject4 = paramc.bCF;
        localObject6 = new ArrayList(((List)localObject4).size());
        Iterator localIterator = ((List)localObject4).iterator();
        i = 0;
        if (!localIterator.hasNext()) {
          break label1111;
        }
        locala = (com.layer.b.f.c.a)localIterator.next();
        if (!locala.j()) {
          break label1097;
        }
        localObject4 = new Date(locala.e * 1000L);
        localj = new j(com.layer.sdk.internal.lsdkd.m.a((Uri)localObject3, Integer.valueOf(i)), null, locala.a, Long.valueOf(locala.b));
        localj.b((Uri)localObject3);
        localj.b(new Date());
        if (!locala.f()) {
          break label1103;
        }
        localObject5 = MessagePart.TransferStatus.COMPLETE;
        localj.a(locala.yf());
      }
      for (;;)
      {
        localj.a(locala.d, (Date)localObject4, new Date(), (MessagePart.TransferStatus)localObject5, false);
        localObject4 = parama.l().g();
        if ((localObject4 != null) && (((com.layer.sdk.internal.lsdkc.a)localObject4).b(localj) == com.layer.sdk.internal.lsdkc.a.c.b)) {
          paramSet1.add(localj);
        }
        ((List)localObject6).add(localj);
        paramLinkedHashMap.put(localj.getId(), localj);
        i += 1;
        break label838;
        if (e((com.layer.b.d.h)localObject4))
        {
          localObject1 = new com.layer.sdk.internal.lsdkd.lsdka.i((Uri)localObject3, null, false);
          break;
        }
        localObject1 = new com.layer.sdk.internal.lsdkd.lsdka.i((Uri)localObject3, null);
        break;
        localObject4 = null;
        break label886;
        localObject5 = MessagePart.TransferStatus.READY_FOR_DOWNLOAD;
      }
      ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a((List)localObject6);
      if (paramc.yv())
      {
        paramSet1 = paramc.bCI.entrySet().iterator();
        while (paramSet1.hasNext())
        {
          localObject3 = (Map.Entry)paramSet1.next();
          switch (1.bsx[((com.layer.b.f.c.k)localObject3.getValue()).ordinal()])
          {
          default: 
            break;
          case 1: 
          case 2: 
            for (paramLinkedHashMap = Message.RecipientStatus.DELIVERED;; paramLinkedHashMap = Message.RecipientStatus.READ)
            {
              ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a((String)((Map.Entry)localObject3).getKey(), paramLinkedHashMap, Integer.valueOf(paramc.d));
              break;
            }
          }
        }
      }
      paramSet.add(localObject1);
      parama.q().add(((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2).g());
      paramLinkedHashSet.addAll(paramb.a(paramSQLiteDatabase, paramc.bvR, paramc.d));
      return true;
    }
  }
  
  private static boolean b(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    paramb = paramb.g(paramSQLiteDatabase, paramLong);
    if (paramb == null) {
      return true;
    }
    paramb = (com.layer.sdk.internal.lsdkd.lsdka.i)parama.m().a(paramb, false);
    if (!paramb.c()) {
      parama.m().a(parama.n(), paramb, LayerClient.DeletionMode.ALL_PARTICIPANTS, com.layer.sdk.internal.lsdkd.f.a);
    }
    parama.q().add(paramb.q());
    return true;
  }
  
  private static int c(com.layer.b.d.h paramh)
  {
    if ((paramh.yu()) && (paramh.bEM.d())) {
      return paramh.bEM.b;
    }
    return 0;
  }
  
  private static void c(a parama, b paramb, SQLiteDatabase paramSQLiteDatabase, List<com.layer.sdk.internal.lsdki.d> paramList)
  {
    if (paramList.size() == 0) {}
    HashSet localHashSet;
    label559:
    do
    {
      return;
      localHashSet = new HashSet();
      LinkedHashMap localLinkedHashMap = new LinkedHashMap();
      Object localObject1 = new HashSet();
      Object localObject2 = paramList.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((Set)localObject1).add(((com.layer.sdk.internal.lsdki.d)((Iterator)localObject2).next()).c());
      }
      localObject1 = paramb.c(paramSQLiteDatabase, (Set)localObject1);
      if (localObject1 != null)
      {
        localObject1 = ((LinkedHashSet)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (n)((Iterator)localObject1).next();
          localLinkedHashMap.put(((n)localObject2).d(), localObject2);
        }
      }
      localObject1 = new HashMap();
      localObject2 = new HashSet();
      Object localObject3 = localLinkedHashMap.entrySet().iterator();
      while (((Iterator)localObject3).hasNext()) {
        ((Set)localObject2).add(((n)((Map.Entry)((Iterator)localObject3).next()).getValue()).a());
      }
      localObject2 = paramb.b(paramSQLiteDatabase, (Set)localObject2);
      if (localObject2 != null)
      {
        localObject2 = ((List)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (com.layer.sdk.internal.lsdkd.lsdka.e)((Iterator)localObject2).next();
          ((HashMap)localObject1).put(((com.layer.sdk.internal.lsdkd.lsdka.e)localObject3).getUserId(), localObject3);
        }
      }
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject2 = (com.layer.sdk.internal.lsdki.d)paramList.next();
        localObject3 = (n)localLinkedHashMap.get(((com.layer.sdk.internal.lsdki.d)localObject2).c());
        com.layer.sdk.internal.lsdkd.lsdka.e locale = (com.layer.sdk.internal.lsdkd.lsdka.e)((HashMap)localObject1).get(((n)localObject3).a());
        if (locale == null)
        {
          if (com.layer.sdk.internal.lsdkk.k.a(5)) {
            com.layer.sdk.internal.lsdkk.k.d(a, "Identity not found for presence object. SyncedChange: " + localObject2 + ". Presence: " + localObject3 + ". Identity: " + locale);
          }
          localHashSet.add(localObject2);
        }
        else
        {
          switch (1.b[localObject2.d().ordinal()])
          {
          }
          for (;;)
          {
            localHashSet.add(localObject2);
            break;
            locale.b((n)localObject3);
            parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { locale });
            continue;
            if (((com.layer.sdk.internal.lsdki.d)localObject2).e() == d.b.j) {
              locale.a(((n)localObject3).c());
            }
            for (;;)
            {
              parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { locale });
              break;
              if (((com.layer.sdk.internal.lsdki.d)localObject2).e() != d.b.i) {
                break label559;
              }
              locale.b(((n)localObject3).b());
            }
            if (com.layer.sdk.internal.lsdkk.k.a(6)) {
              com.layer.sdk.internal.lsdkk.k.e(a, "Unknown synced_change column. SyncedChange: " + localObject2 + ". Presence: " + localObject3 + ". Identity: " + locale);
            }
            throw new IllegalStateException("Unknown synced_change column. SyncedChange: " + localObject2 + ". Presence: " + localObject3 + ". Identity: " + locale);
            locale.b(null);
            locale.a(null);
            parama.m().b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { locale });
          }
        }
      }
    } while (localHashSet.size() <= 0);
    paramb.a(paramSQLiteDatabase, localHashSet);
  }
  
  private static boolean d(com.layer.b.d.h paramh)
  {
    return (paramh.yk()) && (paramh.bEJ == com.layer.b.f.c.o.bFu);
  }
  
  private static boolean e(com.layer.b.d.h paramh)
  {
    return (paramh.yk()) && (paramh.bEJ == com.layer.b.f.c.o.bFv);
  }
  
  public static abstract interface a
  {
    public abstract a.b c();
    
    public abstract AtomicInteger e();
    
    public abstract Integer f();
    
    public abstract String i();
    
    public abstract com.layer.sdk.internal.lsdkd.h l();
    
    public abstract com.layer.sdk.internal.lsdkd.f m();
    
    public abstract com.layer.sdk.internal.lsdkd.k n();
    
    public abstract ConcurrentSkipListSet<Long> q();
    
    public abstract Set<String> r();
    
    public abstract a.e t();
    
    public abstract boolean y();
  }
  
  public static abstract interface b
  {
    public abstract com.layer.b.d.c a(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID, Integer paramInteger);
    
    public abstract com.layer.b.d.h a(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID);
    
    public abstract Long a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, String paramString);
    
    public abstract String a(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract LinkedHashSet<com.layer.b.d.c> a(SQLiteDatabase paramSQLiteDatabase, Long paramLong, int paramInt);
    
    public abstract List<com.layer.b.d.h> a(int paramInt);
    
    public abstract List<com.layer.sdk.internal.lsdki.d> a(SQLiteDatabase paramSQLiteDatabase);
    
    public abstract List<com.layer.sdk.internal.lsdki.d> a(SQLiteDatabase paramSQLiteDatabase, int paramInt);
    
    public abstract List<com.layer.b.d.i> a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.f.c.f paramf, UUID paramUUID);
    
    public abstract List<com.layer.b.d.i> a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.f.c.f paramf, UUID paramUUID, Integer paramInteger);
    
    public abstract List<com.layer.sdk.internal.lsdki.d> a(SQLiteDatabase paramSQLiteDatabase, d.a parama);
    
    public abstract List<com.layer.b.d.c> a(SQLiteDatabase paramSQLiteDatabase, List<Long> paramList);
    
    public abstract List<com.layer.sdk.internal.lsdkd.lsdka.e> a(SQLiteDatabase paramSQLiteDatabase, Set<Long> paramSet);
    
    public abstract List<Uri> a(com.layer.sdk.internal.lsdkd.lsdka.c paramc, String paramString, long paramLong);
    
    public abstract void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdki.d paramd);
    
    public abstract void a(SQLiteDatabase paramSQLiteDatabase, Long paramLong1, Long paramLong2);
    
    public abstract void a(SQLiteDatabase paramSQLiteDatabase, Long paramLong, String paramString);
    
    public abstract void a(SQLiteDatabase paramSQLiteDatabase, Collection<com.layer.sdk.internal.lsdki.d> paramCollection);
    
    public abstract com.layer.b.d.h b(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract List<com.layer.sdk.internal.lsdki.d> b(SQLiteDatabase paramSQLiteDatabase);
    
    public abstract List<com.layer.sdk.internal.lsdkd.lsdka.e> b(SQLiteDatabase paramSQLiteDatabase, Set<String> paramSet);
    
    public abstract Uri c(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract LinkedHashSet<n> c(SQLiteDatabase paramSQLiteDatabase, Set<Long> paramSet);
    
    public abstract List<com.layer.sdk.internal.lsdki.d> c(SQLiteDatabase paramSQLiteDatabase);
    
    public abstract com.layer.sdk.internal.lsdkd.lsdka.d d(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract List<com.layer.sdk.internal.lsdki.d> d(SQLiteDatabase paramSQLiteDatabase);
    
    public abstract void d(SQLiteDatabase paramSQLiteDatabase, Set<Long> paramSet);
    
    public abstract Uri e(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract List<com.layer.sdk.internal.lsdki.d> e(SQLiteDatabase paramSQLiteDatabase);
    
    public abstract Uri f(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract void f(SQLiteDatabase paramSQLiteDatabase);
    
    public abstract Uri g(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract List<com.layer.sdk.internal.lsdki.d> g(SQLiteDatabase paramSQLiteDatabase);
    
    public abstract com.layer.b.d.i h(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract void h(SQLiteDatabase paramSQLiteDatabase);
    
    public abstract com.layer.sdk.internal.lsdkd.lsdka.o i(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract com.layer.b.d.h j(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
  }
  
  public static abstract interface c
  {
    public abstract AtomicInteger c();
    
    public abstract AtomicBoolean d();
    
    public abstract AtomicBoolean e();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdka/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */