package com.layer.sdk.internal.lsdke.lsdkc;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.text.TextUtils;
import com.layer.b.f.c.g;
import com.layer.sdk.internal.lsdkd.lsdka.h.a;
import com.layer.sdk.internal.lsdkd.lsdka.h.b;
import com.layer.sdk.internal.lsdkd.lsdka.j;
import com.layer.sdk.internal.lsdkd.lsdka.l;
import com.layer.sdk.internal.lsdkd.lsdka.n;
import com.layer.sdk.internal.lsdkd.lsdka.o.a;
import com.layer.sdk.internal.lsdkd.lsdka.o.b;
import com.layer.sdk.internal.lsdki.c.a;
import com.layer.sdk.internal.lsdki.d.a;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.internal.lsdkk.m.g;
import com.layer.sdk.internal.lsdkk.m.h;
import com.layer.sdk.messaging.Conversation.HistoricSyncStatus;
import com.layer.sdk.messaging.MessagePart.TransferStatus;
import com.layer.sdk.messaging.Presence.PresenceStatus;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class b
{
  private static final k.a a = k.a(b.class);
  
  public static com.layer.b.d.c a(SQLiteDatabase paramSQLiteDatabase, Long paramLong, final int paramInt)
  {
    paramSQLiteDatabase = c.c(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.d(paramAnonymousSQLiteDatabase, this.a, paramInt);
      }
    }));
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return null;
    }
    if (paramSQLiteDatabase.size() != 1) {
      throw new IllegalArgumentException(paramSQLiteDatabase.size() + " events found with stream DB ID " + paramLong + " and serverSeq " + paramInt + "!");
    }
    return (com.layer.b.d.c)paramSQLiteDatabase.get(0);
  }
  
  public static com.layer.b.d.h a(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    paramSQLiteDatabase = c.a(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.t(paramAnonymousSQLiteDatabase, this.a);
      }
    }));
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return null;
    }
    return (com.layer.b.d.h)paramSQLiteDatabase.get(0);
  }
  
  public static com.layer.b.d.h a(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID)
  {
    paramSQLiteDatabase = c.a(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.d(paramAnonymousSQLiteDatabase, this.a);
      }
    }));
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return null;
    }
    if (paramSQLiteDatabase.size() > 1) {
      throw new IllegalArgumentException("More than one stream found with that ID!");
    }
    return (com.layer.b.d.h)paramSQLiteDatabase.get(0);
  }
  
  public static com.layer.b.d.i a(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID, final int paramInt)
  {
    (com.layer.b.d.i)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.c(paramAnonymousSQLiteDatabase, this.a, paramInt);
      }
    });
  }
  
  public static com.layer.sdk.internal.lsdkd.lsdka.c a(SQLiteDatabase paramSQLiteDatabase, Uri paramUri)
  {
    paramUri = (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.e(paramAnonymousSQLiteDatabase, this.a);
      }
    });
    if ((paramUri == null) || (paramUri.isEmpty())) {
      return null;
    }
    if (paramUri.size() > 1) {
      throw new IllegalArgumentException("More than one conversation found with that ID!");
    }
    return (com.layer.sdk.internal.lsdkd.lsdka.c)c.d(paramSQLiteDatabase, paramUri).get(0);
  }
  
  public static com.layer.sdk.internal.lsdkd.lsdka.d a(SQLiteDatabase paramSQLiteDatabase, Long paramLong, final String paramString)
  {
    paramSQLiteDatabase = (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.b(paramAnonymousSQLiteDatabase, this.a, paramString);
      }
    });
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return null;
    }
    if (paramSQLiteDatabase.size() > 1) {
      throw new IllegalArgumentException("More than one stream found with that ID!");
    }
    return (com.layer.sdk.internal.lsdkd.lsdka.d)paramSQLiteDatabase.get(0);
  }
  
  private static com.layer.sdk.internal.lsdkd.lsdka.e a(SQLiteDatabase paramSQLiteDatabase, Cursor paramCursor)
  {
    paramCursor = (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return this.brC;
      }
    });
    if ((paramCursor == null) || (paramCursor.isEmpty())) {
      return null;
    }
    return (com.layer.sdk.internal.lsdkd.lsdka.e)c.i(paramSQLiteDatabase, paramCursor).get(0);
  }
  
  public static com.layer.sdk.internal.lsdkd.lsdka.e a(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    return a(paramSQLiteDatabase, b.g(paramSQLiteDatabase, paramString));
  }
  
  public static Integer a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdke.f paramf)
  {
    (Integer)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.b(paramAnonymousSQLiteDatabase, this.a);
      }
    });
  }
  
  private static <T> T a(SQLiteDatabase paramSQLiteDatabase, d<T> paramd)
  {
    Object localObject = null;
    SQLiteDatabase localSQLiteDatabase = null;
    try
    {
      paramSQLiteDatabase = paramd.u(paramSQLiteDatabase);
      localSQLiteDatabase = paramSQLiteDatabase;
      localObject = paramSQLiteDatabase;
      paramd = paramd.d(paramSQLiteDatabase);
      if (paramSQLiteDatabase != null) {
        paramSQLiteDatabase.close();
      }
      return paramd;
    }
    catch (Throwable paramSQLiteDatabase)
    {
      localObject = localSQLiteDatabase;
      throw new IllegalStateException("Read operation failed: " + paramSQLiteDatabase, paramSQLiteDatabase);
    }
    finally
    {
      if (localObject != null) {
        ((Cursor)localObject).close();
      }
    }
  }
  
  public static LinkedHashSet<com.layer.b.d.c> a(SQLiteDatabase paramSQLiteDatabase, long paramLong, int paramInt)
  {
    paramSQLiteDatabase = c.c(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.c(paramAnonymousSQLiteDatabase, Long.valueOf(this.brA), this.b);
      }
    }));
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return localLinkedHashSet;
    }
    localLinkedHashSet.addAll(paramSQLiteDatabase);
    return localLinkedHashSet;
  }
  
  public static List<com.layer.b.d.h> a(SQLiteDatabase paramSQLiteDatabase)
  {
    c.a(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.u(paramAnonymousSQLiteDatabase);
      }
    }));
  }
  
  public static List<com.layer.b.d.h> a(SQLiteDatabase paramSQLiteDatabase, int paramInt)
  {
    c.a(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.c(paramAnonymousSQLiteDatabase, this.a);
      }
    }));
  }
  
  public static List<com.layer.b.d.i> a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.f.c.f paramf, final UUID paramUUID)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.b(paramAnonymousSQLiteDatabase, this.brB, paramUUID);
      }
    });
  }
  
  public static List<com.layer.b.d.i> a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.f.c.f paramf, final UUID paramUUID, final Integer paramInteger)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.b(paramAnonymousSQLiteDatabase, this.brB, paramUUID, paramInteger);
      }
    });
  }
  
  public static List<com.layer.sdk.internal.lsdkd.lsdka.h> a(SQLiteDatabase paramSQLiteDatabase, h.b paramb, final Long paramLong, final h.a parama)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.b(paramAnonymousSQLiteDatabase, this.a, paramLong, parama);
      }
    });
  }
  
  public static List<com.layer.sdk.internal.lsdkd.lsdka.o> a(SQLiteDatabase paramSQLiteDatabase, o.b paramb, final Long paramLong, final o.a parama)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.b(paramAnonymousSQLiteDatabase, this.a, paramLong, parama);
      }
    });
  }
  
  public static List<com.layer.sdk.internal.lsdki.d> a(SQLiteDatabase paramSQLiteDatabase, d.a parama)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.b(paramAnonymousSQLiteDatabase, this.a);
      }
    });
  }
  
  public static List<com.layer.b.d.c> a(SQLiteDatabase paramSQLiteDatabase, List<Long> paramList)
  {
    paramList = c.c(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.b(paramAnonymousSQLiteDatabase, this.a);
      }
    }));
    if (paramList != null)
    {
      paramSQLiteDatabase = paramList;
      if (!paramList.isEmpty()) {}
    }
    else
    {
      paramSQLiteDatabase = null;
    }
    return paramSQLiteDatabase;
  }
  
  public static List<com.layer.sdk.internal.lsdkd.lsdka.e> a(SQLiteDatabase paramSQLiteDatabase, Set<String> paramSet)
  {
    if (paramSet.size() <= 3000) {
      return b(paramSQLiteDatabase, b.e(paramSQLiteDatabase, paramSet));
    }
    ArrayList localArrayList = new ArrayList(paramSet.size());
    HashSet localHashSet = new HashSet(3000);
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      localHashSet.add((String)paramSet.next());
      if (localHashSet.size() == 3000)
      {
        List localList = b(paramSQLiteDatabase, b.e(paramSQLiteDatabase, localHashSet));
        if (localList != null) {
          localArrayList.addAll(localList);
        }
        localHashSet.clear();
      }
    }
    if (localHashSet.size() > 0)
    {
      paramSQLiteDatabase = b(paramSQLiteDatabase, b.e(paramSQLiteDatabase, localHashSet));
      if (paramSQLiteDatabase != null) {
        localArrayList.addAll(paramSQLiteDatabase);
      }
    }
    return localArrayList;
  }
  
  public static List<j> a(SQLiteDatabase paramSQLiteDatabase, MessagePart.TransferStatus... paramVarArgs)
  {
    c.f(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.b(paramAnonymousSQLiteDatabase, this.brs);
      }
    }));
  }
  
  public static com.layer.b.d.c b(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID)
  {
    paramSQLiteDatabase = c.c(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.e(paramAnonymousSQLiteDatabase, this.a);
      }
    }));
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return null;
    }
    if (paramSQLiteDatabase.size() != 1) {
      throw new IllegalArgumentException(paramSQLiteDatabase.size() + " events found with client ID '" + paramUUID.toString() + "'!");
    }
    return (com.layer.b.d.c)paramSQLiteDatabase.get(0);
  }
  
  public static com.layer.b.d.c b(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID, final int paramInt)
  {
    paramSQLiteDatabase = c.c(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.d(paramAnonymousSQLiteDatabase, this.a, paramInt);
      }
    }));
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return null;
    }
    if (paramSQLiteDatabase.size() > 1) {
      throw new IllegalArgumentException("More than one event found with that stream and serverSeq!");
    }
    return (com.layer.b.d.c)paramSQLiteDatabase.get(0);
  }
  
  public static com.layer.b.d.i b(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    (com.layer.b.d.i)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.u(paramAnonymousSQLiteDatabase, this.a);
      }
    });
  }
  
  public static com.layer.sdk.internal.lsdkd.lsdka.i b(SQLiteDatabase paramSQLiteDatabase, Uri paramUri)
  {
    paramUri = (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.f(paramAnonymousSQLiteDatabase, this.a);
      }
    });
    if ((paramUri == null) || (paramUri.isEmpty())) {
      return null;
    }
    if (paramUri.size() > 1) {
      throw new IllegalArgumentException("More than one message found with that ID!");
    }
    return (com.layer.sdk.internal.lsdkd.lsdka.i)c.e(paramSQLiteDatabase, paramUri).get(0);
  }
  
  public static n b(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    paramSQLiteDatabase = c(paramSQLiteDatabase, b.h(paramSQLiteDatabase, paramString));
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return null;
    }
    return (n)paramSQLiteDatabase.iterator().next();
  }
  
  public static List<com.layer.b.d.h> b(SQLiteDatabase paramSQLiteDatabase)
  {
    c.a(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.v(paramAnonymousSQLiteDatabase);
      }
    }));
  }
  
  public static List<com.layer.sdk.internal.lsdki.d> b(SQLiteDatabase paramSQLiteDatabase, int paramInt)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.d(paramAnonymousSQLiteDatabase, this.a);
      }
    });
  }
  
  private static List<com.layer.sdk.internal.lsdkd.lsdka.e> b(SQLiteDatabase paramSQLiteDatabase, Cursor paramCursor)
  {
    paramCursor = (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return this.brC;
      }
    });
    if ((paramCursor == null) || (paramCursor.isEmpty())) {
      return null;
    }
    return c.i(paramSQLiteDatabase, paramCursor);
  }
  
  public static List<com.layer.sdk.internal.lsdkd.lsdka.e> b(SQLiteDatabase paramSQLiteDatabase, Set<Long> paramSet)
  {
    return b(paramSQLiteDatabase, b.f(paramSQLiteDatabase, paramSet));
  }
  
  public static com.layer.b.d.h c(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    paramSQLiteDatabase = c.a(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.s(paramAnonymousSQLiteDatabase, this.a);
      }
    }));
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return null;
    }
    return (com.layer.b.d.h)paramSQLiteDatabase.get(0);
  }
  
  public static com.layer.sdk.internal.lsdkd.lsdka.c c(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID)
  {
    paramSQLiteDatabase = c.d(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.f(paramAnonymousSQLiteDatabase, this.a);
      }
    }));
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return null;
    }
    if (paramSQLiteDatabase.size() > 1) {
      throw new IllegalArgumentException("More than one conversation found with that ID!");
    }
    return (com.layer.sdk.internal.lsdkd.lsdka.c)paramSQLiteDatabase.get(0);
  }
  
  public static j c(SQLiteDatabase paramSQLiteDatabase, Uri paramUri)
  {
    paramUri = (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.g(paramAnonymousSQLiteDatabase, this.a);
      }
    });
    if ((paramUri == null) || (paramUri.isEmpty())) {
      return null;
    }
    if (paramUri.size() > 1) {
      throw new IllegalArgumentException("More than one message part found with that ID!");
    }
    return (j)c.f(paramSQLiteDatabase, paramUri).get(0);
  }
  
  private static LinkedHashSet<n> c(SQLiteDatabase paramSQLiteDatabase, Cursor paramCursor)
  {
    paramCursor = (LinkedHashSet)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return this.brC;
      }
    });
    if (paramCursor != null)
    {
      paramSQLiteDatabase = paramCursor;
      if (!paramCursor.isEmpty()) {}
    }
    else
    {
      paramSQLiteDatabase = null;
    }
    return paramSQLiteDatabase;
  }
  
  public static LinkedHashSet<n> c(SQLiteDatabase paramSQLiteDatabase, Set<Long> paramSet)
  {
    return c(paramSQLiteDatabase, b.g(paramSQLiteDatabase, paramSet));
  }
  
  public static List<com.layer.b.d.h> c(SQLiteDatabase paramSQLiteDatabase)
  {
    c.a(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.w(paramAnonymousSQLiteDatabase);
      }
    }));
  }
  
  public static com.layer.sdk.internal.lsdkd.lsdka.e d(SQLiteDatabase paramSQLiteDatabase, Uri paramUri)
  {
    return a(paramSQLiteDatabase, b.h(paramSQLiteDatabase, paramUri));
  }
  
  public static LinkedHashSet<n> d(SQLiteDatabase paramSQLiteDatabase, Set<String> paramSet)
  {
    if (paramSet.size() <= 3000) {
      return c(paramSQLiteDatabase, b.h(paramSQLiteDatabase, paramSet));
    }
    LinkedHashSet localLinkedHashSet1 = new LinkedHashSet(paramSet.size());
    HashSet localHashSet = new HashSet(3000);
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      localHashSet.add((String)paramSet.next());
      if (localHashSet.size() == 3000)
      {
        LinkedHashSet localLinkedHashSet2 = c(paramSQLiteDatabase, b.h(paramSQLiteDatabase, localHashSet));
        if (localLinkedHashSet2 != null) {
          localLinkedHashSet1.addAll(localLinkedHashSet2);
        }
        localHashSet.clear();
      }
    }
    if (localHashSet.size() > 0)
    {
      paramSQLiteDatabase = c(paramSQLiteDatabase, b.h(paramSQLiteDatabase, localHashSet));
      if (paramSQLiteDatabase != null) {
        localLinkedHashSet1.addAll(paramSQLiteDatabase);
      }
    }
    return localLinkedHashSet1;
  }
  
  public static List<com.layer.b.d.i> d(SQLiteDatabase paramSQLiteDatabase)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.x(paramAnonymousSQLiteDatabase);
      }
    });
  }
  
  public static Set<String> d(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    (Set)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.v(paramAnonymousSQLiteDatabase, this.a);
      }
    });
  }
  
  public static List<com.layer.b.d.i> e(SQLiteDatabase paramSQLiteDatabase)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.y(paramAnonymousSQLiteDatabase);
      }
    });
  }
  
  public static Map<String, String> e(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    HashMap localHashMap = new HashMap();
    paramSQLiteDatabase = a(paramSQLiteDatabase, o.b.a, paramLong, o.a.c).iterator();
    while (paramSQLiteDatabase.hasNext())
    {
      paramLong = (com.layer.sdk.internal.lsdkd.lsdka.o)paramSQLiteDatabase.next();
      localHashMap.put(paramLong.f(), paramLong.g());
    }
    if (!localHashMap.isEmpty()) {
      return localHashMap;
    }
    return null;
  }
  
  public static String f(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    (String)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.w(paramAnonymousSQLiteDatabase, this.a);
      }
    });
  }
  
  public static List<com.layer.b.d.i> f(SQLiteDatabase paramSQLiteDatabase)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.z(paramAnonymousSQLiteDatabase);
      }
    });
  }
  
  public static com.layer.b.d.c g(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    paramSQLiteDatabase = c.c(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.x(paramAnonymousSQLiteDatabase, this.a);
      }
    }));
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return null;
    }
    return (com.layer.b.d.c)paramSQLiteDatabase.get(0);
  }
  
  public static List<com.layer.b.d.c> g(SQLiteDatabase paramSQLiteDatabase)
  {
    c.c(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.A(paramAnonymousSQLiteDatabase);
      }
    }));
  }
  
  public static List<com.layer.sdk.internal.lsdki.c> h(SQLiteDatabase paramSQLiteDatabase)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.C(paramAnonymousSQLiteDatabase);
      }
    });
  }
  
  public static List<com.layer.b.f.c.a> h(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.y(paramAnonymousSQLiteDatabase, this.a);
      }
    });
  }
  
  public static com.layer.sdk.internal.lsdkd.lsdka.m i(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    Object localObject = a(paramSQLiteDatabase, h.b.a, paramLong, h.a.b);
    if (((List)localObject).isEmpty()) {
      return new com.layer.sdk.internal.lsdkd.lsdka.m();
    }
    paramSQLiteDatabase = new m.g();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      com.layer.sdk.internal.lsdkd.lsdka.h localh = (com.layer.sdk.internal.lsdkd.lsdka.h)((Iterator)localObject).next();
      if (localh.g() != null) {
        paramSQLiteDatabase.a(localh.f(), new m.h(localh.g(), localh.h()));
      } else {
        k.d(a, "Ignoring null metadata value. keyedValue: " + localh.toString() + ". ConversationDbId: " + paramLong);
      }
    }
    return com.layer.sdk.internal.lsdkk.m.a(paramSQLiteDatabase);
  }
  
  public static List<com.layer.sdk.internal.lsdki.d> i(SQLiteDatabase paramSQLiteDatabase)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.D(paramAnonymousSQLiteDatabase);
      }
    });
  }
  
  public static List<com.layer.sdk.internal.lsdki.d> j(SQLiteDatabase paramSQLiteDatabase)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.E(paramAnonymousSQLiteDatabase);
      }
    });
  }
  
  public static Map<String, String> j(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    HashMap localHashMap = new HashMap();
    paramSQLiteDatabase = a(paramSQLiteDatabase, h.b.a, paramLong, h.a.c).iterator();
    while (paramSQLiteDatabase.hasNext())
    {
      paramLong = (com.layer.sdk.internal.lsdkd.lsdka.h)paramSQLiteDatabase.next();
      localHashMap.put(paramLong.f(), paramLong.g());
    }
    if (!localHashMap.isEmpty()) {
      return localHashMap;
    }
    return null;
  }
  
  public static List<com.layer.sdk.internal.lsdki.d> k(SQLiteDatabase paramSQLiteDatabase)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.F(paramAnonymousSQLiteDatabase);
      }
    });
  }
  
  public static List<com.layer.sdk.internal.lsdkd.lsdka.d> k(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.B(paramAnonymousSQLiteDatabase, this.a);
      }
    });
  }
  
  public static com.layer.sdk.internal.lsdkd.lsdka.d l(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    paramSQLiteDatabase = (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.C(paramAnonymousSQLiteDatabase, this.a);
      }
    });
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return null;
    }
    return (com.layer.sdk.internal.lsdkd.lsdka.d)paramSQLiteDatabase.get(0);
  }
  
  public static List<com.layer.sdk.internal.lsdki.d> l(SQLiteDatabase paramSQLiteDatabase)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.G(paramAnonymousSQLiteDatabase);
      }
    });
  }
  
  public static com.layer.sdk.internal.lsdkd.lsdka.d m(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    paramSQLiteDatabase = (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.D(paramAnonymousSQLiteDatabase, this.a);
      }
    });
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return null;
    }
    if (paramSQLiteDatabase.size() > 1) {
      throw new IllegalArgumentException("More than one stream found with that ID!");
    }
    return (com.layer.sdk.internal.lsdkd.lsdka.d)paramSQLiteDatabase.get(0);
  }
  
  public static List<com.layer.sdk.internal.lsdki.d> m(SQLiteDatabase paramSQLiteDatabase)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.H(paramAnonymousSQLiteDatabase);
      }
    });
  }
  
  public static l n(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    (l)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.E(paramAnonymousSQLiteDatabase, this.a);
      }
    });
  }
  
  public static List<com.layer.sdk.internal.lsdki.d> n(SQLiteDatabase paramSQLiteDatabase)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.I(paramAnonymousSQLiteDatabase);
      }
    });
  }
  
  public static List<com.layer.sdk.internal.lsdkd.lsdka.o> o(SQLiteDatabase paramSQLiteDatabase)
  {
    (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.B(paramAnonymousSQLiteDatabase);
      }
    });
  }
  
  public static Map<String, l> o(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    (Map)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.F(paramAnonymousSQLiteDatabase, this.a);
      }
    });
  }
  
  public static com.layer.sdk.internal.lsdkd.lsdka.h p(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    paramSQLiteDatabase = (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.z(paramAnonymousSQLiteDatabase, this.a);
      }
    });
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return null;
    }
    return (com.layer.sdk.internal.lsdkd.lsdka.h)paramSQLiteDatabase.get(0);
  }
  
  public static Long p(SQLiteDatabase paramSQLiteDatabase)
  {
    (Long)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.J(paramAnonymousSQLiteDatabase);
      }
    });
  }
  
  public static com.layer.sdk.internal.lsdkd.lsdka.o q(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    paramSQLiteDatabase = (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.A(paramAnonymousSQLiteDatabase, this.a);
      }
    });
    if ((paramSQLiteDatabase == null) || (paramSQLiteDatabase.isEmpty())) {
      return null;
    }
    return (com.layer.sdk.internal.lsdkd.lsdka.o)paramSQLiteDatabase.get(0);
  }
  
  public static List<com.layer.sdk.internal.lsdkd.lsdka.e> q(SQLiteDatabase paramSQLiteDatabase)
  {
    c.i(paramSQLiteDatabase, (List)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.K(paramAnonymousSQLiteDatabase);
      }
    }));
  }
  
  static com.layer.sdk.internal.lsdkd.lsdka.m r(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    Object localObject = a(paramSQLiteDatabase, h.b.c, paramLong, h.a.b);
    if (((List)localObject).isEmpty()) {
      return new com.layer.sdk.internal.lsdkd.lsdka.m();
    }
    paramSQLiteDatabase = new m.g();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      com.layer.sdk.internal.lsdkd.lsdka.h localh = (com.layer.sdk.internal.lsdkd.lsdka.h)((Iterator)localObject).next();
      if (localh.g() != null) {
        paramSQLiteDatabase.a(localh.f(), new m.h(localh.g(), localh.h()));
      } else {
        k.d(a, "Ignoring null metadata value. keyedValue: " + localh.toString() + ". IdentityDbId: " + paramLong);
      }
    }
    return com.layer.sdk.internal.lsdkk.m.a(paramSQLiteDatabase);
  }
  
  public static LinkedHashSet<n> r(SQLiteDatabase paramSQLiteDatabase)
  {
    (LinkedHashSet)a(paramSQLiteDatabase, new d()
    {
      public final Cursor u(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        return b.b.L(paramAnonymousSQLiteDatabase);
      }
    });
  }
  
  public static class a
  {
    static List<com.layer.b.d.i> e(Cursor paramCursor)
    {
      ArrayList localArrayList = new ArrayList(paramCursor.getCount());
      while (paramCursor.moveToNext())
      {
        com.layer.b.d.i locali = new com.layer.b.d.i();
        locali.bwN = Long.valueOf(paramCursor.getLong(0));
        if (!paramCursor.isNull(1)) {
          locali.a(com.layer.b.e.d.s(paramCursor.getBlob(1)));
        }
        if (!paramCursor.isNull(2)) {
          locali.dH(paramCursor.getInt(2));
        }
        if (!paramCursor.isNull(3)) {
          locali.bFy = g.dB(paramCursor.getInt(3));
        }
        if (!paramCursor.isNull(4)) {
          locali.bFz = com.layer.b.f.c.f.dA(paramCursor.getInt(4));
        }
        if (!paramCursor.isNull(5)) {
          locali.k = paramCursor.getString(5);
        }
        if (!paramCursor.isNull(6)) {
          locali.l = paramCursor.getString(6);
        }
        if (!paramCursor.isNull(7)) {
          locali.bwP = Long.valueOf(paramCursor.getLong(7));
        }
        if (!paramCursor.isNull(8)) {
          locali.bwO = Long.valueOf(paramCursor.getLong(8));
        }
        if (!paramCursor.isNull(9)) {
          locali.dI(paramCursor.getInt(9));
        }
        localArrayList.add(locali);
      }
      return localArrayList;
    }
    
    static List<com.layer.b.d.h> f(Cursor paramCursor)
    {
      ArrayList localArrayList = new ArrayList(paramCursor.getCount());
      com.layer.b.d.h localh;
      com.layer.b.f.c.h localh1;
      boolean bool;
      if (paramCursor.moveToNext())
      {
        localh = new com.layer.b.d.h();
        localh1 = new com.layer.b.f.c.h();
        localh.bEJ = com.layer.b.f.c.o.dG(paramCursor.getInt(0));
        localh.bwE = Long.valueOf(paramCursor.getLong(1));
        if (!paramCursor.isNull(2)) {
          localh.u(paramCursor.getBlob(2));
        }
        if (!paramCursor.isNull(3)) {
          localh.dE(paramCursor.getInt(3));
        }
        if (!paramCursor.isNull(4)) {
          localh.b(com.layer.b.e.d.s(paramCursor.getBlob(4)));
        }
        if (!paramCursor.isNull(5)) {
          localh.bwF = Integer.valueOf(paramCursor.getInt(5));
        }
        if (!paramCursor.isNull(6)) {
          localh.bwG = Integer.valueOf(paramCursor.getInt(6));
        }
        if (!paramCursor.isNull(7)) {
          localh.O(paramCursor.getLong(7));
        }
        if (!paramCursor.isNull(8))
        {
          if (paramCursor.getInt(8) > 0)
          {
            bool = true;
            label243:
            localh.aK(bool);
          }
        }
        else
        {
          if (!paramCursor.isNull(9)) {
            localh.v(paramCursor.getBlob(9));
          }
          if (paramCursor.isNull(10)) {
            break label714;
          }
          localh1.b = paramCursor.getInt(10);
          localh1.xV();
        }
      }
      label707:
      label714:
      for (int i = 1;; i = 0)
      {
        if (!paramCursor.isNull(11))
        {
          localh1.a = paramCursor.getInt(11);
          localh1.xP();
          i = 1;
        }
        if (!paramCursor.isNull(12))
        {
          localh1.d = paramCursor.getLong(12);
          localh1.yX();
          i = 1;
        }
        if (!paramCursor.isNull(13))
        {
          localh1.bpD = paramCursor.getInt(13);
          localh1.e(true);
          i = 1;
        }
        if (!paramCursor.isNull(14))
        {
          localh1.c = paramCursor.getInt(14);
          localh1.xQ();
          i = 1;
        }
        if (!paramCursor.isNull(15)) {
          localh.bwH = Integer.valueOf(paramCursor.getInt(15));
        }
        if (!paramCursor.isNull(16)) {
          localh.bwI = Integer.valueOf(paramCursor.getInt(16));
        }
        if (i != 0) {
          localh.bEM = localh1;
        }
        if (!paramCursor.isNull(17)) {
          if (paramCursor.getInt(17) == 0) {
            break label707;
          }
        }
        for (bool = true;; bool = false)
        {
          localh.y = bool;
          if (!paramCursor.isNull(18)) {
            localh.dF(paramCursor.getInt(18));
          }
          if (!paramCursor.isNull(19)) {
            localh.bwJ = Integer.valueOf(paramCursor.getInt(19));
          }
          if (!paramCursor.isNull(20)) {
            localh.bwK = Integer.valueOf(paramCursor.getInt(20));
          }
          if (!paramCursor.isNull(21)) {
            localh.bwL = Integer.valueOf(paramCursor.getInt(21));
          }
          if (!paramCursor.isNull(22))
          {
            localh.bEN = paramCursor.getInt(22);
            localh.zf();
          }
          if (!paramCursor.isNull(23))
          {
            localh.n = paramCursor.getLong(23);
            localh.zh();
          }
          localArrayList.add(localh);
          break;
          bool = false;
          break label243;
        }
        return localArrayList;
      }
    }
    
    static Set<String> g(Cursor paramCursor)
    {
      LinkedHashSet localLinkedHashSet = new LinkedHashSet(paramCursor.getCount());
      while (paramCursor.moveToNext())
      {
        String str = null;
        if (!paramCursor.isNull(0)) {
          str = paramCursor.getString(0);
        }
        localLinkedHashSet.add(str);
      }
      return localLinkedHashSet;
    }
    
    /* Error */
    static List<com.layer.b.d.c> h(Cursor paramCursor)
    {
      // Byte code:
      //   0: new 11	java/util/ArrayList
      //   3: dup
      //   4: aload_0
      //   5: invokeinterface 17 1 0
      //   10: invokespecial 21	java/util/ArrayList:<init>	(I)V
      //   13: astore 4
      //   15: aload_0
      //   16: invokeinterface 25 1 0
      //   21: ifeq +596 -> 617
      //   24: new 259	com/layer/b/d/c
      //   27: dup
      //   28: iconst_0
      //   29: invokespecial 262	com/layer/b/d/c:<init>	(B)V
      //   32: astore_3
      //   33: aload_3
      //   34: aload_0
      //   35: iconst_0
      //   36: invokeinterface 34 2 0
      //   41: invokestatic 40	java/lang/Long:valueOf	(J)Ljava/lang/Long;
      //   44: putfield 265	com/layer/b/d/c:bvQ	Ljava/lang/Long;
      //   47: aload_0
      //   48: iconst_1
      //   49: invokeinterface 48 2 0
      //   54: ifne +17 -> 71
      //   57: aload_3
      //   58: aload_0
      //   59: iconst_1
      //   60: invokeinterface 65 2 0
      //   65: invokestatic 271	com/layer/b/f/c/e:dz	(I)Lcom/layer/b/f/c/e;
      //   68: putfield 277	com/layer/b/f/c/d:bCE	Lcom/layer/b/f/c/e;
      //   71: aload_0
      //   72: iconst_2
      //   73: invokeinterface 48 2 0
      //   78: ifne +14 -> 92
      //   81: aload_3
      //   82: aload_0
      //   83: iconst_2
      //   84: invokeinterface 95 2 0
      //   89: putfield 279	com/layer/b/f/c/d:c	Ljava/lang/String;
      //   92: aload_0
      //   93: iconst_3
      //   94: invokeinterface 48 2 0
      //   99: ifne +15 -> 114
      //   102: aload_3
      //   103: aload_0
      //   104: iconst_3
      //   105: invokeinterface 65 2 0
      //   110: invokevirtual 283	com/layer/b/d/c:dv	(I)Lcom/layer/b/f/c/d;
      //   113: pop
      //   114: aload_0
      //   115: iconst_4
      //   116: invokeinterface 48 2 0
      //   121: ifne +15 -> 136
      //   124: aload_3
      //   125: aload_0
      //   126: iconst_4
      //   127: invokeinterface 34 2 0
      //   132: invokevirtual 287	com/layer/b/d/c:M	(J)Lcom/layer/b/f/c/d;
      //   135: pop
      //   136: aload_0
      //   137: iconst_5
      //   138: invokeinterface 48 2 0
      //   143: ifne +15 -> 158
      //   146: aload_3
      //   147: aload_0
      //   148: iconst_5
      //   149: invokeinterface 65 2 0
      //   154: invokevirtual 290	com/layer/b/d/c:dw	(I)Lcom/layer/b/f/c/d;
      //   157: pop
      //   158: aload_0
      //   159: bipush 6
      //   161: invokeinterface 48 2 0
      //   166: ifne +16 -> 182
      //   169: aload_3
      //   170: aload_0
      //   171: bipush 6
      //   173: invokeinterface 65 2 0
      //   178: invokevirtual 293	com/layer/b/d/c:dx	(I)Lcom/layer/b/f/c/d;
      //   181: pop
      //   182: aload_0
      //   183: bipush 7
      //   185: invokeinterface 48 2 0
      //   190: ifne +17 -> 207
      //   193: aload_3
      //   194: aload_0
      //   195: bipush 7
      //   197: invokeinterface 65 2 0
      //   202: i2b
      //   203: invokevirtual 296	com/layer/b/d/c:b	(B)Lcom/layer/b/f/c/d;
      //   206: pop
      //   207: aload_0
      //   208: bipush 8
      //   210: invokeinterface 48 2 0
      //   215: ifne +15 -> 230
      //   218: aload_3
      //   219: aload_0
      //   220: bipush 8
      //   222: invokeinterface 95 2 0
      //   227: putfield 299	com/layer/b/f/c/d:j	Ljava/lang/String;
      //   230: aload_0
      //   231: bipush 9
      //   233: invokeinterface 48 2 0
      //   238: ifne +16 -> 254
      //   241: aload_3
      //   242: aload_0
      //   243: bipush 9
      //   245: invokeinterface 65 2 0
      //   250: invokevirtual 302	com/layer/b/d/c:dy	(I)Lcom/layer/b/f/c/d;
      //   253: pop
      //   254: aload_0
      //   255: bipush 10
      //   257: invokeinterface 48 2 0
      //   262: ifne +18 -> 280
      //   265: aload_3
      //   266: aload_0
      //   267: bipush 10
      //   269: invokeinterface 34 2 0
      //   274: invokestatic 40	java/lang/Long:valueOf	(J)Ljava/lang/Long;
      //   277: putfield 305	com/layer/b/d/c:bvR	Ljava/lang/Long;
      //   280: aload_0
      //   281: bipush 11
      //   283: invokeinterface 48 2 0
      //   288: ifne +18 -> 306
      //   291: aload_3
      //   292: aload_0
      //   293: bipush 11
      //   295: invokeinterface 52 2 0
      //   300: invokestatic 58	com/layer/b/e/d:s	([B)Ljava/util/UUID;
      //   303: invokevirtual 306	com/layer/b/d/c:b	(Ljava/util/UUID;)V
      //   306: aload_0
      //   307: bipush 12
      //   309: invokeinterface 48 2 0
      //   314: ifne +15 -> 329
      //   317: aload_3
      //   318: aload_0
      //   319: bipush 12
      //   321: invokeinterface 95 2 0
      //   326: putfield 309	com/layer/b/f/c/d:bCH	Ljava/lang/String;
      //   329: aload_0
      //   330: bipush 13
      //   332: invokeinterface 48 2 0
      //   337: ifne +19 -> 356
      //   340: aload_3
      //   341: aload_0
      //   342: bipush 13
      //   344: invokeinterface 34 2 0
      //   349: putfield 310	com/layer/b/f/c/d:n	J
      //   352: aload_3
      //   353: invokevirtual 313	com/layer/b/f/c/d:yt	()V
      //   356: aload_0
      //   357: bipush 14
      //   359: invokeinterface 48 2 0
      //   364: ifne +191 -> 555
      //   367: new 315	java/io/ByteArrayInputStream
      //   370: dup
      //   371: aload_0
      //   372: bipush 14
      //   374: invokeinterface 52 2 0
      //   379: invokespecial 318	java/io/ByteArrayInputStream:<init>	([B)V
      //   382: astore_2
      //   383: new 320	java/io/ObjectInputStream
      //   386: dup
      //   387: aload_2
      //   388: invokespecial 323	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
      //   391: astore_1
      //   392: aload_1
      //   393: invokevirtual 327	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
      //   396: checkcast 329	java/util/Map
      //   399: astore 6
      //   401: new 331	java/util/HashMap
      //   404: dup
      //   405: invokespecial 332	java/util/HashMap:<init>	()V
      //   408: astore 5
      //   410: aload 6
      //   412: invokeinterface 336 1 0
      //   417: invokeinterface 340 1 0
      //   422: astore 6
      //   424: aload 6
      //   426: invokeinterface 345 1 0
      //   431: ifeq +110 -> 541
      //   434: aload 6
      //   436: invokeinterface 348 1 0
      //   441: checkcast 350	java/util/Map$Entry
      //   444: astore 7
      //   446: aload 5
      //   448: aload 7
      //   450: invokeinterface 353 1 0
      //   455: aload 7
      //   457: invokeinterface 356 1 0
      //   462: checkcast 155	java/lang/Integer
      //   465: invokevirtual 359	java/lang/Integer:intValue	()I
      //   468: invokestatic 365	com/layer/b/f/c/k:dD	(I)Lcom/layer/b/f/c/k;
      //   471: invokeinterface 369 3 0
      //   476: pop
      //   477: goto -53 -> 424
      //   480: astore_0
      //   481: aload_1
      //   482: ifnull +7 -> 489
      //   485: aload_1
      //   486: invokevirtual 372	java/io/ObjectInputStream:close	()V
      //   489: aload_2
      //   490: ifnull +7 -> 497
      //   493: aload_2
      //   494: invokevirtual 373	java/io/ByteArrayInputStream:close	()V
      //   497: aload_0
      //   498: athrow
      //   499: astore_0
      //   500: bipush 6
      //   502: invokestatic 377	com/layer/sdk/internal/lsdkk/k:a	(I)Z
      //   505: ifeq +27 -> 532
      //   508: invokestatic 381	com/layer/sdk/internal/lsdke/lsdkc/b:wq	()Lcom/layer/sdk/internal/lsdkk/k$a;
      //   511: new 383	java/lang/StringBuilder
      //   514: dup
      //   515: ldc_w 385
      //   518: invokespecial 388	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   521: aload_3
      //   522: invokevirtual 392	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   525: invokevirtual 396	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   528: aload_0
      //   529: invokestatic 399	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   532: new 401	java/lang/IllegalStateException
      //   535: dup
      //   536: aload_0
      //   537: invokespecial 404	java/lang/IllegalStateException:<init>	(Ljava/lang/Throwable;)V
      //   540: athrow
      //   541: aload_3
      //   542: aload 5
      //   544: putfield 408	com/layer/b/f/c/d:bCI	Ljava/util/Map;
      //   547: aload_1
      //   548: invokevirtual 372	java/io/ObjectInputStream:close	()V
      //   551: aload_2
      //   552: invokevirtual 373	java/io/ByteArrayInputStream:close	()V
      //   555: aload_0
      //   556: bipush 15
      //   558: invokeinterface 48 2 0
      //   563: ifne +16 -> 579
      //   566: aload_3
      //   567: aload_0
      //   568: bipush 15
      //   570: invokeinterface 34 2 0
      //   575: invokevirtual 411	com/layer/b/d/c:N	(J)Lcom/layer/b/f/c/d;
      //   578: pop
      //   579: aload_0
      //   580: bipush 16
      //   582: invokeinterface 48 2 0
      //   587: ifne +18 -> 605
      //   590: aload_3
      //   591: aload_0
      //   592: bipush 16
      //   594: invokeinterface 52 2 0
      //   599: invokestatic 58	com/layer/b/e/d:s	([B)Ljava/util/UUID;
      //   602: putfield 415	com/layer/b/d/c:bvS	Ljava/util/UUID;
      //   605: aload 4
      //   607: aload_3
      //   608: invokeinterface 117 2 0
      //   613: pop
      //   614: goto -599 -> 15
      //   617: aload 4
      //   619: areturn
      //   620: astore_0
      //   621: aconst_null
      //   622: astore_1
      //   623: aconst_null
      //   624: astore_2
      //   625: goto -144 -> 481
      //   628: astore_0
      //   629: aconst_null
      //   630: astore_1
      //   631: goto -150 -> 481
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	634	0	paramCursor	Cursor
      //   391	240	1	localObjectInputStream	java.io.ObjectInputStream
      //   382	243	2	localByteArrayInputStream	java.io.ByteArrayInputStream
      //   32	576	3	localc	com.layer.b.d.c
      //   13	605	4	localArrayList	ArrayList
      //   408	135	5	localHashMap	HashMap
      //   399	36	6	localObject	Object
      //   444	12	7	localEntry	java.util.Map.Entry
      // Exception table:
      //   from	to	target	type
      //   392	424	480	finally
      //   424	477	480	finally
      //   541	547	480	finally
      //   485	489	499	java/lang/Exception
      //   493	497	499	java/lang/Exception
      //   497	499	499	java/lang/Exception
      //   547	555	499	java/lang/Exception
      //   367	383	620	finally
      //   383	392	628	finally
    }
    
    static List<com.layer.b.f.c.a> i(Cursor paramCursor)
    {
      ArrayList localArrayList = new ArrayList(paramCursor.getCount());
      while (paramCursor.moveToNext())
      {
        com.layer.b.f.c.a locala = new com.layer.b.f.c.a();
        Integer localInteger = Integer.valueOf(0);
        if (!paramCursor.isNull(localInteger.intValue())) {
          locala.a = paramCursor.getString(localInteger.intValue());
        }
        localInteger = Integer.valueOf(localInteger.intValue() + 1);
        if (!paramCursor.isNull(localInteger.intValue())) {
          locala.t(paramCursor.getBlob(localInteger.intValue()));
        }
        localInteger = Integer.valueOf(localInteger.intValue() + 1);
        if (!paramCursor.isNull(localInteger.intValue()))
        {
          locala.e = paramCursor.getLong(localInteger.intValue());
          locala.yg();
        }
        localInteger = Integer.valueOf(localInteger.intValue() + 1);
        if (!paramCursor.isNull(localInteger.intValue())) {
          locala.d = paramCursor.getString(localInteger.intValue());
        }
        localInteger = Integer.valueOf(localInteger.intValue() + 1);
        if (!paramCursor.isNull(localInteger.intValue())) {
          locala.L(paramCursor.getLong(localInteger.intValue()));
        }
        localArrayList.add(locala);
      }
      return localArrayList;
    }
    
    static List<com.layer.sdk.internal.lsdki.c> j(Cursor paramCursor)
    {
      ArrayList localArrayList = new ArrayList(paramCursor.getCount());
      while (paramCursor.moveToNext())
      {
        com.layer.sdk.internal.lsdki.c localc = new com.layer.sdk.internal.lsdki.c();
        localc.a(Long.valueOf(paramCursor.getLong(0)));
        if (!paramCursor.isNull(1)) {
          localc.a(paramCursor.getString(1));
        }
        if (!paramCursor.isNull(2)) {
          localc.b(Long.valueOf(paramCursor.getLong(2)));
        }
        if (!paramCursor.isNull(3)) {
          localc.a(c.a.a(paramCursor.getInt(3)));
        }
        localArrayList.add(localc);
      }
      return localArrayList;
    }
    
    static List<com.layer.sdk.internal.lsdki.d> k(Cursor paramCursor)
    {
      ArrayList localArrayList = new ArrayList(paramCursor.getCount());
      while (paramCursor.moveToNext())
      {
        com.layer.sdk.internal.lsdki.d locald = new com.layer.sdk.internal.lsdki.d();
        locald.a(Long.valueOf(paramCursor.getLong(0)));
        if (!paramCursor.isNull(1)) {
          locald.a(paramCursor.getString(1));
        }
        if (!paramCursor.isNull(2)) {
          locald.b(Long.valueOf(paramCursor.getLong(2)));
        }
        if (!paramCursor.isNull(3)) {
          locald.a(d.a.a(paramCursor.getInt(3)));
        }
        if (!paramCursor.isNull(4)) {
          locald.b(paramCursor.getString(4));
        }
        localArrayList.add(locald);
      }
      return localArrayList;
    }
    
    static List<com.layer.sdk.internal.lsdkd.lsdka.c> l(Cursor paramCursor)
    {
      ArrayList localArrayList = new ArrayList(paramCursor.getCount());
      if (paramCursor.moveToNext())
      {
        Object localObject = Uri.parse(paramCursor.getString(0));
        com.layer.b.f.c.o localo = com.layer.b.f.c.o.dG(paramCursor.getInt(1));
        Long localLong = Long.valueOf(paramCursor.getLong(2));
        switch (b.51.bqe[localo.ordinal()])
        {
        default: 
          localObject = new com.layer.sdk.internal.lsdkd.lsdka.c((Uri)localObject, localLong);
          label99:
          if (!paramCursor.isNull(3)) {
            ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).b(Long.valueOf(paramCursor.getLong(3)));
          }
          if (!paramCursor.isNull(4)) {
            ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).a(com.layer.b.e.d.s(paramCursor.getBlob(4)));
          }
          if (paramCursor.getInt(5) != 0)
          {
            bool = true;
            label159:
            ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).e(bool);
            if (!paramCursor.isNull(6)) {
              ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).a(Integer.valueOf(paramCursor.getInt(6)));
            }
            if (!paramCursor.isNull(7)) {
              ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).b(Integer.valueOf(paramCursor.getInt(7)));
            }
            if (!paramCursor.isNull(8)) {
              ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).a(Conversation.HistoricSyncStatus.fromValue(paramCursor.getInt(8)));
            }
            if (!paramCursor.isNull(9)) {
              ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).a(new Date(paramCursor.getLong(9)));
            }
            if (paramCursor.getInt(10) == 0) {
              break label353;
            }
            bool = true;
            label285:
            ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).c(bool);
            if (paramCursor.getInt(11) == 0) {
              break label358;
            }
          }
          break;
        }
        label353:
        label358:
        for (boolean bool = true;; bool = false)
        {
          ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).d(bool);
          localArrayList.add(localObject);
          break;
          localObject = new com.layer.sdk.internal.lsdkd.lsdka.a((Uri)localObject, localLong);
          break label99;
          localObject = new com.layer.sdk.internal.lsdkd.lsdka.c((Uri)localObject, localLong, false);
          break label99;
          bool = false;
          break label159;
          bool = false;
          break label285;
        }
      }
      return localArrayList;
    }
    
    static List<com.layer.sdk.internal.lsdkd.lsdka.d> m(Cursor paramCursor)
    {
      ArrayList localArrayList = new ArrayList(paramCursor.getCount());
      if (paramCursor.moveToNext())
      {
        com.layer.sdk.internal.lsdkd.lsdka.d locald = new com.layer.sdk.internal.lsdkd.lsdka.d();
        locald.a(Long.valueOf(paramCursor.getLong(0)));
        if (!paramCursor.isNull(1)) {
          locald.b(Long.valueOf(paramCursor.getLong(1)));
        }
        if (!paramCursor.isNull(2)) {
          locald.c(Long.valueOf(paramCursor.getLong(2)));
        }
        if (!paramCursor.isNull(3)) {
          locald.a(paramCursor.getString(3));
        }
        if (!paramCursor.isNull(4)) {
          locald.a(Integer.valueOf(paramCursor.getInt(4)));
        }
        if (!paramCursor.isNull(5)) {
          locald.d(Long.valueOf(paramCursor.getLong(5)));
        }
        if (paramCursor.getInt(6) != 0) {}
        for (boolean bool = true;; bool = false)
        {
          locald.a(bool);
          if (!paramCursor.isNull(7)) {
            locald.a(paramCursor.getLong(7));
          }
          if ((TextUtils.isEmpty(locald.a())) && (k.a(5))) {
            k.d(b.wq(), "Found empty participant-id in a conversation");
          }
          localArrayList.add(locald);
          break;
        }
      }
      return localArrayList;
    }
    
    static List<com.layer.sdk.internal.lsdkd.lsdka.i> n(Cursor paramCursor)
    {
      ArrayList localArrayList = new ArrayList(paramCursor.getCount());
      if (paramCursor.moveToNext())
      {
        Object localObject1 = Uri.parse(paramCursor.getString(0));
        Object localObject2 = com.layer.b.f.c.o.dG(paramCursor.getInt(1));
        Object localObject3 = Long.valueOf(paramCursor.getLong(2));
        switch (b.51.bqe[localObject2.ordinal()])
        {
        default: 
          localObject1 = new com.layer.sdk.internal.lsdkd.lsdka.i((Uri)localObject1, (Long)localObject3);
          label99:
          ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a(Long.valueOf(paramCursor.getLong(3)));
          if (!paramCursor.isNull(4)) {
            ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a(new Date(paramCursor.getLong(4)));
          }
          if (!paramCursor.isNull(5)) {
            ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).b(new Date(paramCursor.getLong(5)));
          }
          localObject2 = null;
          if (!paramCursor.isNull(6)) {
            localObject2 = paramCursor.getString(6);
          }
          if (!paramCursor.isNull(7)) {
            ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a(Integer.valueOf(paramCursor.getInt(7)));
          }
          if (!paramCursor.isNull(8)) {
            ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).c(Long.valueOf(paramCursor.getLong(8)));
          }
          if (!paramCursor.isNull(9))
          {
            ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a(paramCursor.getLong(9));
            label266:
            localObject3 = null;
            if (!paramCursor.isNull(10)) {
              localObject3 = paramCursor.getString(10);
            }
            ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a((String)localObject2, (String)localObject3);
            if (paramCursor.getInt(11) == 0) {
              break label384;
            }
            bool = true;
            label310:
            ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).c(bool);
            if (paramCursor.getInt(12) == 0) {
              break label389;
            }
          }
          break;
        }
        label384:
        label389:
        for (boolean bool = true;; bool = false)
        {
          ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).d(bool);
          localArrayList.add(localObject1);
          break;
          localObject1 = new com.layer.sdk.internal.lsdkd.lsdka.b((Uri)localObject1, (Long)localObject3);
          break label99;
          localObject1 = new com.layer.sdk.internal.lsdkd.lsdka.i((Uri)localObject1, (Long)localObject3, false);
          break label99;
          ((com.layer.sdk.internal.lsdkd.lsdka.i)localObject1).a(Long.MAX_VALUE);
          break label266;
          bool = false;
          break label310;
        }
      }
      return localArrayList;
    }
    
    public static List<com.layer.sdk.internal.lsdkd.lsdka.e> o(Cursor paramCursor)
    {
      ArrayList localArrayList = new ArrayList(paramCursor.getCount());
      if (paramCursor.moveToNext())
      {
        long l = paramCursor.getLong(0);
        com.layer.sdk.internal.lsdkd.lsdka.e locale = new com.layer.sdk.internal.lsdkd.lsdka.e(Uri.parse(paramCursor.getString(1)), Long.valueOf(l));
        if (!paramCursor.isNull(3)) {
          locale.b(paramCursor.getString(3));
        }
        if (!paramCursor.isNull(4)) {
          locale.c(paramCursor.getString(4));
        }
        if (!paramCursor.isNull(5)) {
          locale.d(paramCursor.getString(5));
        }
        if (!paramCursor.isNull(6)) {
          locale.f(paramCursor.getString(6));
        }
        if (!paramCursor.isNull(7)) {
          locale.e(paramCursor.getString(7));
        }
        if (!paramCursor.isNull(8)) {
          locale.g(paramCursor.getString(8));
        }
        if (!paramCursor.isNull(9)) {
          locale.h(paramCursor.getString(9));
        }
        if (paramCursor.getInt(10) != 0)
        {
          bool = true;
          label230:
          locale.d(bool);
          if (paramCursor.getInt(11) == 0) {
            break label273;
          }
        }
        label273:
        for (boolean bool = true;; bool = false)
        {
          locale.c(bool);
          localArrayList.add(locale);
          break;
          bool = false;
          break label230;
        }
      }
      return localArrayList;
    }
    
    public static LinkedHashSet<n> p(Cursor paramCursor)
    {
      LinkedHashSet localLinkedHashSet = new LinkedHashSet(paramCursor.getCount());
      long l;
      if (paramCursor.moveToNext())
      {
        l = paramCursor.getLong(0);
        if (paramCursor.isNull(1)) {
          break label138;
        }
      }
      label138:
      for (String str = paramCursor.getString(1);; str = null)
      {
        if (!paramCursor.isNull(2)) {}
        for (Presence.PresenceStatus localPresenceStatus = Presence.PresenceStatus.findByValue(paramCursor.getInt(2));; localPresenceStatus = null)
        {
          if (!paramCursor.isNull(3)) {}
          for (Date localDate = new Date(paramCursor.getLong(3));; localDate = null)
          {
            localLinkedHashSet.add(new n(str, localPresenceStatus, localDate, Long.valueOf(l)));
            break;
            return localLinkedHashSet;
          }
        }
      }
    }
    
    static List<j> q(Cursor paramCursor)
    {
      ArrayList localArrayList = new ArrayList(paramCursor.getCount());
      if (paramCursor.moveToNext()) {
        if (paramCursor.isNull(0)) {
          break label432;
        }
      }
      label280:
      label383:
      label432:
      for (Object localObject = Uri.parse(paramCursor.getString(0));; localObject = null)
      {
        if (!paramCursor.isNull(1)) {}
        for (Long localLong1 = Long.valueOf(paramCursor.getLong(1));; localLong1 = null)
        {
          if (!paramCursor.isNull(2)) {}
          for (Long localLong2 = Long.valueOf(paramCursor.getLong(2));; localLong2 = null)
          {
            if (!paramCursor.isNull(3)) {}
            for (String str1 = paramCursor.getString(3);; str1 = null)
            {
              if (!paramCursor.isNull(4)) {}
              for (byte[] arrayOfByte = paramCursor.getBlob(4);; arrayOfByte = null)
              {
                String str2 = null;
                if (!paramCursor.isNull(5)) {
                  str2 = paramCursor.getString(5);
                }
                Date localDate1 = null;
                if (!paramCursor.isNull(6)) {
                  localDate1 = new Date(paramCursor.getLong(6));
                }
                if (!paramCursor.isNull(7)) {}
                for (String str3 = paramCursor.getString(7);; str3 = null)
                {
                  if (!paramCursor.isNull(8)) {}
                  for (long l = paramCursor.getLong(8);; l = 0L)
                  {
                    Date localDate2 = null;
                    if (!paramCursor.isNull(9)) {
                      localDate2 = new Date(paramCursor.getLong(9));
                    }
                    boolean bool = false;
                    if (!paramCursor.isNull(10))
                    {
                      if (paramCursor.getInt(10) == 1) {
                        bool = true;
                      }
                    }
                    else
                    {
                      MessagePart.TransferStatus localTransferStatus = null;
                      if (!paramCursor.isNull(11)) {
                        localTransferStatus = MessagePart.TransferStatus.fromOrdinal(paramCursor.getInt(11));
                      }
                      localObject = new j((Uri)localObject, localLong1, str1, Long.valueOf(l)).a(str2, localDate1, localDate2, localTransferStatus, bool);
                      ((j)localObject).b(localLong2);
                      if (str3 == null) {
                        break label383;
                      }
                      ((j)localObject).a(new File(str3));
                    }
                    for (;;)
                    {
                      localArrayList.add(localObject);
                      break;
                      bool = false;
                      break label280;
                      ((j)localObject).a(arrayOfByte);
                    }
                    return localArrayList;
                  }
                }
              }
            }
          }
        }
      }
    }
    
    static Map<String, l> r(Cursor paramCursor)
    {
      HashMap localHashMap = new HashMap(paramCursor.getCount());
      while (paramCursor.moveToNext())
      {
        l locall = new l();
        locall.a(Long.valueOf(paramCursor.getLong(0)));
        if (!paramCursor.isNull(1)) {
          locall.b(Long.valueOf(paramCursor.getLong(1)));
        }
        if (!paramCursor.isNull(2)) {
          locall.a(paramCursor.getString(2));
        }
        if (!paramCursor.isNull(3)) {
          locall.a(com.layer.sdk.messaging.Message.RecipientStatus.values()[paramCursor.getInt(3)]);
        }
        if (!paramCursor.isNull(4)) {
          locall.a(Integer.valueOf(paramCursor.getInt(4)));
        }
        localHashMap.put(locall.c(), locall);
      }
      return localHashMap;
    }
    
    static List<com.layer.sdk.internal.lsdkd.lsdka.h> s(Cursor paramCursor)
    {
      ArrayList localArrayList = new ArrayList(paramCursor.getCount());
      if (paramCursor.moveToNext())
      {
        com.layer.sdk.internal.lsdkd.lsdka.h localh = new com.layer.sdk.internal.lsdkd.lsdka.h();
        localh.a(Long.valueOf(paramCursor.getLong(0)));
        if (!paramCursor.isNull(1)) {
          localh.a(h.b.a(paramCursor.getString(1)));
        }
        if (!paramCursor.isNull(2)) {
          localh.b(Long.valueOf(paramCursor.getLong(2)));
        }
        if (!paramCursor.isNull(3)) {
          localh.a(h.a.a(paramCursor.getInt(3)));
        }
        if (!paramCursor.isNull(4)) {
          localh.a(paramCursor.getString(4));
        }
        if (!paramCursor.isNull(5)) {
          localh.b(paramCursor.getString(5));
        }
        if (!paramCursor.isNull(6)) {
          localh.c(Long.valueOf(paramCursor.getLong(6)));
        }
        if (paramCursor.getInt(7) != 0) {}
        for (boolean bool = true;; bool = false)
        {
          localh.a(bool);
          localArrayList.add(localh);
          break;
        }
      }
      return localArrayList;
    }
    
    static List<com.layer.sdk.internal.lsdkd.lsdka.o> t(Cursor paramCursor)
    {
      ArrayList localArrayList = new ArrayList(paramCursor.getCount());
      if (paramCursor.moveToNext())
      {
        com.layer.sdk.internal.lsdkd.lsdka.o localo = new com.layer.sdk.internal.lsdkd.lsdka.o();
        localo.a(Long.valueOf(paramCursor.getLong(0)));
        if (!paramCursor.isNull(1)) {
          localo.a(o.b.a(paramCursor.getString(1)));
        }
        if (!paramCursor.isNull(2)) {
          localo.b(Long.valueOf(paramCursor.getLong(2)));
        }
        if (!paramCursor.isNull(3)) {
          localo.a(o.a.a(paramCursor.getInt(3)));
        }
        if (!paramCursor.isNull(4)) {
          localo.a(paramCursor.getString(4));
        }
        if (!paramCursor.isNull(5)) {
          localo.b(paramCursor.getString(5));
        }
        if (!paramCursor.isNull(6)) {
          localo.c(Long.valueOf(paramCursor.getLong(6)));
        }
        if (paramCursor.getInt(7) != 0) {}
        for (boolean bool = true;; bool = false)
        {
          localo.a(bool);
          localArrayList.add(localo);
          break;
        }
      }
      return localArrayList;
    }
    
    static int u(Cursor paramCursor)
    {
      int i = 0;
      if (paramCursor.moveToFirst()) {
        i = paramCursor.getInt(0);
      }
      return i;
    }
    
    static long v(Cursor paramCursor)
    {
      if (paramCursor.moveToFirst()) {
        return paramCursor.getLong(0);
      }
      return 0L;
    }
  }
  
  public static class b
  {
    static Cursor A(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brG.brX + ", " + a.brP.brV + ".stream_id FROM " + a.brG.w + ", " + a.brP.w + " WHERE qe.stream_database_identifier=qs.database_identifier AND qe.is_errored=0 AND qs.is_errored=0 AND qe.seq IS NULL AND qe.type != 10 ORDER BY qe.database_identifier", null);
    }
    
    static Cursor A(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brM.brW + " FROM remote_keyed_values WHERE database_identifier=?", new String[] { paramLong.toString() });
    }
    
    static Cursor B(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brM.brW + " FROM remote_keyed_values WHERE is_errored=0 AND timestamp IS NULL AND key_type=1 ORDER BY object_type, object_id, key", null);
    }
    
    static Cursor B(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brD.brW + " FROM conversation_participants WHERE conversation_database_identifier=? AND is_deleted=0  ORDER BY seq, database_identifier", new String[] { paramLong.toString() });
    }
    
    static Cursor C(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brQ.brW + " FROM syncable_changes ORDER BY change_identifier", null);
    }
    
    static Cursor C(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brD.brW + " FROM conversation_participants WHERE database_identifier=?", new String[] { paramLong.toString() });
    }
    
    static Cursor D(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brR.brW + " FROM synced_changes WHERE table_name='mutations' ORDER BY change_identifier", null);
    }
    
    static Cursor D(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brD.brW + " FROM conversation_participants WHERE stream_member_database_identifier=?", new String[] { paramLong.toString() });
    }
    
    static Cursor E(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brR.brW + " FROM synced_changes WHERE table_name='identities' ORDER BY change_identifier", null);
    }
    
    static Cursor E(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brJ.brW + " FROM message_recipient_status WHERE database_identifier=?", new String[] { paramLong.toString() });
    }
    
    static Cursor F(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brR.brX + " FROM " + a.brR.w + ", events AS e WHERE qsdc.table_name='events' AND qsdc.row_identifier=e.database_identifier AND e.type=4 ORDER BY e.stream_database_identifier, e.preceding_seq, e.client_seq, e.creator_id, qsdc.change_identifier LIMIT 500", null);
    }
    
    static Cursor F(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brJ.brX + " FROM message_recipient_status AS qmrs INNER JOIN (SELECT database_identifier, message_database_identifier, user_id, MAX(status) FROM message_recipient_status WHERE message_database_identifier=? GROUP BY database_identifier, message_database_identifier, user_id) AS groupedmrs ON qmrs.database_identifier=groupedmrs.database_identifier", new String[] { paramLong.toString() });
    }
    
    static Cursor G(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brR.brX + " FROM " + a.brR.w + ", events AS e WHERE qsdc.table_name='events' AND qsdc.row_identifier=e.database_identifier AND e.type != 4 ORDER BY e.stream_database_identifier, e.preceding_seq, e.client_seq, e.creator_id, qsdc.change_identifier LIMIT 500", null);
    }
    
    static Cursor H(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brR.brW + " FROM synced_changes WHERE table_name='remote_keyed_values' ORDER BY change_identifier", null);
    }
    
    static Cursor I(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brR.brW + " FROM synced_changes WHERE table_name='presence' ORDER BY change_identifier", null);
    }
    
    static Cursor J(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT SUM(size) FROM message_parts WHERE file_path IS NOT NULL", null);
    }
    
    static Cursor K(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brS.brW + " FROM identities WHERE syncable_change=?", new String[] { "1" });
    }
    
    static Cursor L(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brU.brW + " FROM presence WHERE syncable_change=?", new String[] { "1" });
    }
    
    static Cursor b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.f.c.f paramf, UUID paramUUID)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brL.brW + " FROM mutations WHERE target=" + paramf.a + " AND stream_id=" + d.a(paramUUID), null);
    }
    
    static Cursor b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.f.c.f paramf, UUID paramUUID, Integer paramInteger)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brL.brW + " FROM mutations WHERE target=" + paramf.a + " AND stream_id=" + d.a(paramUUID) + " AND target_seq=" + paramInteger, null);
    }
    
    static Cursor b(SQLiteDatabase paramSQLiteDatabase, h.b paramb, Long paramLong, h.a parama)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brH.brW + " FROM local_keyed_values WHERE is_deleted=0 AND object_type=? AND object_id=? AND key_type=? ORDER BY database_identifier", new String[] { paramb.a(), paramLong.toString(), Integer.toString(parama.a()) });
    }
    
    static Cursor b(SQLiteDatabase paramSQLiteDatabase, o.b paramb, Long paramLong, o.a parama)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brM.brW + " FROM remote_keyed_values WHERE object_type=? AND object_id=? AND key_type=? ORDER BY database_identifier", new String[] { paramb.a(), paramLong.toString(), Integer.toString(parama.a()) });
    }
    
    static Cursor b(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdke.f paramf)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brT.brW + " FROM response_versions WHERE response_name=?", new String[] { paramf.a() });
    }
    
    static Cursor b(SQLiteDatabase paramSQLiteDatabase, d.a parama)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brR.brW + " FROM synced_changes WHERE table_name='streams'  AND change_type='" + parama.a() + "'ORDER BY table_name DESC, change_identifier", null);
    }
    
    static Cursor b(SQLiteDatabase paramSQLiteDatabase, Long paramLong, String paramString)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brD.brW + " FROM conversation_participants WHERE conversation_database_identifier=? AND member_id=?", new String[] { paramLong.toString(), paramString });
    }
    
    static Cursor b(SQLiteDatabase paramSQLiteDatabase, List<Long> paramList)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brG.brX + ", " + a.brP.brV + ".stream_id FROM " + a.brG.w + ", " + a.brP.w + " WHERE qe.stream_database_identifier=qs.database_identifier AND qe.database_identifier IN (" + TextUtils.join(",", paramList) + ")", null);
    }
    
    static Cursor b(SQLiteDatabase paramSQLiteDatabase, MessagePart.TransferStatus... paramVarArgs)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("SELECT ").append(a.brI.brW).append(" FROM message_parts ");
      if ((paramVarArgs != null) && (paramVarArgs.length > 0))
      {
        localStringBuilder.append("WHERE ");
        localStringBuilder.append("pruned != 1 AND ");
        localStringBuilder.append("transfer_status IN (");
        ArrayList localArrayList = new ArrayList();
        int j = paramVarArgs.length;
        int i = 0;
        while (i < j)
        {
          localArrayList.add(Integer.valueOf(paramVarArgs[i].getValue()));
          i += 1;
        }
        localStringBuilder.append(TextUtils.join(", ", localArrayList));
        localStringBuilder.append(")");
      }
      return paramSQLiteDatabase.rawQuery(localStringBuilder.toString(), null);
    }
    
    static Cursor c(SQLiteDatabase paramSQLiteDatabase, int paramInt)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brP.brW + " FROM streams WHERE stream_id IS NOT NULL AND is_errored=0 AND is_deleted=0 AND marked_to_delete=0 ORDER BY last_message_received_at DESC, database_identifier LIMIT " + paramInt, null);
    }
    
    static Cursor c(SQLiteDatabase paramSQLiteDatabase, Long paramLong, int paramInt)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brG.brX + ", " + a.brP.brV + ".stream_id FROM " + a.brG.w + ", " + a.brP.w + " WHERE qe.stream_database_identifier=qs.database_identifier  AND qe.stream_database_identifier=" + paramLong + " AND qe.target_seq=" + paramInt + " ORDER BY qe.preceding_seq, qe.client_seq, qe.creator_id, qe.database_identifier", null);
    }
    
    static Cursor c(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID, int paramInt)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brL.brW + " FROM mutations WHERE stream_id=" + d.a(paramUUID) + " AND seq=" + paramInt, null);
    }
    
    static Cursor d(SQLiteDatabase paramSQLiteDatabase, int paramInt)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brR.brW + " FROM synced_changes WHERE table_name='streams' OR table_name='stream_members' ORDER BY table_name DESC, change_identifier LIMIT " + paramInt, null);
    }
    
    static Cursor d(SQLiteDatabase paramSQLiteDatabase, Long paramLong, int paramInt)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brG.brX + ", " + a.brP.brV + ".stream_id FROM " + a.brG.w + ", " + a.brP.w + " WHERE qe.stream_database_identifier=qs.database_identifier AND qs.database_identifier=" + paramLong + " AND qe.seq=" + paramInt, null);
    }
    
    static Cursor d(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brP.brW + " FROM streams WHERE stream_id=" + d.a(paramUUID), null);
    }
    
    static Cursor d(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID, int paramInt)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brG.brX + ", " + a.brP.brV + ".stream_id FROM " + a.brG.w + ", " + a.brP.w + " WHERE qe.stream_database_identifier=qs.database_identifier AND qs.stream_id=" + d.a(paramUUID) + " AND qe.seq=" + paramInt, null);
    }
    
    static Cursor e(SQLiteDatabase paramSQLiteDatabase, Uri paramUri)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brE.brW + " FROM conversations WHERE conversations.object_identifier=?", new String[] { paramUri.toString().toLowerCase() });
    }
    
    static Cursor e(SQLiteDatabase paramSQLiteDatabase, Set<String> paramSet)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brS.brW + " FROM identities WHERE user_id IN ('" + TextUtils.join("','", paramSet) + "')", null);
    }
    
    static Cursor e(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brG.brX + ", " + a.brP.brV + ".stream_id FROM " + a.brG.w + ", " + a.brP.w + " WHERE qe.stream_database_identifier=qs.database_identifier AND qe.client_id=" + d.a(paramUUID), null);
    }
    
    static Cursor f(SQLiteDatabase paramSQLiteDatabase, Uri paramUri)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brK.brW + " FROM messages WHERE object_identifier=? ORDER BY database_identifier", new String[] { paramUri.toString().toLowerCase() });
    }
    
    static Cursor f(SQLiteDatabase paramSQLiteDatabase, Set<Long> paramSet)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brS.brW + " FROM identities WHERE database_identifier IN (" + TextUtils.join(",", paramSet) + ")", null);
    }
    
    static Cursor f(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brE.brW + " FROM conversations WHERE stream_id=" + d.a(paramUUID), null);
    }
    
    static Cursor g(SQLiteDatabase paramSQLiteDatabase, Uri paramUri)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brI.brW + " FROM message_parts WHERE object_identifier=? ORDER BY database_identifier", new String[] { paramUri.toString().toLowerCase() });
    }
    
    static Cursor g(SQLiteDatabase paramSQLiteDatabase, String paramString)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brS.brW + " FROM identities WHERE user_id=?", new String[] { paramString });
    }
    
    static Cursor g(SQLiteDatabase paramSQLiteDatabase, Set<Long> paramSet)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brU.brW + " FROM presence WHERE database_identifier IN (" + TextUtils.join(",", paramSet) + ")", null);
    }
    
    static Cursor h(SQLiteDatabase paramSQLiteDatabase, Uri paramUri)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brS.brW + " FROM identities WHERE object_identifier=?", new String[] { paramUri.toString() });
    }
    
    static Cursor h(SQLiteDatabase paramSQLiteDatabase, String paramString)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brU.brW + " FROM presence WHERE user_id=?", new String[] { paramString });
    }
    
    static Cursor h(SQLiteDatabase paramSQLiteDatabase, Set<String> paramSet)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brU.brW + " FROM presence WHERE user_id IN ('" + TextUtils.join("','", paramSet) + "')", null);
    }
    
    static Cursor s(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brP.brX + " FROM " + a.brP.w + ", stream_members WHERE stream_members._ROWID_=? AND " + a.brP.brV + ".database_identifier=stream_members.stream_database_identifier", new String[] { paramLong.toString() });
    }
    
    static Cursor t(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brP.brW + " FROM streams WHERE database_identifier=?", new String[] { paramLong.toString() });
    }
    
    static Cursor u(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brP.brW + " FROM streams WHERE stream_id IS NOT NULL AND is_errored=0 AND is_deleted=0 AND marked_to_delete=0 ORDER BY last_message_received_at DESC, database_identifier", null);
    }
    
    static Cursor u(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brL.brW + " FROM mutations WHERE database_identifier=" + paramLong, null);
    }
    
    static Cursor v(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brP.brW + " FROM " + a.brP.avc + " WHERE stream_id NOT NULL AND is_errored=0 AND is_deleted=0 AND marked_to_delete=1 ORDER BY database_identifier", null);
    }
    
    static Cursor v(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brO.brW + " FROM stream_members WHERE stream_database_identifier=? AND is_deleted=0 ORDER BY _ROWID_", new String[] { paramLong.toString() });
    }
    
    static Cursor w(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brP.brW + " FROM streams WHERE stream_id IS NULL AND is_errored=0 AND is_deleted=0 ORDER BY streams.database_identifier", null);
    }
    
    static Cursor w(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brO.brW + " FROM stream_members WHERE _ROWID_=? AND is_deleted=0 ", new String[] { paramLong.toString() });
    }
    
    static Cursor x(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brL.brW + " FROM mutations WHERE is_errored=0 AND stream_id IS NULL AND seq IS NULL AND stream_database_identifier IS NULL", null);
    }
    
    static Cursor x(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brG.brX + ", " + a.brP.brV + ".stream_id FROM " + a.brG.w + ", " + a.brP.w + " WHERE qe.stream_database_identifier=qs.database_identifier AND qe.database_identifier=?", new String[] { paramLong.toString() });
    }
    
    static Cursor y(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brL.brW + " FROM mutations WHERE is_errored=0 AND stream_id IS NULL AND seq IS NULL AND stream_database_identifier NOT NULL", null);
    }
    
    static Cursor y(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brF.brW + " FROM event_content_parts WHERE event_database_identifier=? ORDER BY event_content_part_id", new String[] { paramLong.toString() });
    }
    
    static Cursor z(SQLiteDatabase paramSQLiteDatabase)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brL.brW + " FROM mutations WHERE is_errored=0 AND stream_id NOT NULL AND seq IS NULL AND stream_database_identifier NOT NULL", null);
    }
    
    static Cursor z(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    {
      return paramSQLiteDatabase.rawQuery("SELECT " + a.brH.brW + " FROM local_keyed_values WHERE database_identifier=?", new String[] { paramLong.toString() });
    }
    
    private static enum a
    {
      public final String avc;
      public final String brV;
      public final String brW;
      public final String brX;
      public final String w;
      
      private a(String paramString1, String paramString2, String paramString3, String paramString4)
      {
        this.avc = paramString1;
        this.brV = paramString2;
        this.brW = paramString3;
        this.brX = paramString4;
        this.w = (paramString1 + " AS " + paramString2);
      }
    }
  }
  
  public static class c
  {
    static List<com.layer.b.d.h> a(SQLiteDatabase paramSQLiteDatabase, List<com.layer.b.d.h> paramList)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        com.layer.b.d.h localh = (com.layer.b.d.h)localIterator.next();
        Object localObject = localh.bwE;
        localh.c = b.d(paramSQLiteDatabase, (Long)localObject);
        localObject = b.e(paramSQLiteDatabase, (Long)localObject);
        if (localObject != null) {
          localh.g = ((Map)localObject);
        }
      }
      return paramList;
    }
    
    static List<com.layer.b.d.c> c(SQLiteDatabase paramSQLiteDatabase, List<com.layer.b.d.c> paramList)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        com.layer.b.d.c localc = (com.layer.b.d.c)localIterator.next();
        Object localObject1 = b.h(paramSQLiteDatabase, localc.bvQ);
        if ((localObject1 != null) && (!((List)localObject1).isEmpty())) {
          localc.bCF = ((List)localObject1);
        }
        if (localc.bCE.equals(com.layer.b.f.c.e.bDq))
        {
          localObject1 = new HashMap();
          Object localObject2 = a.p(paramSQLiteDatabase, localc.bvQ);
          if (localObject2 != null)
          {
            localObject2 = b.a(paramSQLiteDatabase, h.b.b, (Long)localObject2, h.a.a).iterator();
            while (((Iterator)localObject2).hasNext())
            {
              com.layer.sdk.internal.lsdkd.lsdka.h localh = (com.layer.sdk.internal.lsdkd.lsdka.h)((Iterator)localObject2).next();
              ((Map)localObject1).put(localh.f(), ByteBuffer.wrap(localh.g().getBytes()));
            }
            if (!((Map)localObject1).isEmpty()) {
              localc.l = ((Map)localObject1);
            }
          }
        }
      }
      return paramList;
    }
    
    static List<com.layer.sdk.internal.lsdkd.lsdka.c> d(SQLiteDatabase paramSQLiteDatabase, List<com.layer.sdk.internal.lsdkd.lsdka.c> paramList)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        com.layer.sdk.internal.lsdkd.lsdka.c localc = (com.layer.sdk.internal.lsdkd.lsdka.c)localIterator.next();
        Long localLong = localc.g();
        localc.c(b.k(paramSQLiteDatabase, localLong));
        localc.a(b.j(paramSQLiteDatabase, localLong));
        localc.a(b.i(paramSQLiteDatabase, localLong), false);
        localc.b(a.o(paramSQLiteDatabase, localLong));
        localc.n();
      }
      return paramList;
    }
    
    static List<com.layer.sdk.internal.lsdkd.lsdka.i> e(SQLiteDatabase paramSQLiteDatabase, List<com.layer.sdk.internal.lsdkd.lsdka.i> paramList)
    {
      HashMap localHashMap = new HashMap();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        com.layer.sdk.internal.lsdkd.lsdka.i locali = (com.layer.sdk.internal.lsdkd.lsdka.i)localIterator.next();
        Long localLong1 = locali.h();
        locali.a(b.o(paramSQLiteDatabase, locali.h()));
        locali.a(b.a(paramSQLiteDatabase, h.b.b, locali.h(), h.a.a));
        Long localLong2 = locali.q();
        if (localLong2 == null) {
          throw new IllegalArgumentException("Message has null Conversation DB ID");
        }
        Uri localUri = (Uri)localHashMap.get(localLong2);
        Object localObject = localUri;
        if (localUri == null)
        {
          localObject = a.k(paramSQLiteDatabase, localLong2);
          localHashMap.put(localLong2, localObject);
        }
        locali.a((Uri)localObject);
        localObject = a.q(paramSQLiteDatabase, localLong1);
        if ((localObject == null) || (((List)localObject).isEmpty())) {
          throw new IllegalStateException("Null parts: " + locali);
        }
        locali.b((List)localObject);
        locali.s();
      }
      return paramList;
    }
    
    private static List<j> g(SQLiteDatabase paramSQLiteDatabase, List<j> paramList)
    {
      HashMap localHashMap = new HashMap();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        j localj = (j)localIterator.next();
        Long localLong = localj.j();
        if (localLong == null) {
          throw new IllegalArgumentException("MessagePart has null Message DB ID");
        }
        Uri localUri2 = (Uri)localHashMap.get(localLong);
        Uri localUri1 = localUri2;
        if (localUri2 == null)
        {
          localUri1 = a.m(paramSQLiteDatabase, localLong);
          localHashMap.put(localLong, localUri1);
        }
        localj.b(localUri1);
      }
      return paramList;
    }
    
    private static List<com.layer.sdk.internal.lsdkd.lsdka.e> h(SQLiteDatabase paramSQLiteDatabase, List<com.layer.sdk.internal.lsdkd.lsdka.e> paramList)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        com.layer.sdk.internal.lsdkd.lsdka.e locale = (com.layer.sdk.internal.lsdkd.lsdka.e)localIterator.next();
        locale.a(b.r(paramSQLiteDatabase, locale.e()));
        n localn = b.b(paramSQLiteDatabase, locale.getUserId());
        if (localn != null) {
          locale.a(localn);
        }
        locale.h();
      }
      return paramList;
    }
  }
  
  private static abstract interface d<T>
  {
    public abstract T d(Cursor paramCursor);
    
    public abstract Cursor u(SQLiteDatabase paramSQLiteDatabase);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/lsdkc/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */