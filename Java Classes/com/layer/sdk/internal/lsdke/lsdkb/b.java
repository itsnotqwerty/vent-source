package com.layer.sdk.internal.lsdke.lsdkb;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class b
{
  private static final k.a a = k.a(b.class);
  private final Set<com.layer.sdk.internal.lsdke.lsdkb.lsdka.a> b = new HashSet();
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    if (paramSQLiteDatabase == null) {
      throw new IllegalArgumentException("Database is null");
    }
    if (!paramSQLiteDatabase.isOpen()) {
      throw new IllegalArgumentException("Database is not open: " + paramSQLiteDatabase);
    }
    if (paramSQLiteDatabase.isReadOnly()) {
      throw new IllegalArgumentException("Database is read only: " + paramSQLiteDatabase);
    }
    if ((!paramBoolean) && (paramSQLiteDatabase.inTransaction())) {
      throw new IllegalArgumentException("Database transacted: " + paramSQLiteDatabase);
    }
    if ((paramBoolean) && (!paramSQLiteDatabase.inTransaction())) {
      throw new IllegalArgumentException("Database not transacted: " + paramSQLiteDatabase);
    }
  }
  
  public int a(SQLiteDatabase paramSQLiteDatabase, a parama)
    throws IOException, URISyntaxException
  {
    if (paramSQLiteDatabase == null) {
      throw new IllegalArgumentException("Database is null");
    }
    if (!paramSQLiteDatabase.isOpen()) {
      throw new IllegalArgumentException("Database is not open: " + paramSQLiteDatabase);
    }
    if (paramSQLiteDatabase.isReadOnly()) {
      throw new IllegalArgumentException("Database is read only: " + paramSQLiteDatabase);
    }
    paramSQLiteDatabase.beginTransaction();
    for (;;)
    {
      int i;
      try
      {
        if (!a(paramSQLiteDatabase)) {}
        switch (1.bqe[parama.ordinal()])
        {
        case 1: 
          parama = d(paramSQLiteDatabase).iterator();
          i = 0;
          if (!parama.hasNext()) {
            break;
          }
          com.layer.sdk.internal.lsdke.lsdkb.lsdkb.b localb = (com.layer.sdk.internal.lsdke.lsdkb.lsdkb.b)parama.next();
          if (k.a(2)) {
            k.a(a, "Applying Migration: " + localb.toString());
          }
          a.a(paramSQLiteDatabase, localb);
          a(paramSQLiteDatabase, localb.b());
          i += 1;
          continue;
          c(paramSQLiteDatabase);
          break;
        case 2: 
          b(paramSQLiteDatabase);
        }
      }
      finally
      {
        paramSQLiteDatabase.endTransaction();
      }
      continue;
      paramSQLiteDatabase.setTransactionSuccessful();
      paramSQLiteDatabase.endTransaction();
      a(paramSQLiteDatabase, false);
      return i;
    }
  }
  
  public b a(com.layer.sdk.internal.lsdke.lsdkb.lsdka.a... paramVarArgs)
  {
    this.b.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
    throws SQLException
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("version", paramLong);
    paramSQLiteDatabase.insert("schema_migrations", null, localContentValues);
  }
  
  public boolean a()
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext()) {
      if (((com.layer.sdk.internal.lsdke.lsdkb.lsdka.a)localIterator.next()).a()) {
        return true;
      }
    }
    return false;
  }
  
  /* Error */
  public boolean a(SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_1
    //   4: ldc -71
    //   6: aconst_null
    //   7: invokevirtual 189	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   10: astore_1
    //   11: aload_1
    //   12: astore 4
    //   14: aload_1
    //   15: invokeinterface 194 1 0
    //   20: istore_2
    //   21: iload_2
    //   22: ifle +17 -> 39
    //   25: iconst_1
    //   26: istore_3
    //   27: aload_1
    //   28: ifnull +9 -> 37
    //   31: aload_1
    //   32: invokeinterface 197 1 0
    //   37: iload_3
    //   38: ireturn
    //   39: iconst_0
    //   40: istore_3
    //   41: goto -14 -> 27
    //   44: astore_1
    //   45: aload 4
    //   47: ifnull +10 -> 57
    //   50: aload 4
    //   52: invokeinterface 197 1 0
    //   57: aload_1
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	b
    //   0	59	1	paramSQLiteDatabase	SQLiteDatabase
    //   20	2	2	i	int
    //   26	15	3	bool	boolean
    //   1	50	4	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   3	11	44	finally
    //   14	21	44	finally
  }
  
  public b b(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS schema_migrations (version INTEGER UNIQUE NOT NULL)");
    return this;
  }
  
  public com.layer.sdk.internal.lsdke.lsdkb.lsdkc.b b()
    throws IllegalStateException
  {
    if (this.b.isEmpty()) {
      throw new IllegalStateException("No DataSources added");
    }
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      com.layer.sdk.internal.lsdke.lsdkb.lsdka.a locala = (com.layer.sdk.internal.lsdke.lsdkb.lsdka.a)localIterator.next();
      if (locala.a()) {
        return locala.b();
      }
    }
    return null;
  }
  
  public b c(SQLiteDatabase paramSQLiteDatabase)
    throws IOException
  {
    if (!a()) {
      throw new IllegalStateException("No schemas in DataSource set.");
    }
    a.a(paramSQLiteDatabase, b());
    return this;
  }
  
  public List<com.layer.sdk.internal.lsdke.lsdkb.lsdkb.b> c()
    throws IllegalStateException, IOException, URISyntaxException
  {
    if (this.b.isEmpty()) {
      throw new IllegalStateException("No DataSources added");
    }
    Object localObject = new HashSet();
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext()) {
      ((Set)localObject).addAll(((com.layer.sdk.internal.lsdke.lsdkb.lsdka.a)localIterator.next()).c());
    }
    localObject = new LinkedList((Collection)localObject);
    Collections.sort((List)localObject);
    return (List<com.layer.sdk.internal.lsdke.lsdkb.lsdkb.b>)localObject;
  }
  
  public List<com.layer.sdk.internal.lsdke.lsdkb.lsdkb.b> d(SQLiteDatabase paramSQLiteDatabase)
    throws IOException, URISyntaxException
  {
    if (!a(paramSQLiteDatabase)) {
      return c();
    }
    long l1 = e(paramSQLiteDatabase);
    paramSQLiteDatabase = g(paramSQLiteDatabase);
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext())
    {
      com.layer.sdk.internal.lsdke.lsdkb.lsdkb.b localb = (com.layer.sdk.internal.lsdke.lsdkb.lsdkb.b)localIterator.next();
      long l2 = localb.b().longValue();
      if ((l2 > l1) && (!paramSQLiteDatabase.contains(Long.valueOf(l2)))) {
        localLinkedList.add(localb);
      }
    }
    Collections.sort(localLinkedList);
    return localLinkedList;
  }
  
  public long e(SQLiteDatabase paramSQLiteDatabase)
    throws SQLException
  {
    long l1 = -1L;
    try
    {
      localCursor = paramSQLiteDatabase.rawQuery("SELECT MIN(version) FROM schema_migrations", null);
      boolean bool;
      long l2;
      if (localCursor == null) {
        break label107;
      }
    }
    finally
    {
      try
      {
        if (localCursor.moveToNext())
        {
          bool = localCursor.isNull(0);
          if (bool)
          {
            l2 = l1;
            if (localCursor != null)
            {
              localCursor.close();
              l2 = l1;
            }
          }
        }
        do
        {
          return l2;
          l1 = localCursor.getLong(0);
          break;
          l2 = l1;
        } while (localCursor == null);
        localCursor.close();
        return -1L;
      }
      finally
      {
        Cursor localCursor;
        for (;;) {}
      }
      paramSQLiteDatabase = finally;
      localCursor = null;
    }
    localCursor.close();
    label107:
    throw paramSQLiteDatabase;
  }
  
  public long f(SQLiteDatabase paramSQLiteDatabase)
    throws SQLException
  {
    long l1 = -1L;
    try
    {
      localCursor = paramSQLiteDatabase.rawQuery("SELECT MAX(version) FROM schema_migrations", null);
      boolean bool;
      long l2;
      if (localCursor == null) {
        break label107;
      }
    }
    finally
    {
      try
      {
        if (localCursor.moveToNext())
        {
          bool = localCursor.isNull(0);
          if (bool)
          {
            l2 = l1;
            if (localCursor != null)
            {
              localCursor.close();
              l2 = l1;
            }
          }
        }
        do
        {
          return l2;
          l1 = localCursor.getLong(0);
          break;
          l2 = l1;
        } while (localCursor == null);
        localCursor.close();
        return -1L;
      }
      finally
      {
        Cursor localCursor;
        for (;;) {}
      }
      paramSQLiteDatabase = finally;
      localCursor = null;
    }
    localCursor.close();
    label107:
    throw paramSQLiteDatabase;
  }
  
  public LinkedHashSet<Long> g(SQLiteDatabase paramSQLiteDatabase)
    throws SQLException
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    LinkedHashSet localLinkedHashSet;
    try
    {
      localLinkedHashSet = new LinkedHashSet();
      localObject1 = localObject2;
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT version FROM schema_migrations ORDER BY version", null);
      for (;;)
      {
        localObject1 = paramSQLiteDatabase;
        if (!paramSQLiteDatabase.moveToNext()) {
          break;
        }
        localObject1 = paramSQLiteDatabase;
        localLinkedHashSet.add(Long.valueOf(paramSQLiteDatabase.getLong(0)));
      }
      if (paramSQLiteDatabase == null) {
        break label79;
      }
    }
    finally
    {
      if (localObject1 != null) {
        ((Cursor)localObject1).close();
      }
    }
    paramSQLiteDatabase.close();
    label79:
    return localLinkedHashSet;
  }
  
  public boolean h(SQLiteDatabase paramSQLiteDatabase)
    throws IOException, URISyntaxException
  {
    if (!a(paramSQLiteDatabase)) {
      return false;
    }
    long l = f(paramSQLiteDatabase);
    paramSQLiteDatabase = c().iterator();
    while (paramSQLiteDatabase.hasNext()) {
      if (((com.layer.sdk.internal.lsdke.lsdkb.lsdkb.b)paramSQLiteDatabase.next()).b().equals(Long.valueOf(l))) {
        return false;
      }
    }
    return true;
  }
  
  public static enum a
  {
    private a() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/lsdkb/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */