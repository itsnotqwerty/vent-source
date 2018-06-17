package com.layer.sdk.internal.lsdke;

import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.util.LruCache;
import com.layer.b.d.h;
import com.layer.b.d.i;
import com.layer.b.f.c.f;
import com.layer.sdk.internal.lsdkd.lsdka.e;
import com.layer.sdk.internal.lsdkd.lsdka.n;
import com.layer.sdk.internal.lsdkd.lsdka.o;
import com.layer.sdk.internal.lsdki.d.a;
import com.layer.sdk.internal.lsdki.lsdka.a.b;
import java.security.InvalidParameterException;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

public class a
  implements a.b
{
  private static int b = 30;
  private final a.b a;
  private final LruCache<Long, h> c = new LruCache(b);
  private final LruCache<UUID, h> d = new LruCache(b);
  private final LruCache<Long, com.layer.b.d.c> e = new LruCache(b);
  private final LruCache<UUID, HashMap<Integer, com.layer.b.d.c>> f = new LruCache(b);
  private final LruCache<Long, Uri> g = new LruCache(b);
  
  public a(a.b paramb)
  {
    this.a = paramb;
  }
  
  private com.layer.b.d.c a(com.layer.b.d.c paramc)
  {
    if (paramc != null)
    {
      this.e.put(paramc.bvQ, paramc);
      if (this.f.get(paramc.bvS) == null) {
        this.f.put(paramc.bvS, new HashMap());
      }
      ((HashMap)this.f.get(paramc.bvS)).put(Integer.valueOf(paramc.d), paramc);
    }
    return paramc;
  }
  
  private h a(h paramh)
  {
    if (paramh != null)
    {
      this.c.put(paramh.bwE, paramh);
      this.d.put(paramh.b(), paramh);
    }
    return paramh;
  }
  
  public com.layer.b.d.c a(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID, Integer paramInteger)
  {
    Object localObject;
    if (this.f.get(paramUUID) == null) {
      localObject = a(this.a.a(paramSQLiteDatabase, paramUUID, paramInteger));
    }
    com.layer.b.d.c localc;
    do
    {
      return (com.layer.b.d.c)localObject;
      localc = (com.layer.b.d.c)((HashMap)this.f.get(paramUUID)).get(paramInteger);
      localObject = localc;
    } while (localc != null);
    return a(this.a.a(paramSQLiteDatabase, paramUUID, paramInteger));
  }
  
  public h a(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID)
  {
    h localh = (h)this.d.get(paramUUID);
    if (localh != null) {
      return localh;
    }
    return a(this.a.a(paramSQLiteDatabase, paramUUID));
  }
  
  public Long a(SQLiteDatabase paramSQLiteDatabase, h paramh, String paramString)
  {
    return this.a.a(paramSQLiteDatabase, paramh, paramString);
  }
  
  public String a(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return this.a.a(paramSQLiteDatabase, paramLong);
  }
  
  public LinkedHashSet<com.layer.b.d.c> a(SQLiteDatabase paramSQLiteDatabase, Long paramLong, int paramInt)
  {
    return this.a.a(paramSQLiteDatabase, paramLong, paramInt);
  }
  
  public List<h> a(int paramInt)
  {
    return this.a.a(paramInt);
  }
  
  public List<com.layer.sdk.internal.lsdki.d> a(SQLiteDatabase paramSQLiteDatabase)
  {
    return this.a.a(paramSQLiteDatabase);
  }
  
  public List<com.layer.sdk.internal.lsdki.d> a(SQLiteDatabase paramSQLiteDatabase, int paramInt)
  {
    return this.a.a(paramSQLiteDatabase, paramInt);
  }
  
  public List<i> a(SQLiteDatabase paramSQLiteDatabase, f paramf, UUID paramUUID)
  {
    return this.a.a(paramSQLiteDatabase, paramf, paramUUID);
  }
  
  public List<i> a(SQLiteDatabase paramSQLiteDatabase, f paramf, UUID paramUUID, Integer paramInteger)
  {
    return this.a.a(paramSQLiteDatabase, paramf, paramUUID, paramInteger);
  }
  
  public List<com.layer.sdk.internal.lsdki.d> a(SQLiteDatabase paramSQLiteDatabase, d.a parama)
  {
    return this.a.a(paramSQLiteDatabase, parama);
  }
  
  public List<com.layer.b.d.c> a(SQLiteDatabase paramSQLiteDatabase, List<Long> paramList)
  {
    return this.a.a(paramSQLiteDatabase, paramList);
  }
  
  public List<e> a(SQLiteDatabase paramSQLiteDatabase, Set<Long> paramSet)
  {
    return this.a.a(paramSQLiteDatabase, paramSet);
  }
  
  public List<Uri> a(com.layer.sdk.internal.lsdkd.lsdka.c paramc, String paramString, long paramLong)
  {
    return this.a.a(paramc, paramString, paramLong);
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdki.d paramd)
  {
    this.a.a(paramSQLiteDatabase, paramd);
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, Long paramLong1, Long paramLong2)
  {
    this.a.a(paramSQLiteDatabase, paramLong1, paramLong2);
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, Long paramLong, String paramString)
  {
    this.a.a(paramSQLiteDatabase, paramLong, paramString);
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, Collection<com.layer.sdk.internal.lsdki.d> paramCollection)
  {
    this.a.a(paramSQLiteDatabase, paramCollection);
  }
  
  public h b(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return this.a.b(paramSQLiteDatabase, paramLong);
  }
  
  public List<com.layer.sdk.internal.lsdki.d> b(SQLiteDatabase paramSQLiteDatabase)
  {
    return this.a.b(paramSQLiteDatabase);
  }
  
  public List<e> b(SQLiteDatabase paramSQLiteDatabase, Set<String> paramSet)
  {
    return this.a.b(paramSQLiteDatabase, paramSet);
  }
  
  public Uri c(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return this.a.c(paramSQLiteDatabase, paramLong);
  }
  
  public LinkedHashSet<n> c(SQLiteDatabase paramSQLiteDatabase, Set<Long> paramSet)
  {
    return this.a.c(paramSQLiteDatabase, paramSet);
  }
  
  public List<com.layer.sdk.internal.lsdki.d> c(SQLiteDatabase paramSQLiteDatabase)
  {
    return this.a.c(paramSQLiteDatabase);
  }
  
  public com.layer.sdk.internal.lsdkd.lsdka.d d(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return this.a.d(paramSQLiteDatabase, paramLong);
  }
  
  public List<com.layer.sdk.internal.lsdki.d> d(SQLiteDatabase paramSQLiteDatabase)
  {
    return this.a.d(paramSQLiteDatabase);
  }
  
  public void d(SQLiteDatabase paramSQLiteDatabase, Set<Long> paramSet)
  {
    this.a.d(paramSQLiteDatabase, paramSet);
  }
  
  public Uri e(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return this.a.e(paramSQLiteDatabase, paramLong);
  }
  
  public List<com.layer.sdk.internal.lsdki.d> e(SQLiteDatabase paramSQLiteDatabase)
  {
    return this.a.e(paramSQLiteDatabase);
  }
  
  public Uri f(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return this.a.f(paramSQLiteDatabase, paramLong);
  }
  
  public void f(SQLiteDatabase paramSQLiteDatabase)
  {
    this.a.f(paramSQLiteDatabase);
  }
  
  public Uri g(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    if (paramLong == null) {
      throw new InvalidParameterException("eventDbId cannot be null");
    }
    Uri localUri = (Uri)this.g.get(paramLong);
    Object localObject = localUri;
    if (localUri == null)
    {
      paramSQLiteDatabase = this.a.g(paramSQLiteDatabase, paramLong);
      localObject = paramSQLiteDatabase;
      if (paramSQLiteDatabase != null)
      {
        this.g.put(paramLong, paramSQLiteDatabase);
        localObject = paramSQLiteDatabase;
      }
    }
    return (Uri)localObject;
  }
  
  public List<com.layer.sdk.internal.lsdki.d> g(SQLiteDatabase paramSQLiteDatabase)
  {
    return this.a.g(paramSQLiteDatabase);
  }
  
  public i h(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return this.a.h(paramSQLiteDatabase, paramLong);
  }
  
  public void h(SQLiteDatabase paramSQLiteDatabase)
  {
    this.a.h(paramSQLiteDatabase);
  }
  
  public o i(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return this.a.i(paramSQLiteDatabase, paramLong);
  }
  
  public h j(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    h localh = (h)this.c.get(paramLong);
    if (localh != null) {
      return localh;
    }
    return a(this.a.j(paramSQLiteDatabase, paramLong));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */