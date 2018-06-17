package com.layer.sdk.internal.lsdke;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build.VERSION;
import android.os.Environment;
import com.layer.sdk.internal.lsdke.lsdkb.b.a;
import com.layer.sdk.internal.lsdkk.h;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

public class d
{
  static final ReentrantLock brn = new ReentrantLock();
  private static final k.a h = k.a(d.class);
  final Context a;
  final boolean b;
  SQLiteDatabase brm;
  final UUID c;
  final String d;
  final String e;
  
  public d(b paramb)
  {
    this.a = paramb.a;
    this.c = paramb.d;
    this.d = paramb.e;
    this.e = paramb.b;
    this.b = paramb.c;
  }
  
  private SQLiteDatabase a(Context paramContext, boolean paramBoolean)
  {
    int i = 0;
    Object localObject2;
    for (;;)
    {
      i += 1;
      if (paramBoolean) {}
      for (;;)
      {
        try
        {
          if (Build.VERSION.SDK_INT < 16)
          {
            localObject1 = paramContext.openOrCreateDatabase(this.e, 0, null);
            localObject2 = localObject1;
          }
        }
        catch (SQLiteException localSQLiteException1)
        {
          Object localObject1;
          localObject2 = null;
        }
        try
        {
          ((SQLiteDatabase)localObject1).enableWriteAheadLogging();
          localObject2 = localObject1;
          a.s(paramContext, this.e);
          localObject3 = null;
          localObject2 = localObject1;
          if (localObject3 == null) {
            break label184;
          }
          localObject1 = "Attempt " + i + " of 10: " + ((SQLiteException)localObject3).getMessage();
          if (localObject3 == null) {
            break label291;
          }
          if (k.a(6)) {
            k.d(h, (String)localObject1, (Throwable)localObject3);
          }
          if (i < 10) {
            break label320;
          }
          if (localObject3 == null) {
            break;
          }
          throw new IllegalStateException((String)localObject1, (Throwable)localObject3);
        }
        catch (SQLiteException localSQLiteException2)
        {
          String str;
          for (;;) {}
        }
        localObject1 = paramContext.openOrCreateDatabase(this.e, 8, null);
        continue;
        localObject1 = paramContext.openOrCreateDatabase(this.e, 0, null);
        continue;
        Object localObject3 = localSQLiteException1;
        continue;
        label184:
        if (localObject2 == null)
        {
          str = "Attempt " + i + " of 10: Could not open database";
        }
        else
        {
          if (!((SQLiteDatabase)localObject2).isReadOnly()) {
            break label355;
          }
          str = "Attempt " + i + " of 10: Database is read only (free: " + Runtime.getRuntime().freeMemory() + " of " + Runtime.getRuntime().totalMemory() + " of " + Runtime.getRuntime().maxMemory() + ")";
          continue;
          label291:
          if (k.a(6)) {
            k.e(h, str);
          }
        }
      }
      throw new IllegalStateException(str);
      label320:
      if ((localObject2 != null) && (((SQLiteDatabase)localObject2).isOpen())) {
        ((SQLiteDatabase)localObject2).close();
      }
      try
      {
        TimeUnit.MILLISECONDS.sleep(100L);
      }
      catch (InterruptedException localInterruptedException) {}
    }
    label355:
    return (SQLiteDatabase)localObject2;
  }
  
  private void a(SQLiteDatabase paramSQLiteDatabase)
    throws IOException, URISyntaxException
  {
    int j = 1;
    for (;;)
    {
      com.layer.sdk.internal.lsdke.lsdkb.b localb;
      int i;
      try
      {
        brn.lock();
        paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=ON");
        localb = new com.layer.sdk.internal.lsdke.lsdkb.b();
        localb.a(new com.layer.sdk.internal.lsdke.lsdkb.lsdka.a[] { new com.layer.sdk.internal.lsdke.lsdkb.lsdka.b(this.a.getApplicationContext(), "layer-schema/schema.sql", "layer-migrations") });
        localb.a(new com.layer.sdk.internal.lsdke.lsdkb.lsdka.a[] { new c(this.c, this.d) });
        if (!localb.a(paramSQLiteDatabase))
        {
          i = j;
          if (k.a(2))
          {
            k.a(h, "Dropping database as there is no migrations table.");
            i = j;
          }
          paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=OFF");
          if (i == 0) {
            break label354;
          }
          com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase);
          i = localb.a(paramSQLiteDatabase, b.a.b);
          paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=ON");
          if (k.a(2)) {
            k.a(h, "Vacuuming database...");
          }
          f();
          if (k.a(2)) {
            k.a(h, "Analyzing database...");
          }
          g();
          if (k.a(2)) {
            k.a(h, "Validating database...");
          }
          a(paramSQLiteDatabase, localb);
          if (k.a(2)) {
            k.a(h, "Applied " + i + " migration(s).");
          }
          return;
        }
        if (localb.h(paramSQLiteDatabase))
        {
          i = j;
          if (!k.a(2)) {
            continue;
          }
          k.a(h, "Dropping database due to downgrade.  Unsent messages may be lost.");
          i = j;
          continue;
        }
        if (localb.d(paramSQLiteDatabase).isEmpty()) {
          break label347;
        }
      }
      finally
      {
        brn.unlock();
      }
      if (k.a(2))
      {
        k.a(h, "Applying " + localb.d(paramSQLiteDatabase).size() + " schema migration(s).");
        i = 0;
        continue;
        label347:
        brn.unlock();
        return;
        label354:
        i = localb.a(paramSQLiteDatabase, b.a.a);
      }
      else
      {
        i = 0;
      }
    }
  }
  
  private void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdke.lsdkb.b paramb)
    throws IOException, URISyntaxException
  {
    int i = 0;
    if (!paramb.d(paramSQLiteDatabase).isEmpty()) {
      throw new IllegalStateException("Migrations not applied.");
    }
    while (i < 3)
    {
      paramSQLiteDatabase = new String[] { "streams", "syncable_changes", "synced_changes" }[i];
      if (!a(paramSQLiteDatabase)) {
        throw new IllegalStateException("Could not find " + paramSQLiteDatabase + " after migration.");
      }
      i += 1;
    }
  }
  
  protected static boolean a(Context paramContext, String paramString)
  {
    boolean bool3 = true;
    boolean bool1 = true;
    boolean bool2;
    if (k.a(2))
    {
      if (paramString != null) {
        k.a(h, "deleteLocalDatabase: " + paramString);
      }
    }
    else
    {
      if (paramString != null) {
        break label63;
      }
      bool2 = bool1;
    }
    label63:
    do
    {
      do
      {
        do
        {
          return bool2;
          k.a(h, "deleteLocalDatabase");
          break;
          paramContext = paramContext.getDatabasePath(paramString).getParentFile();
          bool2 = bool1;
        } while (paramContext == null);
        paramContext = paramContext.listFiles();
        bool2 = bool1;
      } while (paramContext == null);
      bool2 = bool1;
    } while (paramContext.length == 0);
    int m = paramContext.length;
    int j = 0;
    bool1 = bool3;
    label112:
    Object localObject;
    if (j < m)
    {
      localObject = paramContext[j];
      bool2 = bool1;
      if (((File)localObject).exists())
      {
        bool2 = bool1;
        if (!((File)localObject).isDirectory())
        {
          bool2 = bool1;
          if (((File)localObject).getName().startsWith(paramString))
          {
            if (k.a(2)) {
              k.a(h, "Trying to delete Db file: " + localObject);
            }
            int i = 100;
            for (;;)
            {
              int k = i - 1;
              if ((i <= 0) || (!((File)localObject).exists()) || (((File)localObject).delete())) {
                break;
              }
              try
              {
                TimeUnit.MILLISECONDS.sleep(50L);
                i = k;
              }
              catch (InterruptedException localInterruptedException)
              {
                if (k.a(6)) {
                  k.d(h, "Sleep interrupted ", localInterruptedException);
                }
                i = k;
              }
            }
            if (!((File)localObject).exists()) {
              break label321;
            }
            if (!k.a(6)) {
              break label418;
            }
            k.e(h, "Failed to delete file: " + ((File)localObject).getName());
            bool2 = false;
          }
        }
      }
    }
    for (;;)
    {
      j += 1;
      bool1 = bool2;
      break label112;
      label321:
      bool2 = bool1;
      if (k.a(2))
      {
        k.a(h, "Deleted file: " + ((File)localObject).getName());
        bool2 = bool1;
        continue;
        if (bool1)
        {
          bool2 = bool1;
          if (!k.a(2)) {
            break;
          }
          k.a(h, "Removed local database file(s)");
          return bool1;
        }
        bool2 = bool1;
        if (!k.a(6)) {
          break;
        }
        k.e(h, "Failed to delete local database file(s)");
        return bool1;
        label418:
        bool2 = false;
      }
    }
  }
  
  public d a()
    throws IOException, URISyntaxException
  {
    if (this.brm != null) {
      return this;
    }
    if (this.e == null)
    {
      this.brm = SQLiteDatabase.create(null);
      a(this.brm);
      return this;
    }
    this.brm = a(this.a, this.b);
    try
    {
      a(this.brm);
      return this;
    }
    catch (Exception localException1)
    {
      if (k.a(6)) {
        k.d(h, "Filesystem schema management failed: " + localException1.getMessage(), localException1);
      }
      try
      {
        if ((this.brm != null) && (this.brm.isOpen())) {
          this.brm.close();
        }
        if (!a(this.a, this.e)) {
          throw new IllegalStateException("Failed to delete database file '" + this.e + "' while recovering from bad schema management");
        }
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          if (k.a(6)) {
            k.d(h, "Failed to close database while retrying schema management: " + localException2.getMessage(), localException2);
          }
        }
        this.brm = a(this.a, this.b);
        a(this.brm);
      }
    }
    return this;
  }
  
  public boolean a(String paramString)
  {
    Cursor localCursor;
    try
    {
      localCursor = this.brm.rawQuery("SELECT * FROM sqlite_master WHERE type = 'table' AND name = ?", new String[] { paramString });
      boolean bool;
      if (localCursor == null) {
        break label67;
      }
    }
    finally
    {
      try
      {
        bool = localCursor.moveToNext();
        if (bool)
        {
          if (localCursor != null) {
            localCursor.close();
          }
          return true;
        }
        if (localCursor != null) {
          localCursor.close();
        }
        return false;
      }
      finally {}
      paramString = finally;
      localCursor = null;
    }
    localCursor.close();
    label67:
    throw paramString;
  }
  
  public SQLiteDatabase b()
  {
    return this.brm;
  }
  
  public SQLiteDatabase c()
  {
    return this.brm;
  }
  
  public void d()
  {
    try
    {
      if (this.brm != null)
      {
        this.brm.close();
        this.brm = null;
      }
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        if (k.a(6)) {
          k.d(h, localException.getMessage(), localException);
        }
      }
    }
    finally {}
  }
  
  public boolean e()
  {
    return !this.brm.isOpen();
  }
  
  public void f()
  {
    try
    {
      this.brm.execSQL("VACUUM");
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (!k.a(6)) {}
      k.d(h, localSQLiteException.getMessage(), localSQLiteException);
    }
  }
  
  public void g()
  {
    this.brm.execSQL("ANALYZE");
  }
  
  private static final class a
  {
    static final String a = Environment.getExternalStorageDirectory().getPath();
    
    public static void s(Context paramContext, String paramString)
    {
      if ((paramString == null) || (!new File(a, "layer.dump.on").exists())) {}
      String str4;
      do
      {
        return;
        paramContext = paramContext.getDatabasePath(paramString).getAbsolutePath();
        String str1 = paramContext + h.a(paramString, ".db") + ".db-wal";
        paramString = paramContext + h.a(paramString, ".db") + ".db-shm";
        str4 = "layer-" + System.currentTimeMillis();
        File localFile = new File(a);
        String str2 = localFile.getAbsolutePath() + "/" + str4 + ".db";
        String str3 = localFile.getAbsolutePath() + "/" + str4 + ".db-wal";
        str4 = localFile.getAbsolutePath() + "/" + str4 + ".db-shm";
        if ((h.b(paramContext, str2)) && (k.a(2))) {
          k.a("copyDb", "Copied " + str2);
        }
        if ((h.b(str1, str3)) && (k.a(2))) {
          k.a("copyDb", "Copied " + str3);
        }
      } while ((!h.b(paramString, str4)) || (!k.a(2)));
      k.a("copyDb", "Copied " + str4);
    }
  }
  
  public static class b
  {
    public Context a = null;
    public String b = null;
    public boolean c = false;
    public UUID d = null;
    public String e = null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */