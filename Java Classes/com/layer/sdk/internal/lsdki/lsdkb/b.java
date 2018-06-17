package com.layer.sdk.internal.lsdki.lsdkb;

import android.database.sqlite.SQLiteDatabase;
import com.layer.sdk.internal.lsdkd.lsdka.c;

public class b
{
  public static void a(SQLiteDatabase paramSQLiteDatabase, String paramString, a parama)
  {
    try
    {
      a(paramSQLiteDatabase, paramString, parama, null);
      return;
    }
    finally
    {
      paramSQLiteDatabase = finally;
      throw paramSQLiteDatabase;
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, String paramString, a parama, c paramc)
  {
    try
    {
      parama.a(paramSQLiteDatabase, paramString, paramc);
      parama.a(paramSQLiteDatabase, paramc);
      return;
    }
    finally
    {
      paramSQLiteDatabase = finally;
      throw paramSQLiteDatabase;
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(SQLiteDatabase paramSQLiteDatabase, c paramc);
    
    public abstract void a(SQLiteDatabase paramSQLiteDatabase, String paramString, c paramc);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkb/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */