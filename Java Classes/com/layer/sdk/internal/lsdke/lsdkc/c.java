package com.layer.sdk.internal.lsdke.lsdkc;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.text.TextUtils;
import com.layer.b.f.c.g;
import com.layer.b.f.c.p;
import com.layer.sdk.internal.lsdkd.lsdka.e;
import com.layer.sdk.internal.lsdkd.lsdka.h.a;
import com.layer.sdk.internal.lsdkd.lsdka.h.b;
import com.layer.sdk.internal.lsdkd.lsdka.j;
import com.layer.sdk.internal.lsdkd.lsdka.l;
import com.layer.sdk.internal.lsdkd.lsdka.n;
import com.layer.sdk.internal.lsdkd.lsdka.o.a;
import com.layer.sdk.internal.lsdkd.lsdka.o.b;
import com.layer.sdk.internal.lsdki.d.a;
import com.layer.sdk.internal.lsdki.d.b;
import com.layer.sdk.internal.lsdki.d.c;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.internal.lsdkk.m.c;
import com.layer.sdk.internal.lsdkk.m.e;
import com.layer.sdk.internal.lsdkk.m.g;
import com.layer.sdk.internal.lsdkk.m.h;
import com.layer.sdk.messaging.Conversation;
import com.layer.sdk.messaging.Conversation.HistoricSyncStatus;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.Message.RecipientStatus;
import com.layer.sdk.messaging.MessagePart;
import com.layer.sdk.messaging.Presence.PresenceStatus;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
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

public class c
{
  private static final k.a a = k.a(c.class);
  
  private static com.layer.b.d.h a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh1, com.layer.b.d.h paramh2)
  {
    if ((paramh1 == null) || (paramh2 == null)) {
      throw new IllegalArgumentException("Stream cannot be null");
    }
    if (!paramh1.h) {
      throw new IllegalArgumentException("Cannot merge non-distinct server stream");
    }
    if (k.a(2))
    {
      k.a(a, "Merging remote stream " + paramh1.b() + " with local stream " + paramh2.b());
      k.a(a, "Remote Stream: " + paramh1.toString());
      k.a(a, "Local Stream: " + paramh2.toString());
    }
    label158:
    Object localObject;
    if (paramh1.bwE != null)
    {
      paramSQLiteDatabase = b.a(paramSQLiteDatabase, paramh1.bwE);
      if (!paramh2.h) {
        break label255;
      }
      paramSQLiteDatabase.aK(true);
      localObject = paramh1.b();
      if (localObject != null) {
        break label308;
      }
      localObject = null;
      label169:
      paramSQLiteDatabase.u((byte[])localObject);
      paramSQLiteDatabase.b(paramh1.c());
      paramSQLiteDatabase.dE(paramh1.d);
      paramSQLiteDatabase.O(paramh1.f);
      paramSQLiteDatabase.bEM = paramh1.bEM;
      if (paramh1.wV() == null) {
        break label316;
      }
      paramSQLiteDatabase.v(paramh1.zd());
    }
    for (;;)
    {
      if (paramh1.K()) {
        paramSQLiteDatabase.dF(paramh1.bEO);
      }
      return paramSQLiteDatabase;
      paramSQLiteDatabase = b.a(paramSQLiteDatabase, paramh2.bwE);
      break;
      label255:
      paramSQLiteDatabase.aK(false);
      if (!k.a(2)) {
        break label158;
      }
      k.a(a, "Merging non-distinct client stream. server stream: " + paramh1.toString() + ". client stream: " + paramh2.toString());
      break label158;
      label308:
      localObject = com.layer.b.e.d.d((UUID)localObject);
      break label169;
      label316:
      if (paramh2.wV() != null) {
        paramSQLiteDatabase.v(paramh2.zd());
      }
    }
  }
  
  public static com.layer.b.d.h a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, a parama, boolean paramBoolean)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    if (!paramh.h) {
      throw new IllegalArgumentException("Use Persist.streams() to persist non-distinct streams");
    }
    Long localLong2;
    if (paramh.bwE == null)
    {
      if (paramBoolean) {
        break label393;
      }
      localLong2 = a.d(paramSQLiteDatabase, paramh.c);
      localLong1 = localLong2;
      if (localLong2 == null)
      {
        localLong1 = localLong2;
        if (paramh.b() != null)
        {
          localLong2 = a.a(paramSQLiteDatabase, paramh.b());
          localLong1 = localLong2;
          if (localLong2 != null)
          {
            localLong1 = localLong2;
            if (k.a(4)) {
              k.c(a, "Failed to find distinct stream by participant, but succeeded with id. " + paramh.toString() + ". Origin: " + parama);
            }
          }
        }
      }
    }
    label393:
    for (Long localLong1 = localLong2;; localLong1 = null)
    {
      if (localLong1 == null)
      {
        localLong1 = Long.valueOf(paramSQLiteDatabase.insert("streams", "database_identifier", b.b(paramh, true)));
        if (localLong1.longValue() == -1L) {
          throw new IllegalArgumentException("Could not insert stream");
        }
        paramh.bwE = localLong1;
      }
      while (localObject1 != null)
      {
        b(paramSQLiteDatabase, (com.layer.b.d.h)localObject1, parama, paramBoolean);
        a(paramSQLiteDatabase, (com.layer.b.d.h)localObject1);
        return (com.layer.b.d.h)localObject1;
        localObject1 = b.a(paramSQLiteDatabase, localLong1);
        switch (1.bqe[parama.ordinal()])
        {
        default: 
          localObject1 = localObject2;
        }
        while (paramSQLiteDatabase.update("streams", b.b((com.layer.b.d.h)localObject1, false), "database_identifier=?", new String[] { ((com.layer.b.d.h)localObject1).bwE.toString() }) != 1)
        {
          throw new IllegalArgumentException("Could not update stream!");
          localObject1 = a(paramSQLiteDatabase, (com.layer.b.d.h)localObject1, paramh);
          continue;
          localObject1 = a(paramSQLiteDatabase, paramh, (com.layer.b.d.h)localObject1);
        }
        a.a(paramSQLiteDatabase, (com.layer.b.d.h)localObject1);
        paramh.bwE = localLong1;
        continue;
        if (paramSQLiteDatabase.update("streams", b.b(paramh, false), "database_identifier=?", new String[] { paramh.bwE.toString() }) != 1) {
          throw new IllegalArgumentException("Could not update stream!");
        }
        a.a(paramSQLiteDatabase, paramh);
        return null;
      }
      b(paramSQLiteDatabase, paramh, parama, paramBoolean);
      a(paramSQLiteDatabase, paramh);
      return (com.layer.b.d.h)localObject1;
    }
  }
  
  public static com.layer.sdk.internal.lsdkd.lsdka.c a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdkd.lsdka.c paramc, boolean paramBoolean, Map<Uri, Set<String>> paramMap)
  {
    if (!paramc.isDistinct()) {
      throw new IllegalArgumentException("Trying to save a non distinct conversation as distinct");
    }
    if (paramc.g() == null)
    {
      if (paramMap != null)
      {
        Set localSet = paramc.k();
        paramMap = paramMap.entrySet().iterator();
        while (paramMap.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)paramMap.next();
          if (localSet.equals(localEntry.getValue())) {
            paramMap = (Uri)localEntry.getKey();
          }
        }
      }
      while (paramMap != null)
      {
        paramMap = b.a(paramSQLiteDatabase, paramMap);
        if (!paramMap.isDistinct())
        {
          if (k.a(6)) {
            k.e(a, "Existing conversation is not distinct. Conversation : " + paramMap);
          }
          throw new IllegalStateException("Existing conversation is not distinct. Conversation : " + paramMap);
          paramMap = null;
          continue;
          paramMap = a.c(paramSQLiteDatabase, paramc.k());
        }
        else
        {
          if (paramBoolean) {}
          for (paramMap = a(paramc, paramMap);; paramMap = a(paramMap, paramc))
          {
            paramc.a(paramMap.g());
            paramc = paramMap;
            if (paramSQLiteDatabase.update("conversations", b.d(paramMap), "database_identifier=?", new String[] { paramMap.g().toString() }) == 1) {
              break;
            }
            throw new IllegalArgumentException("Could not update distinct conversation!");
          }
        }
      }
      paramMap = Long.valueOf(paramSQLiteDatabase.insert("conversations", "database_identifier", b.d(paramc)));
      if (paramMap.longValue() == -1L) {
        throw new IllegalArgumentException("Could not insert conversation");
      }
      paramc.a(paramMap);
      b(paramSQLiteDatabase, paramc);
      a(paramSQLiteDatabase, paramc, paramBoolean);
      a(paramSQLiteDatabase, paramc);
      paramc = null;
      return paramc;
    }
    if (paramSQLiteDatabase.update("conversations", b.d(paramc), "database_identifier=?", new String[] { paramc.g().toString() }) != 1) {
      throw new IllegalArgumentException("Could not update distinct conversation!");
    }
    b(paramSQLiteDatabase, paramc);
    a(paramSQLiteDatabase, paramc, paramBoolean);
    a(paramSQLiteDatabase, paramc);
    return null;
  }
  
  private static com.layer.sdk.internal.lsdkd.lsdka.c a(com.layer.sdk.internal.lsdkd.lsdka.c paramc1, com.layer.sdk.internal.lsdkd.lsdka.c paramc2)
  {
    if ((paramc1 == null) || (paramc2 == null))
    {
      if (k.a(6)) {
        k.e(a, "conversation object cannot be null");
      }
      throw new IllegalArgumentException("conversation object cannot be null");
    }
    if ((!paramc1.isDistinct()) || (!paramc2.isDistinct()))
    {
      if (k.a(6)) {
        k.e(a, "Cannot merge non-distinct conversations. serverConversation: " + paramc1 + ". clientConversation: " + paramc2);
      }
      throw new IllegalArgumentException("Cannot merge non-distinct conversations");
    }
    if (paramc1.g() != null) {}
    for (com.layer.sdk.internal.lsdkd.lsdka.c localc = new com.layer.sdk.internal.lsdkd.lsdka.c(paramc1.getId(), paramc1.g());; localc = new com.layer.sdk.internal.lsdkd.lsdka.c(paramc2.getId(), paramc2.g()))
    {
      if ((paramc1.c()) || (paramc2.c())) {
        localc.c(true);
      }
      if ((paramc1.d()) || (paramc2.d())) {
        localc.d(true);
      }
      localc.e(true);
      localc.a(paramc1.getId());
      localc.b(paramc1.m());
      localc.a(paramc1.j());
      localc.a(paramc1.h());
      if (paramc1.getTotalMessageCount() != null) {
        localc.a(paramc1.getTotalMessageCount());
      }
      if (paramc1.getTotalUnreadMessageCount() != null) {
        localc.b(paramc1.getTotalUnreadMessageCount());
      }
      return localc;
    }
  }
  
  private static e a(SQLiteDatabase paramSQLiteDatabase, Map<String, e> paramMap, com.layer.b.f.a.d paramd)
  {
    if (paramMap.containsKey(paramd.b)) {}
    for (paramSQLiteDatabase = b.a(paramSQLiteDatabase, paramd.b);; paramSQLiteDatabase = null)
    {
      if (paramd.c == null) {}
      for (int i = 0; i > 0; i = paramd.c.size())
      {
        paramMap = paramd.c.entrySet().iterator();
        while (paramMap.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)paramMap.next();
          a(paramSQLiteDatabase, (String)localEntry.getKey(), (String)localEntry.getValue());
        }
      }
      if (paramd.d == null) {}
      for (i = 0; i > 0; i = paramd.d.size())
      {
        paramMap = paramd.d.iterator();
        while (paramMap.hasNext()) {
          a(paramSQLiteDatabase, (String)paramMap.next(), null);
        }
      }
      return paramSQLiteDatabase;
    }
  }
  
  private static com.layer.sdk.internal.lsdkd.lsdka.o a(Long paramLong, long paramLong1, Map.Entry<String, String> paramEntry)
  {
    com.layer.sdk.internal.lsdkd.lsdka.o localo = new com.layer.sdk.internal.lsdkd.lsdka.o();
    localo.a(o.b.c);
    localo.b(paramLong);
    localo.a(o.a.b);
    localo.a((String)paramEntry.getKey());
    localo.b((String)paramEntry.getValue());
    localo.c(Long.valueOf(paramLong1));
    localo.a(false);
    return localo;
  }
  
  private static Long a(SQLiteDatabase paramSQLiteDatabase, ContentValues paramContentValues)
  {
    paramSQLiteDatabase = Long.valueOf(paramSQLiteDatabase.insert("identities", null, paramContentValues));
    if (paramSQLiteDatabase.longValue() == -1L)
    {
      if (k.a(6)) {
        k.e(a, "Could not insert identity");
      }
      throw new IllegalArgumentException("Could not insert identity");
    }
    return paramSQLiteDatabase;
  }
  
  private static Map<String, String> a(e parame)
  {
    Object localObject = com.layer.sdk.internal.lsdkk.m.b((com.layer.sdk.internal.lsdkd.lsdka.m)parame.getMetadata());
    parame = new HashMap(((m.g)localObject).size());
    localObject = ((m.g)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      parame.put(((m.c)localEntry.getKey()).toString(), ((m.e)localEntry.getValue()).toString());
    }
    return parame;
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, ContentValues paramContentValues, Long paramLong)
  {
    if (paramSQLiteDatabase.update("identities", paramContentValues, "database_identifier = ?", new String[] { paramLong.toString() }) != 1)
    {
      if (k.a(6)) {
        k.e(a, "Could not update identity");
      }
      throw new IllegalArgumentException("Could not update identity");
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc)
  {
    Long localLong = paramc.bvR;
    UUID localUUID = paramc.bvS;
    if ((localUUID == null) && (localLong == null)) {
      throw new IllegalArgumentException("No stream ID set");
    }
    if (localUUID == null)
    {
      paramc.bvS = a.a(paramSQLiteDatabase, localLong);
      localObject = localLong;
      if (paramc.bvQ == null) {
        break label151;
      }
    }
    boolean bool;
    label151:
    for (int i = 1;; i = 0)
    {
      bool = paramc.xE();
      if ((i != 0) || (bool)) {
        break label156;
      }
      localObject = b.b(paramSQLiteDatabase, paramc.d());
      if (localObject == null) {
        break label314;
      }
      throw new IllegalArgumentException("New OutboundRecon event conflicts with existing client_id: " + paramc + "; existing: " + localObject);
      localObject = localLong;
      if (localLong != null) {
        break;
      }
      localObject = a.a(paramSQLiteDatabase, localUUID);
      paramc.bvR = ((Long)localObject);
      break;
    }
    label156:
    if ((i != 0) && (bool))
    {
      localObject = b.a(paramSQLiteDatabase, (Long)localObject, paramc.d);
      if (localObject != null)
      {
        if (paramc.d().equals(((com.layer.b.d.c)localObject).d())) {
          return;
        }
        throw new IllegalArgumentException("Cannot update an event if there is already an event with its stream and seq: " + paramc + "; existing: " + localObject);
      }
    }
    else
    {
      if (i != 0) {
        break label366;
      }
      localObject = b.a(paramSQLiteDatabase, (Long)localObject, paramc.d);
      if (localObject != null)
      {
        if (!((com.layer.b.d.c)localObject).d().equals(paramc.d())) {
          throw new IllegalArgumentException("New event conflicts with existing client_id: " + paramc + "; existing: " + localObject);
        }
        paramc.bvQ = ((com.layer.b.d.c)localObject).bvQ;
      }
    }
    label314:
    Object localObject = b.d(paramSQLiteDatabase, paramc);
    if (paramc.bvQ == null)
    {
      localObject = Long.valueOf(paramSQLiteDatabase.insert("events", null, (ContentValues)localObject));
      if (((Long)localObject).longValue() == -1L)
      {
        throw new IllegalArgumentException("Could not insert event");
        label366:
        throw new IllegalArgumentException("Cannot update an unsynchronized event: " + paramc);
      }
      paramc.bvQ = ((Long)localObject);
    }
    while (paramSQLiteDatabase.update("events", (ContentValues)localObject, "database_identifier=?", new String[] { paramc.bvQ.toString() }) == 1)
    {
      b(paramSQLiteDatabase, paramc);
      return;
    }
    throw new IllegalArgumentException("Could not update event!");
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh)
  {
    Object localObject = paramh.g;
    if (localObject == null) {}
    for (;;)
    {
      return;
      paramh = paramh.bwE;
      localObject = ((Map)localObject).entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        a(paramSQLiteDatabase, o.b.a, paramh, o.a.c, (String)localEntry.getKey(), (String)localEntry.getValue(), null);
      }
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, a parama)
  {
    if (paramh.h) {
      throw new IllegalArgumentException("Use distinctStream() to persist distinct streams");
    }
    Long localLong;
    if ((paramh.bwE == null) && (paramh.b() != null))
    {
      localLong = a.a(paramSQLiteDatabase, paramh.b());
      if (localLong != null) {
        paramh.bwE = localLong;
      }
    }
    if (paramh.bwE == null)
    {
      localLong = Long.valueOf(paramSQLiteDatabase.insert("streams", "database_identifier", b.b(paramh, true)));
      if (localLong.longValue() == -1L) {
        throw new IllegalArgumentException("Could not insert stream");
      }
      paramh.bwE = localLong;
    }
    for (;;)
    {
      b(paramSQLiteDatabase, paramh, parama, false);
      a(paramSQLiteDatabase, paramh);
      return;
      if (paramSQLiteDatabase.update("streams", b.b(paramh, false), "database_identifier=?", new String[] { paramh.bwE.toString() }) != 1) {
        throw new IllegalArgumentException("Could not update stream!");
      }
      a.a(paramSQLiteDatabase, paramh);
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.i parami)
  {
    ContentValues localContentValues = b.b(parami);
    if ((parami.bwN == null) && (parami.wV() != null) && (parami.q()))
    {
      com.layer.b.d.i locali = b.a(paramSQLiteDatabase, parami.wV(), parami.f);
      if (locali != null) {
        parami.bwN = locali.bwN;
      }
    }
    if (parami.bwN == null)
    {
      paramSQLiteDatabase = Long.valueOf(paramSQLiteDatabase.insert("mutations", null, localContentValues));
      if (paramSQLiteDatabase.longValue() == -1L) {
        throw new IllegalArgumentException("Could not insert mutation");
      }
      parami.bwN = paramSQLiteDatabase;
    }
    while (paramSQLiteDatabase.update("mutations", localContentValues, "database_identifier=?", new String[] { parami.bwN.toString() }) == 1) {
      return;
    }
    throw new IllegalArgumentException("Could not update mutation!");
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdkd.lsdka.c paramc)
  {
    if (paramc.isDistinct())
    {
      if (k.a(6)) {
        k.e(a, "Cannot persist distinct conversation in conversationOnly. Use distinctConversationOnly: " + paramc);
      }
      throw new IllegalArgumentException("Cannot persist distinct conversation. Use distinctConversationOnly()");
    }
    ContentValues localContentValues = b.d(paramc);
    if (paramc.g() == null)
    {
      paramSQLiteDatabase = Long.valueOf(paramSQLiteDatabase.insert("conversations", "database_identifier", localContentValues));
      if (paramSQLiteDatabase.longValue() == -1L)
      {
        if (k.a(6)) {
          k.e(a, "Could not insert conversation: " + paramc);
        }
        throw new IllegalArgumentException("Could not insert conversation");
      }
      paramc.a(paramSQLiteDatabase);
    }
    while (paramSQLiteDatabase.update("conversations", localContentValues, "database_identifier=?", new String[] { paramc.g().toString() }) == 1) {
      return;
    }
    if (k.a(6)) {
      k.e(a, "Could not update conversation: " + paramc);
    }
    throw new IllegalArgumentException("Could not update conversation. " + paramc);
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdkd.lsdka.d paramd)
  {
    ContentValues localContentValues = b.b(paramd);
    int i;
    if (paramd.b() != null)
    {
      i = paramSQLiteDatabase.update("conversation_participants", localContentValues, "database_identifier=?", new String[] { paramd.b().toString() });
      if (i != 1)
      {
        if (k.a(6)) {
          k.e(a, "Could not update conversation participant by DB ID! (" + i + ")");
        }
        throw new IllegalArgumentException("Could not update conversation participant by DB ID! (" + i + ")");
      }
    }
    else
    {
      Object localObject = b.a(paramSQLiteDatabase, paramd.c(), paramd.a());
      if (localObject != null)
      {
        localObject = ((com.layer.sdk.internal.lsdkd.lsdka.d)localObject).b();
        i = paramSQLiteDatabase.update("conversation_participants", localContentValues, "database_identifier = ?", new String[] { ((Long)localObject).toString() });
        paramSQLiteDatabase = (SQLiteDatabase)localObject;
        if (i != 1)
        {
          if (k.a(6)) {
            k.e(a, "Could not update conversation participant by ID! (" + i + ")");
          }
          throw new IllegalArgumentException("Could not update conversation participant by ID! (" + i + ")");
        }
      }
      else
      {
        localObject = Long.valueOf(paramSQLiteDatabase.insert("conversation_participants", null, localContentValues));
        if (((Long)localObject).longValue() == -1L)
        {
          if (k.a(6)) {
            k.e(a, "Could not insert conversation participant");
          }
          throw new IllegalArgumentException("Could not insert conversation participant");
        }
        a(paramSQLiteDatabase, paramd.a(), null);
        paramSQLiteDatabase = (SQLiteDatabase)localObject;
      }
      paramd.a(paramSQLiteDatabase);
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, e parame)
  {
    a.a(paramSQLiteDatabase, d.c.f, d.a.b, parame.e(), d.b.h);
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, e parame1, e parame2)
  {
    Long localLong = parame1.e();
    if (!TextUtils.equals(parame1.getDisplayName(), parame2.getDisplayName())) {
      a.a(paramSQLiteDatabase, d.c.f, d.a.b, localLong, d.b.a);
    }
    if (!TextUtils.equals(parame1.getFirstName(), parame2.getFirstName())) {
      a.a(paramSQLiteDatabase, d.c.f, d.a.b, localLong, d.b.b);
    }
    if (!TextUtils.equals(parame1.getLastName(), parame2.getLastName())) {
      a.a(paramSQLiteDatabase, d.c.f, d.a.b, localLong, d.b.c);
    }
    if (!TextUtils.equals(parame1.getEmailAddress(), parame2.getEmailAddress())) {
      a.a(paramSQLiteDatabase, d.c.f, d.a.b, localLong, d.b.d);
    }
    if (!TextUtils.equals(parame1.getPhoneNumber(), parame2.getPhoneNumber())) {
      a.a(paramSQLiteDatabase, d.c.f, d.a.b, localLong, d.b.e);
    }
    if (!TextUtils.equals(parame1.getAvatarImageUrl(), parame2.getAvatarImageUrl())) {
      a.a(paramSQLiteDatabase, d.c.f, d.a.b, localLong, d.b.f);
    }
    if (!TextUtils.equals(parame1.getPublicKey(), parame2.getPublicKey())) {
      a.a(paramSQLiteDatabase, d.c.f, d.a.b, localLong, d.b.g);
    }
    if (parame1.isFollowed() != parame2.isFollowed()) {
      a.a(paramSQLiteDatabase, d.c.f, d.a.b, localLong, d.b.h);
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, h.b paramb, Long paramLong1, h.a parama, String paramString1, String paramString2, Long paramLong2)
  {
    com.layer.sdk.internal.lsdkd.lsdka.h localh = new com.layer.sdk.internal.lsdkd.lsdka.h();
    localh.a(paramb);
    localh.b(paramLong1);
    localh.a(paramString1);
    localh.a(parama);
    localh.b(paramString2);
    localh.c(paramLong2);
    a(paramSQLiteDatabase, localh);
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdkd.lsdka.h paramh)
  {
    ContentValues localContentValues = b.b(paramh);
    if (paramh.a() == null) {
      if (paramSQLiteDatabase.update("local_keyed_values", localContentValues, "object_type=? AND object_id=? AND key=?", new String[] { paramh.c().a(), paramh.d().toString(), paramh.f() }) == 0)
      {
        paramSQLiteDatabase = Long.valueOf(paramSQLiteDatabase.insert("local_keyed_values", null, localContentValues));
        if (paramSQLiteDatabase.longValue() == -1L) {
          throw new IllegalArgumentException("Could not insert keyed value");
        }
        paramh.a(paramSQLiteDatabase);
      }
    }
    while (paramSQLiteDatabase.update("local_keyed_values", localContentValues, "database_identifier=?", new String[] { paramh.a().toString() }) == 1) {
      return;
    }
    throw new IllegalArgumentException("Could not update keyed value!");
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdkd.lsdka.i parami)
  {
    if ((parami.m() == null) || (parami.m().isEmpty())) {}
    for (;;)
    {
      return;
      parami = parami.m().values().iterator();
      while (parami.hasNext())
      {
        l locall = (l)parami.next();
        Object localObject = b.a(locall);
        if (locall.a() == null)
        {
          localObject = Long.valueOf(paramSQLiteDatabase.insertWithOnConflict("message_recipient_status", null, (ContentValues)localObject, 5));
          if (((Long)localObject).longValue() == -1L) {
            throw new IllegalArgumentException("Could not insert message recipient");
          }
          locall.a((Long)localObject);
          if (locall.c() != null) {
            a(paramSQLiteDatabase, locall.c(), null);
          }
        }
        else
        {
          paramSQLiteDatabase.update("message_recipient_status", (ContentValues)localObject, "database_identifier=?", new String[] { locall.a().toString() });
        }
      }
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, j paramj)
    throws IOException
  {
    ContentValues localContentValues = b.g(paramj);
    if (paramj.i() == null)
    {
      paramSQLiteDatabase = Long.valueOf(paramSQLiteDatabase.insert("message_parts", null, localContentValues));
      if (paramSQLiteDatabase.longValue() == -1L) {
        throw new IllegalArgumentException("Could not insert message part");
      }
      paramj.a(paramSQLiteDatabase);
    }
    while (paramSQLiteDatabase.update("message_parts", localContentValues, "database_identifier=?", new String[] { paramj.i().toString() }) == 1) {
      return;
    }
    throw new IllegalArgumentException("Could not update message part!");
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, n paramn, ContentValues paramContentValues)
  {
    if (paramSQLiteDatabase.update("presence", paramContentValues, "user_id=?", new String[] { paramn.a() }) != 1)
    {
      if (k.a(6)) {
        k.e(a, "Could not update presence: " + paramn);
      }
      throw new IllegalArgumentException("Could not update presence: " + paramn);
    }
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, n paramn1, n paramn2)
  {
    Long localLong = paramn1.d();
    if (paramn1.b() != paramn2.b()) {
      a.a(paramSQLiteDatabase, d.c.g, d.a.b, localLong, d.b.i);
    }
    if (paramn1.c() != paramn2.c()) {
      a.a(paramSQLiteDatabase, d.c.g, d.a.b, localLong, d.b.j);
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, o.b paramb, Long paramLong1, o.a parama, String paramString1, String paramString2, Long paramLong2)
  {
    com.layer.sdk.internal.lsdkd.lsdka.o localo = new com.layer.sdk.internal.lsdkd.lsdka.o();
    localo.a(paramb);
    localo.b(paramLong1);
    localo.a(parama);
    localo.a(paramString1);
    localo.b(paramString2);
    localo.c(paramLong2);
    a(paramSQLiteDatabase, localo);
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdkd.lsdka.o paramo)
  {
    Object localObject = b.a(paramo);
    if (paramo.a() == null) {
      if (paramSQLiteDatabase.update("remote_keyed_values", (ContentValues)localObject, "object_type=? AND object_id=? AND key=?", new String[] { paramo.c().a(), paramo.d().toString(), paramo.f() }) == 0)
      {
        localObject = Long.valueOf(paramSQLiteDatabase.insert("remote_keyed_values", null, (ContentValues)localObject));
        if (((Long)localObject).longValue() == -1L) {
          throw new IllegalArgumentException("Could not insert keyed value");
        }
        paramo.a((Long)localObject);
      }
    }
    while (paramSQLiteDatabase.update("remote_keyed_values", (ContentValues)localObject, "database_identifier=?", new String[] { paramo.a().toString() }) == 1)
    {
      if (paramo.a() == null) {
        paramo.a(a.a(paramSQLiteDatabase, "remote_keyed_values", "database_identifier", "object_type=? AND object_id=? AND key=?", new String[] { paramo.c().a(), paramo.d().toString(), paramo.f() }));
      }
      return;
    }
    throw new IllegalArgumentException("Could not update keyed value!");
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdke.f paramf, int paramInt)
  {
    ContentValues localContentValues = b.e(paramf.a(), paramInt);
    if ((paramSQLiteDatabase.update("response_versions", localContentValues, "response_name=?", new String[] { paramf.a() }) == 0) && (paramSQLiteDatabase.insert("response_versions", null, localContentValues) == -1L))
    {
      if (k.a(6)) {
        k.e(a, "Could not create response version with name '" + paramf.a() + "' and version '" + paramInt + "'");
      }
      throw new IllegalArgumentException("Could not create response version with name '" + paramf.a() + "' and version '" + paramInt + "'");
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdki.c paramc)
  {
    if (paramc.a() != null) {
      throw new IllegalArgumentException("Cannot update a syncable change");
    }
    paramSQLiteDatabase = Long.valueOf(paramSQLiteDatabase.insert("syncable_changes", null, b.a(paramc)));
    if (paramSQLiteDatabase.longValue() == -1L) {
      throw new IllegalArgumentException("Could not insert syncable change");
    }
    paramc.a(paramSQLiteDatabase);
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Conversation paramConversation)
  {
    paramConversation = (com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation;
    Object localObject = paramConversation.f();
    if (localObject == null) {}
    for (;;)
    {
      return;
      paramConversation = paramConversation.g();
      long l = new Date().getTime();
      localObject = ((Map)localObject).entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        a(paramSQLiteDatabase, h.b.a, paramConversation, h.a.c, (String)localEntry.getKey(), (String)localEntry.getValue(), Long.valueOf(l));
      }
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Conversation paramConversation, boolean paramBoolean)
  {
    paramConversation = (com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation;
    Object localObject1 = com.layer.sdk.internal.lsdkk.m.b((com.layer.sdk.internal.lsdkd.lsdka.m)paramConversation.getMetadata());
    paramConversation = paramConversation.g();
    Object localObject2 = com.layer.sdk.internal.lsdkk.m.b(b.i(paramSQLiteDatabase, paramConversation)).keySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      m.c localc = (m.c)((Iterator)localObject2).next();
      if (!((m.g)localObject1).a(localc)) {
        if (paramBoolean) {
          a.a(paramSQLiteDatabase, h.b.a, paramConversation, localc.toString());
        } else {
          a.a(paramSQLiteDatabase, h.b.a, paramConversation, localc.toString(), true);
        }
      }
    }
    localObject1 = ((m.g)localObject1).entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      if (!(((Map.Entry)localObject2).getValue() instanceof m.h)) {
        throw new IllegalArgumentException("Cannot persist local keyed value with: " + ((Map.Entry)localObject2).getValue());
      }
      a(paramSQLiteDatabase, h.b.a, paramConversation, h.a.b, ((m.c)((Map.Entry)localObject2).getKey()).toString(), ((m.e)((Map.Entry)localObject2).getValue()).toString(), ((m.h)((Map.Entry)localObject2).getValue()).a());
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Iterable<? extends Message> paramIterable)
    throws IOException
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      com.layer.sdk.internal.lsdkd.lsdka.i locali = (com.layer.sdk.internal.lsdkd.lsdka.i)paramIterable.next();
      Object localObject = b.c(locali);
      if (locali.h() == null)
      {
        if (locali.q() == null) {
          throw new IllegalArgumentException("Message has no conversation database ID");
        }
        localObject = Long.valueOf(paramSQLiteDatabase.insert("messages", null, (ContentValues)localObject));
        if (((Long)localObject).longValue() == -1L) {
          throw new IllegalArgumentException("Could not insert message");
        }
        locali.b((Long)localObject);
        if (locali.o() != null) {
          a(paramSQLiteDatabase, locali.o(), locali.n());
        }
      }
      while (locali.k() == null)
      {
        throw new IllegalArgumentException("Message has no message parts!");
        if (paramSQLiteDatabase.update("messages", (ContentValues)localObject, "database_identifier=?", new String[] { locali.h().toString() }) != 1) {
          throw new IllegalArgumentException("Could not update message!");
        }
      }
      localObject = locali.j();
      if (localObject != null)
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          ((j)((Iterator)localObject).next()).b(locali.h());
        }
      }
      a(paramSQLiteDatabase, locali);
      b(paramSQLiteDatabase, locali);
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Iterable<? extends Conversation> paramIterable, boolean paramBoolean)
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      com.layer.sdk.internal.lsdkd.lsdka.c localc = (com.layer.sdk.internal.lsdkd.lsdka.c)paramIterable.next();
      a(paramSQLiteDatabase, localc);
      b(paramSQLiteDatabase, localc);
      a(paramSQLiteDatabase, localc, paramBoolean);
      a(paramSQLiteDatabase, localc);
    }
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, Long paramLong, long paramLong1, Collection<m.c> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      m.c localc = (m.c)paramCollection.next();
      a.a(paramSQLiteDatabase, o.b.c, paramLong, paramLong1, localc.toString(), true);
    }
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2)
  {
    if (paramString1.isEmpty()) {
      if (k.a(2)) {
        k.a(a, "Suppressing attempt to create identity with an empty user ID");
      }
    }
    while (a.f(paramSQLiteDatabase, paramString1) != null) {
      return;
    }
    paramString1 = new e(paramString1);
    paramString1.b(paramString2);
    a(paramSQLiteDatabase, b.b(paramString1, false));
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Collection<e> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    if (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      ContentValues localContentValues = b.b(locale, true);
      paramCollection = a.f(paramSQLiteDatabase, locale.getUserId());
      if (paramCollection == null) {
        paramCollection = a(paramSQLiteDatabase, localContentValues);
      }
      for (;;)
      {
        locale.a(paramCollection);
        b(paramSQLiteDatabase, locale);
        break;
        a(paramSQLiteDatabase, localContentValues, paramCollection);
      }
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, List<com.layer.b.f.a.d> paramList)
  {
    HashMap localHashMap = new HashMap();
    Object localObject1 = new HashSet();
    Object localObject2 = paramList.iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((Set)localObject1).add(((com.layer.b.f.a.d)((Iterator)localObject2).next()).b);
    }
    localObject1 = b.a(paramSQLiteDatabase, (Set)localObject1);
    if (localObject1 != null)
    {
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (e)((Iterator)localObject1).next();
        localHashMap.put(((e)localObject2).getUserId(), localObject2);
      }
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localObject1 = (com.layer.b.f.a.d)paramList.next();
      switch (1.b[localObject1.byI.ordinal()])
      {
      default: 
        if (k.a(6)) {
          k.e(a, "Cannot process identity patch, unknown type: " + ((com.layer.b.f.a.d)localObject1).byI);
        }
        throw new IllegalArgumentException("Cannot process identity patch, unknown type: " + ((com.layer.b.f.a.d)localObject1).byI);
      case 1: 
        localObject1 = a(paramSQLiteDatabase, localHashMap, (com.layer.b.f.a.d)localObject1);
        a(paramSQLiteDatabase, localHashMap, (e)localObject1, a((e)localObject1), false);
        break;
      case 2: 
        localObject1 = ((com.layer.b.f.a.d)localObject1).byJ;
        localObject2 = new e((com.layer.b.f.a.c)localObject1);
        ((e)localObject2).d(true);
        ((e)localObject2).c(false);
        a(paramSQLiteDatabase, localHashMap, (e)localObject2, ((com.layer.b.f.a.c)localObject1).i, true);
        break;
      case 3: 
        a(paramSQLiteDatabase, localHashMap, ((com.layer.b.f.a.d)localObject1).b);
      }
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, List<n> paramList, a parama)
  {
    if ((parama == a.a) && (paramList.size() > 1) && (k.a(6)))
    {
      k.e(a, "Presence can only be updated for current user. So, cannot be larger than 1 : " + paramList);
      throw new IllegalArgumentException("Presence can only be updated for current user. So, cannot be larger than 1 : " + paramList);
    }
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    Object localObject1 = new HashSet();
    Object localObject2 = paramList.iterator();
    n localn;
    while (((Iterator)localObject2).hasNext())
    {
      localn = (n)((Iterator)localObject2).next();
      if (localn.a() == null)
      {
        if (k.a(6)) {
          k.e(a, "No user-id set on presence object: " + localn);
        }
        throw new IllegalArgumentException("No user-id set on presence object: " + localn);
      }
      if (TextUtils.isEmpty(localn.a())) {
        k.d(a, "Empty user id: " + localn);
      }
      ((Set)localObject1).add(localn.a());
    }
    localObject1 = b.d(paramSQLiteDatabase, (Set)localObject1);
    if (localObject1 != null)
    {
      localObject1 = ((LinkedHashSet)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (n)((Iterator)localObject1).next();
        localLinkedHashMap.put(((n)localObject2).a(), localObject2);
      }
    }
    localObject1 = paramList.iterator();
    if (((Iterator)localObject1).hasNext())
    {
      localObject2 = (n)((Iterator)localObject1).next();
      localn = (n)localLinkedHashMap.get(((n)localObject2).a());
      if (localn == null) {
        if (parama == a.b)
        {
          paramList = Long.valueOf(paramSQLiteDatabase.insert("presence", "database_identifier", b.a((n)localObject2, false)));
          a.a(paramSQLiteDatabase, d.c.g, d.a.a, paramList);
        }
      }
      for (;;)
      {
        ((n)localObject2).a(paramList);
        break;
        paramList = Long.valueOf(paramSQLiteDatabase.insert("presence", "database_identifier", b.a((n)localObject2, true)));
        continue;
        paramList = localn.d();
        if (parama == a.b)
        {
          if ((localn.c() == null) || (((n)localObject2).c().after(localn.c())))
          {
            a(paramSQLiteDatabase, (n)localObject2, b.a((n)localObject2, false));
            a(paramSQLiteDatabase, localn, (n)localObject2);
          }
        }
        else {
          a(paramSQLiteDatabase, (n)localObject2, b.a((n)localObject2, true));
        }
      }
    }
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, Map<String, e> paramMap, e parame, Map<String, String> paramMap1, boolean paramBoolean)
  {
    e locale = null;
    if (paramMap.containsKey(parame.getUserId())) {
      locale = b.a(paramSQLiteDatabase, parame.getUserId());
    }
    ContentValues localContentValues = b.b(parame, paramBoolean);
    Long localLong;
    if (locale == null)
    {
      localLong = a(paramSQLiteDatabase, localContentValues);
      a.a(paramSQLiteDatabase, d.c.f, d.a.a, localLong);
      if (locale != null) {
        break label120;
      }
    }
    label120:
    for (paramBoolean = true;; paramBoolean = false)
    {
      a(paramSQLiteDatabase, paramMap1, localLong, paramBoolean);
      paramMap.put(parame.getUserId(), parame);
      return;
      localLong = locale.e();
      parame.a(localLong);
      a(paramSQLiteDatabase, localContentValues, localLong);
      a(paramSQLiteDatabase, locale, parame);
      break;
    }
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, Map<String, String> paramMap, Long paramLong, boolean paramBoolean)
  {
    m.g localg1 = new m.g();
    if (!paramBoolean) {
      localg1 = com.layer.sdk.internal.lsdkd.lsdka.o.a(b.a(paramSQLiteDatabase, o.b.c, paramLong, o.a.b));
    }
    for (;;)
    {
      long l = new Date().getTime();
      if (paramMap == null) {
        a(paramSQLiteDatabase, paramLong, l, localg1.keySet());
      }
      while (paramMap != null)
      {
        paramMap = paramMap.entrySet().iterator();
        while (paramMap.hasNext()) {
          a(paramSQLiteDatabase, a(paramLong, l, (Map.Entry)paramMap.next()));
        }
        m.g localg2 = new m.g();
        Iterator localIterator = paramMap.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          localg2.a((CharSequence)localEntry.getKey(), new m.h((CharSequence)localEntry.getValue(), Long.valueOf(l)));
        }
        a(paramSQLiteDatabase, paramLong, l, com.layer.sdk.internal.lsdkk.m.a(localg1, localg2));
      }
      return;
    }
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, Map<String, e> paramMap, String paramString)
  {
    e locale = null;
    if (paramMap.containsKey(paramString)) {
      locale = b.a(paramSQLiteDatabase, paramString);
    }
    if (locale != null)
    {
      locale.d(false);
      locale.c(false);
      paramMap = new ContentValues();
      paramMap.put("followed", Boolean.valueOf(locale.isFollowed()));
      paramMap.put("syncable_change", Boolean.valueOf(locale.f()));
      a(paramSQLiteDatabase, paramMap, locale.e());
      a(paramSQLiteDatabase, locale);
    }
  }
  
  private static void a(e parame, String paramString1, String paramString2)
  {
    if (paramString1.startsWith("metadata."))
    {
      paramString1 = paramString1.substring(9);
      if (paramString2 == null)
      {
        parame.a(new m.c(paramString1));
        return;
      }
      parame.a(new m.c(paramString1), new m.h(paramString2));
      return;
    }
    int i = -1;
    switch (paramString1.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return;
      case 0: 
        parame.b(paramString2);
        return;
        if (paramString1.equals("display_name"))
        {
          i = 0;
          continue;
          if (paramString1.equals("first_name"))
          {
            i = 1;
            continue;
            if (paramString1.equals("last_name"))
            {
              i = 2;
              continue;
              if (paramString1.equals("phone_number"))
              {
                i = 3;
                continue;
                if (paramString1.equals("email_address"))
                {
                  i = 4;
                  continue;
                  if (paramString1.equals("public_key"))
                  {
                    i = 5;
                    continue;
                    if (paramString1.equals("avatar_url")) {
                      i = 6;
                    }
                  }
                }
              }
            }
          }
        }
        break;
      }
    }
    parame.c(paramString2);
    return;
    parame.d(paramString2);
    return;
    parame.e(paramString2);
    return;
    parame.f(paramString2);
    return;
    parame.h(paramString2);
    return;
    parame.g(paramString2);
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc)
  {
    if (!paramc.xm()) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < paramc.bCF.size())
      {
        ContentValues localContentValues = b.a(paramc, i);
        if (!a.a(paramSQLiteDatabase, paramc, i))
        {
          if (Long.valueOf(paramSQLiteDatabase.insert("event_content_parts", null, localContentValues)).longValue() == -1L) {
            throw new IllegalArgumentException("Could not insert event content part");
          }
        }
        else if (paramSQLiteDatabase.update("event_content_parts", localContentValues, "event_content_part_id=? AND event_database_identifier=?", new String[] { String.valueOf(i), paramc.bvQ.toString() }) != 1) {
          throw new IllegalArgumentException("Could not update event content part!");
        }
        i += 1;
      }
    }
  }
  
  private static void b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, a parama, boolean paramBoolean)
  {
    Object localObject2;
    if (paramBoolean)
    {
      localObject2 = new LinkedHashSet();
      if (!paramh.r()) {
        break label127;
      }
    }
    Object localObject3;
    Object localObject4;
    Object localObject5;
    label127:
    for (Object localObject1 = paramh.c;; localObject1 = null)
    {
      localObject3 = ((Set)localObject2).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (String)((Iterator)localObject3).next();
        if ((localObject1 == null) || (!((Set)localObject1).contains(localObject4)))
        {
          localObject5 = a.a(paramSQLiteDatabase, paramh, (String)localObject4);
          a.a(paramSQLiteDatabase, paramh, (String)localObject4, true);
          if (parama == a.b) {
            a.a(paramSQLiteDatabase, d.c.e, d.a.c, (Long)localObject5);
          }
        }
      }
      localObject2 = b.d(paramSQLiteDatabase, paramh.bwE);
      break;
    }
    if (localObject1 != null)
    {
      localObject4 = ((Set)localObject1).iterator();
      while (((Iterator)localObject4).hasNext())
      {
        localObject3 = (String)((Iterator)localObject4).next();
        if (!((Set)localObject2).contains(localObject3))
        {
          localObject5 = b.a(paramh, (String)localObject3, null);
          if (paramBoolean) {}
          for (localObject1 = null; localObject1 == null; localObject1 = a.a(paramSQLiteDatabase, paramh, (String)localObject3))
          {
            localObject3 = Long.valueOf(paramSQLiteDatabase.insert("stream_members", null, (ContentValues)localObject5));
            localObject1 = localObject3;
            if (((Long)localObject3).longValue() != -1L) {
              break label265;
            }
            throw new IllegalArgumentException("Could not insert stream member");
          }
          a.a(paramSQLiteDatabase, paramh, (String)localObject3, false);
          label265:
          if (parama == a.b) {
            a.a(paramSQLiteDatabase, d.c.e, d.a.a, (Long)localObject1);
          }
        }
      }
    }
  }
  
  private static void b(SQLiteDatabase paramSQLiteDatabase, e parame)
  {
    Object localObject1 = com.layer.sdk.internal.lsdkk.m.b((com.layer.sdk.internal.lsdkd.lsdka.m)parame.getMetadata());
    parame = parame.e();
    Object localObject2 = com.layer.sdk.internal.lsdkk.m.b(b.r(paramSQLiteDatabase, parame)).keySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      m.c localc = (m.c)((Iterator)localObject2).next();
      if (!((m.g)localObject1).a(localc)) {
        a.a(paramSQLiteDatabase, h.b.c, parame, localc.toString());
      }
    }
    localObject1 = ((m.g)localObject1).entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      if (!(((Map.Entry)localObject2).getValue() instanceof m.h))
      {
        if (k.a(6)) {
          k.e(a, "Cannot persist local keyed value with: " + ((Map.Entry)localObject2).getValue());
        }
        throw new IllegalArgumentException("Cannot persist local keyed value with: " + ((Map.Entry)localObject2).getValue());
      }
      a(paramSQLiteDatabase, h.b.c, parame, h.a.b, ((m.c)((Map.Entry)localObject2).getKey()).toString(), ((m.e)((Map.Entry)localObject2).getValue()).toString(), ((m.h)((Map.Entry)localObject2).getValue()).a());
    }
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdkd.lsdka.i parami)
  {
    if ((parami.l() == null) || (parami.l().isEmpty())) {}
    for (;;)
    {
      return;
      Iterator localIterator = parami.l().iterator();
      while (localIterator.hasNext())
      {
        com.layer.sdk.internal.lsdkd.lsdka.h localh = (com.layer.sdk.internal.lsdkd.lsdka.h)localIterator.next();
        localh.b(parami.h());
        a(paramSQLiteDatabase, localh);
      }
    }
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase, Conversation paramConversation)
  {
    paramConversation = (com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation;
    Object localObject = paramConversation.l();
    if ((localObject == null) || (((List)localObject).isEmpty())) {}
    for (;;)
    {
      return;
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        com.layer.sdk.internal.lsdkd.lsdka.d locald = (com.layer.sdk.internal.lsdkd.lsdka.d)((Iterator)localObject).next();
        locald.b(paramConversation.g());
        a(paramSQLiteDatabase, locald);
      }
    }
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase, Iterable<? extends MessagePart> paramIterable)
    throws IOException
  {
    if (paramIterable == null) {}
    for (;;)
    {
      return;
      paramIterable = paramIterable.iterator();
      while (paramIterable.hasNext()) {
        a(paramSQLiteDatabase, (j)paramIterable.next());
      }
    }
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase, Collection<e> paramCollection)
  {
    int j = paramCollection.size();
    String[] arrayOfString = new String[j];
    paramCollection = paramCollection.iterator();
    int i = 0;
    while (paramCollection.hasNext())
    {
      localObject = (e)paramCollection.next();
      ((e)localObject).c(false);
      arrayOfString[i] = ((e)localObject).e().toString();
      i += 1;
    }
    paramCollection = b.wy();
    Object localObject = TextUtils.join(",", Collections.nCopies(j, "?"));
    if (paramSQLiteDatabase.update("identities", paramCollection, "database_identifier IN (" + (String)localObject + ")", arrayOfString) != j)
    {
      if (k.a(6)) {
        k.e(a, "Could not update identities");
      }
      throw new IllegalArgumentException("Could not update identities");
    }
  }
  
  public static enum a
  {
    private a() {}
  }
  
  public static class b
  {
    static ContentValues a(com.layer.b.d.c paramc, int paramInt)
    {
      com.layer.b.f.c.a locala = (com.layer.b.f.c.a)paramc.bCF.get(paramInt);
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("event_content_part_id", Integer.valueOf(paramInt));
      localContentValues.put("event_database_identifier", paramc.bvQ);
      localContentValues.put("type", locala.a);
      localContentValues.put("value", locala.yf());
      localContentValues.put("size", Long.valueOf(locala.b));
      localContentValues.put("url", locala.d);
      if (locala.j()) {
        localContentValues.put("access_expiration", Long.valueOf(locala.e));
      }
      return localContentValues;
    }
    
    static ContentValues a(com.layer.b.d.h paramh, String paramString, Integer paramInteger)
    {
      ContentValues localContentValues = new ContentValues();
      if (paramh.bwE != null) {
        localContentValues.put("stream_database_identifier", paramh.bwE);
      }
      if (paramString != null) {
        localContentValues.put("member_id", paramString);
      }
      if (paramInteger != null) {
        localContentValues.put("seq", paramInteger);
      }
      return localContentValues;
    }
    
    static ContentValues a(l paraml)
    {
      ContentValues localContentValues = new ContentValues();
      if (paraml.a() != null) {
        localContentValues.put("database_identifier", paraml.a());
      }
      if (paraml.b() != null) {
        localContentValues.put("message_database_identifier", paraml.b());
      }
      if (paraml.c() != null) {
        localContentValues.put("user_id", paraml.c());
      }
      if (paraml.d() != null) {
        localContentValues.put("status", Integer.valueOf(paraml.d().ordinal()));
      }
      if (paraml.e() != null) {
        localContentValues.put("seq", paraml.e());
      }
      return localContentValues;
    }
    
    static ContentValues a(n paramn, boolean paramBoolean)
    {
      ContentValues localContentValues = new ContentValues();
      if (paramn.d() != null) {
        localContentValues.put("database_identifier", paramn.d());
      }
      localContentValues.put("user_id", paramn.a());
      localContentValues.put("status", Integer.valueOf(paramn.b().getValue()));
      if (paramn.c() != null) {
        localContentValues.put("last_seen_at", Long.valueOf(paramn.c().getTime()));
      }
      localContentValues.put("syncable_change", Boolean.valueOf(paramBoolean));
      return localContentValues;
    }
    
    static ContentValues a(com.layer.sdk.internal.lsdkd.lsdka.o paramo)
    {
      ContentValues localContentValues = new ContentValues();
      if (paramo.a() != null) {
        localContentValues.put("database_identifier", paramo.a());
      }
      if (paramo.c() != null) {
        localContentValues.put("object_type", paramo.c().a());
      }
      if (paramo.d() != null) {
        localContentValues.put("object_id", paramo.d());
      }
      if (paramo.e() != null) {
        localContentValues.put("key_type", Integer.valueOf(paramo.e().a()));
      }
      if (paramo.f() != null) {
        localContentValues.put("key", paramo.f());
      }
      if (paramo.g() != null) {
        localContentValues.put("value", paramo.g());
      }
      if (paramo.b()) {}
      for (int i = 1;; i = 0)
      {
        localContentValues.put("is_deleted", Integer.valueOf(i));
        if (paramo.h() != null) {
          break;
        }
        localContentValues.putNull("timestamp");
        return localContentValues;
      }
      localContentValues.put("timestamp", paramo.h());
      return localContentValues;
    }
    
    static ContentValues a(com.layer.sdk.internal.lsdki.c paramc)
    {
      ContentValues localContentValues = new ContentValues();
      if (paramc.a() != null) {
        localContentValues.put("change_identifier", paramc.a());
      }
      localContentValues.put("table_name", paramc.b().a());
      localContentValues.put("row_identifier", paramc.c());
      localContentValues.put("change_type", Integer.valueOf(paramc.d().a()));
      return localContentValues;
    }
    
    private static ContentValues a(boolean paramBoolean1, boolean paramBoolean2)
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("followed", Boolean.valueOf(paramBoolean1));
      localContentValues.put("syncable_change", Boolean.valueOf(paramBoolean2));
      return localContentValues;
    }
    
    static ContentValues b(com.layer.b.d.h paramh, boolean paramBoolean)
    {
      ContentValues localContentValues = new ContentValues();
      if (paramh.bwE != null) {
        localContentValues.put("database_identifier", paramh.bwE);
      }
      if (paramh.xG()) {
        localContentValues.put("stream_id", paramh.yZ());
      }
      if (paramh.xm())
      {
        localContentValues.put("client_id", paramh.za());
        if (!paramh.ys()) {
          break label553;
        }
        localContentValues.put("request_client_id", paramh.zd());
        label78:
        if (!paramh.zb()) {
          break label563;
        }
        localContentValues.put("is_distinct", Boolean.valueOf(paramh.h));
        label99:
        if (paramh.yk()) {
          localContentValues.put("type", Integer.valueOf(paramh.bEJ.a));
        }
        if ((paramBoolean) && (paramh.t())) {
          localContentValues.put("seq", Integer.valueOf(paramh.d));
        }
        if (paramh.bwH != null) {
          localContentValues.put("base_sync_seq", paramh.bwH);
        }
        if (paramh.bwF != null) {
          localContentValues.put("min_synced_seq", paramh.bwF);
        }
        if (paramh.bwG != null) {
          localContentValues.put("max_synced_seq", paramh.bwG);
        }
        localContentValues.put("is_deleted", Boolean.valueOf(paramh.y));
        com.layer.b.f.c.h localh = null;
        if (paramh.yu()) {
          localh = paramh.bEM;
        }
        if ((localh == null) || (!localh.b())) {
          break label577;
        }
        localContentValues.put("total_message_count", Integer.valueOf(localh.a));
        label252:
        if ((localh == null) || (!localh.d())) {
          break label587;
        }
        localContentValues.put("unread_message_count", Integer.valueOf(localh.b));
        label277:
        if ((localh == null) || (!localh.h())) {
          break label597;
        }
        localContentValues.put("last_message_received_at", Long.valueOf(localh.d));
        label302:
        if ((localh == null) || (!localh.j())) {
          break label607;
        }
        localContentValues.put("last_message_seq", Integer.valueOf(localh.bpD));
        label327:
        if ((localh == null) || (!localh.f())) {
          break label617;
        }
        localContentValues.put("oldest_unread_message_seq", Integer.valueOf(localh.c));
      }
      for (;;)
      {
        if (paramh.K()) {
          localContentValues.put("mutation_seq", Integer.valueOf(paramh.bEO));
        }
        if (paramh.bwJ != null) {
          localContentValues.put("base_sync_mutation_seq", paramh.bwJ);
        }
        if (paramh.bwK != null) {
          localContentValues.put("min_synced_mutation_seq", paramh.bwK);
        }
        if (paramh.bwL != null) {
          localContentValues.put("max_synced_mutation_seq", paramh.bwL);
        }
        if (paramh.yw()) {
          localContentValues.put("starting_seq", Integer.valueOf(paramh.bEN));
        }
        if (paramh.zg()) {
          localContentValues.put("created_at", Long.valueOf(paramh.n));
        }
        return localContentValues;
        if (paramh.xG())
        {
          if (k.a(5)) {
            k.d(c.wq(), "Stream with no client-id. Using stream-id. " + paramh.toString());
          }
          localContentValues.put("client_id", paramh.yZ());
          break;
        }
        throw new IllegalArgumentException("Stream with no client_id set. Stream: " + paramh.toString());
        label553:
        localContentValues.putNull("request_client_id");
        break label78;
        label563:
        localContentValues.put("is_distinct", Boolean.valueOf(false));
        break label99;
        label577:
        localContentValues.putNull("total_message_count");
        break label252;
        label587:
        localContentValues.putNull("unread_message_count");
        break label277;
        label597:
        localContentValues.putNull("last_message_received_at");
        break label302;
        label607:
        localContentValues.putNull("last_message_seq");
        break label327;
        label617:
        localContentValues.putNull("oldest_unread_message_seq");
      }
    }
    
    static ContentValues b(com.layer.b.d.i parami)
    {
      ContentValues localContentValues = new ContentValues();
      if (parami.bwN != null) {
        localContentValues.put("database_identifier", parami.bwN);
      }
      if (parami.bwP != null) {
        localContentValues.put("stream_database_identifier", parami.bwP);
      }
      if (parami.bwO != null) {
        localContentValues.put("event_database_identifier", parami.bwO);
      }
      if (parami.xj()) {
        localContentValues.put("stream_id", parami.zl());
      }
      if (parami.xk()) {
        localContentValues.put("target_seq", Integer.valueOf(parami.bpD));
      }
      if (parami.k != null) {
        localContentValues.put("conversation_object_identifier", parami.k);
      }
      if (parami.l != null) {
        localContentValues.put("message_object_identifier", parami.l);
      }
      localContentValues.put("type", Integer.valueOf(parami.bFy.a));
      localContentValues.put("target", Integer.valueOf(parami.bFz.a));
      if (parami.q()) {
        localContentValues.put("seq", Integer.valueOf(parami.f));
      }
      return localContentValues;
    }
    
    static ContentValues b(com.layer.sdk.internal.lsdkd.lsdka.d paramd)
    {
      ContentValues localContentValues = new ContentValues();
      if (paramd.b() != null) {
        localContentValues.put("database_identifier", paramd.b());
      }
      if (paramd.c() != null) {
        localContentValues.put("conversation_database_identifier", paramd.c());
      }
      if (paramd.d() != null) {
        localContentValues.put("stream_member_database_identifier", paramd.d());
      }
      if (paramd.e() != null) {
        localContentValues.put("event_database_identifier", paramd.e());
      }
      if (paramd.a() != null) {
        localContentValues.put("member_id", paramd.a());
      }
      if (paramd.f()) {}
      for (int i = 1;; i = 0)
      {
        localContentValues.put("is_deleted", Integer.valueOf(i));
        if (paramd.g() != null) {
          localContentValues.put("seq", paramd.g());
        }
        if (paramd.h() != null) {
          localContentValues.put("mark_as_read_from_position", paramd.h());
        }
        return localContentValues;
      }
    }
    
    static ContentValues b(e parame, boolean paramBoolean)
    {
      ContentValues localContentValues1 = new ContentValues();
      localContentValues1.put("user_id", parame.getUserId());
      localContentValues1.put("object_identifier", parame.getId().toString());
      localContentValues1.put("display_name", parame.getDisplayName());
      localContentValues1.put("first_name", parame.getFirstName());
      localContentValues1.put("last_name", parame.getLastName());
      localContentValues1.put("email_address", parame.getEmailAddress());
      localContentValues1.put("phone_number", parame.getPhoneNumber());
      localContentValues1.put("avatar_image_url", parame.getAvatarImageUrl());
      if (paramBoolean)
      {
        paramBoolean = parame.isFollowed();
        boolean bool = parame.f();
        ContentValues localContentValues2 = new ContentValues();
        localContentValues2.put("followed", Boolean.valueOf(paramBoolean));
        localContentValues2.put("syncable_change", Boolean.valueOf(bool));
        localContentValues1.putAll(localContentValues2);
      }
      localContentValues1.put("public_key", parame.getPublicKey());
      return localContentValues1;
    }
    
    static ContentValues b(com.layer.sdk.internal.lsdkd.lsdka.h paramh)
    {
      ContentValues localContentValues = new ContentValues();
      if (paramh.a() != null) {
        localContentValues.put("database_identifier", paramh.a());
      }
      if (paramh.c() != null) {
        localContentValues.put("object_type", paramh.c().a());
      }
      if (paramh.d() != null) {
        localContentValues.put("object_id", paramh.d());
      }
      if (paramh.e() != null) {
        localContentValues.put("key_type", Integer.valueOf(paramh.e().a()));
      }
      if (paramh.f() != null) {
        localContentValues.put("key", paramh.f());
      }
      if (paramh.g() != null) {
        localContentValues.put("value", paramh.g());
      }
      if (paramh.b()) {}
      for (int i = 1;; i = 0)
      {
        localContentValues.put("is_deleted", Integer.valueOf(i));
        if (paramh.h() != null) {
          break;
        }
        localContentValues.putNull("timestamp");
        return localContentValues;
      }
      localContentValues.put("timestamp", paramh.h());
      return localContentValues;
    }
    
    static ContentValues c(com.layer.sdk.internal.lsdkd.lsdka.i parami)
    {
      int j = 1;
      ContentValues localContentValues = new ContentValues();
      if (parami.h() != null) {
        localContentValues.put("database_identifier", parami.h());
      }
      com.layer.b.f.c.o localo;
      if (parami.getId() != null)
      {
        localContentValues.put("object_identifier", parami.getId().toString());
        if (parami.q() != null) {
          localContentValues.put("conversation_database_identifier", parami.q());
        }
        if (parami.i() != null) {
          localContentValues.put("event_database_identifier", parami.i());
        }
        if (parami.p() != null) {
          localContentValues.put("seq", parami.p());
        }
        if (!(parami instanceof com.layer.sdk.internal.lsdkd.lsdka.b)) {
          break label289;
        }
        localo = com.layer.b.f.c.o.bFu;
        localContentValues.put("type", Integer.valueOf(localo.a));
        if (parami.o() != null) {
          localContentValues.put("user_id", parami.o());
        }
        if (parami.n() != null) {
          localContentValues.put("user_name", parami.n());
        }
        if (parami.getSentAt() != null) {
          localContentValues.put("sent_at", Long.valueOf(parami.getSentAt().getTime()));
        }
        if (parami.getReceivedAt() != null) {
          localContentValues.put("received_by_user", Long.valueOf(parami.getReceivedAt().getTime()));
        }
        if (!parami.c()) {
          break label310;
        }
        i = 1;
        label227:
        localContentValues.put("is_deleted_all_participants", Integer.valueOf(i));
        if (!parami.d()) {
          break label315;
        }
      }
      label289:
      label310:
      label315:
      for (int i = j;; i = 0)
      {
        localContentValues.put("is_deleted_my_devices", Integer.valueOf(i));
        localContentValues.put("message_index", Long.valueOf(parami.getPosition()));
        return localContentValues;
        throw new IllegalArgumentException("Null ID");
        if (!parami.r())
        {
          localo = com.layer.b.f.c.o.bFv;
          break;
        }
        localo = com.layer.b.f.c.o.bFt;
        break;
        i = 0;
        break label227;
      }
    }
    
    /* Error */
    static ContentValues d(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc)
    {
      // Byte code:
      //   0: new 25	android/content/ContentValues
      //   3: dup
      //   4: invokespecial 29	android/content/ContentValues:<init>	()V
      //   7: astore 4
      //   9: aload_1
      //   10: getfield 49	com/layer/b/d/c:bvQ	Ljava/lang/Long;
      //   13: ifnull +14 -> 27
      //   16: aload 4
      //   18: ldc 114
      //   20: aload_1
      //   21: getfield 49	com/layer/b/d/c:bvQ	Ljava/lang/Long;
      //   24: invokevirtual 52	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
      //   27: aload_1
      //   28: invokevirtual 645	com/layer/b/d/c:yr	()Z
      //   31: ifeq +311 -> 342
      //   34: aload 4
      //   36: ldc_w 262
      //   39: aload_1
      //   40: invokevirtual 648	com/layer/b/d/c:yq	()[B
      //   43: invokevirtual 69	android/content/ContentValues:put	(Ljava/lang/String;[B)V
      //   46: aload_1
      //   47: invokevirtual 649	com/layer/b/d/c:f	()Z
      //   50: ifeq +20 -> 70
      //   53: aload 4
      //   55: ldc 54
      //   57: aload_1
      //   58: getfield 653	com/layer/b/f/c/d:bCE	Lcom/layer/b/f/c/e;
      //   61: getfield 656	com/layer/b/f/c/e:a	I
      //   64: invokestatic 37	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   67: invokevirtual 41	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
      //   70: aload_1
      //   71: invokevirtual 657	com/layer/b/d/c:j	()Z
      //   74: ifeq +15 -> 89
      //   77: aload 4
      //   79: ldc_w 659
      //   82: aload_1
      //   83: getfield 661	com/layer/b/f/c/d:c	Ljava/lang/String;
      //   86: invokevirtual 60	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   89: aload_1
      //   90: invokevirtual 664	com/layer/b/d/c:xE	()Z
      //   93: ifeq +17 -> 110
      //   96: aload 4
      //   98: ldc 106
      //   100: aload_1
      //   101: getfield 665	com/layer/b/f/c/d:d	I
      //   104: invokestatic 37	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   107: invokevirtual 41	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
      //   110: aload_1
      //   111: invokevirtual 666	com/layer/b/d/c:xG	()Z
      //   114: ifeq +17 -> 131
      //   117: aload 4
      //   119: ldc -41
      //   121: aload_1
      //   122: getfield 667	com/layer/b/f/c/d:e	J
      //   125: invokestatic 79	java/lang/Long:valueOf	(J)Ljava/lang/Long;
      //   128: invokevirtual 52	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
      //   131: aload_1
      //   132: invokevirtual 668	com/layer/b/d/c:yk	()Z
      //   135: ifeq +18 -> 153
      //   138: aload 4
      //   140: ldc_w 670
      //   143: aload_1
      //   144: getfield 671	com/layer/b/f/c/d:f	I
      //   147: invokestatic 37	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   150: invokevirtual 41	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
      //   153: aload_1
      //   154: invokevirtual 672	com/layer/b/d/c:r	()Z
      //   157: ifeq +18 -> 175
      //   160: aload 4
      //   162: ldc_w 674
      //   165: aload_1
      //   166: getfield 676	com/layer/b/f/c/d:g	I
      //   169: invokestatic 37	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   172: invokevirtual 41	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
      //   175: aload_1
      //   176: invokevirtual 677	com/layer/b/d/c:t	()Z
      //   179: ifeq +22 -> 201
      //   182: aload 4
      //   184: ldc_w 679
      //   187: new 681	java/lang/Byte
      //   190: dup
      //   191: aload_1
      //   192: getfield 685	com/layer/b/f/c/d:bzH	B
      //   195: invokespecial 688	java/lang/Byte:<init>	(B)V
      //   198: invokevirtual 691	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Byte;)V
      //   201: aload_1
      //   202: invokevirtual 694	com/layer/b/d/c:xp	()Z
      //   205: ifeq +14 -> 219
      //   208: aload 4
      //   210: ldc 104
      //   212: aload_1
      //   213: getfield 696	com/layer/b/f/c/d:j	Ljava/lang/String;
      //   216: invokevirtual 60	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   219: aload_1
      //   220: invokevirtual 699	com/layer/b/d/c:yo	()Z
      //   223: ifeq +18 -> 241
      //   226: aload 4
      //   228: ldc_w 449
      //   231: aload_1
      //   232: getfield 702	com/layer/b/f/c/d:bCG	I
      //   235: invokestatic 37	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   238: invokevirtual 41	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
      //   241: aload_1
      //   242: invokevirtual 703	com/layer/b/d/c:yu	()Z
      //   245: ifeq +15 -> 260
      //   248: aload 4
      //   250: ldc_w 705
      //   253: aload_1
      //   254: getfield 708	com/layer/b/f/c/d:bCH	Ljava/lang/String;
      //   257: invokevirtual 60	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   260: aload_1
      //   261: invokevirtual 711	com/layer/b/d/c:yv	()Z
      //   264: ifeq +136 -> 400
      //   267: new 713	java/util/HashMap
      //   270: dup
      //   271: invokespecial 714	java/util/HashMap:<init>	()V
      //   274: astore 5
      //   276: aload_1
      //   277: getfield 718	com/layer/b/f/c/d:bCI	Ljava/util/Map;
      //   280: invokeinterface 724 1 0
      //   285: invokeinterface 730 1 0
      //   290: astore_2
      //   291: aload_2
      //   292: invokeinterface 735 1 0
      //   297: ifeq +56 -> 353
      //   300: aload_2
      //   301: invokeinterface 739 1 0
      //   306: checkcast 741	java/util/Map$Entry
      //   309: astore_3
      //   310: aload 5
      //   312: aload_3
      //   313: invokeinterface 744 1 0
      //   318: aload_3
      //   319: invokeinterface 746 1 0
      //   324: checkcast 748	com/layer/b/f/c/k
      //   327: getfield 749	com/layer/b/f/c/k:a	I
      //   330: invokestatic 37	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   333: invokeinterface 752 3 0
      //   338: pop
      //   339: goto -48 -> 291
      //   342: new 423	java/lang/IllegalArgumentException
      //   345: dup
      //   346: ldc_w 754
      //   349: invokespecial 426	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
      //   352: athrow
      //   353: new 756	java/io/ByteArrayOutputStream
      //   356: dup
      //   357: invokespecial 757	java/io/ByteArrayOutputStream:<init>	()V
      //   360: astore_3
      //   361: new 759	java/io/ObjectOutputStream
      //   364: dup
      //   365: aload_3
      //   366: invokespecial 762	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
      //   369: astore_2
      //   370: aload_2
      //   371: aload 5
      //   373: invokevirtual 766	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
      //   376: aload_2
      //   377: invokevirtual 769	java/io/ObjectOutputStream:flush	()V
      //   380: aload 4
      //   382: ldc_w 771
      //   385: aload_3
      //   386: invokevirtual 774	java/io/ByteArrayOutputStream:toByteArray	()[B
      //   389: invokevirtual 69	android/content/ContentValues:put	(Ljava/lang/String;[B)V
      //   392: aload_2
      //   393: invokevirtual 777	java/io/ObjectOutputStream:close	()V
      //   396: aload_3
      //   397: invokevirtual 778	java/io/ByteArrayOutputStream:close	()V
      //   400: aload_1
      //   401: getfield 781	com/layer/b/d/c:bvR	Ljava/lang/Long;
      //   404: ifnull +160 -> 564
      //   407: aload_1
      //   408: getfield 781	com/layer/b/d/c:bvR	Ljava/lang/Long;
      //   411: astore_3
      //   412: aload_1
      //   413: getfield 785	com/layer/b/d/c:bvS	Ljava/util/UUID;
      //   416: astore_2
      //   417: aload_0
      //   418: aload_3
      //   419: invokestatic 790	com/layer/sdk/internal/lsdke/lsdkc/a:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/UUID;
      //   422: astore_0
      //   423: aload_2
      //   424: ifnull +91 -> 515
      //   427: aload_0
      //   428: ifnull +87 -> 515
      //   431: aload_2
      //   432: aload_0
      //   433: invokevirtual 796	java/util/UUID:equals	(Ljava/lang/Object;)Z
      //   436: ifne +79 -> 515
      //   439: new 423	java/lang/IllegalArgumentException
      //   442: dup
      //   443: ldc_w 798
      //   446: invokespecial 426	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
      //   449: athrow
      //   450: astore_0
      //   451: aconst_null
      //   452: astore_2
      //   453: aconst_null
      //   454: astore_3
      //   455: aload_2
      //   456: ifnull +7 -> 463
      //   459: aload_2
      //   460: invokevirtual 777	java/io/ObjectOutputStream:close	()V
      //   463: aload_3
      //   464: ifnull +7 -> 471
      //   467: aload_3
      //   468: invokevirtual 778	java/io/ByteArrayOutputStream:close	()V
      //   471: aload_0
      //   472: athrow
      //   473: astore_0
      //   474: bipush 6
      //   476: invokestatic 400	com/layer/sdk/internal/lsdkk/k:a	(I)Z
      //   479: ifeq +27 -> 506
      //   482: invokestatic 404	com/layer/sdk/internal/lsdke/lsdkc/c:wq	()Lcom/layer/sdk/internal/lsdkk/k$a;
      //   485: new 406	java/lang/StringBuilder
      //   488: dup
      //   489: ldc_w 800
      //   492: invokespecial 410	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   495: aload_1
      //   496: invokevirtual 803	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   499: invokevirtual 418	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   502: aload_0
      //   503: invokestatic 806	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   506: new 808	java/lang/IllegalStateException
      //   509: dup
      //   510: aload_0
      //   511: invokespecial 811	java/lang/IllegalStateException:<init>	(Ljava/lang/Throwable;)V
      //   514: athrow
      //   515: aload_2
      //   516: ifnonnull +12 -> 528
      //   519: aload_0
      //   520: ifnull +8 -> 528
      //   523: aload_1
      //   524: aload_0
      //   525: putfield 785	com/layer/b/d/c:bvS	Ljava/util/UUID;
      //   528: aload 4
      //   530: ldc 102
      //   532: aload_1
      //   533: getfield 781	com/layer/b/d/c:bvR	Ljava/lang/Long;
      //   536: invokevirtual 52	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
      //   539: aload_1
      //   540: invokevirtual 814	com/layer/b/d/c:N	()Z
      //   543: ifeq +18 -> 561
      //   546: aload 4
      //   548: ldc_w 816
      //   551: aload_1
      //   552: getfield 819	com/layer/b/f/c/d:bCM	J
      //   555: invokestatic 79	java/lang/Long:valueOf	(J)Ljava/lang/Long;
      //   558: invokevirtual 52	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
      //   561: aload 4
      //   563: areturn
      //   564: aload_1
      //   565: getfield 785	com/layer/b/d/c:bvS	Ljava/util/UUID;
      //   568: ifnull -29 -> 539
      //   571: aload_0
      //   572: aload_1
      //   573: getfield 785	com/layer/b/d/c:bvS	Ljava/util/UUID;
      //   576: invokestatic 822	com/layer/sdk/internal/lsdke/lsdkc/a:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Ljava/lang/Long;
      //   579: astore_0
      //   580: aload_0
      //   581: ifnonnull +31 -> 612
      //   584: new 423	java/lang/IllegalArgumentException
      //   587: dup
      //   588: new 406	java/lang/StringBuilder
      //   591: dup
      //   592: ldc_w 824
      //   595: invokespecial 410	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   598: aload_1
      //   599: getfield 785	com/layer/b/d/c:bvS	Ljava/util/UUID;
      //   602: invokevirtual 803	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   605: invokevirtual 418	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   608: invokespecial 426	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
      //   611: athrow
      //   612: aload_1
      //   613: aload_0
      //   614: putfield 781	com/layer/b/d/c:bvR	Ljava/lang/Long;
      //   617: aload 4
      //   619: ldc 102
      //   621: aload_0
      //   622: invokevirtual 52	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
      //   625: goto -86 -> 539
      //   628: astore_0
      //   629: aconst_null
      //   630: astore_2
      //   631: goto -176 -> 455
      //   634: astore_0
      //   635: goto -180 -> 455
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	638	0	paramSQLiteDatabase	SQLiteDatabase
      //   0	638	1	paramc	com.layer.b.d.c
      //   290	341	2	localObject1	Object
      //   309	159	3	localObject2	Object
      //   7	611	4	localContentValues	ContentValues
      //   274	98	5	localHashMap	HashMap
      // Exception table:
      //   from	to	target	type
      //   353	361	450	finally
      //   392	400	473	java/lang/Exception
      //   459	463	473	java/lang/Exception
      //   467	471	473	java/lang/Exception
      //   471	473	473	java/lang/Exception
      //   361	370	628	finally
      //   370	392	634	finally
    }
    
    static ContentValues d(com.layer.sdk.internal.lsdkd.lsdka.c paramc)
    {
      int j = 1;
      ContentValues localContentValues = new ContentValues();
      if (paramc.g() != null) {
        localContentValues.put("database_identifier", paramc.g());
      }
      com.layer.b.f.c.o localo;
      int i;
      if (paramc.getId() != null)
      {
        localContentValues.put("object_identifier", paramc.getId().toString());
        if (paramc.m() != null) {
          localContentValues.put("stream_database_identifier", paramc.m());
        }
        if (paramc.j() != null) {
          localContentValues.put("stream_id", com.layer.b.e.d.d(paramc.j()));
        }
        if (!(paramc instanceof com.layer.sdk.internal.lsdkd.lsdka.a)) {
          break label280;
        }
        localo = com.layer.b.f.c.o.bFu;
        localContentValues.put("type", Integer.valueOf(localo.a));
        if (!paramc.isDistinct()) {
          break label301;
        }
        i = 1;
        label124:
        localContentValues.put("is_distinct", Integer.valueOf(i));
        if (!paramc.c()) {
          break label306;
        }
        i = 1;
        label145:
        localContentValues.put("is_deleted_all_participants", Integer.valueOf(i));
        if (!paramc.d()) {
          break label311;
        }
        i = j;
        label166:
        localContentValues.put("is_deleted_my_devices", Integer.valueOf(i));
        if (paramc.getTotalMessageCount() == null) {
          break label316;
        }
        localContentValues.put("total_message_count", paramc.getTotalMessageCount());
        label197:
        if (paramc.getTotalUnreadMessageCount() == null) {
          break label327;
        }
        localContentValues.put("total_unread_message_count", paramc.getTotalUnreadMessageCount());
      }
      for (;;)
      {
        if (paramc.getHistoricSyncStatus() != null) {
          localContentValues.put("historic_message_status", Integer.valueOf(paramc.getHistoricSyncStatus().getValue()));
        }
        if (paramc.h() != null) {
          localContentValues.put("created_at", Long.valueOf(paramc.h().getTime()));
        }
        return localContentValues;
        throw new IllegalArgumentException("Null ID");
        label280:
        if (!paramc.isReadReceiptsEnabled())
        {
          localo = com.layer.b.f.c.o.bFv;
          break;
        }
        localo = com.layer.b.f.c.o.bFt;
        break;
        label301:
        i = 0;
        break label124;
        label306:
        i = 0;
        break label145;
        label311:
        i = 0;
        break label166;
        label316:
        localContentValues.putNull("total_message_count");
        break label197;
        label327:
        localContentValues.putNull("total_unread_message_count");
      }
    }
    
    static ContentValues d(String paramString, Long paramLong)
    {
      ContentValues localContentValues = new ContentValues();
      if (paramString != null) {
        localContentValues.put("user_id", paramString);
      }
      if (paramLong != null) {
        localContentValues.put("synced_at", paramLong);
      }
      return localContentValues;
    }
    
    static ContentValues e(String paramString, int paramInt)
    {
      ContentValues localContentValues = new ContentValues(2);
      localContentValues.put("response_name", paramString);
      localContentValues.put("version", Integer.valueOf(paramInt));
      return localContentValues;
    }
    
    static ContentValues g(j paramj)
      throws IOException
    {
      ContentValues localContentValues = new ContentValues();
      if (paramj.i() != null) {
        localContentValues.put("database_identifier", paramj.i());
      }
      if (paramj.getId() != null) {
        localContentValues.put("object_identifier", paramj.getId().toString());
      }
      if (paramj.j() != null) {
        localContentValues.put("message_database_identifier", paramj.j());
      }
      if (paramj.getMimeType() != null) {
        localContentValues.put("mime_type", paramj.getMimeType());
      }
      if (paramj.g() != null) {
        localContentValues.put("content", paramj.g());
      }
      if (paramj.n() != null) {
        localContentValues.put("url", paramj.n());
      }
      if (paramj.o() != null) {
        localContentValues.put("access_expiration", Long.valueOf(paramj.o().getTime()));
      }
      if (paramj.l() != null) {
        localContentValues.put("access_time", Long.valueOf(paramj.l().getTime()));
      }
      if (paramj.getTransferStatus() != null) {
        localContentValues.put("transfer_status", Integer.valueOf(paramj.p()));
      }
      int i;
      if (paramj.k())
      {
        i = 1;
        localContentValues.put("pruned", Integer.valueOf(i));
        if (paramj.f() == null) {
          break label245;
        }
        localContentValues.put("file_path", paramj.f().getPath());
      }
      for (;;)
      {
        localContentValues.put("size", Long.valueOf(paramj.getSize()));
        return localContentValues;
        i = 0;
        break;
        label245:
        localContentValues.putNull("file_path");
      }
    }
    
    static ContentValues wy()
    {
      ContentValues localContentValues = new ContentValues(1);
      localContentValues.put("syncable_change", Boolean.valueOf(false));
      return localContentValues;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/lsdkc/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */