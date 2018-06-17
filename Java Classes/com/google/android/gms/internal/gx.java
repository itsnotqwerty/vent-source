package com.google.android.gms.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.SystemClock;

public final class gx
  extends iy
{
  private final gy aSS = new gy(this, getContext(), "google_app_measurement_local.db");
  private boolean aST;
  
  gx(hz paramhz)
  {
    super(paramhz);
  }
  
  final boolean a(int paramInt, byte[] paramArrayOfByte)
  {
    mN();
    if (this.aST) {
      return false;
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("type", Integer.valueOf(paramInt));
    localContentValues.put("entry", paramArrayOfByte);
    int j = 5;
    paramInt = 0;
    while (paramInt < 5)
    {
      Object localObject5 = null;
      Object localObject7 = null;
      Object localObject1 = null;
      Object localObject3 = null;
      Object localObject8 = null;
      Object localObject9 = null;
      Object localObject10 = null;
      Cursor localCursor1 = null;
      Cursor localCursor2 = localCursor1;
      Object localObject4 = localObject8;
      Object localObject6 = localObject9;
      paramArrayOfByte = (byte[])localObject10;
      try
      {
        SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
        if (localSQLiteDatabase == null)
        {
          localCursor2 = localCursor1;
          localObject3 = localSQLiteDatabase;
          localObject4 = localObject8;
          localObject5 = localSQLiteDatabase;
          localObject6 = localObject9;
          localObject7 = localSQLiteDatabase;
          paramArrayOfByte = (byte[])localObject10;
          localObject1 = localSQLiteDatabase;
          this.aST = true;
          if (localSQLiteDatabase != null) {
            localSQLiteDatabase.close();
          }
          return false;
        }
        localCursor2 = localCursor1;
        localObject3 = localSQLiteDatabase;
        localObject4 = localObject8;
        localObject5 = localSQLiteDatabase;
        localObject6 = localObject9;
        localObject7 = localSQLiteDatabase;
        paramArrayOfByte = (byte[])localObject10;
        localObject1 = localSQLiteDatabase;
        localSQLiteDatabase.beginTransaction();
        long l2 = 0L;
        localCursor2 = localCursor1;
        localObject3 = localSQLiteDatabase;
        localObject4 = localObject8;
        localObject5 = localSQLiteDatabase;
        localObject6 = localObject9;
        localObject7 = localSQLiteDatabase;
        paramArrayOfByte = (byte[])localObject10;
        localObject1 = localSQLiteDatabase;
        localCursor1 = localSQLiteDatabase.rawQuery("select count(1) from messages", null);
        l1 = l2;
        if (localCursor1 != null)
        {
          l1 = l2;
          localCursor2 = localCursor1;
          localObject3 = localSQLiteDatabase;
          localObject4 = localCursor1;
          localObject5 = localSQLiteDatabase;
          localObject6 = localCursor1;
          localObject7 = localSQLiteDatabase;
          paramArrayOfByte = localCursor1;
          localObject1 = localSQLiteDatabase;
          if (localCursor1.moveToFirst())
          {
            localCursor2 = localCursor1;
            localObject3 = localSQLiteDatabase;
            localObject4 = localCursor1;
            localObject5 = localSQLiteDatabase;
            localObject6 = localCursor1;
            localObject7 = localSQLiteDatabase;
            paramArrayOfByte = localCursor1;
            localObject1 = localSQLiteDatabase;
            l1 = localCursor1.getLong(0);
          }
        }
        if (l1 >= 100000L)
        {
          localCursor2 = localCursor1;
          localObject3 = localSQLiteDatabase;
          localObject4 = localCursor1;
          localObject5 = localSQLiteDatabase;
          localObject6 = localCursor1;
          localObject7 = localSQLiteDatabase;
          paramArrayOfByte = localCursor1;
          localObject1 = localSQLiteDatabase;
          qP().aTa.bq("Data loss, local db full");
          l1 = 100000L - l1 + 1L;
          localCursor2 = localCursor1;
          localObject3 = localSQLiteDatabase;
          localObject4 = localCursor1;
          localObject5 = localSQLiteDatabase;
          localObject6 = localCursor1;
          localObject7 = localSQLiteDatabase;
          paramArrayOfByte = localCursor1;
          localObject1 = localSQLiteDatabase;
          l2 = localSQLiteDatabase.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", new String[] { Long.toString(l1) });
          if (l2 != l1)
          {
            localCursor2 = localCursor1;
            localObject3 = localSQLiteDatabase;
            localObject4 = localCursor1;
            localObject5 = localSQLiteDatabase;
            localObject6 = localCursor1;
            localObject7 = localSQLiteDatabase;
            paramArrayOfByte = localCursor1;
            localObject1 = localSQLiteDatabase;
            qP().aTa.d("Different delete count than expected in local db. expected, received, difference", Long.valueOf(l1), Long.valueOf(l2), Long.valueOf(l1 - l2));
          }
        }
        localCursor2 = localCursor1;
        localObject3 = localSQLiteDatabase;
        localObject4 = localCursor1;
        localObject5 = localSQLiteDatabase;
        localObject6 = localCursor1;
        localObject7 = localSQLiteDatabase;
        paramArrayOfByte = localCursor1;
        localObject1 = localSQLiteDatabase;
        localSQLiteDatabase.insertOrThrow("messages", null, localContentValues);
        localCursor2 = localCursor1;
        localObject3 = localSQLiteDatabase;
        localObject4 = localCursor1;
        localObject5 = localSQLiteDatabase;
        localObject6 = localCursor1;
        localObject7 = localSQLiteDatabase;
        paramArrayOfByte = localCursor1;
        localObject1 = localSQLiteDatabase;
        localSQLiteDatabase.setTransactionSuccessful();
        localCursor2 = localCursor1;
        localObject3 = localSQLiteDatabase;
        localObject4 = localCursor1;
        localObject5 = localSQLiteDatabase;
        localObject6 = localCursor1;
        localObject7 = localSQLiteDatabase;
        paramArrayOfByte = localCursor1;
        localObject1 = localSQLiteDatabase;
        localSQLiteDatabase.endTransaction();
        if (localCursor1 != null) {
          localCursor1.close();
        }
        if (localSQLiteDatabase != null) {
          localSQLiteDatabase.close();
        }
        return true;
      }
      catch (SQLiteFullException localSQLiteFullException)
      {
        paramArrayOfByte = localCursor2;
        localObject1 = localObject3;
        qP().aTa.j("Error writing entry to local database", localSQLiteFullException);
        paramArrayOfByte = localCursor2;
        localObject1 = localObject3;
        this.aST = true;
        if (localCursor2 != null) {
          localCursor2.close();
        }
        i = j;
        if (localObject3 != null)
        {
          ((SQLiteDatabase)localObject3).close();
          i = j;
        }
        paramInt += 1;
        j = i;
      }
      catch (SQLiteDatabaseLockedException paramArrayOfByte)
      {
        for (;;)
        {
          long l1 = j;
          paramArrayOfByte = (byte[])localObject4;
          localObject1 = localObject5;
          SystemClock.sleep(l1);
          j += 20;
          if (localObject4 != null) {
            ((Cursor)localObject4).close();
          }
          i = j;
          if (localObject5 != null)
          {
            ((SQLiteDatabase)localObject5).close();
            i = j;
          }
        }
      }
      catch (SQLiteException localSQLiteException)
      {
        for (;;)
        {
          if (localObject7 != null)
          {
            paramArrayOfByte = (byte[])localObject6;
            localObject1 = localObject7;
            if (((SQLiteDatabase)localObject7).inTransaction())
            {
              paramArrayOfByte = (byte[])localObject6;
              localObject1 = localObject7;
              ((SQLiteDatabase)localObject7).endTransaction();
            }
          }
          paramArrayOfByte = (byte[])localObject6;
          localObject1 = localObject7;
          qP().aTa.j("Error writing entry to local database", localSQLiteException);
          paramArrayOfByte = (byte[])localObject6;
          localObject1 = localObject7;
          this.aST = true;
          if (localObject6 != null) {
            ((Cursor)localObject6).close();
          }
          int i = j;
          if (localObject7 != null)
          {
            ((SQLiteDatabase)localObject7).close();
            i = j;
          }
        }
      }
      finally
      {
        if (paramArrayOfByte != null) {
          paramArrayOfByte.close();
        }
        if (localObject1 != null) {
          ((SQLiteDatabase)localObject1).close();
        }
      }
    }
    qP().aTd.bq("Failed to write entry to local database");
    return false;
  }
  
  final SQLiteDatabase getWritableDatabase()
    throws SQLiteException
  {
    if (this.aST) {
      return null;
    }
    SQLiteDatabase localSQLiteDatabase = this.aSS.getWritableDatabase();
    if (localSQLiteDatabase == null)
    {
      this.aST = true;
      return null;
    }
    return localSQLiteDatabase;
  }
  
  /* Error */
  public final java.util.List<dr> rG()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 40	com/google/android/gms/internal/ix:mN	()V
    //   4: aload_0
    //   5: getfield 42	com/google/android/gms/internal/gx:aST	Z
    //   8: ifeq +5 -> 13
    //   11: aconst_null
    //   12: areturn
    //   13: new 252	java/util/ArrayList
    //   16: dup
    //   17: invokespecial 253	java/util/ArrayList:<init>	()V
    //   20: astore 14
    //   22: aload_0
    //   23: invokevirtual 20	com/google/android/gms/internal/ix:getContext	()Landroid/content/Context;
    //   26: ldc 22
    //   28: invokevirtual 259	android/content/Context:getDatabasePath	(Ljava/lang/String;)Ljava/io/File;
    //   31: invokevirtual 264	java/io/File:exists	()Z
    //   34: ifne +6 -> 40
    //   37: aload 14
    //   39: areturn
    //   40: iconst_5
    //   41: istore_1
    //   42: iconst_0
    //   43: istore_2
    //   44: iload_2
    //   45: iconst_5
    //   46: if_icmpge +832 -> 878
    //   49: aconst_null
    //   50: astore 13
    //   52: aconst_null
    //   53: astore 9
    //   55: aconst_null
    //   56: astore 12
    //   58: aconst_null
    //   59: astore 11
    //   61: aload_0
    //   62: invokevirtual 67	com/google/android/gms/internal/gx:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   65: astore 8
    //   67: aload 8
    //   69: ifnonnull +20 -> 89
    //   72: aload_0
    //   73: iconst_1
    //   74: putfield 42	com/google/android/gms/internal/gx:aST	Z
    //   77: aload 8
    //   79: ifnull +8 -> 87
    //   82: aload 8
    //   84: invokevirtual 72	android/database/sqlite/SQLiteDatabase:close	()V
    //   87: aconst_null
    //   88: areturn
    //   89: aload 8
    //   91: invokevirtual 75	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   94: bipush 100
    //   96: invokestatic 267	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   99: astore 9
    //   101: aload 8
    //   103: ldc 113
    //   105: iconst_3
    //   106: anewarray 117	java/lang/String
    //   109: dup
    //   110: iconst_0
    //   111: ldc_w 269
    //   114: aastore
    //   115: dup
    //   116: iconst_1
    //   117: ldc 48
    //   119: aastore
    //   120: dup
    //   121: iconst_2
    //   122: ldc 60
    //   124: aastore
    //   125: aconst_null
    //   126: aconst_null
    //   127: aconst_null
    //   128: aconst_null
    //   129: ldc_w 271
    //   132: aload 9
    //   134: invokevirtual 275	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   137: astore 9
    //   139: ldc2_w 276
    //   142: lstore 4
    //   144: aload 9
    //   146: invokeinterface 280 1 0
    //   151: ifeq +647 -> 798
    //   154: aload 9
    //   156: iconst_0
    //   157: invokeinterface 91 2 0
    //   162: lstore 6
    //   164: aload 9
    //   166: iconst_1
    //   167: invokeinterface 284 2 0
    //   172: istore_3
    //   173: aload 9
    //   175: iconst_2
    //   176: invokeinterface 288 2 0
    //   181: astore 12
    //   183: iload_3
    //   184: ifne +349 -> 533
    //   187: invokestatic 294	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   190: astore 10
    //   192: aload 10
    //   194: aload 12
    //   196: iconst_0
    //   197: aload 12
    //   199: arraylength
    //   200: invokevirtual 298	android/os/Parcel:unmarshall	([BII)V
    //   203: aload 10
    //   205: iconst_0
    //   206: invokevirtual 302	android/os/Parcel:setDataPosition	(I)V
    //   209: getstatic 308	com/google/android/gms/internal/gp:CREATOR	Landroid/os/Parcelable$Creator;
    //   212: aload 10
    //   214: invokeinterface 314 2 0
    //   219: checkcast 304	com/google/android/gms/internal/gp
    //   222: astore 11
    //   224: aload 10
    //   226: invokevirtual 317	android/os/Parcel:recycle	()V
    //   229: lload 6
    //   231: lstore 4
    //   233: aload 11
    //   235: ifnull -91 -> 144
    //   238: aload 14
    //   240: aload 11
    //   242: invokeinterface 323 2 0
    //   247: pop
    //   248: lload 6
    //   250: lstore 4
    //   252: goto -108 -> 144
    //   255: astore 12
    //   257: aload 8
    //   259: astore 11
    //   261: aload 9
    //   263: astore 10
    //   265: aload 10
    //   267: astore 9
    //   269: aload 11
    //   271: astore 8
    //   273: aload_0
    //   274: invokevirtual 97	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   277: getfield 103	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   280: ldc_w 325
    //   283: aload 12
    //   285: invokevirtual 153	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   288: aload 10
    //   290: astore 9
    //   292: aload 11
    //   294: astore 8
    //   296: aload_0
    //   297: iconst_1
    //   298: putfield 42	com/google/android/gms/internal/gx:aST	Z
    //   301: aload 10
    //   303: ifnull +10 -> 313
    //   306: aload 10
    //   308: invokeinterface 147 1 0
    //   313: aload 11
    //   315: ifnull +671 -> 986
    //   318: aload 11
    //   320: invokevirtual 72	android/database/sqlite/SQLiteDatabase:close	()V
    //   323: iload_2
    //   324: iconst_1
    //   325: iadd
    //   326: istore_2
    //   327: goto -283 -> 44
    //   330: astore 11
    //   332: aload_0
    //   333: invokevirtual 97	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   336: getfield 103	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   339: ldc_w 327
    //   342: invokevirtual 111	com/google/android/gms/internal/hd:bq	(Ljava/lang/String;)V
    //   345: aload 10
    //   347: invokevirtual 317	android/os/Parcel:recycle	()V
    //   350: lload 6
    //   352: lstore 4
    //   354: goto -210 -> 144
    //   357: astore 10
    //   359: aload 8
    //   361: astore 11
    //   363: aload 9
    //   365: astore 10
    //   367: iload_1
    //   368: i2l
    //   369: lstore 4
    //   371: aload 10
    //   373: astore 9
    //   375: aload 11
    //   377: astore 8
    //   379: lload 4
    //   381: invokestatic 159	android/os/SystemClock:sleep	(J)V
    //   384: iload_1
    //   385: bipush 20
    //   387: iadd
    //   388: istore_3
    //   389: aload 10
    //   391: ifnull +10 -> 401
    //   394: aload 10
    //   396: invokeinterface 147 1 0
    //   401: iload_3
    //   402: istore_1
    //   403: aload 11
    //   405: ifnull -82 -> 323
    //   408: aload 11
    //   410: invokevirtual 72	android/database/sqlite/SQLiteDatabase:close	()V
    //   413: iload_3
    //   414: istore_1
    //   415: goto -92 -> 323
    //   418: astore 11
    //   420: aload 10
    //   422: invokevirtual 317	android/os/Parcel:recycle	()V
    //   425: aload 11
    //   427: athrow
    //   428: astore 12
    //   430: aload 8
    //   432: astore 11
    //   434: aload 9
    //   436: astore 10
    //   438: aload 11
    //   440: ifnull +32 -> 472
    //   443: aload 10
    //   445: astore 9
    //   447: aload 11
    //   449: astore 8
    //   451: aload 11
    //   453: invokevirtual 162	android/database/sqlite/SQLiteDatabase:inTransaction	()Z
    //   456: ifeq +16 -> 472
    //   459: aload 10
    //   461: astore 9
    //   463: aload 11
    //   465: astore 8
    //   467: aload 11
    //   469: invokevirtual 146	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   472: aload 10
    //   474: astore 9
    //   476: aload 11
    //   478: astore 8
    //   480: aload_0
    //   481: invokevirtual 97	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   484: getfield 103	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   487: ldc_w 325
    //   490: aload 12
    //   492: invokevirtual 153	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   495: aload 10
    //   497: astore 9
    //   499: aload 11
    //   501: astore 8
    //   503: aload_0
    //   504: iconst_1
    //   505: putfield 42	com/google/android/gms/internal/gx:aST	Z
    //   508: aload 10
    //   510: ifnull +10 -> 520
    //   513: aload 10
    //   515: invokeinterface 147 1 0
    //   520: aload 11
    //   522: ifnull +464 -> 986
    //   525: aload 11
    //   527: invokevirtual 72	android/database/sqlite/SQLiteDatabase:close	()V
    //   530: goto -207 -> 323
    //   533: iload_3
    //   534: iconst_1
    //   535: if_icmpne +134 -> 669
    //   538: invokestatic 294	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   541: astore 11
    //   543: aload 11
    //   545: aload 12
    //   547: iconst_0
    //   548: aload 12
    //   550: arraylength
    //   551: invokevirtual 298	android/os/Parcel:unmarshall	([BII)V
    //   554: aload 11
    //   556: iconst_0
    //   557: invokevirtual 302	android/os/Parcel:setDataPosition	(I)V
    //   560: getstatic 330	com/google/android/gms/internal/lb:CREATOR	Landroid/os/Parcelable$Creator;
    //   563: aload 11
    //   565: invokeinterface 314 2 0
    //   570: checkcast 329	com/google/android/gms/internal/lb
    //   573: astore 10
    //   575: aload 11
    //   577: invokevirtual 317	android/os/Parcel:recycle	()V
    //   580: lload 6
    //   582: lstore 4
    //   584: aload 10
    //   586: ifnull -442 -> 144
    //   589: aload 14
    //   591: aload 10
    //   593: invokeinterface 323 2 0
    //   598: pop
    //   599: lload 6
    //   601: lstore 4
    //   603: goto -459 -> 144
    //   606: astore 10
    //   608: aload 9
    //   610: ifnull +10 -> 620
    //   613: aload 9
    //   615: invokeinterface 147 1 0
    //   620: aload 8
    //   622: ifnull +8 -> 630
    //   625: aload 8
    //   627: invokevirtual 72	android/database/sqlite/SQLiteDatabase:close	()V
    //   630: aload 10
    //   632: athrow
    //   633: astore 10
    //   635: aload_0
    //   636: invokevirtual 97	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   639: getfield 103	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   642: ldc_w 332
    //   645: invokevirtual 111	com/google/android/gms/internal/hd:bq	(Ljava/lang/String;)V
    //   648: aload 11
    //   650: invokevirtual 317	android/os/Parcel:recycle	()V
    //   653: aconst_null
    //   654: astore 10
    //   656: goto -76 -> 580
    //   659: astore 10
    //   661: aload 11
    //   663: invokevirtual 317	android/os/Parcel:recycle	()V
    //   666: aload 10
    //   668: athrow
    //   669: iload_3
    //   670: iconst_2
    //   671: if_icmpne +107 -> 778
    //   674: invokestatic 294	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   677: astore 11
    //   679: aload 11
    //   681: aload 12
    //   683: iconst_0
    //   684: aload 12
    //   686: arraylength
    //   687: invokevirtual 298	android/os/Parcel:unmarshall	([BII)V
    //   690: aload 11
    //   692: iconst_0
    //   693: invokevirtual 302	android/os/Parcel:setDataPosition	(I)V
    //   696: getstatic 335	com/google/android/gms/internal/ga:CREATOR	Landroid/os/Parcelable$Creator;
    //   699: aload 11
    //   701: invokeinterface 314 2 0
    //   706: checkcast 334	com/google/android/gms/internal/ga
    //   709: astore 10
    //   711: aload 11
    //   713: invokevirtual 317	android/os/Parcel:recycle	()V
    //   716: lload 6
    //   718: lstore 4
    //   720: aload 10
    //   722: ifnull -578 -> 144
    //   725: aload 14
    //   727: aload 10
    //   729: invokeinterface 323 2 0
    //   734: pop
    //   735: lload 6
    //   737: lstore 4
    //   739: goto -595 -> 144
    //   742: astore 10
    //   744: aload_0
    //   745: invokevirtual 97	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   748: getfield 103	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   751: ldc_w 332
    //   754: invokevirtual 111	com/google/android/gms/internal/hd:bq	(Ljava/lang/String;)V
    //   757: aload 11
    //   759: invokevirtual 317	android/os/Parcel:recycle	()V
    //   762: aconst_null
    //   763: astore 10
    //   765: goto -49 -> 716
    //   768: astore 10
    //   770: aload 11
    //   772: invokevirtual 317	android/os/Parcel:recycle	()V
    //   775: aload 10
    //   777: athrow
    //   778: aload_0
    //   779: invokevirtual 97	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   782: getfield 103	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   785: ldc_w 337
    //   788: invokevirtual 111	com/google/android/gms/internal/hd:bq	(Ljava/lang/String;)V
    //   791: lload 6
    //   793: lstore 4
    //   795: goto -651 -> 144
    //   798: aload 8
    //   800: ldc 113
    //   802: ldc_w 339
    //   805: iconst_1
    //   806: anewarray 117	java/lang/String
    //   809: dup
    //   810: iconst_0
    //   811: lload 4
    //   813: invokestatic 123	java/lang/Long:toString	(J)Ljava/lang/String;
    //   816: aastore
    //   817: invokevirtual 127	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   820: aload 14
    //   822: invokeinterface 343 1 0
    //   827: if_icmpge +16 -> 843
    //   830: aload_0
    //   831: invokevirtual 97	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   834: getfield 103	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   837: ldc_w 345
    //   840: invokevirtual 111	com/google/android/gms/internal/hd:bq	(Ljava/lang/String;)V
    //   843: aload 8
    //   845: invokevirtual 143	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   848: aload 8
    //   850: invokevirtual 146	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   853: aload 9
    //   855: ifnull +10 -> 865
    //   858: aload 9
    //   860: invokeinterface 147 1 0
    //   865: aload 8
    //   867: ifnull +8 -> 875
    //   870: aload 8
    //   872: invokevirtual 72	android/database/sqlite/SQLiteDatabase:close	()V
    //   875: aload 14
    //   877: areturn
    //   878: aload_0
    //   879: invokevirtual 97	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   882: getfield 165	com/google/android/gms/internal/hb:aTd	Lcom/google/android/gms/internal/hd;
    //   885: ldc_w 347
    //   888: invokevirtual 111	com/google/android/gms/internal/hd:bq	(Ljava/lang/String;)V
    //   891: aconst_null
    //   892: areturn
    //   893: astore 10
    //   895: aconst_null
    //   896: astore 9
    //   898: aload 12
    //   900: astore 8
    //   902: goto -294 -> 608
    //   905: astore 10
    //   907: aconst_null
    //   908: astore 9
    //   910: goto -302 -> 608
    //   913: astore 10
    //   915: goto -307 -> 608
    //   918: astore 12
    //   920: aconst_null
    //   921: astore 10
    //   923: aload 9
    //   925: astore 11
    //   927: goto -489 -> 438
    //   930: astore 12
    //   932: aconst_null
    //   933: astore 10
    //   935: aload 8
    //   937: astore 11
    //   939: goto -501 -> 438
    //   942: astore 8
    //   944: aconst_null
    //   945: astore 10
    //   947: aload 13
    //   949: astore 11
    //   951: goto -584 -> 367
    //   954: astore 9
    //   956: aconst_null
    //   957: astore 10
    //   959: aload 8
    //   961: astore 11
    //   963: goto -596 -> 367
    //   966: astore 12
    //   968: aconst_null
    //   969: astore 10
    //   971: goto -706 -> 265
    //   974: astore 12
    //   976: aconst_null
    //   977: astore 10
    //   979: aload 8
    //   981: astore 11
    //   983: goto -718 -> 265
    //   986: goto -663 -> 323
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	989	0	this	gx
    //   41	374	1	i	int
    //   43	284	2	j	int
    //   172	500	3	k	int
    //   142	670	4	l1	long
    //   162	630	6	l2	long
    //   65	871	8	localObject1	Object
    //   942	38	8	localSQLiteDatabaseLockedException1	SQLiteDatabaseLockedException
    //   53	871	9	localObject2	Object
    //   954	1	9	localSQLiteDatabaseLockedException2	SQLiteDatabaseLockedException
    //   190	156	10	localObject3	Object
    //   357	1	10	localSQLiteDatabaseLockedException3	SQLiteDatabaseLockedException
    //   365	227	10	localObject4	Object
    //   606	25	10	localObject5	Object
    //   633	1	10	localdt1	dt
    //   654	1	10	localObject6	Object
    //   659	8	10	localObject7	Object
    //   709	19	10	localga	ga
    //   742	1	10	localdt2	dt
    //   763	1	10	localObject8	Object
    //   768	8	10	localObject9	Object
    //   893	1	10	localObject10	Object
    //   905	1	10	localObject11	Object
    //   913	1	10	localObject12	Object
    //   921	57	10	localObject13	Object
    //   59	260	11	localObject14	Object
    //   330	1	11	localdt3	dt
    //   361	48	11	localObject15	Object
    //   418	8	11	localObject16	Object
    //   432	550	11	localObject17	Object
    //   56	142	12	arrayOfByte	byte[]
    //   255	29	12	localSQLiteFullException1	SQLiteFullException
    //   428	471	12	localSQLiteException1	SQLiteException
    //   918	1	12	localSQLiteException2	SQLiteException
    //   930	1	12	localSQLiteException3	SQLiteException
    //   966	1	12	localSQLiteFullException2	SQLiteFullException
    //   974	1	12	localSQLiteFullException3	SQLiteFullException
    //   50	898	13	localObject18	Object
    //   20	856	14	localArrayList	java.util.ArrayList
    // Exception table:
    //   from	to	target	type
    //   144	183	255	android/database/sqlite/SQLiteFullException
    //   187	192	255	android/database/sqlite/SQLiteFullException
    //   224	229	255	android/database/sqlite/SQLiteFullException
    //   238	248	255	android/database/sqlite/SQLiteFullException
    //   345	350	255	android/database/sqlite/SQLiteFullException
    //   420	428	255	android/database/sqlite/SQLiteFullException
    //   538	543	255	android/database/sqlite/SQLiteFullException
    //   575	580	255	android/database/sqlite/SQLiteFullException
    //   589	599	255	android/database/sqlite/SQLiteFullException
    //   648	653	255	android/database/sqlite/SQLiteFullException
    //   661	669	255	android/database/sqlite/SQLiteFullException
    //   674	679	255	android/database/sqlite/SQLiteFullException
    //   711	716	255	android/database/sqlite/SQLiteFullException
    //   725	735	255	android/database/sqlite/SQLiteFullException
    //   757	762	255	android/database/sqlite/SQLiteFullException
    //   770	778	255	android/database/sqlite/SQLiteFullException
    //   778	791	255	android/database/sqlite/SQLiteFullException
    //   798	843	255	android/database/sqlite/SQLiteFullException
    //   843	853	255	android/database/sqlite/SQLiteFullException
    //   192	224	330	com/google/android/gms/internal/dt
    //   144	183	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   187	192	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   224	229	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   238	248	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   345	350	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   420	428	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   538	543	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   575	580	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   589	599	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   648	653	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   661	669	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   674	679	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   711	716	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   725	735	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   757	762	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   770	778	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   778	791	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   798	843	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   843	853	357	android/database/sqlite/SQLiteDatabaseLockedException
    //   192	224	418	finally
    //   332	345	418	finally
    //   144	183	428	android/database/sqlite/SQLiteException
    //   187	192	428	android/database/sqlite/SQLiteException
    //   224	229	428	android/database/sqlite/SQLiteException
    //   238	248	428	android/database/sqlite/SQLiteException
    //   345	350	428	android/database/sqlite/SQLiteException
    //   420	428	428	android/database/sqlite/SQLiteException
    //   538	543	428	android/database/sqlite/SQLiteException
    //   575	580	428	android/database/sqlite/SQLiteException
    //   589	599	428	android/database/sqlite/SQLiteException
    //   648	653	428	android/database/sqlite/SQLiteException
    //   661	669	428	android/database/sqlite/SQLiteException
    //   674	679	428	android/database/sqlite/SQLiteException
    //   711	716	428	android/database/sqlite/SQLiteException
    //   725	735	428	android/database/sqlite/SQLiteException
    //   757	762	428	android/database/sqlite/SQLiteException
    //   770	778	428	android/database/sqlite/SQLiteException
    //   778	791	428	android/database/sqlite/SQLiteException
    //   798	843	428	android/database/sqlite/SQLiteException
    //   843	853	428	android/database/sqlite/SQLiteException
    //   144	183	606	finally
    //   187	192	606	finally
    //   224	229	606	finally
    //   238	248	606	finally
    //   345	350	606	finally
    //   420	428	606	finally
    //   538	543	606	finally
    //   575	580	606	finally
    //   589	599	606	finally
    //   648	653	606	finally
    //   661	669	606	finally
    //   674	679	606	finally
    //   711	716	606	finally
    //   725	735	606	finally
    //   757	762	606	finally
    //   770	778	606	finally
    //   778	791	606	finally
    //   798	843	606	finally
    //   843	853	606	finally
    //   543	575	633	com/google/android/gms/internal/dt
    //   543	575	659	finally
    //   635	648	659	finally
    //   679	711	742	com/google/android/gms/internal/dt
    //   679	711	768	finally
    //   744	757	768	finally
    //   61	67	893	finally
    //   72	77	905	finally
    //   89	139	905	finally
    //   273	288	913	finally
    //   296	301	913	finally
    //   379	384	913	finally
    //   451	459	913	finally
    //   467	472	913	finally
    //   480	495	913	finally
    //   503	508	913	finally
    //   61	67	918	android/database/sqlite/SQLiteException
    //   72	77	930	android/database/sqlite/SQLiteException
    //   89	139	930	android/database/sqlite/SQLiteException
    //   61	67	942	android/database/sqlite/SQLiteDatabaseLockedException
    //   72	77	954	android/database/sqlite/SQLiteDatabaseLockedException
    //   89	139	954	android/database/sqlite/SQLiteDatabaseLockedException
    //   61	67	966	android/database/sqlite/SQLiteFullException
    //   72	77	974	android/database/sqlite/SQLiteFullException
    //   89	139	974	android/database/sqlite/SQLiteFullException
  }
  
  protected final boolean ri()
  {
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */