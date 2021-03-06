package com.google.android.gms.internal;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;
import com.google.android.gms.common.util.e;
import java.io.File;

final class gg
  extends SQLiteOpenHelper
{
  gg(gd paramgd, Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 1);
  }
  
  public final SQLiteDatabase getWritableDatabase()
  {
    int i = 1;
    Object localObject = gd.a(this.aRy);
    if (((ky)localObject).Ie == 0L) {}
    while (i == 0)
    {
      throw new SQLiteException("Database open failed");
      if (((ky)localObject).aLd.elapsedRealtime() - ((ky)localObject).Ie < 3600000L) {
        i = 0;
      }
    }
    try
    {
      localObject = super.getWritableDatabase();
      return (SQLiteDatabase)localObject;
    }
    catch (SQLiteException localSQLiteException1)
    {
      gd.a(this.aRy).start();
      this.aRy.qP().aTa.bq("Opening the database failed, dropping and recreating it");
      if (!this.aRy.getContext().getDatabasePath("google_app_measurement.db").delete()) {
        this.aRy.qP().aTa.j("Failed to delete corrupted db file", "google_app_measurement.db");
      }
      try
      {
        SQLiteDatabase localSQLiteDatabase = super.getWritableDatabase();
        gd.a(this.aRy).Ie = 0L;
        return localSQLiteDatabase;
      }
      catch (SQLiteException localSQLiteException2)
      {
        this.aRy.qP().aTa.j("Failed to open freshly created database", localSQLiteException2);
        throw localSQLiteException2;
      }
    }
  }
  
  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    gd.a(this.aRy.qP(), paramSQLiteDatabase);
  }
  
  public final void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
  
  public final void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    Cursor localCursor;
    if (Build.VERSION.SDK_INT < 15) {
      localCursor = paramSQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
    }
    try
    {
      localCursor.moveToFirst();
      localCursor.close();
      gd.a(this.aRy.qP(), paramSQLiteDatabase, "events", "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp", gd.rs());
      gd.a(this.aRy.qP(), paramSQLiteDatabase, "conditional_properties", "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;", "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event", null);
      gd.a(this.aRy.qP(), paramSQLiteDatabase, "user_attributes", "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,set_timestamp,value", gd.rt());
      gd.a(this.aRy.qP(), paramSQLiteDatabase, "apps", "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;", "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp", gd.ru());
      gd.a(this.aRy.qP(), paramSQLiteDatabase, "queue", "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,bundle_end_timestamp,data", gd.rv());
      gd.a(this.aRy.qP(), paramSQLiteDatabase, "raw_events_metadata", "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));", "app_id,metadata_fingerprint,metadata", null);
      gd.a(this.aRy.qP(), paramSQLiteDatabase, "raw_events", "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,name,timestamp,metadata_fingerprint,data", gd.rw());
      gd.a(this.aRy.qP(), paramSQLiteDatabase, "event_filters", "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));", "app_id,audience_id,filter_id,event_name,data", null);
      gd.a(this.aRy.qP(), paramSQLiteDatabase, "property_filters", "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));", "app_id,audience_id,filter_id,property_name,data", null);
      gd.a(this.aRy.qP(), paramSQLiteDatabase, "audience_filter_values", "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));", "app_id,audience_id,current_results", null);
      gd.a(this.aRy.qP(), paramSQLiteDatabase, "app2", "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));", "app_id,first_open_count", gd.rx());
      gd.a(this.aRy.qP(), paramSQLiteDatabase, "main_event_params", "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,event_id,children_to_process,main_event", null);
      return;
    }
    finally
    {
      localCursor.close();
    }
  }
  
  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */