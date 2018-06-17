package com.vent;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.support.d.a;
import android.support.v4.g.b;
import android.text.TextUtils;
import com.vent.d.c;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.net.URI;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import okhttp3.d;
import okhttp3.d.a;
import okhttp3.s;
import okhttp3.v;
import okhttp3.w.a;
import okhttp3.y;
import okhttp3.z;

public final class ae
{
  private static int cdA = 7500;
  static File cdc;
  static File cdd;
  static final Map<String, c> cde = new ConcurrentHashMap();
  private static d cdf;
  static Handler cdg;
  static CountDownLatch cdh;
  static Handler cdi;
  static volatile int cdj;
  static int cdk;
  static int cdl;
  static int cdm;
  private static SQLiteDatabase cdn;
  private static int cdo;
  private static int cdp;
  static SQLiteStatement cdq;
  private static boolean cdr;
  private static Random cds;
  static volatile int cdt;
  static volatile int cdu;
  static volatile int cdv;
  static volatile int cdw;
  static volatile int cdx;
  static volatile int cdy;
  static volatile int cdz;
  private static boolean started;
  
  public static void Dc()
  {
    cdr = true;
  }
  
  static void Dd()
  {
    int i = 0;
    for (;;)
    {
      if (i < 100) {
        try
        {
          c.h(eA(i));
          i += 1;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }
  }
  
  private static void De()
  {
    int i = 0;
    try
    {
      if (!eA(0).exists()) {
        while (i < 100)
        {
          eA(i).mkdirs();
          i += 1;
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  static void Df()
  {
    int i;
    int m;
    if (cdn != null)
    {
      i = cdj;
      try
      {
        m = (int)DatabaseUtils.queryNumEntries(cdn, "imagecache");
        if (m > cdA)
        {
          Cursor localCursor = cdn.query("imagecache", new String[] { "fileid" }, null, null, null, null, "time asc", "20");
          if (localCursor != null)
          {
            ??? = new b(20);
            while (localCursor.moveToNext()) {
              ((Set)???).add(Integer.valueOf(localCursor.getInt(0)));
            }
          }
        }
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    do
    {
      localException.close();
    } while (c.i((Set)???));
    b localb = new b(15);
    HashSet localHashSet = new HashSet();
    Object localObject4 = ((Set)???).iterator();
    label154:
    int n;
    if (((Iterator)localObject4).hasNext()) {
      n = ((Integer)((Iterator)localObject4).next()).intValue();
    }
    label342:
    label541:
    label546:
    for (;;)
    {
      synchronized (cde)
      {
        Iterator localIterator = cde.entrySet().iterator();
        i = 0;
        j = 1;
        int k = j;
        c localc;
        if (localIterator.hasNext())
        {
          localc = (c)((Map.Entry)localIterator.next()).getValue();
          if (localc.cdF != n) {
            break label546;
          }
          if (!localc.Dk())
          {
            if (i != 0) {
              break label541;
            }
            k = 0;
          }
        }
        else
        {
          if (k != 0)
          {
            localb.add(Integer.valueOf(n));
            if (m - localb.size() <= cdA - 15) {
              break label342;
            }
          }
          Thread.yield();
          break label154;
        }
        localc.cdL = true;
        localIterator.remove();
        localHashSet.add(localc);
        i = 1;
      }
      Object localObject2 = ((Set)localObject1).iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((c)((Iterator)localObject2).next()).destroy();
      }
      if (localb.isEmpty()) {
        break;
      }
      ??? = localb.iterator();
      localObject2 = null;
      if (((Iterator)???).hasNext())
      {
        localObject4 = (Integer)((Iterator)???).next();
        if (localObject2 != null) {
          ((StringBuilder)localObject2).append(',');
        }
        for (;;)
        {
          ((StringBuilder)localObject2).append(((Integer)localObject4).intValue());
          break;
          localObject2 = new StringBuilder("fileid in (");
        }
      }
      if (localObject2 != null) {
        cdn.delete("imagecache", ')', null);
      }
      cdx += localb.size();
      localObject2 = new Message();
      ((Message)localObject2).what = 4;
      ((Message)localObject2).obj = localb;
      cdg.sendMessage((Message)localObject2);
      localb.size();
      return;
      int j = 0;
    }
  }
  
  static void Dg()
  {
    if (cdq != null) {}
    try
    {
      cdq.close();
      cdq = null;
      if (cdn == null) {}
    }
    catch (Exception localException1)
    {
      try
      {
        cdn.close();
        cdn = null;
        return;
        localException1 = localException1;
        localException1.printStackTrace();
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          localException2.printStackTrace();
        }
      }
    }
  }
  
  static void Dh()
  {
    try
    {
      if (!cdc.exists()) {
        cdc.mkdirs();
      }
    }
    catch (Exception localException1)
    {
      try
      {
        for (;;)
        {
          Object localObject = new File(cdc, ".nomedia");
          if (!((File)localObject).exists())
          {
            localObject = new RandomAccessFile((File)localObject, "rw");
            ((RandomAccessFile)localObject).setLength(0L);
            ((RandomAccessFile)localObject).close();
          }
          cdn = b.Dj();
          try
          {
            localObject = cdn.rawQuery("select avg(fileid) from imagecache order by fileid", null);
            if (localObject != null)
            {
              ((Cursor)localObject).getCount();
              ((Cursor)localObject).close();
            }
            localObject = cdn.rawQuery("select avg(time) from imagecache order by time", null);
            if (localObject != null)
            {
              ((Cursor)localObject).getCount();
              ((Cursor)localObject).close();
            }
            localObject = cdn.rawQuery("select max(length(imageurl)) from imagecache order by imageurl", null);
            if (localObject != null)
            {
              ((Cursor)localObject).getCount();
              ((Cursor)localObject).close();
            }
            De();
          }
          catch (Exception localException3)
          {
            for (;;)
            {
              localException3.printStackTrace();
            }
          }
          return;
          localException1 = localException1;
          localException1.printStackTrace();
        }
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          localException2.printStackTrace();
        }
      }
    }
  }
  
  public static int a(Context paramContext, String paramString, int paramInt1, int paramInt2, a parama)
  {
    aG(paramContext);
    int i = paramInt1;
    if (paramInt1 == 0) {
      i = cdo;
    }
    paramInt1 = paramInt2;
    if (paramInt2 == 0) {
      paramInt1 = cdp;
    }
    paramContext = c.a(paramString, i, paramInt1, false);
    synchronized (cde)
    {
      paramString = (c)cde.get(paramContext);
      paramContext = paramString;
      if (paramString != null)
      {
        if (!paramString.Dl())
        {
          paramString.a(parama);
          paramContext = paramString;
        }
      }
      else
      {
        if (paramContext == null) {
          break label112;
        }
        parama.e(paramContext);
        parama.Di();
        return 2;
      }
      paramContext = null;
    }
    label112:
    return 0;
  }
  
  public static int a(Context paramContext, String paramString, int paramInt1, int paramInt2, boolean paramBoolean, a parama)
  {
    int j = 200;
    aG(paramContext);
    int i = paramInt1;
    if (paramInt1 == 0) {
      i = cdo;
    }
    paramInt1 = paramInt2;
    if (paramInt2 == 0) {
      paramInt1 = cdp;
    }
    paramContext = c.a(paramString, i, paramInt1, paramBoolean);
    synchronized (cde)
    {
      c localc = (c)cde.get(paramContext);
      paramContext = localc;
      if (localc != null)
      {
        if ((!localc.cdL) && (!localc.cdK))
        {
          localc.a(parama);
          paramContext = localc;
        }
      }
      else
      {
        if (paramContext == null) {
          break label149;
        }
        parama.e(paramContext);
        if (!paramContext.cdJ) {
          break label147;
        }
        cdt += 1;
        parama.Di();
        return 2;
      }
      paramContext = null;
    }
    label147:
    return 1;
    label149:
    paramContext = new c(paramString, i, paramInt1, paramBoolean);
    paramContext.a(parama);
    parama.e(paramContext);
    cde.put(paramContext.cdE, paramContext);
    if (TextUtils.isEmpty(paramString))
    {
      parama.Di();
      return 2;
    }
    if (!paramBoolean)
    {
      if (paramContext.cdB != 0)
      {
        paramInt1 = paramContext.cdB;
        paramInt2 = j;
        if (paramContext.cdC != 0) {
          paramInt2 = paramContext.cdC;
        }
        paramContext.cdH = (paramInt1 * paramInt2 * 4);
        cdj += paramContext.cdH;
      }
    }
    else {
      if ((paramString == null) || (!paramString.startsWith("file:"))) {
        break label359;
      }
    }
    for (;;)
    {
      try
      {
        paramContext.filename = new URI(paramString).getPath();
        if (paramBoolean)
        {
          paramContext.cdJ = true;
          paramContext.Dm();
          return 1;
          paramInt1 = 200;
        }
      }
      catch (Exception parama)
      {
        parama.printStackTrace();
        paramContext.filename = paramString.substring(5);
        continue;
        paramString = new Message();
        paramString.what = 1;
        paramString.obj = paramContext;
        cdg.sendMessageAtFrontOfQueue(paramString);
        continue;
      }
      label359:
      paramString = new Message();
      paramString.what = 1;
      paramString.obj = paramContext;
      cdg.sendMessage(paramString);
    }
  }
  
  static void a(c paramc)
  {
    if (paramc.imageUrl == null) {}
    for (;;)
    {
      return;
      if (cdn != null) {}
      try
      {
        Object localObject = cdn;
        String str = paramc.imageUrl;
        localObject = ((SQLiteDatabase)localObject).query("imagecache", new String[] { "fileid", "time" }, "imageurl=?", new String[] { str }, null, null, null, "1");
        if (localObject != null)
        {
          if (((Cursor)localObject).moveToFirst())
          {
            paramc.cdF = ((Cursor)localObject).getInt(0);
            paramc.time = ((Cursor)localObject).getInt(1);
          }
          ((Cursor)localObject).close();
        }
        if (paramc.cdF == -1) {
          paramc.time = 0;
        }
      }
      catch (Exception localException1)
      {
        try
        {
          if (cdq != null)
          {
            cdq.clearBindings();
            cdq.bindLong(1, paramc.time);
            cdq.bindString(2, paramc.imageUrl);
            paramc.cdF = ((int)cdq.executeInsert());
          }
          if (paramc.cdF < 0) {
            continue;
          }
          paramc.filename = eB(paramc.cdF).getAbsolutePath();
          return;
          localException1 = localException1;
          localException1.printStackTrace();
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            localException2.printStackTrace();
          }
        }
      }
    }
  }
  
  static void a(boolean paramBoolean, String paramString)
  {
    Message localMessage;
    if (cdg != null)
    {
      localMessage = new Message();
      localMessage.what = 5;
      localMessage.obj = paramString;
      if (!paramBoolean) {
        break label44;
      }
    }
    label44:
    for (int i = 1;; i = 0)
    {
      localMessage.arg1 = i;
      cdg.sendMessage(localMessage);
      return;
    }
  }
  
  /* Error */
  static void aG(Context paramContext)
  {
    // Byte code:
    //   0: getstatic 433	com/vent/ae:started	Z
    //   3: ifne +638 -> 641
    //   6: iconst_1
    //   7: putstatic 433	com/vent/ae:started	Z
    //   10: aconst_null
    //   11: putstatic 435	com/vent/ae:cdf	Lcom/vent/ae$d;
    //   14: aconst_null
    //   15: putstatic 253	com/vent/ae:cdg	Landroid/os/Handler;
    //   18: aconst_null
    //   19: putstatic 437	com/vent/ae:cdi	Landroid/os/Handler;
    //   22: iconst_0
    //   23: putstatic 439	com/vent/ae:cdl	I
    //   26: iconst_0
    //   27: putstatic 105	com/vent/ae:cdj	I
    //   30: invokestatic 445	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   33: invokevirtual 448	java/lang/Runtime:maxMemory	()J
    //   36: l2i
    //   37: bipush 12
    //   39: idiv
    //   40: ldc_w 449
    //   43: invokestatic 455	java/lang/Math:min	(II)I
    //   46: ldc_w 456
    //   49: invokestatic 459	java/lang/Math:max	(II)I
    //   52: putstatic 461	com/vent/ae:cdk	I
    //   55: new 463	java/util/Random
    //   58: dup
    //   59: invokespecial 464	java/util/Random:<init>	()V
    //   62: putstatic 466	com/vent/ae:cds	Ljava/util/Random;
    //   65: aload_0
    //   66: invokevirtual 472	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   69: invokevirtual 478	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   72: astore_3
    //   73: aload_3
    //   74: getfield 483	android/util/DisplayMetrics:widthPixels	I
    //   77: putstatic 310	com/vent/ae:cdo	I
    //   80: aload_3
    //   81: getfield 486	android/util/DisplayMetrics:heightPixels	I
    //   84: putstatic 312	com/vent/ae:cdp	I
    //   87: getstatic 74	com/vent/ae:cdr	Z
    //   90: ifeq +27 -> 117
    //   93: aload_0
    //   94: invokevirtual 490	android/content/Context:getFilesDir	()Ljava/io/File;
    //   97: astore_3
    //   98: aload_3
    //   99: ifnull +18 -> 117
    //   102: aload_3
    //   103: invokevirtual 493	java/io/File:getFreeSpace	()J
    //   106: ldc2_w 494
    //   109: lcmp
    //   110: ifle +7 -> 117
    //   113: iconst_0
    //   114: putstatic 74	com/vent/ae:cdr	Z
    //   117: getstatic 74	com/vent/ae:cdr	Z
    //   120: ifeq +530 -> 650
    //   123: invokestatic 500	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   126: ldc_w 502
    //   129: invokevirtual 505	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   132: ifeq +518 -> 650
    //   135: aload_0
    //   136: aconst_null
    //   137: invokevirtual 509	android/content/Context:getExternalFilesDir	(Ljava/lang/String;)Ljava/io/File;
    //   140: astore_3
    //   141: aload_3
    //   142: ifnonnull +257 -> 399
    //   145: ldc_w 511
    //   148: invokestatic 514	com/vent/d/c:eu	(Ljava/lang/String;)V
    //   151: iconst_0
    //   152: istore_1
    //   153: aload_3
    //   154: astore 4
    //   156: aload_3
    //   157: ifnonnull +24 -> 181
    //   160: getstatic 519	android/os/Build$VERSION:SDK_INT	I
    //   163: bipush 21
    //   165: if_icmplt +303 -> 468
    //   168: aload_0
    //   169: invokevirtual 522	android/content/Context:getNoBackupFilesDir	()Ljava/io/File;
    //   172: astore_3
    //   173: aload_3
    //   174: invokevirtual 100	java/io/File:mkdirs	()Z
    //   177: pop
    //   178: aload_3
    //   179: astore 4
    //   181: aload 4
    //   183: invokevirtual 493	java/io/File:getFreeSpace	()J
    //   186: ldc2_w 494
    //   189: lcmp
    //   190: ifge +9 -> 199
    //   193: sipush 2500
    //   196: putstatic 70	com/vent/ae:cdA	I
    //   199: new 93	java/io/File
    //   202: dup
    //   203: aload 4
    //   205: ldc_w 524
    //   208: invokespecial 274	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   211: putstatic 269	com/vent/ae:cdc	Ljava/io/File;
    //   214: new 93	java/io/File
    //   217: dup
    //   218: getstatic 269	com/vent/ae:cdc	Ljava/io/File;
    //   221: ldc_w 526
    //   224: invokespecial 274	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   227: putstatic 528	com/vent/ae:cdd	Ljava/io/File;
    //   230: getstatic 269	com/vent/ae:cdc	Ljava/io/File;
    //   233: invokevirtual 97	java/io/File:exists	()Z
    //   236: ifne +37 -> 273
    //   239: iload_1
    //   240: ifeq +244 -> 484
    //   243: new 93	java/io/File
    //   246: dup
    //   247: aload_0
    //   248: invokevirtual 531	android/content/Context:getExternalCacheDir	()Ljava/io/File;
    //   251: ldc_w 524
    //   254: invokespecial 274	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   257: astore_0
    //   258: aload_0
    //   259: invokevirtual 97	java/io/File:exists	()Z
    //   262: ifeq +11 -> 273
    //   265: aload_0
    //   266: getstatic 269	com/vent/ae:cdc	Ljava/io/File;
    //   269: invokevirtual 534	java/io/File:renameTo	(Ljava/io/File;)Z
    //   272: pop
    //   273: new 93	java/io/File
    //   276: dup
    //   277: aload 4
    //   279: ldc_w 526
    //   282: invokespecial 274	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   285: invokevirtual 97	java/io/File:exists	()Z
    //   288: ifeq +296 -> 584
    //   291: iconst_0
    //   292: invokestatic 81	com/vent/ae:eA	(I)Ljava/io/File;
    //   295: invokevirtual 97	java/io/File:exists	()Z
    //   298: ifne +286 -> 584
    //   301: new 93	java/io/File
    //   304: dup
    //   305: aload 4
    //   307: ldc_w 526
    //   310: invokespecial 274	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   313: getstatic 528	com/vent/ae:cdd	Ljava/io/File;
    //   316: invokevirtual 534	java/io/File:renameTo	(Ljava/io/File;)Z
    //   319: pop
    //   320: new 93	java/io/File
    //   323: dup
    //   324: aload 4
    //   326: ldc_w 524
    //   329: invokespecial 274	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   332: invokevirtual 538	java/io/File:listFiles	()[Ljava/io/File;
    //   335: astore_0
    //   336: invokestatic 303	com/vent/ae:De	()V
    //   339: aload_0
    //   340: ifnull +244 -> 584
    //   343: aload_0
    //   344: arraylength
    //   345: istore_2
    //   346: iconst_0
    //   347: istore_1
    //   348: iload_1
    //   349: iload_2
    //   350: if_icmpge +234 -> 584
    //   353: aload_0
    //   354: iload_1
    //   355: aaload
    //   356: astore_3
    //   357: aload_3
    //   358: invokevirtual 541	java/io/File:getName	()Ljava/lang/String;
    //   361: astore 4
    //   363: aload 4
    //   365: ldc_w 543
    //   368: invokevirtual 546	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   371: ifne +21 -> 392
    //   374: aload_3
    //   375: aload 4
    //   377: bipush 10
    //   379: invokestatic 549	java/lang/Integer:valueOf	(Ljava/lang/String;I)Ljava/lang/Integer;
    //   382: invokevirtual 180	java/lang/Integer:intValue	()I
    //   385: invokestatic 422	com/vent/ae:eB	(I)Ljava/io/File;
    //   388: invokevirtual 534	java/io/File:renameTo	(Ljava/io/File;)Z
    //   391: pop
    //   392: iload_1
    //   393: iconst_1
    //   394: iadd
    //   395: istore_1
    //   396: goto -48 -> 348
    //   399: aload_3
    //   400: invokevirtual 97	java/io/File:exists	()Z
    //   403: ifne +8 -> 411
    //   406: aload_3
    //   407: invokevirtual 100	java/io/File:mkdirs	()Z
    //   410: pop
    //   411: aload_3
    //   412: invokevirtual 97	java/io/File:exists	()Z
    //   415: ifne +16 -> 431
    //   418: ldc_w 551
    //   421: invokestatic 514	com/vent/d/c:eu	(Ljava/lang/String;)V
    //   424: aconst_null
    //   425: astore_3
    //   426: iconst_0
    //   427: istore_1
    //   428: goto -275 -> 153
    //   431: aload_3
    //   432: invokestatic 554	com/vent/d/c:isExternalStorageEmulated	(Ljava/io/File;)Z
    //   435: ifeq +10 -> 445
    //   438: aconst_null
    //   439: astore_3
    //   440: iconst_0
    //   441: istore_1
    //   442: goto -289 -> 153
    //   445: aload_3
    //   446: invokevirtual 493	java/io/File:getFreeSpace	()J
    //   449: ldc2_w 494
    //   452: lcmp
    //   453: ifge +10 -> 463
    //   456: aconst_null
    //   457: astore_3
    //   458: iconst_0
    //   459: istore_1
    //   460: goto -307 -> 153
    //   463: iconst_1
    //   464: istore_1
    //   465: goto -312 -> 153
    //   468: aload_0
    //   469: invokevirtual 490	android/content/Context:getFilesDir	()Ljava/io/File;
    //   472: astore_3
    //   473: goto -300 -> 173
    //   476: astore_0
    //   477: aload_0
    //   478: invokevirtual 90	java/lang/Exception:printStackTrace	()V
    //   481: goto -208 -> 273
    //   484: new 93	java/io/File
    //   487: dup
    //   488: aload_0
    //   489: invokevirtual 557	android/content/Context:getCacheDir	()Ljava/io/File;
    //   492: ldc_w 524
    //   495: invokespecial 274	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   498: astore_3
    //   499: aload_3
    //   500: invokevirtual 97	java/io/File:exists	()Z
    //   503: ifeq +11 -> 514
    //   506: aload_3
    //   507: getstatic 269	com/vent/ae:cdc	Ljava/io/File;
    //   510: invokevirtual 534	java/io/File:renameTo	(Ljava/io/File;)Z
    //   513: pop
    //   514: getstatic 519	android/os/Build$VERSION:SDK_INT	I
    //   517: bipush 21
    //   519: if_icmplt -246 -> 273
    //   522: new 93	java/io/File
    //   525: dup
    //   526: aload_0
    //   527: invokevirtual 490	android/content/Context:getFilesDir	()Ljava/io/File;
    //   530: ldc_w 524
    //   533: invokespecial 274	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   536: astore_0
    //   537: aload_0
    //   538: invokevirtual 97	java/io/File:exists	()Z
    //   541: ifeq -268 -> 273
    //   544: aload_0
    //   545: getstatic 269	com/vent/ae:cdc	Ljava/io/File;
    //   548: invokevirtual 534	java/io/File:renameTo	(Ljava/io/File;)Z
    //   551: pop
    //   552: goto -279 -> 273
    //   555: astore_0
    //   556: aload_0
    //   557: invokevirtual 90	java/lang/Exception:printStackTrace	()V
    //   560: goto -287 -> 273
    //   563: astore_3
    //   564: aload_3
    //   565: invokevirtual 90	java/lang/Exception:printStackTrace	()V
    //   568: goto -54 -> 514
    //   571: astore_3
    //   572: aload_3
    //   573: invokevirtual 90	java/lang/Exception:printStackTrace	()V
    //   576: goto -184 -> 392
    //   579: astore_0
    //   580: aload_0
    //   581: invokevirtual 90	java/lang/Exception:printStackTrace	()V
    //   584: getstatic 435	com/vent/ae:cdf	Lcom/vent/ae$d;
    //   587: ifnonnull +54 -> 641
    //   590: new 18	com/vent/ae$e
    //   593: dup
    //   594: invokespecial 558	com/vent/ae$e:<init>	()V
    //   597: putstatic 437	com/vent/ae:cdi	Landroid/os/Handler;
    //   600: new 560	java/util/concurrent/CountDownLatch
    //   603: dup
    //   604: iconst_1
    //   605: invokespecial 561	java/util/concurrent/CountDownLatch:<init>	(I)V
    //   608: putstatic 563	com/vent/ae:cdh	Ljava/util/concurrent/CountDownLatch;
    //   611: new 15	com/vent/ae$d
    //   614: dup
    //   615: invokespecial 564	com/vent/ae$d:<init>	()V
    //   618: astore_0
    //   619: aload_0
    //   620: putstatic 435	com/vent/ae:cdf	Lcom/vent/ae$d;
    //   623: aload_0
    //   624: invokevirtual 567	com/vent/ae$d:start	()V
    //   627: getstatic 563	com/vent/ae:cdh	Ljava/util/concurrent/CountDownLatch;
    //   630: invokevirtual 570	java/util/concurrent/CountDownLatch:await	()V
    //   633: getstatic 253	com/vent/ae:cdg	Landroid/os/Handler;
    //   636: iconst_3
    //   637: invokevirtual 574	android/os/Handler:sendEmptyMessage	(I)Z
    //   640: pop
    //   641: return
    //   642: astore_0
    //   643: aload_0
    //   644: invokevirtual 575	java/lang/InterruptedException:printStackTrace	()V
    //   647: goto -14 -> 633
    //   650: aconst_null
    //   651: astore_3
    //   652: iconst_0
    //   653: istore_1
    //   654: goto -501 -> 153
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	657	0	paramContext	Context
    //   152	502	1	i	int
    //   345	6	2	j	int
    //   72	435	3	localObject1	Object
    //   563	2	3	localException1	Exception
    //   571	2	3	localException2	Exception
    //   651	1	3	localObject2	Object
    //   154	222	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   243	273	476	java/lang/Exception
    //   514	552	555	java/lang/Exception
    //   484	514	563	java/lang/Exception
    //   357	392	571	java/lang/Exception
    //   301	339	579	java/lang/Exception
    //   343	346	579	java/lang/Exception
    //   572	576	579	java/lang/Exception
    //   627	633	642	java/lang/InterruptedException
  }
  
  static boolean b(c paramc)
  {
    Object localObject4 = null;
    localObject3 = null;
    boolean bool3 = false;
    bool4 = false;
    bool1 = false;
    boolean bool2 = bool1;
    if (paramc.filename != null)
    {
      if (paramc.imageUrl == null) {
        bool2 = bool1;
      }
    }
    else {
      return bool2;
    }
    cdv += 1;
    File localFile = new File(paramc.filename);
    for (;;)
    {
      try
      {
        localObject1 = new w.a().a("GET", null);
        localObject2 = new d.a();
        ((d.a)localObject2).noStore = true;
        localObject2 = ((d.a)localObject2).LZ().toString();
        if (((String)localObject2).isEmpty())
        {
          localObject1 = ((w.a)localObject1).fz("Cache-Control");
          paramc = ((w.a)localObject1).Z("Accept-Encoding", "identity").fy(paramc.imageUrl);
          localObject1 = v.a(az.cgQ, paramc.MH(), false).Ma();
        }
      }
      catch (Exception paramc)
      {
        Object localObject2;
        z localz;
        paramc = null;
        Object localObject1 = null;
        continue;
        int i = 0;
        paramc = (c)localObject3;
        continue;
        i = 0;
        continue;
      }
      try
      {
        localz = ((y)localObject1).cZu;
        if (localz == null)
        {
          paramc = null;
          if ((((y)localObject1).code < 200) || (((y)localObject1).code >= 300)) {
            continue;
          }
          i = 1;
          localObject2 = localObject4;
          bool1 = bool3;
          if (i != 0) {
            if ((paramc != null) && (!paramc.type.equals("image")))
            {
              localObject2 = localObject4;
              bool1 = bool3;
              if (paramc.type.equals("application"))
              {
                localObject2 = localObject4;
                bool1 = bool3;
                if (!paramc.subtype.equals("octet-stream")) {}
              }
            }
            else
            {
              if (localz == null) {
                continue;
              }
              if (!localFile.exists()) {
                continue;
              }
              localFile.delete();
              cdy += 1;
              if (!localFile.createNewFile()) {
                continue;
              }
              localObject2 = new FileOutputStream(localFile);
            }
          }
        }
      }
      catch (Exception paramc)
      {
        paramc = (c)localObject1;
        localObject1 = null;
        localObject2 = localObject1;
        bool1 = bool4;
        continue;
      }
      try
      {
        bool1 = c.b(localz.LY().Ks(), (OutputStream)localObject2);
        if (!bool1) {
          continue;
        }
        i = 1;
        paramc = (c)localObject2;
      }
      catch (Exception paramc)
      {
        paramc = (c)localObject1;
        localObject1 = localObject2;
        continue;
        i = 0;
        paramc = (c)localObject2;
        continue;
      }
      localObject2 = paramc;
      bool1 = bool3;
      if (i != 0)
      {
        bool1 = true;
        localObject2 = paramc;
      }
      paramc = (c)localObject1;
      c.c((Closeable)localObject2);
      c.c(paramc);
      bool2 = bool1;
      if (bool1) {
        break;
      }
      localFile.delete();
      cdy += 1;
      return bool1;
      localObject1 = ((w.a)localObject1).Z("Cache-Control", (String)localObject2);
      continue;
      paramc = localz.LX();
      continue;
      localFile.getParentFile().mkdirs();
    }
  }
  
  static void bc(boolean paramBoolean)
  {
    int i;
    if (paramBoolean) {
      i = cdk / 10;
    }
    for (;;)
    {
      int j;
      if (paramBoolean)
      {
        j = 10;
        if ((cdj > i) || (cde.size() > 100))
        {
          int k = cdj;
          i = i * 90 / 100;
          j = j * 90 / 100;
        }
      }
      synchronized (cde)
      {
        cde.size();
        Iterator localIterator = cde.entrySet().iterator();
        do
        {
          c localc;
          do
          {
            if (!localIterator.hasNext()) {
              break;
            }
            localc = (c)((Map.Entry)localIterator.next()).getValue();
          } while (!localc.Dk());
          localc.cdL = true;
          localIterator.remove();
          localc.destroy();
        } while ((cdj >= i) || (cde.size() >= j));
        cde.size();
        i = cdj;
        return;
        i = cdk;
        continue;
        j = 100;
      }
    }
  }
  
  static boolean c(c paramc)
  {
    if (paramc.filename == null) {
      return false;
    }
    cdw += 1;
    for (;;)
    {
      int i;
      int j;
      int m;
      int k;
      try
      {
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        localOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
        localOptions.inSampleSize = 1;
        localOptions.inJustDecodeBounds = true;
        localOptions.inScaled = false;
        BitmapFactory.decodeFile(paramc.filename, localOptions);
        if (localOptions.outWidth != 0)
        {
          i = paramc.cdB;
          j = paramc.cdC;
          m = new a(paramc.filename).s("Orientation");
          localObject = new Matrix();
        }
        int i1;
        switch (m)
        {
        case 6: 
          k = localOptions.outWidth / localOptions.inSampleSize;
          int n = localOptions.outHeight / localOptions.inSampleSize;
          if ((k > j) || (n > i))
          {
            i1 = localOptions.inSampleSize * 2;
            int i2 = localOptions.outWidth / i1;
            int i3 = localOptions.outHeight / i1;
            if ((i2 > j) && (i3 > i)) {
              continue;
            }
            i *= j;
            if (Math.abs(i2 * i3 - i) < Math.abs(k * n - i) / 2) {
              localOptions.inSampleSize = i1;
            }
          }
          localOptions.inJustDecodeBounds = false;
          paramc.cdG = BitmapFactory.decodeFile(paramc.filename, localOptions);
          if ((paramc.cdG != null) && ((m != 0) || (localOptions.inSampleSize != 1))) {
            break label459;
          }
          if (paramc.cdG == null) {
            break label503;
          }
          if (TextUtils.equals(localOptions.outMimeType, "image/jpeg")) {
            paramc.cdG.setHasAlpha(false);
          }
          paramc.cdG.prepareToDraw();
          break label503;
          ((Matrix)localObject).postRotate(90.0F);
          break;
        case 3: 
          ((Matrix)localObject).postRotate(180.0F);
          k = i;
          i = j;
          j = k;
          break;
        case 8: 
          ((Matrix)localObject).postRotate(270.0F);
          continue;
          localOptions.inSampleSize = i1;
          continue;
          return false;
        }
      }
      catch (Exception paramc)
      {
        paramc.printStackTrace();
      }
      Object localObject = Bitmap.createBitmap(paramc.cdG, 0, 0, paramc.cdG.getWidth(), paramc.cdG.getHeight(), (Matrix)localObject, true);
      if (localObject != null)
      {
        paramc.cdG.recycle();
        paramc.cdG = ((Bitmap)localObject);
        continue;
        k = i;
        i = j;
        j = k;
        continue;
        label459:
        switch (m)
        {
        }
      }
    }
    label503:
    return true;
  }
  
  static void d(c paramc)
  {
    if (cdn == null) {}
    int i;
    do
    {
      return;
      i = (int)(System.currentTimeMillis() / 1000L);
    } while ((paramc.time + 43200 + cds.nextInt(43200) >= i) || (cdn == null));
    paramc.time = i;
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("time", Integer.valueOf(i + cds.nextInt(86400)));
      cdn.update("imagecache", localContentValues, "fileid=?", new String[] { String.valueOf(paramc.cdF) });
      return;
    }
    catch (Exception paramc)
    {
      paramc.printStackTrace();
    }
  }
  
  static void dW(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (started)) {
      synchronized (cde)
      {
        cde.size();
        int i = cdj;
        Iterator localIterator = cde.entrySet().iterator();
        while (localIterator.hasNext())
        {
          c localc = (c)((Map.Entry)localIterator.next()).getValue();
          if ((TextUtils.equals(localc.imageUrl, paramString)) && (localc.Dk()))
          {
            localc.cdL = true;
            localIterator.remove();
            localc.destroy();
          }
        }
      }
    }
  }
  
  public static void done()
  {
    if (cdf != null)
    {
      Message localMessage = new Message();
      localMessage.what = 0;
      cdg.sendMessageAtFrontOfQueue(localMessage);
    }
    try
    {
      cdf.join();
      cdf = null;
      cdg = null;
      cdi = null;
      started = false;
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
  
  private static File eA(int paramInt)
  {
    paramInt %= 100;
    File localFile = cdc;
    if (paramInt < 10) {}
    for (String str = "0" + String.valueOf(paramInt);; str = String.valueOf(paramInt)) {
      return new File(localFile, str);
    }
  }
  
  static File eB(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramInt % 100;
    if (i < 10) {
      localStringBuilder.append('0');
    }
    localStringBuilder.append(i).append(File.separatorChar).append(paramInt);
    return new File(cdc, localStringBuilder.toString());
  }
  
  public static abstract interface a
  {
    public abstract void Di();
    
    public abstract void e(ae.c paramc);
  }
  
  static final class b
  {
    /* Error */
    static SQLiteDatabase Dj()
    {
      // Byte code:
      //   0: iconst_0
      //   1: istore_0
      //   2: aconst_null
      //   3: astore_1
      //   4: getstatic 15	com/vent/ae:cdd	Ljava/io/File;
      //   7: invokevirtual 21	java/io/File:getAbsolutePath	()Ljava/lang/String;
      //   10: aconst_null
      //   11: ldc 22
      //   13: invokestatic 28	android/database/sqlite/SQLiteDatabase:openDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
      //   16: astore_2
      //   17: aload_2
      //   18: ldc 30
      //   20: aconst_null
      //   21: invokevirtual 34	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
      //   24: astore_1
      //   25: aload_1
      //   26: ifnull +16 -> 42
      //   29: aload_1
      //   30: invokeinterface 40 1 0
      //   35: pop
      //   36: aload_1
      //   37: invokeinterface 44 1 0
      //   42: aload_2
      //   43: ldc 46
      //   45: aconst_null
      //   46: invokevirtual 34	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
      //   49: astore_1
      //   50: aload_1
      //   51: ifnull +16 -> 67
      //   54: aload_1
      //   55: invokeinterface 40 1 0
      //   60: pop
      //   61: aload_1
      //   62: invokeinterface 44 1 0
      //   67: aload_2
      //   68: astore_1
      //   69: aload_2
      //   70: invokevirtual 49	android/database/sqlite/SQLiteDatabase:getVersion	()I
      //   73: iconst_5
      //   74: if_icmpeq +39 -> 113
      //   77: aload_2
      //   78: astore_1
      //   79: invokestatic 52	com/vent/ae:Dd	()V
      //   82: aload_2
      //   83: invokevirtual 55	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
      //   86: aload_2
      //   87: ldc 57
      //   89: invokevirtual 61	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
      //   92: aload_2
      //   93: ldc 63
      //   95: invokevirtual 61	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
      //   98: aload_2
      //   99: iconst_5
      //   100: invokevirtual 67	android/database/sqlite/SQLiteDatabase:setVersion	(I)V
      //   103: aload_2
      //   104: invokevirtual 70	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
      //   107: aload_2
      //   108: astore_1
      //   109: aload_2
      //   110: invokevirtual 73	android/database/sqlite/SQLiteDatabase:endTransaction	()V
      //   113: aload_2
      //   114: invokevirtual 55	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
      //   117: aload_2
      //   118: ldc 75
      //   120: invokevirtual 61	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
      //   123: aload_2
      //   124: ldc 77
      //   126: invokevirtual 61	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
      //   129: aload_2
      //   130: invokevirtual 70	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
      //   133: aload_2
      //   134: astore_1
      //   135: aload_2
      //   136: invokevirtual 73	android/database/sqlite/SQLiteDatabase:endTransaction	()V
      //   139: aload_2
      //   140: astore_1
      //   141: aload_2
      //   142: ldc 79
      //   144: invokevirtual 83	android/database/sqlite/SQLiteDatabase:compileStatement	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
      //   147: putstatic 87	com/vent/ae:cdq	Landroid/database/sqlite/SQLiteStatement;
      //   150: aload_2
      //   151: areturn
      //   152: astore_3
      //   153: aload_2
      //   154: astore_1
      //   155: aload_3
      //   156: invokevirtual 90	java/lang/Exception:printStackTrace	()V
      //   159: goto -92 -> 67
      //   162: astore_2
      //   163: iload_0
      //   164: ifne +87 -> 251
      //   167: aload_1
      //   168: astore_2
      //   169: aload_1
      //   170: ifnull +9 -> 179
      //   173: aload_1
      //   174: invokevirtual 91	android/database/sqlite/SQLiteDatabase:close	()V
      //   177: aconst_null
      //   178: astore_2
      //   179: getstatic 15	com/vent/ae:cdd	Ljava/io/File;
      //   182: invokevirtual 95	java/io/File:delete	()Z
      //   185: pop
      //   186: iconst_1
      //   187: istore_0
      //   188: aload_2
      //   189: astore_1
      //   190: goto -186 -> 4
      //   193: astore_1
      //   194: aload_1
      //   195: invokevirtual 90	java/lang/Exception:printStackTrace	()V
      //   198: aload_2
      //   199: astore_1
      //   200: aload_2
      //   201: invokevirtual 73	android/database/sqlite/SQLiteDatabase:endTransaction	()V
      //   204: goto -91 -> 113
      //   207: astore_3
      //   208: aload_2
      //   209: astore_1
      //   210: aload_2
      //   211: invokevirtual 73	android/database/sqlite/SQLiteDatabase:endTransaction	()V
      //   214: aload_2
      //   215: astore_1
      //   216: aload_3
      //   217: athrow
      //   218: astore_1
      //   219: aload_1
      //   220: invokevirtual 90	java/lang/Exception:printStackTrace	()V
      //   223: aload_2
      //   224: astore_1
      //   225: aload_2
      //   226: invokevirtual 73	android/database/sqlite/SQLiteDatabase:endTransaction	()V
      //   229: goto -90 -> 139
      //   232: astore_3
      //   233: aload_2
      //   234: astore_1
      //   235: aload_2
      //   236: invokevirtual 73	android/database/sqlite/SQLiteDatabase:endTransaction	()V
      //   239: aload_2
      //   240: astore_1
      //   241: aload_3
      //   242: athrow
      //   243: astore_1
      //   244: aload_1
      //   245: invokevirtual 90	java/lang/Exception:printStackTrace	()V
      //   248: goto -71 -> 177
      //   251: aload_1
      //   252: areturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   1	187	0	i	int
      //   3	187	1	localObject1	Object
      //   193	2	1	localException1	Exception
      //   199	17	1	localObject2	Object
      //   218	2	1	localException2	Exception
      //   224	17	1	localObject3	Object
      //   243	9	1	localException3	Exception
      //   16	138	2	localSQLiteDatabase	SQLiteDatabase
      //   162	1	2	localException4	Exception
      //   168	72	2	localObject4	Object
      //   152	4	3	localException5	Exception
      //   207	10	3	localObject5	Object
      //   232	10	3	localObject6	Object
      // Exception table:
      //   from	to	target	type
      //   17	25	152	java/lang/Exception
      //   29	42	152	java/lang/Exception
      //   42	50	152	java/lang/Exception
      //   54	67	152	java/lang/Exception
      //   4	17	162	java/lang/Exception
      //   69	77	162	java/lang/Exception
      //   79	82	162	java/lang/Exception
      //   109	113	162	java/lang/Exception
      //   135	139	162	java/lang/Exception
      //   141	150	162	java/lang/Exception
      //   155	159	162	java/lang/Exception
      //   200	204	162	java/lang/Exception
      //   210	214	162	java/lang/Exception
      //   216	218	162	java/lang/Exception
      //   225	229	162	java/lang/Exception
      //   235	239	162	java/lang/Exception
      //   241	243	162	java/lang/Exception
      //   82	107	193	java/lang/Exception
      //   82	107	207	finally
      //   194	198	207	finally
      //   113	133	218	java/lang/Exception
      //   113	133	232	finally
      //   219	223	232	finally
      //   173	177	243	java/lang/Exception
    }
  }
  
  public static final class c
  {
    final int cdB;
    final int cdC;
    final boolean cdD;
    final String cdE;
    int cdF;
    Bitmap cdG;
    int cdH;
    final Set<ae.a> cdI = new b(1);
    volatile boolean cdJ;
    volatile boolean cdK;
    volatile boolean cdL;
    String filename;
    final String imageUrl;
    int time;
    
    c(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      this.imageUrl = paramString;
      this.cdB = paramInt1;
      this.cdC = paramInt2;
      this.cdD = paramBoolean;
      this.cdF = -1;
      this.cdE = a(paramString, paramInt1, paramInt2, paramBoolean);
    }
    
    static String a(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      return paramString + ' ' + paramInt1 + ' ' + paramInt2 + ' ' + paramBoolean;
    }
    
    final boolean Dk()
    {
      if (this.cdJ) {
        synchronized (this.cdI)
        {
          boolean bool = this.cdI.isEmpty();
          return bool;
        }
      }
      return false;
    }
    
    final boolean Dl()
    {
      if ((this.cdL) || (this.cdK)) {}
      File localFile;
      do
      {
        do
        {
          do
          {
            do
            {
              return true;
            } while (!this.cdJ);
            if (this.cdD) {
              break;
            }
          } while (this.cdG == null);
          return false;
        } while (this.filename == null);
        localFile = new File(this.filename);
      } while ((!localFile.exists()) || (localFile.length() == 0L));
      return false;
    }
    
    final void Dm()
    {
      synchronized (this.cdI)
      {
        b localb = new b(this.cdI);
        ??? = localb.iterator();
        if (((Iterator)???).hasNext()) {
          ((ae.a)((Iterator)???).next()).Di();
        }
      }
    }
    
    final void a(ae.a parama)
    {
      if (this.cdK) {
        throw new AssertionError("attaching to a canceled bmp");
      }
      synchronized (this.cdI)
      {
        this.cdI.add(parama);
        return;
      }
    }
    
    public final void b(ae.a parama)
    {
      synchronized (this.cdI)
      {
        this.cdI.remove(parama);
        boolean bool = this.cdI.isEmpty();
        if ((bool) && ((Dl()) || (ae.cdj > ae.cdk) || (ae.cde.size() > 100))) {
          destroy();
        }
        return;
      }
    }
    
    final void destroy()
    {
      Bitmap localBitmap = null;
      this.cdK = true;
      try
      {
        int i = this.cdH;
        this.cdH = 0;
        boolean bool = this.cdL;
        this.cdL = true;
        if (this.cdJ)
        {
          localBitmap = this.cdG;
          this.cdG = null;
        }
        if (localBitmap != null) {
          localBitmap.recycle();
        }
        ae.cdj -= i;
        if (!bool) {
          ae.cde.remove(this.cdE);
        }
        return;
      }
      finally {}
    }
  }
  
  static final class d
    extends Thread
  {
    d()
    {
      super();
    }
    
    public final void run()
    {
      Looper.prepare();
      Process.setThreadPriority(19);
      ae.cdg = new ae.f();
      ae.cdh.countDown();
      Looper.loop();
    }
  }
  
  static final class e
    extends Handler
  {
    public final void handleMessage(Message arg1)
    {
      switch (???.what)
      {
      }
      for (;;)
      {
        return;
        ae.c localc = (ae.c)???.obj;
        if (!localc.Dl())
        {
          localc.Dm();
          return;
        }
        if (!localc.cdL)
        {
          localc.cdL = true;
          ae.cde.remove(localc.cdE);
        }
        localc.Dm();
        synchronized (localc.cdI)
        {
          boolean bool = localc.cdI.isEmpty();
          if (!bool) {
            continue;
          }
          localc.destroy();
          return;
        }
      }
    }
  }
  
  static final class f
    extends Handler
  {
    public final void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      case 2: 
      default: 
      case 0: 
      case 3: 
      case 5: 
        do
        {
          for (;;)
          {
            Thread.yield();
            return;
            ae.Dg();
            ae.cdg = null;
            Looper.myLooper().quit();
            continue;
            ae.Dh();
          }
        } while (ae.cdk <= 0);
        if (paramMessage.arg1 != 0) {}
        for (boolean bool = true;; bool = false)
        {
          paramMessage = paramMessage.obj;
          ae.bc(bool);
          break;
        }
      case 4: 
        paramMessage = ((Set)paramMessage.obj).iterator();
        while (paramMessage.hasNext())
        {
          ae.eB(((Integer)paramMessage.next()).intValue()).delete();
          ae.cdy += 1;
        }
      }
      paramMessage = (ae.c)paramMessage.obj;
      ae.cdj -= paramMessage.cdH;
      paramMessage.cdH = 0;
      if (paramMessage.cdK) {
        ae.cdz += 1;
      }
      Object localObject;
      for (;;)
      {
        if (!paramMessage.cdD)
        {
          i = ae.cdm;
          ae.cdm = i + 1;
          if (i % 10 == 0) {
            ae.a(false, "");
          }
        }
        localObject = new Message();
        ((Message)localObject).what = 2;
        ((Message)localObject).obj = paramMessage;
        ae.cdi.sendMessage((Message)localObject);
        break;
        if (!paramMessage.imageUrl.startsWith("file:")) {
          break label360;
        }
        if (!paramMessage.cdD)
        {
          localObject = new File(paramMessage.filename);
          if ((((File)localObject).exists()) && (((File)localObject).length() > 0L)) {
            ae.c(paramMessage);
          }
        }
        if (paramMessage.cdG != null)
        {
          paramMessage.cdH = (paramMessage.cdG.getRowBytes() * paramMessage.cdG.getHeight() + 1024);
          ae.cdj += paramMessage.cdH;
        }
        paramMessage.cdJ = true;
      }
      label360:
      ae.a(paramMessage);
      if (!TextUtils.isEmpty(paramMessage.filename))
      {
        localObject = new File(paramMessage.filename);
        if (((File)localObject).exists())
        {
          if (((File)localObject).length() != 0L) {
            break label510;
          }
          ((File)localObject).delete();
          ae.cdy += 1;
        }
      }
      label510:
      for (int i = 1;; i = 0)
      {
        if (i == 0) {
          ae.cdu += 1;
        }
        if ((i == 0) || (ae.b(paramMessage))) {}
        for (i = 1;; i = 0)
        {
          if ((i != 0) && (!paramMessage.cdD) && (!ae.c(paramMessage)))
          {
            ((File)localObject).delete();
            ae.cdy += 1;
          }
          ae.d(paramMessage);
          i = ae.cdl;
          ae.cdl = i + 1;
          if (i % 15 != 0) {
            break;
          }
          ae.Df();
          break;
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */