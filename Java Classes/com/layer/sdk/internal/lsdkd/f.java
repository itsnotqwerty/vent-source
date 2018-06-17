package com.layer.sdk.internal.lsdkd;

import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.layer.b.f.c.g;
import com.layer.b.f.c.o;
import com.layer.sdk.LayerClient.DeletionMode;
import com.layer.sdk.internal.lsdkd.lsdka.a;
import com.layer.sdk.internal.lsdke.b;
import com.layer.sdk.internal.lsdki.c.b;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;

public class f
  implements c.a
{
  public static boolean a = true;
  public static boolean b = false;
  private static final com.layer.sdk.internal.lsdkk.k.a d = com.layer.sdk.internal.lsdkk.k.a(f.class);
  protected final h c;
  private com.layer.sdk.internal.lsdkk.j<b> e = new com.layer.sdk.internal.lsdkk.j();
  private ReferenceQueue<d> f = new ReferenceQueue();
  private Map<Uri, a> g = new ConcurrentHashMap();
  private final ReentrantLock h = new ReentrantLock();
  private c i;
  
  public f(h paramh)
  {
    if (paramh == null) {
      throw new IllegalArgumentException("Cannot construct a ChangeableCache with `null` Context.");
    }
    this.c = paramh;
  }
  
  private d a(d paramd)
  {
    Uri localUri = paramd.getId();
    if (localUri == null) {
      throw new IllegalArgumentException("Changeable has null ID");
    }
    d locald = b(localUri);
    if (locald != null) {
      return locald;
    }
    a(localUri, paramd);
    return paramd;
  }
  
  private void a(SQLiteDatabase paramSQLiteDatabase, Iterable<d> paramIterable, boolean paramBoolean)
  {
    this.c.l().a(paramSQLiteDatabase, paramIterable, paramBoolean);
  }
  
  private void a(k paramk)
  {
    if (this.i != null) {
      this.i.a(this, paramk);
    }
  }
  
  private void b(k paramk)
  {
    if (this.i != null) {
      this.i.b(this, paramk);
    }
  }
  
  private static boolean b(k.a parama)
  {
    switch (1.bqe[parama.ordinal()])
    {
    default: 
      return true;
    }
    return false;
  }
  
  private d c(Uri paramUri)
  {
    m.a locala = m.b(paramUri);
    switch (1.bqK[locala.b().ordinal()])
    {
    default: 
      return null;
    case 1: 
      return this.c.l().c(paramUri);
    case 2: 
    case 3: 
      return this.c.l().a(paramUri);
    case 4: 
      return this.c.l().b(paramUri);
    }
    return this.c.l().d(paramUri);
  }
  
  public d a(Uri paramUri, boolean paramBoolean)
  {
    d locald = null;
    if (paramUri == null) {
      paramUri = locald;
    }
    Object localObject;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return paramUri;
              localObject = b(paramUri);
              if (localObject != null) {
                return (d)localObject;
              }
              localObject = c(paramUri);
              paramUri = locald;
            } while (localObject == null);
            locald = a((d)localObject);
            paramUri = locald;
          } while (!paramBoolean);
          if ((locald instanceof com.layer.sdk.internal.lsdkd.lsdka.i))
          {
            paramUri = (com.layer.sdk.internal.lsdkd.lsdka.i)locald;
            localObject = paramUri.g();
            if (!a((Uri)localObject)) {
              a((Uri)localObject, true);
            }
            localObject = paramUri.k().iterator();
            for (;;)
            {
              paramUri = locald;
              if (!((Iterator)localObject).hasNext()) {
                break;
              }
              paramUri = (Uri)((Iterator)localObject).next();
              if (!a(paramUri)) {
                a(paramUri, true);
              }
            }
          }
          if ((locald instanceof com.layer.sdk.internal.lsdkd.lsdka.c))
          {
            paramUri = (com.layer.sdk.internal.lsdkd.lsdka.c)locald;
            localObject = paramUri.i();
            if ((localObject != null) && (!a((Uri)localObject))) {
              a((Uri)localObject, true);
            }
            paramUri.getParticipants();
            return locald;
          }
          paramUri = locald;
        } while (!(locald instanceof com.layer.sdk.internal.lsdkd.lsdka.j));
        localObject = ((com.layer.sdk.internal.lsdkd.lsdka.j)locald).m();
        paramUri = locald;
      } while (localObject == null);
      paramUri = locald;
    } while (a((Uri)localObject));
    a((Uri)localObject, true);
    return locald;
  }
  
  public k a(k.a parama)
  {
    try
    {
      this.h.lock();
      parama = new k(parama, this);
      a(parama);
      return parama;
    }
    catch (RuntimeException parama)
    {
      this.h.unlock();
      throw parama;
    }
  }
  
  public a a(boolean paramBoolean)
  {
    List localList = a(this.c.l().a(new o[] { o.bFu }), paramBoolean);
    if (localList.size() > 1) {
      throw new IllegalStateException("More than one announcement stream found: " + localList.toString());
    }
    if (localList.size() == 1) {
      return (a)localList.get(0);
    }
    return null;
  }
  
  public List<com.layer.sdk.internal.lsdkd.lsdka.i> a(com.layer.sdk.internal.lsdkd.lsdka.c paramc, boolean paramBoolean)
  {
    return b(this.c.l().a(paramc.g()), paramBoolean);
  }
  
  public List<com.layer.sdk.internal.lsdkd.lsdka.c> a(Collection<Uri> paramCollection, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      localArrayList.add(b((Uri)paramCollection.next(), paramBoolean));
    }
    return localArrayList;
  }
  
  public List<d> a(List<Uri> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      d locald = a((Uri)paramList.next(), true);
      if (locald != null) {
        localArrayList.add(locald);
      }
    }
    return localArrayList;
  }
  
  public List<com.layer.sdk.internal.lsdkd.lsdka.c> a(Set<String> paramSet, boolean paramBoolean)
  {
    return a(this.c.l().a(paramSet), paramBoolean);
  }
  
  public List<com.layer.sdk.internal.lsdkd.lsdka.c> a(boolean paramBoolean, o... paramVarArgs)
  {
    return a(this.c.l().a(paramVarArgs), paramBoolean);
  }
  
  public void a()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(d, "Clearing ChangeableCache");
    }
    this.f = new ReferenceQueue();
    this.g.clear();
  }
  
  protected void a(Uri paramUri, d paramd)
  {
    if ((paramd instanceof com.layer.sdk.internal.lsdkd.lsdka.i))
    {
      if (((com.layer.sdk.internal.lsdkd.lsdka.i)paramd).k() == null) {
        throw new IllegalStateException("Cannot insert: " + paramd);
      }
      if (((com.layer.sdk.internal.lsdkd.lsdka.i)paramd).k().isEmpty()) {
        throw new IllegalStateException("Cannot insert: " + paramd);
      }
    }
    paramd.a(this.c);
    this.g.put(paramUri, new a(paramd, this.f));
  }
  
  public void a(c paramc)
  {
    Iterator localIterator = this.e.iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).a(paramc);
    }
  }
  
  public void a(b paramb)
  {
    this.e.a(paramb);
  }
  
  public void a(k paramk, d paramd, LayerClient.DeletionMode paramDeletionMode, boolean paramBoolean)
  {
    paramk.a(this);
    if (paramd.getId() == null) {
      throw new IllegalArgumentException("Changeable has null ID: " + paramd);
    }
    if (paramd.b()) {
      throw new IllegalArgumentException("Cannot delete a new Changeable: " + paramd);
    }
    if ((paramd.c()) && (paramDeletionMode == LayerClient.DeletionMode.ALL_PARTICIPANTS)) {
      throw new IllegalArgumentException("Cannot delete a changeable already deleted for all participants: " + paramd);
    }
    if ((paramd.d()) && (paramDeletionMode == LayerClient.DeletionMode.ALL_MY_DEVICES)) {
      throw new IllegalArgumentException("Cannot delete a changeable already deleted for all my devices: " + paramd);
    }
    Object localObject;
    if ((paramd instanceof com.layer.sdk.internal.lsdkd.lsdka.i))
    {
      localObject = ((com.layer.sdk.internal.lsdkd.lsdka.i)paramd).j();
      if (localObject != null)
      {
        localObject = ((Collection)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          paramk.a((com.layer.sdk.internal.lsdkd.lsdka.j)((Iterator)localObject).next());
        }
      }
    }
    paramk.a(paramd);
    b localb;
    switch (1.b[paramDeletionMode.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("Unknown deletion mode: " + paramDeletionMode);
    case 1: 
      paramd.a(true);
      localb = this.c.l();
      localObject = null;
    }
    for (;;)
    {
      SQLiteDatabase localSQLiteDatabase;
      try
      {
        localSQLiteDatabase = localb.e();
        localObject = localSQLiteDatabase;
        switch (1.bqe[paramk.a().ordinal()])
        {
        case 1: 
          localObject = localSQLiteDatabase;
          if (!(paramd instanceof com.layer.sdk.internal.lsdkd.lsdka.c)) {
            break label930;
          }
          localObject = localSQLiteDatabase;
          localb.a(localSQLiteDatabase, (com.layer.sdk.internal.lsdkd.lsdka.c)paramd);
          localObject = localSQLiteDatabase;
          localSQLiteDatabase.setTransactionSuccessful();
          if (localSQLiteDatabase != null) {
            localb.i(localSQLiteDatabase);
          }
          return;
        }
      }
      finally
      {
        if (localObject == null) {
          continue;
        }
        localb.i((SQLiteDatabase)localObject);
      }
      paramd.b(true);
      break;
      localObject = localSQLiteDatabase;
      if ((paramd instanceof com.layer.sdk.internal.lsdkd.lsdka.c))
      {
        localObject = localSQLiteDatabase;
        paramk = (com.layer.sdk.internal.lsdkd.lsdka.c)paramd;
        localObject = localSQLiteDatabase;
        localb.a(localSQLiteDatabase, paramk);
        if (paramBoolean) {
          localObject = localSQLiteDatabase;
        }
      }
      else
      {
        switch (1.b[paramDeletionMode.ordinal()])
        {
        case 1: 
          localObject = localSQLiteDatabase;
          paramd = new com.layer.sdk.internal.lsdki.c();
          localObject = localSQLiteDatabase;
          paramd.a(com.layer.sdk.internal.lsdki.c.a.c);
          localObject = localSQLiteDatabase;
          paramd.a(c.b.a);
          localObject = localSQLiteDatabase;
          paramd.b(paramk.g());
          localObject = localSQLiteDatabase;
          localb.a(localSQLiteDatabase, new com.layer.sdk.internal.lsdki.c[] { paramd });
          break;
        case 2: 
          localObject = localSQLiteDatabase;
          paramd = new com.layer.b.d.i();
          localObject = localSQLiteDatabase;
          paramd.bFy = g.bDL;
          localObject = localSQLiteDatabase;
          paramd.bFz = com.layer.b.f.c.f.bDJ;
          localObject = localSQLiteDatabase;
          paramDeletionMode = paramk.i();
          if (paramDeletionMode != null)
          {
            localObject = localSQLiteDatabase;
            paramd.l = paramDeletionMode.toString();
          }
          localObject = localSQLiteDatabase;
          paramd.k = paramk.getId().toString();
          localObject = localSQLiteDatabase;
          localb.a(localSQLiteDatabase, new com.layer.b.d.i[] { paramd });
          continue;
          localObject = localSQLiteDatabase;
          if ((paramd instanceof com.layer.sdk.internal.lsdkd.lsdka.i))
          {
            localObject = localSQLiteDatabase;
            paramk = (com.layer.sdk.internal.lsdkd.lsdka.i)paramd;
            localObject = localSQLiteDatabase;
            localb.a(localSQLiteDatabase, paramk);
            if (paramBoolean) {
              localObject = localSQLiteDatabase;
            }
          }
          else
          {
            switch (1.b[paramDeletionMode.ordinal()])
            {
            case 1: 
              localObject = localSQLiteDatabase;
              paramd = new com.layer.sdk.internal.lsdki.c();
              localObject = localSQLiteDatabase;
              paramd.a(com.layer.sdk.internal.lsdki.c.a.c);
              localObject = localSQLiteDatabase;
              paramd.a(c.b.d);
              localObject = localSQLiteDatabase;
              paramd.b(paramk.h());
              localObject = localSQLiteDatabase;
              localb.a(localSQLiteDatabase, new com.layer.sdk.internal.lsdki.c[] { paramd });
              break;
            case 2: 
              localObject = localSQLiteDatabase;
              paramd = new com.layer.b.d.i();
              localObject = localSQLiteDatabase;
              paramd.bFy = g.bDL;
              localObject = localSQLiteDatabase;
              paramd.bFz = com.layer.b.f.c.f.bDI;
              localObject = localSQLiteDatabase;
              paramd.l = paramk.getId().toString();
              localObject = localSQLiteDatabase;
              paramd.k = paramk.g().toString();
              localObject = localSQLiteDatabase;
              localb.a(localSQLiteDatabase, new com.layer.b.d.i[] { paramd });
              continue;
              localObject = localSQLiteDatabase;
              if (!(paramd instanceof com.layer.sdk.internal.lsdkd.lsdka.j))
              {
                localObject = localSQLiteDatabase;
                throw new IllegalArgumentException("Unknown Changeable: " + paramd);
                label930:
                localObject = localSQLiteDatabase;
                if ((paramd instanceof com.layer.sdk.internal.lsdkd.lsdka.i))
                {
                  localObject = localSQLiteDatabase;
                  localb.a(localSQLiteDatabase, (com.layer.sdk.internal.lsdkd.lsdka.i)paramd);
                }
                else
                {
                  localObject = localSQLiteDatabase;
                  if (!(paramd instanceof com.layer.sdk.internal.lsdkd.lsdka.j))
                  {
                    localObject = localSQLiteDatabase;
                    throw new IllegalArgumentException("Unknown Changeable: " + paramd);
                  }
                }
              }
              break;
            }
          }
          break;
        }
      }
    }
  }
  
  public void a(k paramk, Collection<? extends d> paramCollection)
  {
    a(paramk, paramCollection, false);
  }
  
  public void a(k paramk, Collection<? extends d> paramCollection, boolean paramBoolean)
  {
    paramk.a(this);
    Object localObject2 = new LinkedHashSet();
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      localObject1 = (d)paramCollection.next();
      if (((d)localObject1).getId() == null) {
        throw new IllegalArgumentException("Changeable has null ID: " + localObject1);
      }
      if (!((d)localObject1).b()) {
        throw new IllegalArgumentException("Changeable is not new: " + localObject1);
      }
      if (a(((d)localObject1).getId())) {
        throw new IllegalArgumentException("Changeable already cached: " + localObject1);
      }
      paramk.a((d)localObject1);
      if (((localObject1 instanceof com.layer.sdk.internal.lsdkd.lsdka.c)) && (((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).isDistinct())) {
        ((Set)localObject2).add((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1);
      } else {
        localLinkedHashSet.add(localObject1);
      }
    }
    paramCollection = this.c.l();
    Object localObject1 = paramCollection.e();
    if (localObject1 == null) {
      return;
    }
    boolean bool;
    try
    {
      bool = b(paramk.a());
      if (!((Set)localObject2).isEmpty())
      {
        paramk = paramCollection.a((SQLiteDatabase)localObject1, (Collection)localObject2, bool, paramBoolean);
        localObject2 = ((Set)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          com.layer.sdk.internal.lsdkd.lsdka.c localc1 = (com.layer.sdk.internal.lsdkd.lsdka.c)((Iterator)localObject2).next();
          a(localc1);
          com.layer.sdk.internal.lsdkd.lsdka.c localc2 = (com.layer.sdk.internal.lsdkd.lsdka.c)paramk.get(localc1.getId());
          if (localc2 != null) {
            localc1.a(localc2);
          }
        }
      }
      if (localLinkedHashSet.size() <= 0) {
        break label407;
      }
    }
    finally
    {
      paramCollection.i((SQLiteDatabase)localObject1);
    }
    a((SQLiteDatabase)localObject1, localLinkedHashSet, bool);
    paramk = localLinkedHashSet.iterator();
    while (paramk.hasNext()) {
      a((d)paramk.next());
    }
    label407:
    ((SQLiteDatabase)localObject1).setTransactionSuccessful();
    paramCollection.i((SQLiteDatabase)localObject1);
  }
  
  public void a(k paramk, boolean paramBoolean)
  {
    try
    {
      paramk.a(this);
      if (paramBoolean) {
        paramk.b();
      }
      return;
    }
    finally
    {
      this.h.unlock();
      b(paramk);
    }
  }
  
  public void a(k paramk, d... paramVarArgs)
  {
    a(paramk, Arrays.asList(paramVarArgs));
  }
  
  public boolean a(Uri paramUri)
  {
    return b(paramUri) != null;
  }
  
  public d b(Uri paramUri)
  {
    if (paramUri == null) {
      throw new IllegalArgumentException("Null URI");
    }
    paramUri = (SoftReference)this.g.get(paramUri);
    if (paramUri == null)
    {
      b();
      return null;
    }
    return (d)paramUri.get();
  }
  
  public com.layer.sdk.internal.lsdkd.lsdka.c b(Uri paramUri, boolean paramBoolean)
  {
    return (com.layer.sdk.internal.lsdkd.lsdka.c)a(paramUri, paramBoolean);
  }
  
  public List<com.layer.sdk.internal.lsdkd.lsdka.i> b(Collection<Uri> paramCollection, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      localArrayList.add(c((Uri)paramCollection.next(), paramBoolean));
    }
    return localArrayList;
  }
  
  public void b()
  {
    for (a locala1 = (a)this.f.poll(); locala1 != null; locala1 = (a)this.f.poll())
    {
      a locala2 = (a)this.g.get(locala1.a());
      if ((locala2 != null) && (locala2.get() == null))
      {
        this.g.remove(locala1.a());
        locala2.clear();
      }
      locala1.clear();
    }
  }
  
  public void b(b paramb)
  {
    this.e.b(paramb);
  }
  
  public void b(k paramk, d... paramVarArgs)
  {
    Object localObject2 = new LinkedHashSet();
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    paramk.a(this);
    int k = paramVarArgs.length;
    int j = 0;
    if (j < k)
    {
      localObject1 = paramVarArgs[j];
      if (((d)localObject1).getId() == null) {
        throw new IllegalArgumentException("Changeable has null ID: " + localObject1);
      }
      if (((d)localObject1).b()) {
        throw new IllegalArgumentException("Cannot update a new Changeable: " + localObject1);
      }
      if (((localObject1 instanceof com.layer.sdk.internal.lsdkd.lsdka.c)) && (((com.layer.sdk.internal.lsdkd.lsdka.c)localObject1).isDistinct())) {
        ((Set)localObject2).add(localObject1);
      }
      for (;;)
      {
        paramk.a((d)localObject1);
        j += 1;
        break;
        localLinkedHashSet.add(localObject1);
      }
    }
    paramVarArgs = this.c.l();
    Object localObject1 = paramVarArgs.e();
    if (localObject1 == null) {
      return;
    }
    boolean bool;
    try
    {
      bool = b(paramk.a());
      paramk = ((Set)localObject2).iterator();
      while (paramk.hasNext())
      {
        localObject2 = (d)paramk.next();
        com.layer.sdk.internal.lsdkd.lsdka.c localc = paramVarArgs.a((SQLiteDatabase)localObject1, (com.layer.sdk.internal.lsdkd.lsdka.c)localObject2, bool);
        a((d)localObject2);
        if (localc != null) {
          throw new IllegalStateException("Merging conversations for update. Unexpected.");
        }
      }
    }
    finally
    {
      paramVarArgs.i((SQLiteDatabase)localObject1);
    }
    if (localLinkedHashSet.size() > 0)
    {
      a((SQLiteDatabase)localObject1, localLinkedHashSet, bool);
      paramk = localLinkedHashSet.iterator();
      while (paramk.hasNext()) {
        a((d)paramk.next());
      }
    }
    ((SQLiteDatabase)localObject1).setTransactionSuccessful();
    paramVarArgs.i((SQLiteDatabase)localObject1);
  }
  
  public com.layer.sdk.internal.lsdkd.lsdka.i c(Uri paramUri, boolean paramBoolean)
  {
    return (com.layer.sdk.internal.lsdkd.lsdka.i)a(paramUri, paramBoolean);
  }
  
  public void c()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(d, "Clearing listeners on ChangeableCache");
    }
    this.e.a();
  }
  
  public static class a
    extends SoftReference<d>
  {
    private final Uri a;
    
    public a(d paramd, ReferenceQueue<? super d> paramReferenceQueue)
    {
      super(paramReferenceQueue);
      this.a = paramd.getId();
    }
    
    public Uri a()
    {
      return this.a;
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(c paramc);
  }
  
  public static abstract interface c
  {
    public abstract void a(f paramf, k paramk);
    
    public abstract void b(f paramf, k paramk);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */