package com.layer.sdk.internal.lsdki.lsdka;

import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.layer.b.f.c.a;
import com.layer.b.f.c.e;
import com.layer.b.f.c.p;
import com.layer.sdk.internal.lsdkd.f;
import com.layer.sdk.internal.lsdkd.lsdka.h.a;
import com.layer.sdk.internal.lsdkd.lsdka.h.b;
import com.layer.sdk.internal.lsdkd.lsdka.j;
import com.layer.sdk.internal.lsdkd.lsdka.l;
import com.layer.sdk.internal.lsdkd.lsdka.o;
import com.layer.sdk.internal.lsdkd.lsdka.o.a;
import com.layer.sdk.internal.lsdkd.lsdka.o.b;
import com.layer.sdk.internal.lsdke.lsdkc.c.a;
import com.layer.sdk.internal.lsdki.c.b;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.messaging.Message.RecipientStatus;
import com.layer.sdk.messaging.MessagePart;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class b
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(b.class);
  
  public static int a(a parama)
  {
    parama.a().v();
    List localList1 = parama.a().s();
    List localList2 = c(parama, b(parama, a(parama, localList1)));
    b(parama);
    return localList1.size() - localList2.size();
  }
  
  private static com.layer.b.d.c a(SQLiteDatabase paramSQLiteDatabase, a parama, com.layer.b.d.h paramh, UUID paramUUID)
  {
    if (paramh == null) {
      return null;
    }
    com.layer.b.d.c localc = new com.layer.b.d.c((byte)0);
    localc.b(paramUUID);
    localc.bvR = paramh.bwE;
    if (paramh.xG()) {
      localc.bvS = paramh.b();
    }
    localc.dw(paramh.d);
    localc.dx(parama.a().o(paramSQLiteDatabase, paramh.bwE).intValue());
    localc.c = parama.i();
    return localc;
  }
  
  private static com.layer.b.d.h a(SQLiteDatabase paramSQLiteDatabase, a parama, Long paramLong)
  {
    b localb = parama.a();
    parama = ((com.layer.sdk.internal.lsdkd.lsdka.c)parama.m().a(localb.e(paramSQLiteDatabase, paramLong), false)).m();
    if (parama == null) {
      return null;
    }
    return localb.j(paramSQLiteDatabase, parama);
  }
  
  private static List<com.layer.sdk.internal.lsdki.c> a(a parama, List<com.layer.sdk.internal.lsdki.c> paramList)
  {
    b localb = parama.a();
    f localf = parama.m();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      com.layer.sdk.internal.lsdki.c localc = (com.layer.sdk.internal.lsdki.c)localIterator.next();
      paramList = null;
      try
      {
        localSQLiteDatabase = localb.e();
      }
      finally
      {
        for (;;)
        {
          SQLiteDatabase localSQLiteDatabase;
          Object localObject;
          com.layer.sdk.internal.lsdkd.lsdka.c localc1;
        }
      }
      try
      {
        if (!localc.b().equals(c.b.a))
        {
          localArrayList.add(localc);
          localSQLiteDatabase.setTransactionSuccessful();
          localb.i(localSQLiteDatabase);
          continue;
        }
        switch (1.b[localc.d().ordinal()])
        {
        case 1: 
          localSQLiteDatabase.setTransactionSuccessful();
          localb.i(localSQLiteDatabase);
          continue;
        }
      }
      finally
      {
        paramList = localSQLiteDatabase;
      }
      paramList = localb.e(localSQLiteDatabase, localc.c());
      localObject = com.layer.sdk.internal.lsdkd.m.c(paramList);
      localc1 = (com.layer.sdk.internal.lsdkd.lsdka.c)localf.a(paramList, false);
      if (localc1.m() != null)
      {
        localb.a(localSQLiteDatabase, localc);
        localSQLiteDatabase.setTransactionSuccessful();
        localb.i(localSQLiteDatabase);
      }
      else
      {
        paramList = new com.layer.b.d.h();
        paramList.b((UUID)localObject);
        paramList.g = localc1.f();
        localObject = new LinkedHashSet(localc1.k());
        ((Set)localObject).add(parama.i());
        paramList.c = ((Set)localObject);
        paramList.aK(localc1.isDistinct());
        if (paramList.h)
        {
          localObject = localb.b(localSQLiteDatabase, paramList, c.a.a);
          if (localObject != null)
          {
            localc1.c(com.layer.sdk.internal.lsdkd.m.a((com.layer.b.d.h)localObject));
            localc1.c(((com.layer.b.d.h)localObject).bwE);
            paramList = (List<com.layer.sdk.internal.lsdki.c>)localObject;
          }
        }
        for (;;)
        {
          localObject = localc1.l().iterator();
          while (((Iterator)localObject).hasNext())
          {
            com.layer.sdk.internal.lsdkd.lsdka.d locald = (com.layer.sdk.internal.lsdkd.lsdka.d)((Iterator)localObject).next();
            Long localLong = localb.a(localSQLiteDatabase, paramList, locald.a());
            locald.c(localLong);
            localb.a(localSQLiteDatabase, locald.b(), localLong);
          }
          localb.i(paramList);
          throw parama;
          localc1.c(paramList.bwE);
          continue;
          localb.a(localSQLiteDatabase, paramList, c.a.a);
          localc1.c(paramList.bwE);
        }
        localf.b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { localc1 });
        for (;;)
        {
          localb.a(localSQLiteDatabase, localc);
          break;
          paramList = (com.layer.sdk.internal.lsdkd.lsdka.c)localf.a(localb.e(localSQLiteDatabase, localc.c()), false);
          localObject = localb.j(localSQLiteDatabase, paramList.m());
          if ((!paramList.isDistinct()) && (((com.layer.b.f.c.m)localObject).h)) {
            localb.a(localSQLiteDatabase, (com.layer.b.d.h)localObject, false);
          }
          localb.a(localSQLiteDatabase, localc);
          break;
          paramList = (com.layer.sdk.internal.lsdkd.lsdka.c)localf.a(localb.e(localSQLiteDatabase, localc.c()), false);
          localObject = localb.j(localSQLiteDatabase, paramList.m());
          if ((((com.layer.b.d.h)localObject).b() == null) && (paramList.c())) {
            localb.b(localSQLiteDatabase, (com.layer.b.d.h)localObject, true);
          } else {
            localb.a(localSQLiteDatabase, (com.layer.b.d.h)localObject);
          }
        }
      }
    }
    return localArrayList;
  }
  
  private static boolean a(SQLiteDatabase paramSQLiteDatabase, a parama, com.layer.b.d.h paramh, com.layer.sdk.internal.lsdkd.lsdka.d paramd)
  {
    b localb = parama.a();
    parama = a(paramSQLiteDatabase, parama, paramh, UUID.randomUUID());
    if (parama == null) {
      return false;
    }
    parama.bCE = e.bDz;
    parama.j = paramd.a();
    parama.N(paramd.h().longValue());
    localb.b(paramSQLiteDatabase, parama);
    return true;
  }
  
  private static boolean a(SQLiteDatabase paramSQLiteDatabase, a parama, com.layer.b.d.h paramh, com.layer.sdk.internal.lsdkd.lsdka.i parami)
  {
    b localb = parama.a();
    f localf = parama.m();
    if (!parami.t())
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "Not creating message event due to content still uploading");
      }
      return false;
    }
    paramh = a(paramSQLiteDatabase, parama, paramh, com.layer.sdk.internal.lsdkd.m.c(parami.getId()));
    if (paramh == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(a, "Not creating message event due to stream not being ready");
      }
      return false;
    }
    paramh.bCE = e.bDq;
    Object localObject2 = parami.j();
    Object localObject1 = new ArrayList(((Collection)localObject2).size());
    localObject2 = ((Collection)localObject2).iterator();
    Object localObject3;
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (MessagePart)((Iterator)localObject2).next();
      if (!((j)localObject3).isContentReady())
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(a, "Skipping message send as MessagePart is not ready : " + parami + ". MessagePart : " + localObject3);
        }
        return false;
      }
      a locala = new a();
      locala.a = ((MessagePart)localObject3).getMimeType();
      locala.t(((j)localObject3).g());
      locala.L(((MessagePart)localObject3).getSize());
      locala.d = ((j)localObject3).n();
      ((List)localObject1).add(locala);
    }
    if (!((List)localObject1).isEmpty()) {
      paramh.bCF = ((List)localObject1);
    }
    localObject2 = localb.a(paramSQLiteDatabase, h.b.b, parami.h(), h.a.a);
    if ((localObject2 != null) && (!((List)localObject2).isEmpty()))
    {
      localObject1 = new HashMap();
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (com.layer.sdk.internal.lsdkd.lsdka.h)((Iterator)localObject2).next();
        ((Map)localObject1).put(((com.layer.sdk.internal.lsdkd.lsdka.h)localObject3).f(), ByteBuffer.wrap(((com.layer.sdk.internal.lsdkd.lsdka.h)localObject3).g().getBytes()));
      }
      if (!((Map)localObject1).isEmpty()) {
        paramh.l = ((Map)localObject1);
      }
    }
    localb.b(paramSQLiteDatabase, paramh);
    if (paramh.bvQ == null) {
      throw new IllegalStateException("Event DB ID is null");
    }
    parami.d(paramh.bvQ);
    localf.b(parama.n(), new com.layer.sdk.internal.lsdkd.d[] { parami });
    return true;
  }
  
  private static boolean a(SQLiteDatabase paramSQLiteDatabase, a parama, com.layer.b.d.h paramh, com.layer.sdk.internal.lsdkd.lsdka.i parami, Message.RecipientStatus paramRecipientStatus)
  {
    if (parami.p() == null) {
      return true;
    }
    com.layer.b.d.c localc = a(paramSQLiteDatabase, parama, paramh, UUID.randomUUID());
    if (localc == null) {
      return false;
    }
    switch (1.bsw[paramRecipientStatus.ordinal()])
    {
    }
    for (;;)
    {
      localc.dy(parami.p().intValue());
      if (localc.bCG <= localc.f) {
        break;
      }
      throw new IllegalStateException("Event's target seq is greater than preceding seq. StreamId: " + paramh.b() + " MessageId: " + parami.getId() + " Event Seq: " + localc.d + " TargetSeq: " + localc.bCG + " PrecedingSeq: " + localc.f);
      throw new IllegalArgumentException("Cannot set recipient status to: " + paramRecipientStatus);
      localc.bCE = e.bDr;
      continue;
      localc.bCE = e.bDs;
    }
    parama.a().b(paramSQLiteDatabase, localc);
    return true;
  }
  
  private static boolean a(SQLiteDatabase paramSQLiteDatabase, a parama, com.layer.sdk.internal.lsdki.c paramc, com.layer.b.d.h paramh, com.layer.sdk.internal.lsdkd.lsdka.d paramd)
  {
    b localb = parama.a();
    parama = a(paramSQLiteDatabase, parama, paramh, UUID.randomUUID());
    if (parama == null) {
      return false;
    }
    parama.bCE = e.bDo;
    parama.j = paramd.a();
    localb.b(paramSQLiteDatabase, parama);
    paramh = localb.a(paramSQLiteDatabase, paramh, paramd.a(), null);
    paramd.c(paramh);
    paramd.d(parama.bvQ);
    localb.b(paramSQLiteDatabase, paramc.c(), parama.bvQ);
    localb.a(paramSQLiteDatabase, paramc.c(), paramh);
    return true;
  }
  
  private static List<com.layer.sdk.internal.lsdki.c> b(a parama, List<com.layer.sdk.internal.lsdki.c> paramList)
  {
    b localb = parama.a();
    f localf = parama.m();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    label31:
    if (localIterator.hasNext())
    {
      com.layer.sdk.internal.lsdki.c localc = (com.layer.sdk.internal.lsdki.c)localIterator.next();
      for (;;)
      {
        try
        {
          paramList = localb.e();
        }
        finally
        {
          com.layer.sdk.internal.lsdkd.lsdka.h localh;
          paramList = null;
          continue;
          continue;
          continue;
        }
        try
        {
          switch (1.brd[localc.b().ordinal()])
          {
          case 1: 
            localArrayList.add(localc);
            paramList.setTransactionSuccessful();
            localb.i(paramList);
            break label31;
          }
        }
        finally {}
        localh = localb.n(paramList, localc.c());
        if (localh == null)
        {
          localb.a(paramList, localc);
          paramList.setTransactionSuccessful();
          localb.i(paramList);
          break;
        }
        switch (1.bqK[localh.c().ordinal()])
        {
        case 1: 
          if (!localh.e().equals(h.a.b))
          {
            localb.a(paramList, localc);
            paramList.setTransactionSuccessful();
            localb.i(paramList);
            break;
          }
          com.layer.b.d.h localh1 = a(paramList, parama, localf.b(localb.e(paramList, localh.d()), false).g());
          if (localh1 == null)
          {
            localb.a(paramList, localc);
            paramList.setTransactionSuccessful();
            localb.i(paramList);
            break;
          }
          o localo = new o();
          localo.a(o.b.a);
          localo.b(localh1.bwE);
          localo.a(localh.f());
          localo.a(o.a.a(localh.e().a()));
          localo.b(localh.g());
          localo.a(localh.b());
          localo.c(null);
          localb.a(paramList, localo);
          localb.a(paramList, localc);
          continue;
          localb.i(paramList);
          throw parama;
        case 2: 
          if (!localh.e().equals(h.a.a))
          {
            localb.a(paramList, localc);
            paramList.setTransactionSuccessful();
            localb.i(paramList);
            break;
          }
          localb.a(paramList, localc);
        }
      }
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Syncable changes on identity metadata are not supported.");
      }
      throw new IllegalArgumentException("Syncable changes on identity metadata are not supported.");
    }
    return localArrayList;
  }
  
  private static void b(a parama)
  {
    f localf = parama.m();
    b localb = parama.a();
    for (;;)
    {
      try
      {
        localSQLiteDatabase = localb.e();
      }
      finally
      {
        ArrayList localArrayList;
        Iterator localIterator;
        com.layer.b.d.i locali;
        com.layer.sdk.internal.lsdkd.lsdka.c localc;
        SQLiteDatabase localSQLiteDatabase = null;
        continue;
        continue;
      }
      try
      {
        parama = localb.j(localSQLiteDatabase);
        localArrayList = new ArrayList(parama.size());
        localIterator = parama.iterator();
        if (!localIterator.hasNext()) {
          continue;
        }
        locali = (com.layer.b.d.i)localIterator.next();
        switch (1.bqe[locali.bFz.ordinal()])
        {
        case 1: 
          throw new IllegalArgumentException("Unknown mutation target: " + locali.bFz);
        }
      }
      finally
      {
        localb.i(localSQLiteDatabase);
      }
      localc = (com.layer.sdk.internal.lsdkd.lsdka.c)localf.a(Uri.parse(locali.k), false);
      if (locali.l == null)
      {
        parama = null;
        if (localc.m() != null)
        {
          locali.bwP = localb.j(localSQLiteDatabase, localc.m()).bwE;
          if (parama != null) {
            continue;
          }
          locali.bwO = null;
          localArrayList.add(locali);
        }
      }
      else
      {
        parama = (com.layer.sdk.internal.lsdkd.lsdka.i)localf.a(Uri.parse(locali.l), false);
        continue;
      }
      continue;
      locali.bwO = parama.i();
      continue;
      parama = localb.l(localSQLiteDatabase, ((com.layer.sdk.internal.lsdkd.lsdka.i)localf.a(Uri.parse(locali.l), false)).i());
      locali.bwP = parama.bvR;
      locali.bwO = parama.bvQ;
      localArrayList.add(locali);
    }
    if (!localArrayList.isEmpty()) {
      localb.a(localSQLiteDatabase, localArrayList);
    }
    localSQLiteDatabase.setTransactionSuccessful();
    localb.i(localSQLiteDatabase);
  }
  
  private static boolean b(SQLiteDatabase paramSQLiteDatabase, a parama, com.layer.b.d.h paramh, com.layer.sdk.internal.lsdkd.lsdka.i parami)
  {
    boolean bool2 = true;
    b localb = parama.a();
    parama = a(paramSQLiteDatabase, parama, paramh, UUID.randomUUID());
    boolean bool1;
    if (parama == null) {
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (parami.i() == null);
      parami = localb.l(paramSQLiteDatabase, parami.i());
      bool1 = bool2;
    } while (parami == null);
    if (!parami.xE())
    {
      localb.a(paramSQLiteDatabase, parami);
      return true;
    }
    if (!parami.bvS.equals(paramh.b())) {
      throw new IllegalArgumentException("Stream ID mismatch");
    }
    parama.bCE = e.bDn;
    parama.dy(parami.d);
    localb.b(paramSQLiteDatabase, parama);
    localb.a(paramSQLiteDatabase, parami);
    return true;
  }
  
  private static boolean b(SQLiteDatabase paramSQLiteDatabase, a parama, com.layer.sdk.internal.lsdki.c paramc, com.layer.b.d.h paramh, com.layer.sdk.internal.lsdkd.lsdka.d paramd)
  {
    b localb = parama.a();
    parama = a(paramSQLiteDatabase, parama, paramh, UUID.randomUUID());
    if (parama == null) {
      return false;
    }
    parama.bCE = e.bDp;
    parama.j = paramd.a();
    localb.b(paramSQLiteDatabase, parama);
    localb.b(paramSQLiteDatabase, paramh, paramd.a());
    localb.b(paramSQLiteDatabase, paramc.c(), parama.bvQ);
    return true;
  }
  
  private static List<com.layer.sdk.internal.lsdki.c> c(a parama, List<com.layer.sdk.internal.lsdki.c> paramList)
  {
    b localb = parama.a();
    f localf = parama.m();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    label33:
    Object localObject1;
    boolean bool;
    if (localIterator.hasNext())
    {
      com.layer.sdk.internal.lsdki.c localc = (com.layer.sdk.internal.lsdki.c)localIterator.next();
      localObject1 = null;
      for (;;)
      {
        try
        {
          paramList = localb.e();
          try
          {
            switch (1.brd[localc.b().ordinal()])
            {
            case 2: 
              if (!bool) {
                continue;
              }
              localb.a(paramList, localc);
              paramList.setTransactionSuccessful();
              localb.i(paramList);
              break label33;
            }
          }
          finally {}
          throw new IllegalArgumentException("Conversation changes should already be handled");
        }
        finally
        {
          Object localObject2;
          paramList = (List<com.layer.sdk.internal.lsdki.c>)localObject1;
          continue;
        }
        localb.i(paramList);
        throw parama;
        localObject1 = localb.m(paramList, localc.c());
        if (localObject1 == null)
        {
          localb.a(paramList, localc);
          paramList.setTransactionSuccessful();
          localb.i(paramList);
          break;
        }
        localObject2 = a(paramList, parama, ((com.layer.sdk.internal.lsdkd.lsdka.d)localObject1).c());
        if (localObject2 == null)
        {
          localb.a(paramList, localc);
          paramList.setTransactionSuccessful();
          localb.i(paramList);
          break;
        }
        if (((com.layer.b.d.h)localObject2).b() == null)
        {
          localb.a(paramList, localc);
          paramList.setTransactionSuccessful();
          localb.i(paramList);
          break;
        }
        switch (1.b[localc.d().ordinal()])
        {
        case 1: 
          if (((com.layer.sdk.internal.lsdkd.lsdka.d)localObject1).a().equals(parama.i()))
          {
            localb.a(paramList, localc);
            paramList.setTransactionSuccessful();
            localb.i(paramList);
            break;
          }
          bool = a(paramList, parama, localc, (com.layer.b.d.h)localObject2, (com.layer.sdk.internal.lsdkd.lsdka.d)localObject1);
          break;
        case 2: 
          bool = a(paramList, parama, (com.layer.b.d.h)localObject2, (com.layer.sdk.internal.lsdkd.lsdka.d)localObject1);
          break;
        case 3: 
          bool = b(paramList, parama, localc, (com.layer.b.d.h)localObject2, (com.layer.sdk.internal.lsdkd.lsdka.d)localObject1);
          continue;
          throw new IllegalArgumentException("Local keyed values should already be handled");
          localObject1 = (com.layer.sdk.internal.lsdkd.lsdka.i)localf.a(localb.q(paramList, localc.c()), false);
          localObject2 = localf.b(((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).g(), false);
          if ((localObject2 == null) || (((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2).c()))
          {
            localb.a(paramList, localc);
            paramList.setTransactionSuccessful();
            localb.i(paramList);
            break;
          }
          localObject2 = a(paramList, parama, ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2).g());
          if (localObject2 == null)
          {
            localb.a(paramList, localc);
            paramList.setTransactionSuccessful();
            localb.i(paramList);
            break;
          }
          switch (1.b[localc.d().ordinal()])
          {
          case 1: 
          case 2: 
            bool = a(paramList, parama, (com.layer.b.d.h)localObject2, (com.layer.sdk.internal.lsdkd.lsdka.i)localObject1);
            break;
          case 3: 
            bool = b(paramList, parama, (com.layer.b.d.h)localObject2, (com.layer.sdk.internal.lsdkd.lsdka.i)localObject1);
            continue;
            localObject1 = localb.p(paramList, localc.c());
            if (localObject1 == null)
            {
              localb.a(paramList, localc);
              paramList.setTransactionSuccessful();
              localb.i(paramList);
              break label33;
            }
            localObject2 = (com.layer.sdk.internal.lsdkd.lsdka.i)localf.a(localb.q(paramList, ((l)localObject1).b()), false);
            Object localObject3 = localf.b(((com.layer.sdk.internal.lsdkd.lsdka.i)localObject2).g(), false);
            if ((localObject3 == null) || (((com.layer.sdk.internal.lsdkd.lsdka.c)localObject3).c()))
            {
              localb.a(paramList, localc);
              paramList.setTransactionSuccessful();
              localb.i(paramList);
              break label33;
            }
            localObject3 = a(paramList, parama, ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject3).g());
            if (localObject3 == null)
            {
              localb.a(paramList, localc);
              paramList.setTransactionSuccessful();
              localb.i(paramList);
              break label33;
            }
            switch (1.b[localc.d().ordinal()])
            {
            case 1: 
              bool = a(paramList, parama, (com.layer.b.d.h)localObject3, (com.layer.sdk.internal.lsdkd.lsdka.i)localObject2, ((l)localObject1).d());
              break;
            case 2: 
              throw new IllegalArgumentException("Cannot UPDATE a message recipient status");
            case 3: 
              throw new IllegalArgumentException("Cannot DELETE a message recipient status");
              localArrayList.add(localc);
            }
            break;
          }
          break;
        }
      }
    }
    return localArrayList;
    for (;;)
    {
      bool = false;
      break;
      continue;
    }
  }
  
  public static abstract interface a
  {
    public abstract b.b a();
    
    public abstract String i();
    
    public abstract f m();
    
    public abstract com.layer.sdk.internal.lsdkd.k n();
  }
  
  public static abstract interface b
  {
    public abstract Long a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, String paramString);
    
    public abstract Long a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, String paramString, Integer paramInteger);
    
    public abstract List<com.layer.sdk.internal.lsdkd.lsdka.h> a(SQLiteDatabase paramSQLiteDatabase, h.b paramb, Long paramLong, h.a parama);
    
    public abstract void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc);
    
    public abstract void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh);
    
    public abstract void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, c.a parama);
    
    public abstract void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, boolean paramBoolean);
    
    public abstract void a(SQLiteDatabase paramSQLiteDatabase, o paramo);
    
    public abstract void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdki.c paramc);
    
    public abstract void a(SQLiteDatabase paramSQLiteDatabase, Iterable<com.layer.b.d.i> paramIterable);
    
    public abstract void a(SQLiteDatabase paramSQLiteDatabase, Long paramLong1, Long paramLong2);
    
    public abstract com.layer.b.d.h b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, c.a parama);
    
    public abstract void b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc);
    
    public abstract void b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, String paramString);
    
    public abstract void b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, boolean paramBoolean);
    
    public abstract void b(SQLiteDatabase paramSQLiteDatabase, Long paramLong1, Long paramLong2);
    
    public abstract SQLiteDatabase e();
    
    public abstract Uri e(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract void i(SQLiteDatabase paramSQLiteDatabase);
    
    public abstract com.layer.b.d.h j(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract List<com.layer.b.d.i> j(SQLiteDatabase paramSQLiteDatabase);
    
    public abstract com.layer.b.d.c l(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract com.layer.sdk.internal.lsdkd.lsdka.d m(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract com.layer.sdk.internal.lsdkd.lsdka.h n(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract Integer o(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract l p(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract Uri q(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract List<com.layer.sdk.internal.lsdki.c> s();
    
    public abstract void v();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdka/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */