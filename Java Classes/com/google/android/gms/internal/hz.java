package com.google.android.gms.internal;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.support.v4.g.a;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.api.internal.au;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;
import com.google.android.gms.common.util.f;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public class hz
{
  private static volatile hz aUL;
  final e aLd;
  final long aQZ;
  final Context aUM;
  final gc aUN;
  private final hl aUO;
  final hb aUP;
  final hu aUQ;
  final kt aUR;
  private final ht aUS;
  public final AppMeasurement aUT;
  public final FirebaseAnalytics aUU;
  private final le aUV;
  private final gz aUW;
  private final hf aUX;
  private final jq aUY;
  private final ja aUZ;
  private final fs aVa;
  private gd aVb;
  gx aVc;
  private ju aVd;
  private gj aVe;
  private gw aVf;
  private hj aVg;
  private kz aVh;
  private fz aVi;
  private boolean aVj;
  private Boolean aVk;
  private long aVl;
  private FileLock aVm;
  private FileChannel aVn;
  private List<Long> aVo;
  List<Runnable> aVp;
  int aVq;
  private int aVr;
  private long aVs;
  private long aVt;
  private boolean aVu;
  private boolean aVv;
  private boolean aVw;
  private boolean initialized = false;
  
  private hz(iz paramiz)
  {
    ae.E(paramiz);
    this.aUM = paramiz.aUM;
    this.aVs = -1L;
    this.aLd = f.oG();
    this.aQZ = this.aLd.currentTimeMillis();
    this.aUN = new gc(this);
    Object localObject = new hl(this);
    ((iy)localObject).initialize();
    this.aUO = ((hl)localObject);
    localObject = new hb(this);
    ((iy)localObject).initialize();
    this.aUP = ((hb)localObject);
    localObject = new le(this);
    ((iy)localObject).initialize();
    this.aUV = ((le)localObject);
    localObject = new gz(this);
    ((iy)localObject).initialize();
    this.aUW = ((gz)localObject);
    this.aVa = new fs(this);
    localObject = new hf(this);
    ((iy)localObject).initialize();
    this.aUX = ((hf)localObject);
    localObject = new jq(this);
    ((iy)localObject).initialize();
    this.aUY = ((jq)localObject);
    localObject = new ja(this);
    ((iy)localObject).initialize();
    this.aUZ = ((ja)localObject);
    this.aUT = new AppMeasurement(this);
    this.aUU = new FirebaseAnalytics(this);
    localObject = new kt(this);
    ((iy)localObject).initialize();
    this.aUR = ((kt)localObject);
    localObject = new ht(this);
    ((iy)localObject).initialize();
    this.aUS = ((ht)localObject);
    localObject = new hu(this);
    ((iy)localObject).initialize();
    this.aUQ = ((hu)localObject);
    if ((this.aUM.getApplicationContext() instanceof Application))
    {
      localObject = qC();
      if ((((ix)localObject).getContext().getApplicationContext() instanceof Application))
      {
        Application localApplication = (Application)((ix)localObject).getContext().getApplicationContext();
        if (((ja)localObject).aVQ == null) {
          ((ja)localObject).aVQ = new jo((ja)localObject, (byte)0);
        }
        localApplication.unregisterActivityLifecycleCallbacks(((ja)localObject).aVQ);
        localApplication.registerActivityLifecycleCallbacks(((ja)localObject).aVQ);
        ((ix)localObject).qP().aTi.bq("Registered activity lifecycle callback");
      }
    }
    for (;;)
    {
      this.aUQ.i(new ia(this, paramiz));
      return;
      qP().aTd.bq("Application context is not an Application");
    }
  }
  
  /* Error */
  private final boolean D(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   4: invokevirtual 277	com/google/android/gms/internal/gd:beginTransaction	()V
    //   7: new 6	com/google/android/gms/internal/hz$a
    //   10: dup
    //   11: aload_0
    //   12: iconst_0
    //   13: invokespecial 280	com/google/android/gms/internal/hz$a:<init>	(Lcom/google/android/gms/internal/hz;B)V
    //   16: astore 24
    //   18: aload_0
    //   19: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   22: astore 25
    //   24: aconst_null
    //   25: astore 21
    //   27: aload_0
    //   28: getfield 104	com/google/android/gms/internal/hz:aVs	J
    //   31: lstore 9
    //   33: aload 24
    //   35: invokestatic 95	com/google/android/gms/common/internal/ae:E	(Ljava/lang/Object;)Ljava/lang/Object;
    //   38: pop
    //   39: aload 25
    //   41: invokevirtual 283	com/google/android/gms/internal/ix:mN	()V
    //   44: aload 25
    //   46: invokevirtual 286	com/google/android/gms/internal/iy:pf	()V
    //   49: aconst_null
    //   50: astore 23
    //   52: aconst_null
    //   53: astore 22
    //   55: aload 21
    //   57: astore 18
    //   59: aload 22
    //   61: astore 17
    //   63: aload 23
    //   65: astore 16
    //   67: aload 25
    //   69: invokevirtual 290	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   72: astore 26
    //   74: aload 21
    //   76: astore 18
    //   78: aload 22
    //   80: astore 17
    //   82: aload 23
    //   84: astore 16
    //   86: aconst_null
    //   87: invokestatic 296	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   90: ifeq +631 -> 721
    //   93: lload 9
    //   95: ldc2_w 101
    //   98: lcmp
    //   99: ifeq +390 -> 489
    //   102: aload 21
    //   104: astore 18
    //   106: aload 22
    //   108: astore 17
    //   110: aload 23
    //   112: astore 16
    //   114: iconst_2
    //   115: anewarray 298	java/lang/String
    //   118: dup
    //   119: iconst_0
    //   120: lload 9
    //   122: invokestatic 302	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   125: aastore
    //   126: dup
    //   127: iconst_1
    //   128: lload_1
    //   129: invokestatic 302	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   132: aastore
    //   133: astore 19
    //   135: goto +4333 -> 4468
    //   138: aload 21
    //   140: astore 18
    //   142: aload 22
    //   144: astore 17
    //   146: aload 23
    //   148: astore 16
    //   150: aload 26
    //   152: new 304	java/lang/StringBuilder
    //   155: dup
    //   156: aload 20
    //   158: invokestatic 307	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   161: invokevirtual 311	java/lang/String:length	()I
    //   164: sipush 148
    //   167: iadd
    //   168: invokespecial 314	java/lang/StringBuilder:<init>	(I)V
    //   171: ldc_w 316
    //   174: invokevirtual 320	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: aload 20
    //   179: invokevirtual 320	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: ldc_w 322
    //   185: invokevirtual 320	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: invokevirtual 326	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   191: aload 19
    //   193: invokevirtual 332	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   196: astore 19
    //   198: aload 21
    //   200: astore 18
    //   202: aload 19
    //   204: astore 17
    //   206: aload 19
    //   208: astore 16
    //   210: aload 19
    //   212: invokeinterface 338 1 0
    //   217: istore 11
    //   219: iload 11
    //   221: ifne +296 -> 517
    //   224: aload 19
    //   226: ifnull +10 -> 236
    //   229: aload 19
    //   231: invokeinterface 341 1 0
    //   236: aload 24
    //   238: getfield 344	com/google/android/gms/internal/hz$a:aVz	Ljava/util/List;
    //   241: ifnull +4244 -> 4485
    //   244: aload 24
    //   246: getfield 344	com/google/android/gms/internal/hz$a:aVz	Ljava/util/List;
    //   249: invokeinterface 348 1 0
    //   254: ifeq +4280 -> 4534
    //   257: goto +4228 -> 4485
    //   260: iload_3
    //   261: ifne +4131 -> 4392
    //   264: iconst_0
    //   265: istore 11
    //   267: aload 24
    //   269: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   272: astore 18
    //   274: aload 18
    //   276: aload 24
    //   278: getfield 344	com/google/android/gms/internal/hz$a:aVz	Ljava/util/List;
    //   281: invokeinterface 355 1 0
    //   286: anewarray 357	com/google/android/gms/internal/lr
    //   289: putfield 363	com/google/android/gms/internal/lu:aYp	[Lcom/google/android/gms/internal/lr;
    //   292: iconst_0
    //   293: istore_3
    //   294: lconst_0
    //   295: lstore_1
    //   296: aload_0
    //   297: getfield 127	com/google/android/gms/internal/hz:aUN	Lcom/google/android/gms/internal/gc;
    //   300: aload 18
    //   302: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   305: invokevirtual 371	com/google/android/gms/internal/gc:bZ	(Ljava/lang/String;)Z
    //   308: istore 14
    //   310: iconst_0
    //   311: istore 5
    //   313: iload 5
    //   315: aload 24
    //   317: getfield 344	com/google/android/gms/internal/hz$a:aVz	Ljava/util/List;
    //   320: invokeinterface 355 1 0
    //   325: if_icmpge +2221 -> 2546
    //   328: aload 24
    //   330: getfield 344	com/google/android/gms/internal/hz$a:aVz	Ljava/util/List;
    //   333: iload 5
    //   335: invokeinterface 375 2 0
    //   340: checkcast 357	com/google/android/gms/internal/lr
    //   343: astore 19
    //   345: aload_0
    //   346: invokevirtual 379	com/google/android/gms/internal/hz:qM	()Lcom/google/android/gms/internal/ht;
    //   349: aload 24
    //   351: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   354: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   357: aload 19
    //   359: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   362: invokevirtual 386	com/google/android/gms/internal/ht:C	(Ljava/lang/String;Ljava/lang/String;)Z
    //   365: ifeq +1249 -> 1614
    //   368: aload_0
    //   369: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   372: getfield 259	com/google/android/gms/internal/hb:aTd	Lcom/google/android/gms/internal/hd;
    //   375: ldc_w 388
    //   378: aload 24
    //   380: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   383: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   386: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   389: aload_0
    //   390: invokevirtual 396	com/google/android/gms/internal/hz:qK	()Lcom/google/android/gms/internal/gz;
    //   393: aload 19
    //   395: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   398: invokevirtual 400	com/google/android/gms/internal/gz:ch	(Ljava/lang/String;)Ljava/lang/String;
    //   401: invokevirtual 404	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   404: aload_0
    //   405: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   408: aload 24
    //   410: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   413: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   416: invokevirtual 411	com/google/android/gms/internal/le:cG	(Ljava/lang/String;)Z
    //   419: ifne +4071 -> 4490
    //   422: aload_0
    //   423: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   426: aload 24
    //   428: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   431: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   434: invokevirtual 414	com/google/android/gms/internal/le:cH	(Ljava/lang/String;)Z
    //   437: ifeq +4102 -> 4539
    //   440: goto +4050 -> 4490
    //   443: iload 4
    //   445: ifne +4020 -> 4465
    //   448: ldc_w 416
    //   451: aload 19
    //   453: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   456: invokevirtual 420	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   459: ifne +4006 -> 4465
    //   462: aload_0
    //   463: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   466: bipush 11
    //   468: ldc_w 422
    //   471: aload 19
    //   473: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   476: iconst_0
    //   477: invokevirtual 426	com/google/android/gms/internal/le:b	(ILjava/lang/String;Ljava/lang/String;I)V
    //   480: iload 5
    //   482: iconst_1
    //   483: iadd
    //   484: istore 5
    //   486: goto -173 -> 313
    //   489: aload 21
    //   491: astore 18
    //   493: aload 22
    //   495: astore 17
    //   497: aload 23
    //   499: astore 16
    //   501: iconst_1
    //   502: anewarray 298	java/lang/String
    //   505: dup
    //   506: iconst_0
    //   507: lload_1
    //   508: invokestatic 302	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   511: aastore
    //   512: astore 19
    //   514: goto +3954 -> 4468
    //   517: aload 21
    //   519: astore 18
    //   521: aload 19
    //   523: astore 17
    //   525: aload 19
    //   527: astore 16
    //   529: aload 19
    //   531: iconst_0
    //   532: invokeinterface 430 2 0
    //   537: astore 20
    //   539: aload 20
    //   541: astore 18
    //   543: aload 19
    //   545: astore 17
    //   547: aload 19
    //   549: astore 16
    //   551: aload 19
    //   553: iconst_1
    //   554: invokeinterface 430 2 0
    //   559: astore 21
    //   561: aload 20
    //   563: astore 18
    //   565: aload 19
    //   567: astore 17
    //   569: aload 19
    //   571: astore 16
    //   573: aload 19
    //   575: invokeinterface 341 1 0
    //   580: aload 21
    //   582: astore 16
    //   584: aload 20
    //   586: astore 17
    //   588: aload 19
    //   590: astore 18
    //   592: aload 16
    //   594: astore 19
    //   596: aload 18
    //   598: astore 16
    //   600: aload 16
    //   602: astore 18
    //   604: aload 26
    //   606: ldc_w 432
    //   609: iconst_1
    //   610: anewarray 298	java/lang/String
    //   613: dup
    //   614: iconst_0
    //   615: ldc_w 434
    //   618: aastore
    //   619: ldc_w 436
    //   622: iconst_2
    //   623: anewarray 298	java/lang/String
    //   626: dup
    //   627: iconst_0
    //   628: aload 17
    //   630: aastore
    //   631: dup
    //   632: iconst_1
    //   633: aload 19
    //   635: aastore
    //   636: aconst_null
    //   637: aconst_null
    //   638: ldc_w 438
    //   641: ldc_w 440
    //   644: invokevirtual 444	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   647: astore 20
    //   649: aload 20
    //   651: astore 18
    //   653: aload 20
    //   655: astore 16
    //   657: aload 20
    //   659: invokeinterface 338 1 0
    //   664: ifne +283 -> 947
    //   667: aload 20
    //   669: astore 18
    //   671: aload 20
    //   673: astore 16
    //   675: aload 25
    //   677: invokevirtual 234	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   680: getfield 447	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   683: ldc_w 449
    //   686: aload 17
    //   688: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   691: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   694: aload 20
    //   696: ifnull -460 -> 236
    //   699: aload 20
    //   701: invokeinterface 341 1 0
    //   706: goto -470 -> 236
    //   709: astore 16
    //   711: aload_0
    //   712: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   715: invokevirtual 456	com/google/android/gms/internal/gd:endTransaction	()V
    //   718: aload 16
    //   720: athrow
    //   721: lload 9
    //   723: ldc2_w 101
    //   726: lcmp
    //   727: ifeq +136 -> 863
    //   730: aload 21
    //   732: astore 18
    //   734: aload 22
    //   736: astore 17
    //   738: aload 23
    //   740: astore 16
    //   742: iconst_2
    //   743: anewarray 298	java/lang/String
    //   746: dup
    //   747: iconst_0
    //   748: aconst_null
    //   749: aastore
    //   750: dup
    //   751: iconst_1
    //   752: lload 9
    //   754: invokestatic 302	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   757: aastore
    //   758: astore 19
    //   760: goto +3744 -> 4504
    //   763: aload 21
    //   765: astore 18
    //   767: aload 22
    //   769: astore 17
    //   771: aload 23
    //   773: astore 16
    //   775: aload 26
    //   777: new 304	java/lang/StringBuilder
    //   780: dup
    //   781: aload 20
    //   783: invokestatic 307	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   786: invokevirtual 311	java/lang/String:length	()I
    //   789: bipush 84
    //   791: iadd
    //   792: invokespecial 314	java/lang/StringBuilder:<init>	(I)V
    //   795: ldc_w 458
    //   798: invokevirtual 320	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   801: aload 20
    //   803: invokevirtual 320	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   806: ldc_w 460
    //   809: invokevirtual 320	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   812: invokevirtual 326	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   815: aload 19
    //   817: invokevirtual 332	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   820: astore 19
    //   822: aload 21
    //   824: astore 18
    //   826: aload 19
    //   828: astore 17
    //   830: aload 19
    //   832: astore 16
    //   834: aload 19
    //   836: invokeinterface 338 1 0
    //   841: istore 11
    //   843: iload 11
    //   845: ifne +43 -> 888
    //   848: aload 19
    //   850: ifnull -614 -> 236
    //   853: aload 19
    //   855: invokeinterface 341 1 0
    //   860: goto -624 -> 236
    //   863: aload 21
    //   865: astore 18
    //   867: aload 22
    //   869: astore 17
    //   871: aload 23
    //   873: astore 16
    //   875: iconst_1
    //   876: anewarray 298	java/lang/String
    //   879: dup
    //   880: iconst_0
    //   881: aconst_null
    //   882: aastore
    //   883: astore 19
    //   885: goto +3619 -> 4504
    //   888: aload 21
    //   890: astore 18
    //   892: aload 19
    //   894: astore 17
    //   896: aload 19
    //   898: astore 16
    //   900: aload 19
    //   902: iconst_0
    //   903: invokeinterface 430 2 0
    //   908: astore 20
    //   910: aload 21
    //   912: astore 18
    //   914: aload 19
    //   916: astore 17
    //   918: aload 19
    //   920: astore 16
    //   922: aload 19
    //   924: invokeinterface 341 1 0
    //   929: aload 20
    //   931: astore 18
    //   933: aconst_null
    //   934: astore 17
    //   936: aload 19
    //   938: astore 16
    //   940: aload 18
    //   942: astore 19
    //   944: goto -344 -> 600
    //   947: aload 20
    //   949: astore 18
    //   951: aload 20
    //   953: astore 16
    //   955: aload 20
    //   957: iconst_0
    //   958: invokeinterface 464 2 0
    //   963: astore 21
    //   965: aload 20
    //   967: astore 18
    //   969: aload 20
    //   971: astore 16
    //   973: aload 21
    //   975: aload 21
    //   977: arraylength
    //   978: invokestatic 469	com/google/android/gms/internal/mu:a	([BI)Lcom/google/android/gms/internal/mu;
    //   981: astore 21
    //   983: aload 20
    //   985: astore 18
    //   987: aload 20
    //   989: astore 16
    //   991: new 359	com/google/android/gms/internal/lu
    //   994: dup
    //   995: invokespecial 470	com/google/android/gms/internal/lu:<init>	()V
    //   998: astore 22
    //   1000: aload 20
    //   1002: astore 18
    //   1004: aload 20
    //   1006: astore 16
    //   1008: aload 22
    //   1010: aload 21
    //   1012: invokevirtual 475	com/google/android/gms/internal/nd:a	(Lcom/google/android/gms/internal/mu;)Lcom/google/android/gms/internal/nd;
    //   1015: pop
    //   1016: aload 20
    //   1018: astore 18
    //   1020: aload 20
    //   1022: astore 16
    //   1024: aload 20
    //   1026: invokeinterface 478 1 0
    //   1031: ifeq +30 -> 1061
    //   1034: aload 20
    //   1036: astore 18
    //   1038: aload 20
    //   1040: astore 16
    //   1042: aload 25
    //   1044: invokevirtual 234	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   1047: getfield 259	com/google/android/gms/internal/hb:aTd	Lcom/google/android/gms/internal/hd;
    //   1050: ldc_w 480
    //   1053: aload 17
    //   1055: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   1058: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   1061: aload 20
    //   1063: astore 18
    //   1065: aload 20
    //   1067: astore 16
    //   1069: aload 20
    //   1071: invokeinterface 341 1 0
    //   1076: aload 20
    //   1078: astore 18
    //   1080: aload 20
    //   1082: astore 16
    //   1084: aload 24
    //   1086: aload 22
    //   1088: invokeinterface 485 2 0
    //   1093: lload 9
    //   1095: ldc2_w 101
    //   1098: lcmp
    //   1099: ifeq +213 -> 1312
    //   1102: ldc_w 487
    //   1105: astore 22
    //   1107: aload 20
    //   1109: astore 18
    //   1111: aload 20
    //   1113: astore 16
    //   1115: iconst_3
    //   1116: anewarray 298	java/lang/String
    //   1119: astore 21
    //   1121: aload 21
    //   1123: iconst_0
    //   1124: aload 17
    //   1126: aastore
    //   1127: aload 21
    //   1129: iconst_1
    //   1130: aload 19
    //   1132: aastore
    //   1133: aload 20
    //   1135: astore 18
    //   1137: aload 20
    //   1139: astore 16
    //   1141: aload 21
    //   1143: iconst_2
    //   1144: lload 9
    //   1146: invokestatic 302	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   1149: aastore
    //   1150: aload 22
    //   1152: astore 19
    //   1154: aload 20
    //   1156: astore 18
    //   1158: aload 20
    //   1160: astore 16
    //   1162: aload 26
    //   1164: ldc_w 489
    //   1167: iconst_4
    //   1168: anewarray 298	java/lang/String
    //   1171: dup
    //   1172: iconst_0
    //   1173: ldc_w 438
    //   1176: aastore
    //   1177: dup
    //   1178: iconst_1
    //   1179: ldc_w 490
    //   1182: aastore
    //   1183: dup
    //   1184: iconst_2
    //   1185: ldc_w 492
    //   1188: aastore
    //   1189: dup
    //   1190: iconst_3
    //   1191: ldc_w 494
    //   1194: aastore
    //   1195: aload 19
    //   1197: aload 21
    //   1199: aconst_null
    //   1200: aconst_null
    //   1201: ldc_w 438
    //   1204: aconst_null
    //   1205: invokevirtual 444	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   1208: astore 19
    //   1210: aload 19
    //   1212: astore 18
    //   1214: aload 18
    //   1216: astore 16
    //   1218: aload 18
    //   1220: invokeinterface 338 1 0
    //   1225: ifne +175 -> 1400
    //   1228: aload 18
    //   1230: astore 16
    //   1232: aload 25
    //   1234: invokevirtual 234	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   1237: getfield 259	com/google/android/gms/internal/hb:aTd	Lcom/google/android/gms/internal/hd;
    //   1240: ldc_w 496
    //   1243: aload 17
    //   1245: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   1248: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   1251: aload 18
    //   1253: ifnull -1017 -> 236
    //   1256: aload 18
    //   1258: invokeinterface 341 1 0
    //   1263: goto -1027 -> 236
    //   1266: astore 19
    //   1268: aload 20
    //   1270: astore 18
    //   1272: aload 20
    //   1274: astore 16
    //   1276: aload 25
    //   1278: invokevirtual 234	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   1281: getfield 447	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   1284: ldc_w 498
    //   1287: aload 17
    //   1289: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   1292: aload 19
    //   1294: invokevirtual 404	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   1297: aload 20
    //   1299: ifnull -1063 -> 236
    //   1302: aload 20
    //   1304: invokeinterface 341 1 0
    //   1309: goto -1073 -> 236
    //   1312: ldc_w 436
    //   1315: astore 22
    //   1317: aload 20
    //   1319: astore 18
    //   1321: aload 20
    //   1323: astore 16
    //   1325: iconst_2
    //   1326: anewarray 298	java/lang/String
    //   1329: astore 21
    //   1331: aload 21
    //   1333: iconst_0
    //   1334: aload 17
    //   1336: aastore
    //   1337: aload 21
    //   1339: iconst_1
    //   1340: aload 19
    //   1342: aastore
    //   1343: aload 22
    //   1345: astore 19
    //   1347: goto -193 -> 1154
    //   1350: astore 19
    //   1352: aload 17
    //   1354: astore 20
    //   1356: aload 18
    //   1358: astore 17
    //   1360: aload 17
    //   1362: astore 16
    //   1364: aload 25
    //   1366: invokevirtual 234	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   1369: getfield 447	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   1372: ldc_w 500
    //   1375: aload 20
    //   1377: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   1380: aload 19
    //   1382: invokevirtual 404	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   1385: aload 17
    //   1387: ifnull -1151 -> 236
    //   1390: aload 17
    //   1392: invokeinterface 341 1 0
    //   1397: goto -1161 -> 236
    //   1400: aload 18
    //   1402: astore 16
    //   1404: aload 18
    //   1406: iconst_0
    //   1407: invokeinterface 504 2 0
    //   1412: lstore_1
    //   1413: aload 18
    //   1415: astore 16
    //   1417: aload 18
    //   1419: iconst_3
    //   1420: invokeinterface 464 2 0
    //   1425: astore 19
    //   1427: aload 18
    //   1429: astore 16
    //   1431: aload 19
    //   1433: aload 19
    //   1435: arraylength
    //   1436: invokestatic 469	com/google/android/gms/internal/mu:a	([BI)Lcom/google/android/gms/internal/mu;
    //   1439: astore 19
    //   1441: aload 18
    //   1443: astore 16
    //   1445: new 357	com/google/android/gms/internal/lr
    //   1448: dup
    //   1449: invokespecial 505	com/google/android/gms/internal/lr:<init>	()V
    //   1452: astore 20
    //   1454: aload 18
    //   1456: astore 16
    //   1458: aload 20
    //   1460: aload 19
    //   1462: invokevirtual 475	com/google/android/gms/internal/nd:a	(Lcom/google/android/gms/internal/mu;)Lcom/google/android/gms/internal/nd;
    //   1465: pop
    //   1466: aload 18
    //   1468: astore 16
    //   1470: aload 20
    //   1472: aload 18
    //   1474: iconst_1
    //   1475: invokeinterface 430 2 0
    //   1480: putfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   1483: aload 18
    //   1485: astore 16
    //   1487: aload 20
    //   1489: aload 18
    //   1491: iconst_2
    //   1492: invokeinterface 504 2 0
    //   1497: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1500: putfield 514	com/google/android/gms/internal/lr:aYi	Ljava/lang/Long;
    //   1503: aload 18
    //   1505: astore 16
    //   1507: aload 24
    //   1509: lload_1
    //   1510: aload 20
    //   1512: invokeinterface 517 4 0
    //   1517: istore 11
    //   1519: iload 11
    //   1521: ifne +45 -> 1566
    //   1524: aload 18
    //   1526: ifnull -1290 -> 236
    //   1529: aload 18
    //   1531: invokeinterface 341 1 0
    //   1536: goto -1300 -> 236
    //   1539: astore 19
    //   1541: aload 18
    //   1543: astore 16
    //   1545: aload 25
    //   1547: invokevirtual 234	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   1550: getfield 447	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   1553: ldc_w 519
    //   1556: aload 17
    //   1558: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   1561: aload 19
    //   1563: invokevirtual 404	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   1566: aload 18
    //   1568: astore 16
    //   1570: aload 18
    //   1572: invokeinterface 478 1 0
    //   1577: istore 11
    //   1579: iload 11
    //   1581: ifne -181 -> 1400
    //   1584: aload 18
    //   1586: ifnull -1350 -> 236
    //   1589: aload 18
    //   1591: invokeinterface 341 1 0
    //   1596: goto -1360 -> 236
    //   1599: aload 16
    //   1601: ifnull +10 -> 1611
    //   1604: aload 16
    //   1606: invokeinterface 341 1 0
    //   1611: aload 17
    //   1613: athrow
    //   1614: aload_0
    //   1615: invokevirtual 379	com/google/android/gms/internal/hz:qM	()Lcom/google/android/gms/internal/ht;
    //   1618: aload 24
    //   1620: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   1623: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   1626: aload 19
    //   1628: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   1631: invokevirtual 521	com/google/android/gms/internal/ht:D	(Ljava/lang/String;Ljava/lang/String;)Z
    //   1634: istore 15
    //   1636: iload 15
    //   1638: ifne +23 -> 1661
    //   1641: aload_0
    //   1642: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   1645: pop
    //   1646: iload 11
    //   1648: istore 13
    //   1650: aload 19
    //   1652: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   1655: invokestatic 524	com/google/android/gms/internal/le:cI	(Ljava/lang/String;)Z
    //   1658: ifeq +2914 -> 4572
    //   1661: iconst_0
    //   1662: istore 7
    //   1664: iconst_0
    //   1665: istore 4
    //   1667: aload 19
    //   1669: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   1672: ifnonnull +12 -> 1684
    //   1675: aload 19
    //   1677: iconst_0
    //   1678: anewarray 530	com/google/android/gms/internal/ls
    //   1681: putfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   1684: aload 19
    //   1686: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   1689: astore 16
    //   1691: aload 16
    //   1693: arraylength
    //   1694: istore 8
    //   1696: iconst_0
    //   1697: istore 6
    //   1699: iload 6
    //   1701: iload 8
    //   1703: if_icmpge +68 -> 1771
    //   1706: aload 16
    //   1708: iload 6
    //   1710: aaload
    //   1711: astore 17
    //   1713: ldc_w 532
    //   1716: aload 17
    //   1718: getfield 533	com/google/android/gms/internal/ls:name	Ljava/lang/String;
    //   1721: invokevirtual 420	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1724: ifeq +18 -> 1742
    //   1727: aload 17
    //   1729: lconst_1
    //   1730: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1733: putfield 536	com/google/android/gms/internal/ls:aYl	Ljava/lang/Long;
    //   1736: iconst_1
    //   1737: istore 7
    //   1739: goto +2806 -> 4545
    //   1742: ldc_w 538
    //   1745: aload 17
    //   1747: getfield 533	com/google/android/gms/internal/ls:name	Ljava/lang/String;
    //   1750: invokevirtual 420	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1753: ifeq +2709 -> 4462
    //   1756: aload 17
    //   1758: lconst_1
    //   1759: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1762: putfield 536	com/google/android/gms/internal/ls:aYl	Ljava/lang/Long;
    //   1765: iconst_1
    //   1766: istore 4
    //   1768: goto +2777 -> 4545
    //   1771: iload 7
    //   1773: ifne +97 -> 1870
    //   1776: iload 15
    //   1778: ifeq +92 -> 1870
    //   1781: aload_0
    //   1782: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   1785: getfield 238	com/google/android/gms/internal/hb:aTi	Lcom/google/android/gms/internal/hd;
    //   1788: ldc_w 540
    //   1791: aload_0
    //   1792: invokevirtual 396	com/google/android/gms/internal/hz:qK	()Lcom/google/android/gms/internal/gz;
    //   1795: aload 19
    //   1797: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   1800: invokevirtual 400	com/google/android/gms/internal/gz:ch	(Ljava/lang/String;)Ljava/lang/String;
    //   1803: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   1806: aload 19
    //   1808: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   1811: aload 19
    //   1813: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   1816: arraylength
    //   1817: iconst_1
    //   1818: iadd
    //   1819: invokestatic 546	java/util/Arrays:copyOf	([Ljava/lang/Object;I)[Ljava/lang/Object;
    //   1822: checkcast 547	[Lcom/google/android/gms/internal/ls;
    //   1825: astore 16
    //   1827: new 530	com/google/android/gms/internal/ls
    //   1830: dup
    //   1831: invokespecial 548	com/google/android/gms/internal/ls:<init>	()V
    //   1834: astore 17
    //   1836: aload 17
    //   1838: ldc_w 532
    //   1841: putfield 533	com/google/android/gms/internal/ls:name	Ljava/lang/String;
    //   1844: aload 17
    //   1846: lconst_1
    //   1847: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1850: putfield 536	com/google/android/gms/internal/ls:aYl	Ljava/lang/Long;
    //   1853: aload 16
    //   1855: aload 16
    //   1857: arraylength
    //   1858: iconst_1
    //   1859: isub
    //   1860: aload 17
    //   1862: aastore
    //   1863: aload 19
    //   1865: aload 16
    //   1867: putfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   1870: iload 4
    //   1872: ifne +92 -> 1964
    //   1875: aload_0
    //   1876: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   1879: getfield 238	com/google/android/gms/internal/hb:aTi	Lcom/google/android/gms/internal/hd;
    //   1882: ldc_w 550
    //   1885: aload_0
    //   1886: invokevirtual 396	com/google/android/gms/internal/hz:qK	()Lcom/google/android/gms/internal/gz;
    //   1889: aload 19
    //   1891: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   1894: invokevirtual 400	com/google/android/gms/internal/gz:ch	(Ljava/lang/String;)Ljava/lang/String;
    //   1897: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   1900: aload 19
    //   1902: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   1905: aload 19
    //   1907: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   1910: arraylength
    //   1911: iconst_1
    //   1912: iadd
    //   1913: invokestatic 546	java/util/Arrays:copyOf	([Ljava/lang/Object;I)[Ljava/lang/Object;
    //   1916: checkcast 547	[Lcom/google/android/gms/internal/ls;
    //   1919: astore 16
    //   1921: new 530	com/google/android/gms/internal/ls
    //   1924: dup
    //   1925: invokespecial 548	com/google/android/gms/internal/ls:<init>	()V
    //   1928: astore 17
    //   1930: aload 17
    //   1932: ldc_w 538
    //   1935: putfield 533	com/google/android/gms/internal/ls:name	Ljava/lang/String;
    //   1938: aload 17
    //   1940: lconst_1
    //   1941: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1944: putfield 536	com/google/android/gms/internal/ls:aYl	Ljava/lang/Long;
    //   1947: aload 16
    //   1949: aload 16
    //   1951: arraylength
    //   1952: iconst_1
    //   1953: isub
    //   1954: aload 17
    //   1956: aastore
    //   1957: aload 19
    //   1959: aload 16
    //   1961: putfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   1964: aload_0
    //   1965: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   1968: aload_0
    //   1969: invokespecial 553	com/google/android/gms/internal/hz:sa	()J
    //   1972: aload 24
    //   1974: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   1977: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   1980: iconst_0
    //   1981: iconst_0
    //   1982: iconst_0
    //   1983: iconst_0
    //   1984: iconst_1
    //   1985: invokevirtual 556	com/google/android/gms/internal/gd:a	(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/ge;
    //   1988: getfield 561	com/google/android/gms/internal/ge:aRx	J
    //   1991: aload_0
    //   1992: getfield 127	com/google/android/gms/internal/hz:aUN	Lcom/google/android/gms/internal/gc;
    //   1995: aload 24
    //   1997: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   2000: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   2003: invokevirtual 565	com/google/android/gms/internal/gc:bW	(Ljava/lang/String;)I
    //   2006: i2l
    //   2007: lcmp
    //   2008: ifle +2448 -> 4456
    //   2011: iconst_0
    //   2012: istore 4
    //   2014: iload 11
    //   2016: istore 12
    //   2018: iload 4
    //   2020: aload 19
    //   2022: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   2025: arraylength
    //   2026: if_icmpge +96 -> 2122
    //   2029: ldc_w 538
    //   2032: aload 19
    //   2034: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   2037: iload 4
    //   2039: aaload
    //   2040: getfield 533	com/google/android/gms/internal/ls:name	Ljava/lang/String;
    //   2043: invokevirtual 420	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2046: ifeq +2517 -> 4563
    //   2049: aload 19
    //   2051: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   2054: arraylength
    //   2055: iconst_1
    //   2056: isub
    //   2057: anewarray 530	com/google/android/gms/internal/ls
    //   2060: astore 16
    //   2062: iload 4
    //   2064: ifle +17 -> 2081
    //   2067: aload 19
    //   2069: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   2072: iconst_0
    //   2073: aload 16
    //   2075: iconst_0
    //   2076: iload 4
    //   2078: invokestatic 571	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   2081: iload 4
    //   2083: aload 16
    //   2085: arraylength
    //   2086: if_icmpge +25 -> 2111
    //   2089: aload 19
    //   2091: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   2094: iload 4
    //   2096: iconst_1
    //   2097: iadd
    //   2098: aload 16
    //   2100: iload 4
    //   2102: aload 16
    //   2104: arraylength
    //   2105: iload 4
    //   2107: isub
    //   2108: invokestatic 571	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   2111: aload 19
    //   2113: aload 16
    //   2115: putfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   2118: iload 11
    //   2120: istore 12
    //   2122: iload 12
    //   2124: istore 13
    //   2126: aload 19
    //   2128: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   2131: invokestatic 574	com/google/android/gms/internal/le:cw	(Ljava/lang/String;)Z
    //   2134: ifeq +2438 -> 4572
    //   2137: iload 12
    //   2139: istore 13
    //   2141: iload 15
    //   2143: ifeq +2429 -> 4572
    //   2146: iload 12
    //   2148: istore 13
    //   2150: aload_0
    //   2151: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   2154: aload_0
    //   2155: invokespecial 553	com/google/android/gms/internal/hz:sa	()J
    //   2158: aload 24
    //   2160: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   2163: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   2166: iconst_0
    //   2167: iconst_0
    //   2168: iconst_1
    //   2169: iconst_0
    //   2170: iconst_0
    //   2171: invokevirtual 556	com/google/android/gms/internal/gd:a	(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/ge;
    //   2174: getfield 577	com/google/android/gms/internal/ge:aRv	J
    //   2177: aload_0
    //   2178: getfield 127	com/google/android/gms/internal/hz:aUN	Lcom/google/android/gms/internal/gc;
    //   2181: aload 24
    //   2183: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   2186: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   2189: getstatic 583	com/google/android/gms/internal/gr:aSr	Lcom/google/android/gms/internal/gs;
    //   2192: invokevirtual 586	com/google/android/gms/internal/gc:b	(Ljava/lang/String;Lcom/google/android/gms/internal/gs;)I
    //   2195: i2l
    //   2196: lcmp
    //   2197: ifle +2375 -> 4572
    //   2200: aload_0
    //   2201: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   2204: getfield 259	com/google/android/gms/internal/hb:aTd	Lcom/google/android/gms/internal/hd;
    //   2207: ldc_w 588
    //   2210: aload 24
    //   2212: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   2215: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   2218: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   2221: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   2224: iconst_0
    //   2225: istore 6
    //   2227: aconst_null
    //   2228: astore 16
    //   2230: aload 19
    //   2232: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   2235: astore 20
    //   2237: aload 20
    //   2239: arraylength
    //   2240: istore 7
    //   2242: iconst_0
    //   2243: istore 4
    //   2245: iload 4
    //   2247: iload 7
    //   2249: if_icmpge +51 -> 2300
    //   2252: aload 20
    //   2254: iload 4
    //   2256: aaload
    //   2257: astore 17
    //   2259: ldc_w 532
    //   2262: aload 17
    //   2264: getfield 533	com/google/android/gms/internal/ls:name	Ljava/lang/String;
    //   2267: invokevirtual 420	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2270: ifeq +10 -> 2280
    //   2273: aload 17
    //   2275: astore 16
    //   2277: goto +2277 -> 4554
    //   2280: ldc_w 416
    //   2283: aload 17
    //   2285: getfield 533	com/google/android/gms/internal/ls:name	Ljava/lang/String;
    //   2288: invokevirtual 420	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2291: ifeq +2162 -> 4453
    //   2294: iconst_1
    //   2295: istore 6
    //   2297: goto +2257 -> 4554
    //   2300: iload 6
    //   2302: ifeq +121 -> 2423
    //   2305: aload 16
    //   2307: ifnull +116 -> 2423
    //   2310: aload 19
    //   2312: aload 19
    //   2314: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   2317: iconst_1
    //   2318: anewarray 530	com/google/android/gms/internal/ls
    //   2321: dup
    //   2322: iconst_0
    //   2323: aload 16
    //   2325: aastore
    //   2326: invokestatic 593	com/google/android/gms/common/util/c:b	([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    //   2329: checkcast 547	[Lcom/google/android/gms/internal/ls;
    //   2332: putfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   2335: iload 12
    //   2337: istore 11
    //   2339: iload 14
    //   2341: ifeq +2109 -> 4450
    //   2344: ldc_w 595
    //   2347: aload 19
    //   2349: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   2352: invokevirtual 420	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2355: ifeq +2095 -> 4450
    //   2358: aload 19
    //   2360: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   2363: ifnull +12 -> 2375
    //   2366: aload 19
    //   2368: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   2371: arraylength
    //   2372: ifne +113 -> 2485
    //   2375: aload_0
    //   2376: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   2379: getfield 259	com/google/android/gms/internal/hb:aTd	Lcom/google/android/gms/internal/hd;
    //   2382: ldc_w 597
    //   2385: aload 24
    //   2387: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   2390: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   2393: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   2396: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   2399: aload 18
    //   2401: getfield 363	com/google/android/gms/internal/lu:aYp	[Lcom/google/android/gms/internal/lr;
    //   2404: astore 16
    //   2406: iload_3
    //   2407: iconst_1
    //   2408: iadd
    //   2409: istore 4
    //   2411: aload 16
    //   2413: iload_3
    //   2414: aload 19
    //   2416: aastore
    //   2417: iload 4
    //   2419: istore_3
    //   2420: goto -1940 -> 480
    //   2423: aload 16
    //   2425: ifnull +29 -> 2454
    //   2428: aload 16
    //   2430: ldc_w 416
    //   2433: putfield 533	com/google/android/gms/internal/ls:name	Ljava/lang/String;
    //   2436: aload 16
    //   2438: ldc2_w 598
    //   2441: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2444: putfield 536	com/google/android/gms/internal/ls:aYl	Ljava/lang/Long;
    //   2447: iload 12
    //   2449: istore 11
    //   2451: goto -112 -> 2339
    //   2454: aload_0
    //   2455: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   2458: getfield 447	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   2461: ldc_w 601
    //   2464: aload 24
    //   2466: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   2469: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   2472: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   2475: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   2478: iload 12
    //   2480: istore 13
    //   2482: goto +2090 -> 4572
    //   2485: aload_0
    //   2486: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   2489: pop
    //   2490: aload 19
    //   2492: ldc_w 603
    //   2495: invokestatic 606	com/google/android/gms/internal/le:b	(Lcom/google/android/gms/internal/lr;Ljava/lang/String;)Ljava/lang/Object;
    //   2498: checkcast 507	java/lang/Long
    //   2501: astore 16
    //   2503: aload 16
    //   2505: ifnonnull +30 -> 2535
    //   2508: aload_0
    //   2509: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   2512: getfield 259	com/google/android/gms/internal/hb:aTd	Lcom/google/android/gms/internal/hd;
    //   2515: ldc_w 608
    //   2518: aload 24
    //   2520: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   2523: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   2526: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   2529: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   2532: goto -133 -> 2399
    //   2535: lload_1
    //   2536: aload 16
    //   2538: invokevirtual 611	java/lang/Long:longValue	()J
    //   2541: ladd
    //   2542: lstore_1
    //   2543: goto -144 -> 2399
    //   2546: iload_3
    //   2547: aload 24
    //   2549: getfield 344	com/google/android/gms/internal/hz$a:aVz	Ljava/util/List;
    //   2552: invokeinterface 355 1 0
    //   2557: if_icmpge +20 -> 2577
    //   2560: aload 18
    //   2562: aload 18
    //   2564: getfield 363	com/google/android/gms/internal/lu:aYp	[Lcom/google/android/gms/internal/lr;
    //   2567: iload_3
    //   2568: invokestatic 546	java/util/Arrays:copyOf	([Ljava/lang/Object;I)[Ljava/lang/Object;
    //   2571: checkcast 612	[Lcom/google/android/gms/internal/lr;
    //   2574: putfield 363	com/google/android/gms/internal/lu:aYp	[Lcom/google/android/gms/internal/lr;
    //   2577: iload 14
    //   2579: ifeq +245 -> 2824
    //   2582: aload_0
    //   2583: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   2586: aload 18
    //   2588: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   2591: ldc_w 614
    //   2594: invokevirtual 618	com/google/android/gms/internal/gd:v	(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ld;
    //   2597: astore 16
    //   2599: aload 16
    //   2601: ifnull +11 -> 2612
    //   2604: aload 16
    //   2606: getfield 624	com/google/android/gms/internal/ld:value	Ljava/lang/Object;
    //   2609: ifnonnull +532 -> 3141
    //   2612: new 620	com/google/android/gms/internal/ld
    //   2615: dup
    //   2616: aload 18
    //   2618: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   2621: ldc_w 626
    //   2624: ldc_w 614
    //   2627: aload_0
    //   2628: getfield 112	com/google/android/gms/internal/hz:aLd	Lcom/google/android/gms/common/util/e;
    //   2631: invokeinterface 118 1 0
    //   2636: lload_1
    //   2637: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2640: invokespecial 629	com/google/android/gms/internal/ld:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    //   2643: astore 16
    //   2645: new 631	com/google/android/gms/internal/lw
    //   2648: dup
    //   2649: invokespecial 632	com/google/android/gms/internal/lw:<init>	()V
    //   2652: astore 17
    //   2654: aload 17
    //   2656: ldc_w 614
    //   2659: putfield 633	com/google/android/gms/internal/lw:name	Ljava/lang/String;
    //   2662: aload 17
    //   2664: aload_0
    //   2665: getfield 112	com/google/android/gms/internal/hz:aLd	Lcom/google/android/gms/common/util/e;
    //   2668: invokeinterface 118 1 0
    //   2673: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2676: putfield 636	com/google/android/gms/internal/lw:aYS	Ljava/lang/Long;
    //   2679: aload 17
    //   2681: aload 16
    //   2683: getfield 624	com/google/android/gms/internal/ld:value	Ljava/lang/Object;
    //   2686: checkcast 507	java/lang/Long
    //   2689: putfield 637	com/google/android/gms/internal/lw:aYl	Ljava/lang/Long;
    //   2692: iconst_0
    //   2693: istore 5
    //   2695: iconst_0
    //   2696: istore_3
    //   2697: iload 5
    //   2699: istore 4
    //   2701: iload_3
    //   2702: aload 18
    //   2704: getfield 641	com/google/android/gms/internal/lu:aYq	[Lcom/google/android/gms/internal/lw;
    //   2707: arraylength
    //   2708: if_icmpge +34 -> 2742
    //   2711: ldc_w 614
    //   2714: aload 18
    //   2716: getfield 641	com/google/android/gms/internal/lu:aYq	[Lcom/google/android/gms/internal/lw;
    //   2719: iload_3
    //   2720: aaload
    //   2721: getfield 633	com/google/android/gms/internal/lw:name	Ljava/lang/String;
    //   2724: invokevirtual 420	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2727: ifeq +1875 -> 4602
    //   2730: aload 18
    //   2732: getfield 641	com/google/android/gms/internal/lu:aYq	[Lcom/google/android/gms/internal/lw;
    //   2735: iload_3
    //   2736: aload 17
    //   2738: aastore
    //   2739: iconst_1
    //   2740: istore 4
    //   2742: iload 4
    //   2744: ifne +46 -> 2790
    //   2747: aload 18
    //   2749: aload 18
    //   2751: getfield 641	com/google/android/gms/internal/lu:aYq	[Lcom/google/android/gms/internal/lw;
    //   2754: aload 18
    //   2756: getfield 641	com/google/android/gms/internal/lu:aYq	[Lcom/google/android/gms/internal/lw;
    //   2759: arraylength
    //   2760: iconst_1
    //   2761: iadd
    //   2762: invokestatic 546	java/util/Arrays:copyOf	([Ljava/lang/Object;I)[Ljava/lang/Object;
    //   2765: checkcast 642	[Lcom/google/android/gms/internal/lw;
    //   2768: putfield 641	com/google/android/gms/internal/lu:aYq	[Lcom/google/android/gms/internal/lw;
    //   2771: aload 18
    //   2773: getfield 641	com/google/android/gms/internal/lu:aYq	[Lcom/google/android/gms/internal/lw;
    //   2776: aload 24
    //   2778: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   2781: getfield 641	com/google/android/gms/internal/lu:aYq	[Lcom/google/android/gms/internal/lw;
    //   2784: arraylength
    //   2785: iconst_1
    //   2786: isub
    //   2787: aload 17
    //   2789: aastore
    //   2790: lload_1
    //   2791: lconst_0
    //   2792: lcmp
    //   2793: ifle +31 -> 2824
    //   2796: aload_0
    //   2797: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   2800: aload 16
    //   2802: invokevirtual 645	com/google/android/gms/internal/gd:a	(Lcom/google/android/gms/internal/ld;)Z
    //   2805: pop
    //   2806: aload_0
    //   2807: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   2810: getfield 648	com/google/android/gms/internal/hb:aTh	Lcom/google/android/gms/internal/hd;
    //   2813: ldc_w 650
    //   2816: aload 16
    //   2818: getfield 624	com/google/android/gms/internal/ld:value	Ljava/lang/Object;
    //   2821: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   2824: aload 18
    //   2826: aload_0
    //   2827: aload 18
    //   2829: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   2832: aload 18
    //   2834: getfield 641	com/google/android/gms/internal/lu:aYq	[Lcom/google/android/gms/internal/lw;
    //   2837: aload 18
    //   2839: getfield 363	com/google/android/gms/internal/lu:aYp	[Lcom/google/android/gms/internal/lr;
    //   2842: invokespecial 653	com/google/android/gms/internal/hz:a	(Ljava/lang/String;[Lcom/google/android/gms/internal/lw;[Lcom/google/android/gms/internal/lr;)[Lcom/google/android/gms/internal/lq;
    //   2845: putfield 657	com/google/android/gms/internal/lu:aYH	[Lcom/google/android/gms/internal/lq;
    //   2848: getstatic 660	com/google/android/gms/internal/gr:aSd	Lcom/google/android/gms/internal/gs;
    //   2851: getfield 665	com/google/android/gms/internal/gs:aSN	Ljava/lang/Object;
    //   2854: checkcast 667	java/lang/Boolean
    //   2857: invokevirtual 670	java/lang/Boolean:booleanValue	()Z
    //   2860: ifeq +1016 -> 3876
    //   2863: aload_0
    //   2864: getfield 127	com/google/android/gms/internal/hz:aUN	Lcom/google/android/gms/internal/gc;
    //   2867: astore 16
    //   2869: aload 24
    //   2871: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   2874: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   2877: astore 17
    //   2879: ldc_w 672
    //   2882: aload 16
    //   2884: invokevirtual 673	com/google/android/gms/internal/ix:qM	()Lcom/google/android/gms/internal/ht;
    //   2887: aload 17
    //   2889: ldc_w 675
    //   2892: invokevirtual 679	com/google/android/gms/internal/ht:B	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   2895: invokevirtual 420	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2898: ifeq +978 -> 3876
    //   2901: new 681	java/util/HashMap
    //   2904: dup
    //   2905: invokespecial 682	java/util/HashMap:<init>	()V
    //   2908: astore 19
    //   2910: aload 18
    //   2912: getfield 363	com/google/android/gms/internal/lu:aYp	[Lcom/google/android/gms/internal/lr;
    //   2915: arraylength
    //   2916: anewarray 357	com/google/android/gms/internal/lr
    //   2919: astore 20
    //   2921: iconst_0
    //   2922: istore_3
    //   2923: aload_0
    //   2924: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   2927: invokevirtual 686	com/google/android/gms/internal/le:sr	()Ljava/security/SecureRandom;
    //   2930: astore 21
    //   2932: aload 18
    //   2934: getfield 363	com/google/android/gms/internal/lu:aYp	[Lcom/google/android/gms/internal/lr;
    //   2937: astore 22
    //   2939: aload 22
    //   2941: arraylength
    //   2942: istore 7
    //   2944: iconst_0
    //   2945: istore 4
    //   2947: iload 4
    //   2949: iload 7
    //   2951: if_icmpge +845 -> 3796
    //   2954: aload 22
    //   2956: iload 4
    //   2958: aaload
    //   2959: astore 23
    //   2961: aload 23
    //   2963: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   2966: ldc_w 688
    //   2969: invokevirtual 420	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2972: ifeq +217 -> 3189
    //   2975: aload_0
    //   2976: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   2979: pop
    //   2980: aload 23
    //   2982: ldc_w 690
    //   2985: invokestatic 606	com/google/android/gms/internal/le:b	(Lcom/google/android/gms/internal/lr;Ljava/lang/String;)Ljava/lang/Object;
    //   2988: checkcast 298	java/lang/String
    //   2991: astore 25
    //   2993: aload 19
    //   2995: aload 25
    //   2997: invokeinterface 694 2 0
    //   3002: checkcast 696	com/google/android/gms/internal/gl
    //   3005: astore 17
    //   3007: aload 17
    //   3009: astore 16
    //   3011: aload 17
    //   3013: ifnonnull +34 -> 3047
    //   3016: aload_0
    //   3017: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   3020: aload 24
    //   3022: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   3025: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   3028: aload 25
    //   3030: invokevirtual 700	com/google/android/gms/internal/gd:t	(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/gl;
    //   3033: astore 16
    //   3035: aload 19
    //   3037: aload 25
    //   3039: aload 16
    //   3041: invokeinterface 704 3 0
    //   3046: pop
    //   3047: aload 16
    //   3049: getfield 707	com/google/android/gms/internal/gl:aRM	Ljava/lang/Long;
    //   3052: ifnonnull +1563 -> 4615
    //   3055: aload 16
    //   3057: getfield 710	com/google/android/gms/internal/gl:aRN	Ljava/lang/Long;
    //   3060: invokevirtual 611	java/lang/Long:longValue	()J
    //   3063: lconst_1
    //   3064: lcmp
    //   3065: ifle +29 -> 3094
    //   3068: aload_0
    //   3069: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   3072: pop
    //   3073: aload 23
    //   3075: aload 23
    //   3077: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   3080: ldc_w 712
    //   3083: aload 16
    //   3085: getfield 710	com/google/android/gms/internal/gl:aRN	Ljava/lang/Long;
    //   3088: invokestatic 715	com/google/android/gms/internal/le:a	([Lcom/google/android/gms/internal/ls;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/ls;
    //   3091: putfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   3094: aload 16
    //   3096: getfield 718	com/google/android/gms/internal/gl:aRO	Ljava/lang/Boolean;
    //   3099: ifnull +1480 -> 4579
    //   3102: aload 16
    //   3104: getfield 718	com/google/android/gms/internal/gl:aRO	Ljava/lang/Boolean;
    //   3107: invokevirtual 670	java/lang/Boolean:booleanValue	()Z
    //   3110: ifeq +1469 -> 4579
    //   3113: aload_0
    //   3114: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   3117: pop
    //   3118: aload 23
    //   3120: aload 23
    //   3122: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   3125: ldc_w 720
    //   3128: lconst_1
    //   3129: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3132: invokestatic 715	com/google/android/gms/internal/le:a	([Lcom/google/android/gms/internal/ls;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/ls;
    //   3135: putfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   3138: goto +1441 -> 4579
    //   3141: new 620	com/google/android/gms/internal/ld
    //   3144: dup
    //   3145: aload 18
    //   3147: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   3150: ldc_w 626
    //   3153: ldc_w 614
    //   3156: aload_0
    //   3157: getfield 112	com/google/android/gms/internal/hz:aLd	Lcom/google/android/gms/common/util/e;
    //   3160: invokeinterface 118 1 0
    //   3165: aload 16
    //   3167: getfield 624	com/google/android/gms/internal/ld:value	Ljava/lang/Object;
    //   3170: checkcast 507	java/lang/Long
    //   3173: invokevirtual 611	java/lang/Long:longValue	()J
    //   3176: lload_1
    //   3177: ladd
    //   3178: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3181: invokespecial 629	com/google/android/gms/internal/ld:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    //   3184: astore 16
    //   3186: goto -541 -> 2645
    //   3189: aload 23
    //   3191: ldc_w 722
    //   3194: lconst_1
    //   3195: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3198: invokestatic 725	com/google/android/gms/internal/hz:a	(Lcom/google/android/gms/internal/lr;Ljava/lang/String;Ljava/lang/Object;)Z
    //   3201: ifne +1243 -> 4444
    //   3204: aload_0
    //   3205: invokevirtual 379	com/google/android/gms/internal/hz:qM	()Lcom/google/android/gms/internal/ht;
    //   3208: aload 24
    //   3210: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   3213: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   3216: aload 23
    //   3218: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   3221: invokevirtual 728	com/google/android/gms/internal/ht:E	(Ljava/lang/String;Ljava/lang/String;)I
    //   3224: istore 5
    //   3226: iload 5
    //   3228: ifgt +43 -> 3271
    //   3231: aload_0
    //   3232: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   3235: getfield 259	com/google/android/gms/internal/hb:aTd	Lcom/google/android/gms/internal/hd;
    //   3238: ldc_w 730
    //   3241: aload 23
    //   3243: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   3246: iload 5
    //   3248: invokestatic 735	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   3251: invokevirtual 404	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   3254: iload_3
    //   3255: iconst_1
    //   3256: iadd
    //   3257: istore 5
    //   3259: aload 20
    //   3261: iload_3
    //   3262: aload 23
    //   3264: aastore
    //   3265: iload 5
    //   3267: istore_3
    //   3268: goto +1325 -> 4593
    //   3271: aload 19
    //   3273: aload 23
    //   3275: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   3278: invokeinterface 694 2 0
    //   3283: checkcast 696	com/google/android/gms/internal/gl
    //   3286: astore 16
    //   3288: aload 16
    //   3290: ifnonnull +1151 -> 4441
    //   3293: aload_0
    //   3294: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   3297: aload 24
    //   3299: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   3302: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   3305: aload 23
    //   3307: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   3310: invokevirtual 700	com/google/android/gms/internal/gd:t	(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/gl;
    //   3313: astore 17
    //   3315: aload 17
    //   3317: astore 16
    //   3319: aload 17
    //   3321: ifnonnull +65 -> 3386
    //   3324: aload_0
    //   3325: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   3328: getfield 259	com/google/android/gms/internal/hb:aTd	Lcom/google/android/gms/internal/hd;
    //   3331: ldc_w 737
    //   3334: aload 24
    //   3336: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   3339: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   3342: aload 23
    //   3344: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   3347: invokevirtual 404	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   3350: new 696	com/google/android/gms/internal/gl
    //   3353: dup
    //   3354: aload 24
    //   3356: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   3359: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   3362: aload 23
    //   3364: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   3367: lconst_1
    //   3368: lconst_1
    //   3369: aload 23
    //   3371: getfield 514	com/google/android/gms/internal/lr:aYi	Ljava/lang/Long;
    //   3374: invokevirtual 611	java/lang/Long:longValue	()J
    //   3377: lconst_0
    //   3378: aconst_null
    //   3379: aconst_null
    //   3380: aconst_null
    //   3381: invokespecial 740	com/google/android/gms/internal/gl:<init>	(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    //   3384: astore 16
    //   3386: aload_0
    //   3387: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   3390: pop
    //   3391: aload 23
    //   3393: ldc_w 742
    //   3396: invokestatic 606	com/google/android/gms/internal/le:b	(Lcom/google/android/gms/internal/lr;Ljava/lang/String;)Ljava/lang/Object;
    //   3399: checkcast 507	java/lang/Long
    //   3402: astore 17
    //   3404: aload 17
    //   3406: ifnull +1203 -> 4609
    //   3409: iconst_1
    //   3410: istore 12
    //   3412: iload 12
    //   3414: invokestatic 745	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   3417: astore 25
    //   3419: iload 5
    //   3421: iconst_1
    //   3422: if_icmpne +83 -> 3505
    //   3425: iload_3
    //   3426: iconst_1
    //   3427: iadd
    //   3428: istore 5
    //   3430: aload 20
    //   3432: iload_3
    //   3433: aload 23
    //   3435: aastore
    //   3436: iload 5
    //   3438: istore_3
    //   3439: aload 25
    //   3441: invokevirtual 670	java/lang/Boolean:booleanValue	()Z
    //   3444: ifeq +1149 -> 4593
    //   3447: aload 16
    //   3449: getfield 707	com/google/android/gms/internal/gl:aRM	Ljava/lang/Long;
    //   3452: ifnonnull +22 -> 3474
    //   3455: aload 16
    //   3457: getfield 710	com/google/android/gms/internal/gl:aRN	Ljava/lang/Long;
    //   3460: ifnonnull +14 -> 3474
    //   3463: iload 5
    //   3465: istore_3
    //   3466: aload 16
    //   3468: getfield 718	com/google/android/gms/internal/gl:aRO	Ljava/lang/Boolean;
    //   3471: ifnull +1122 -> 4593
    //   3474: aload 16
    //   3476: aconst_null
    //   3477: aconst_null
    //   3478: aconst_null
    //   3479: invokevirtual 748	com/google/android/gms/internal/gl:a	(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/gl;
    //   3482: astore 16
    //   3484: aload 19
    //   3486: aload 23
    //   3488: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   3491: aload 16
    //   3493: invokeinterface 704 3 0
    //   3498: pop
    //   3499: iload 5
    //   3501: istore_3
    //   3502: goto +1091 -> 4593
    //   3505: aload 21
    //   3507: iload 5
    //   3509: invokevirtual 754	java/security/SecureRandom:nextInt	(I)I
    //   3512: ifne +100 -> 3612
    //   3515: aload_0
    //   3516: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   3519: pop
    //   3520: aload 23
    //   3522: aload 23
    //   3524: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   3527: ldc_w 712
    //   3530: iload 5
    //   3532: i2l
    //   3533: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3536: invokestatic 715	com/google/android/gms/internal/le:a	([Lcom/google/android/gms/internal/ls;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/ls;
    //   3539: putfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   3542: iload_3
    //   3543: iconst_1
    //   3544: iadd
    //   3545: istore 6
    //   3547: aload 20
    //   3549: iload_3
    //   3550: aload 23
    //   3552: aastore
    //   3553: aload 16
    //   3555: astore 17
    //   3557: aload 25
    //   3559: invokevirtual 670	java/lang/Boolean:booleanValue	()Z
    //   3562: ifeq +18 -> 3580
    //   3565: aload 16
    //   3567: aconst_null
    //   3568: iload 5
    //   3570: i2l
    //   3571: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3574: aconst_null
    //   3575: invokevirtual 748	com/google/android/gms/internal/gl:a	(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/gl;
    //   3578: astore 17
    //   3580: aload 19
    //   3582: aload 23
    //   3584: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   3587: aload 17
    //   3589: aload 23
    //   3591: getfield 514	com/google/android/gms/internal/lr:aYi	Ljava/lang/Long;
    //   3594: invokevirtual 611	java/lang/Long:longValue	()J
    //   3597: invokevirtual 757	com/google/android/gms/internal/gl:C	(J)Lcom/google/android/gms/internal/gl;
    //   3600: invokeinterface 704 3 0
    //   3605: pop
    //   3606: iload 6
    //   3608: istore_3
    //   3609: goto +984 -> 4593
    //   3612: aload 16
    //   3614: getfield 760	com/google/android/gms/internal/gl:aRL	J
    //   3617: lstore_1
    //   3618: aload 23
    //   3620: getfield 514	com/google/android/gms/internal/lr:aYi	Ljava/lang/Long;
    //   3623: invokevirtual 611	java/lang/Long:longValue	()J
    //   3626: lload_1
    //   3627: lsub
    //   3628: invokestatic 766	java/lang/Math:abs	(J)J
    //   3631: ldc2_w 767
    //   3634: lcmp
    //   3635: iflt +128 -> 3763
    //   3638: aload_0
    //   3639: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   3642: pop
    //   3643: aload 23
    //   3645: aload 23
    //   3647: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   3650: ldc_w 720
    //   3653: lconst_1
    //   3654: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3657: invokestatic 715	com/google/android/gms/internal/le:a	([Lcom/google/android/gms/internal/ls;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/ls;
    //   3660: putfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   3663: aload_0
    //   3664: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   3667: pop
    //   3668: aload 23
    //   3670: aload 23
    //   3672: getfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   3675: ldc_w 712
    //   3678: iload 5
    //   3680: i2l
    //   3681: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3684: invokestatic 715	com/google/android/gms/internal/le:a	([Lcom/google/android/gms/internal/ls;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/ls;
    //   3687: putfield 528	com/google/android/gms/internal/lr:aYh	[Lcom/google/android/gms/internal/ls;
    //   3690: iload_3
    //   3691: iconst_1
    //   3692: iadd
    //   3693: istore 6
    //   3695: aload 20
    //   3697: iload_3
    //   3698: aload 23
    //   3700: aastore
    //   3701: aload 16
    //   3703: astore 17
    //   3705: aload 25
    //   3707: invokevirtual 670	java/lang/Boolean:booleanValue	()Z
    //   3710: ifeq +21 -> 3731
    //   3713: aload 16
    //   3715: aconst_null
    //   3716: iload 5
    //   3718: i2l
    //   3719: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3722: iconst_1
    //   3723: invokestatic 745	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   3726: invokevirtual 748	com/google/android/gms/internal/gl:a	(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/gl;
    //   3729: astore 17
    //   3731: aload 19
    //   3733: aload 23
    //   3735: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   3738: aload 17
    //   3740: aload 23
    //   3742: getfield 514	com/google/android/gms/internal/lr:aYi	Ljava/lang/Long;
    //   3745: invokevirtual 611	java/lang/Long:longValue	()J
    //   3748: invokevirtual 757	com/google/android/gms/internal/gl:C	(J)Lcom/google/android/gms/internal/gl;
    //   3751: invokeinterface 704 3 0
    //   3756: pop
    //   3757: iload 6
    //   3759: istore_3
    //   3760: goto +833 -> 4593
    //   3763: aload 25
    //   3765: invokevirtual 670	java/lang/Boolean:booleanValue	()Z
    //   3768: ifeq +847 -> 4615
    //   3771: aload 19
    //   3773: aload 23
    //   3775: getfield 382	com/google/android/gms/internal/lr:name	Ljava/lang/String;
    //   3778: aload 16
    //   3780: aload 17
    //   3782: aconst_null
    //   3783: aconst_null
    //   3784: invokevirtual 748	com/google/android/gms/internal/gl:a	(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/gl;
    //   3787: invokeinterface 704 3 0
    //   3792: pop
    //   3793: goto +822 -> 4615
    //   3796: iload_3
    //   3797: aload 18
    //   3799: getfield 363	com/google/android/gms/internal/lu:aYp	[Lcom/google/android/gms/internal/lr;
    //   3802: arraylength
    //   3803: if_icmpge +17 -> 3820
    //   3806: aload 18
    //   3808: aload 20
    //   3810: iload_3
    //   3811: invokestatic 546	java/util/Arrays:copyOf	([Ljava/lang/Object;I)[Ljava/lang/Object;
    //   3814: checkcast 612	[Lcom/google/android/gms/internal/lr;
    //   3817: putfield 363	com/google/android/gms/internal/lu:aYp	[Lcom/google/android/gms/internal/lr;
    //   3820: aload 19
    //   3822: invokeinterface 772 1 0
    //   3827: invokeinterface 778 1 0
    //   3832: astore 16
    //   3834: aload 16
    //   3836: invokeinterface 783 1 0
    //   3841: ifeq +35 -> 3876
    //   3844: aload 16
    //   3846: invokeinterface 787 1 0
    //   3851: checkcast 789	java/util/Map$Entry
    //   3854: astore 17
    //   3856: aload_0
    //   3857: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   3860: aload 17
    //   3862: invokeinterface 792 1 0
    //   3867: checkcast 696	com/google/android/gms/internal/gl
    //   3870: invokevirtual 795	com/google/android/gms/internal/gd:a	(Lcom/google/android/gms/internal/gl;)V
    //   3873: goto -39 -> 3834
    //   3876: aload 18
    //   3878: ldc2_w 796
    //   3881: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3884: putfield 800	com/google/android/gms/internal/lu:aYs	Ljava/lang/Long;
    //   3887: aload 18
    //   3889: ldc2_w 801
    //   3892: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3895: putfield 805	com/google/android/gms/internal/lu:aYt	Ljava/lang/Long;
    //   3898: iconst_0
    //   3899: istore_3
    //   3900: iload_3
    //   3901: aload 18
    //   3903: getfield 363	com/google/android/gms/internal/lu:aYp	[Lcom/google/android/gms/internal/lr;
    //   3906: arraylength
    //   3907: if_icmpge +75 -> 3982
    //   3910: aload 18
    //   3912: getfield 363	com/google/android/gms/internal/lu:aYp	[Lcom/google/android/gms/internal/lr;
    //   3915: iload_3
    //   3916: aaload
    //   3917: astore 16
    //   3919: aload 16
    //   3921: getfield 514	com/google/android/gms/internal/lr:aYi	Ljava/lang/Long;
    //   3924: invokevirtual 611	java/lang/Long:longValue	()J
    //   3927: aload 18
    //   3929: getfield 800	com/google/android/gms/internal/lu:aYs	Ljava/lang/Long;
    //   3932: invokevirtual 611	java/lang/Long:longValue	()J
    //   3935: lcmp
    //   3936: ifge +13 -> 3949
    //   3939: aload 18
    //   3941: aload 16
    //   3943: getfield 514	com/google/android/gms/internal/lr:aYi	Ljava/lang/Long;
    //   3946: putfield 800	com/google/android/gms/internal/lu:aYs	Ljava/lang/Long;
    //   3949: aload 16
    //   3951: getfield 514	com/google/android/gms/internal/lr:aYi	Ljava/lang/Long;
    //   3954: invokevirtual 611	java/lang/Long:longValue	()J
    //   3957: aload 18
    //   3959: getfield 805	com/google/android/gms/internal/lu:aYt	Ljava/lang/Long;
    //   3962: invokevirtual 611	java/lang/Long:longValue	()J
    //   3965: lcmp
    //   3966: ifle +652 -> 4618
    //   3969: aload 18
    //   3971: aload 16
    //   3973: getfield 514	com/google/android/gms/internal/lr:aYi	Ljava/lang/Long;
    //   3976: putfield 805	com/google/android/gms/internal/lu:aYt	Ljava/lang/Long;
    //   3979: goto +639 -> 4618
    //   3982: aload 24
    //   3984: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   3987: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   3990: astore 17
    //   3992: aload_0
    //   3993: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   3996: aload 17
    //   3998: invokevirtual 809	com/google/android/gms/internal/gd:cb	(Ljava/lang/String;)Lcom/google/android/gms/internal/fw;
    //   4001: astore 19
    //   4003: aload 19
    //   4005: ifnonnull +166 -> 4171
    //   4008: aload_0
    //   4009: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   4012: getfield 447	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   4015: ldc_w 811
    //   4018: aload 24
    //   4020: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   4023: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   4026: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   4029: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   4032: aload 18
    //   4034: getfield 363	com/google/android/gms/internal/lu:aYp	[Lcom/google/android/gms/internal/lr;
    //   4037: arraylength
    //   4038: ifle +70 -> 4108
    //   4041: aload_0
    //   4042: invokevirtual 379	com/google/android/gms/internal/hz:qM	()Lcom/google/android/gms/internal/ht;
    //   4045: aload 24
    //   4047: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   4050: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   4053: invokevirtual 815	com/google/android/gms/internal/ht:cr	(Ljava/lang/String;)Lcom/google/android/gms/internal/lo;
    //   4056: astore 16
    //   4058: aload 16
    //   4060: ifnull +11 -> 4071
    //   4063: aload 16
    //   4065: getfield 820	com/google/android/gms/internal/lo:aXW	Ljava/lang/Long;
    //   4068: ifnonnull +285 -> 4353
    //   4071: aload 24
    //   4073: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   4076: getfield 823	com/google/android/gms/internal/lu:aQz	Ljava/lang/String;
    //   4079: invokestatic 296	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4082: ifeq +244 -> 4326
    //   4085: aload 18
    //   4087: ldc2_w 101
    //   4090: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4093: putfield 826	com/google/android/gms/internal/lu:aYM	Ljava/lang/Long;
    //   4096: aload_0
    //   4097: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   4100: aload 18
    //   4102: iload 11
    //   4104: invokevirtual 829	com/google/android/gms/internal/gd:a	(Lcom/google/android/gms/internal/lu;Z)Z
    //   4107: pop
    //   4108: aload_0
    //   4109: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   4112: aload 24
    //   4114: getfield 832	com/google/android/gms/internal/hz$a:aVy	Ljava/util/List;
    //   4117: invokevirtual 835	com/google/android/gms/internal/gd:t	(Ljava/util/List;)V
    //   4120: aload_0
    //   4121: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   4124: astore 16
    //   4126: aload 16
    //   4128: invokevirtual 290	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   4131: astore 18
    //   4133: aload 18
    //   4135: ldc_w 837
    //   4138: iconst_2
    //   4139: anewarray 298	java/lang/String
    //   4142: dup
    //   4143: iconst_0
    //   4144: aload 17
    //   4146: aastore
    //   4147: dup
    //   4148: iconst_1
    //   4149: aload 17
    //   4151: aastore
    //   4152: invokevirtual 841	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   4155: aload_0
    //   4156: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   4159: invokevirtual 844	com/google/android/gms/internal/gd:setTransactionSuccessful	()V
    //   4162: aload_0
    //   4163: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   4166: invokevirtual 456	com/google/android/gms/internal/gd:endTransaction	()V
    //   4169: iconst_1
    //   4170: ireturn
    //   4171: aload 18
    //   4173: getfield 363	com/google/android/gms/internal/lu:aYp	[Lcom/google/android/gms/internal/lr;
    //   4176: arraylength
    //   4177: ifle -145 -> 4032
    //   4180: aload 19
    //   4182: invokevirtual 849	com/google/android/gms/internal/fw:qV	()J
    //   4185: lstore_1
    //   4186: lload_1
    //   4187: lconst_0
    //   4188: lcmp
    //   4189: ifeq +436 -> 4625
    //   4192: lload_1
    //   4193: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4196: astore 16
    //   4198: aload 18
    //   4200: aload 16
    //   4202: putfield 852	com/google/android/gms/internal/lu:aYv	Ljava/lang/Long;
    //   4205: aload 19
    //   4207: invokevirtual 855	com/google/android/gms/internal/fw:qU	()J
    //   4210: lstore 9
    //   4212: lload 9
    //   4214: lconst_0
    //   4215: lcmp
    //   4216: ifne +219 -> 4435
    //   4219: lload_1
    //   4220: lconst_0
    //   4221: lcmp
    //   4222: ifeq +409 -> 4631
    //   4225: lload_1
    //   4226: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4229: astore 16
    //   4231: aload 18
    //   4233: aload 16
    //   4235: putfield 858	com/google/android/gms/internal/lu:aYu	Ljava/lang/Long;
    //   4238: aload 19
    //   4240: invokevirtual 861	com/google/android/gms/internal/fw:re	()V
    //   4243: aload 18
    //   4245: aload 19
    //   4247: invokevirtual 864	com/google/android/gms/internal/fw:rb	()J
    //   4250: l2i
    //   4251: invokestatic 735	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   4254: putfield 868	com/google/android/gms/internal/lu:aYF	Ljava/lang/Integer;
    //   4257: aload 19
    //   4259: aload 18
    //   4261: getfield 800	com/google/android/gms/internal/lu:aYs	Ljava/lang/Long;
    //   4264: invokevirtual 611	java/lang/Long:longValue	()J
    //   4267: invokevirtual 872	com/google/android/gms/internal/fw:r	(J)V
    //   4270: aload 19
    //   4272: aload 18
    //   4274: getfield 805	com/google/android/gms/internal/lu:aYt	Ljava/lang/Long;
    //   4277: invokevirtual 611	java/lang/Long:longValue	()J
    //   4280: invokevirtual 875	com/google/android/gms/internal/fw:s	(J)V
    //   4283: aload 19
    //   4285: getfield 878	com/google/android/gms/internal/fw:zzjev	Lcom/google/android/gms/internal/hz;
    //   4288: invokevirtual 882	com/google/android/gms/internal/hz:qO	()Lcom/google/android/gms/internal/hu;
    //   4291: invokevirtual 283	com/google/android/gms/internal/ix:mN	()V
    //   4294: aload 19
    //   4296: getfield 885	com/google/android/gms/internal/fw:aQT	Ljava/lang/String;
    //   4299: astore 16
    //   4301: aload 19
    //   4303: aconst_null
    //   4304: invokevirtual 888	com/google/android/gms/internal/fw:bV	(Ljava/lang/String;)V
    //   4307: aload 18
    //   4309: aload 16
    //   4311: putfield 891	com/google/android/gms/internal/lu:aQX	Ljava/lang/String;
    //   4314: aload_0
    //   4315: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   4318: aload 19
    //   4320: invokevirtual 894	com/google/android/gms/internal/gd:a	(Lcom/google/android/gms/internal/fw;)V
    //   4323: goto -291 -> 4032
    //   4326: aload_0
    //   4327: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   4330: getfield 259	com/google/android/gms/internal/hb:aTd	Lcom/google/android/gms/internal/hd;
    //   4333: ldc_w 896
    //   4336: aload 24
    //   4338: getfield 352	com/google/android/gms/internal/hz$a:aVx	Lcom/google/android/gms/internal/lu;
    //   4341: getfield 367	com/google/android/gms/internal/lu:aQx	Ljava/lang/String;
    //   4344: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   4347: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   4350: goto -254 -> 4096
    //   4353: aload 18
    //   4355: aload 16
    //   4357: getfield 820	com/google/android/gms/internal/lo:aXW	Ljava/lang/Long;
    //   4360: putfield 826	com/google/android/gms/internal/lu:aYM	Ljava/lang/Long;
    //   4363: goto -267 -> 4096
    //   4366: astore 18
    //   4368: aload 16
    //   4370: invokevirtual 234	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   4373: getfield 447	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   4376: ldc_w 898
    //   4379: aload 17
    //   4381: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   4384: aload 18
    //   4386: invokevirtual 404	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   4389: goto -234 -> 4155
    //   4392: aload_0
    //   4393: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   4396: invokevirtual 844	com/google/android/gms/internal/gd:setTransactionSuccessful	()V
    //   4399: aload_0
    //   4400: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   4403: invokevirtual 456	com/google/android/gms/internal/gd:endTransaction	()V
    //   4406: iconst_0
    //   4407: ireturn
    //   4408: astore 17
    //   4410: goto -2811 -> 1599
    //   4413: astore 19
    //   4415: aload 18
    //   4417: astore 20
    //   4419: goto -3059 -> 1360
    //   4422: astore 19
    //   4424: aload 17
    //   4426: astore 20
    //   4428: aload 18
    //   4430: astore 17
    //   4432: goto -3072 -> 1360
    //   4435: lload 9
    //   4437: lstore_1
    //   4438: goto -219 -> 4219
    //   4441: goto -1055 -> 3386
    //   4444: iconst_1
    //   4445: istore 5
    //   4447: goto -1221 -> 3226
    //   4450: goto -2051 -> 2399
    //   4453: goto +101 -> 4554
    //   4456: iconst_1
    //   4457: istore 12
    //   4459: goto -2337 -> 2122
    //   4462: goto +83 -> 4545
    //   4465: goto -3985 -> 480
    //   4468: lload 9
    //   4470: ldc2_w 101
    //   4473: lcmp
    //   4474: ifeq +22 -> 4496
    //   4477: ldc_w 900
    //   4480: astore 20
    //   4482: goto -4344 -> 138
    //   4485: iconst_1
    //   4486: istore_3
    //   4487: goto -4227 -> 260
    //   4490: iconst_1
    //   4491: istore 4
    //   4493: goto -4050 -> 443
    //   4496: ldc_w 902
    //   4499: astore 20
    //   4501: goto -4363 -> 138
    //   4504: lload 9
    //   4506: ldc2_w 101
    //   4509: lcmp
    //   4510: ifeq +11 -> 4521
    //   4513: ldc_w 904
    //   4516: astore 20
    //   4518: goto -3755 -> 763
    //   4521: ldc_w 902
    //   4524: astore 20
    //   4526: goto -3763 -> 763
    //   4529: astore 17
    //   4531: goto -2932 -> 1599
    //   4534: iconst_0
    //   4535: istore_3
    //   4536: goto -4276 -> 260
    //   4539: iconst_0
    //   4540: istore 4
    //   4542: goto -4099 -> 443
    //   4545: iload 6
    //   4547: iconst_1
    //   4548: iadd
    //   4549: istore 6
    //   4551: goto -2852 -> 1699
    //   4554: iload 4
    //   4556: iconst_1
    //   4557: iadd
    //   4558: istore 4
    //   4560: goto -2315 -> 2245
    //   4563: iload 4
    //   4565: iconst_1
    //   4566: iadd
    //   4567: istore 4
    //   4569: goto -2555 -> 2014
    //   4572: iload 13
    //   4574: istore 11
    //   4576: goto -2237 -> 2339
    //   4579: iload_3
    //   4580: iconst_1
    //   4581: iadd
    //   4582: istore 5
    //   4584: aload 20
    //   4586: iload_3
    //   4587: aload 23
    //   4589: aastore
    //   4590: iload 5
    //   4592: istore_3
    //   4593: iload 4
    //   4595: iconst_1
    //   4596: iadd
    //   4597: istore 4
    //   4599: goto -1652 -> 2947
    //   4602: iload_3
    //   4603: iconst_1
    //   4604: iadd
    //   4605: istore_3
    //   4606: goto -1909 -> 2697
    //   4609: iconst_0
    //   4610: istore 12
    //   4612: goto -1200 -> 3412
    //   4615: goto -22 -> 4593
    //   4618: iload_3
    //   4619: iconst_1
    //   4620: iadd
    //   4621: istore_3
    //   4622: goto -722 -> 3900
    //   4625: aconst_null
    //   4626: astore 16
    //   4628: goto -430 -> 4198
    //   4631: aconst_null
    //   4632: astore 16
    //   4634: goto -403 -> 4231
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	4637	0	this	hz
    //   0	4637	1	paramLong	long
    //   260	4362	3	i	int
    //   443	4155	4	j	int
    //   311	4280	5	k	int
    //   1697	2853	6	m	int
    //   1662	1290	7	n	int
    //   1694	10	8	i1	int
    //   31	4474	9	l	long
    //   217	4358	11	bool1	boolean
    //   2016	2595	12	bool2	boolean
    //   1648	2925	13	bool3	boolean
    //   308	2270	14	bool4	boolean
    //   1634	508	15	bool5	boolean
    //   65	609	16	localObject1	Object
    //   709	10	16	localObject2	Object
    //   740	3893	16	localObject3	Object
    //   61	4319	17	localObject4	Object
    //   4408	17	17	localObject5	Object
    //   4430	1	17	localSQLiteException1	SQLiteException
    //   4529	1	17	localObject6	Object
    //   57	4297	18	localObject7	Object
    //   4366	63	18	localSQLiteException2	SQLiteException
    //   133	1078	19	localObject8	Object
    //   1266	75	19	localIOException1	IOException
    //   1345	1	19	localObject9	Object
    //   1350	31	19	localSQLiteException3	SQLiteException
    //   1425	36	19	localObject10	Object
    //   1539	952	19	localIOException2	IOException
    //   2908	1411	19	localObject11	Object
    //   4413	1	19	localSQLiteException4	SQLiteException
    //   4422	1	19	localSQLiteException5	SQLiteException
    //   156	4429	20	localObject12	Object
    //   25	3481	21	localObject13	Object
    //   53	2902	22	localObject14	Object
    //   50	4538	23	locallr	lr
    //   16	4321	24	locala	a
    //   22	3742	25	localObject15	Object
    //   72	1091	26	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   7	24	709	finally
    //   27	49	709	finally
    //   229	236	709	finally
    //   236	257	709	finally
    //   267	292	709	finally
    //   296	310	709	finally
    //   313	440	709	finally
    //   448	480	709	finally
    //   699	706	709	finally
    //   853	860	709	finally
    //   1256	1263	709	finally
    //   1302	1309	709	finally
    //   1390	1397	709	finally
    //   1529	1536	709	finally
    //   1589	1596	709	finally
    //   1604	1611	709	finally
    //   1611	1614	709	finally
    //   1614	1636	709	finally
    //   1641	1646	709	finally
    //   1650	1661	709	finally
    //   1667	1684	709	finally
    //   1684	1696	709	finally
    //   1713	1736	709	finally
    //   1742	1765	709	finally
    //   1781	1870	709	finally
    //   1875	1964	709	finally
    //   1964	2011	709	finally
    //   2018	2062	709	finally
    //   2067	2081	709	finally
    //   2081	2111	709	finally
    //   2111	2118	709	finally
    //   2126	2137	709	finally
    //   2150	2224	709	finally
    //   2230	2242	709	finally
    //   2259	2273	709	finally
    //   2280	2294	709	finally
    //   2310	2335	709	finally
    //   2344	2375	709	finally
    //   2375	2399	709	finally
    //   2399	2406	709	finally
    //   2428	2447	709	finally
    //   2454	2478	709	finally
    //   2485	2503	709	finally
    //   2508	2532	709	finally
    //   2535	2543	709	finally
    //   2546	2577	709	finally
    //   2582	2599	709	finally
    //   2604	2612	709	finally
    //   2612	2645	709	finally
    //   2645	2692	709	finally
    //   2701	2739	709	finally
    //   2747	2790	709	finally
    //   2796	2824	709	finally
    //   2824	2921	709	finally
    //   2923	2944	709	finally
    //   2961	3007	709	finally
    //   3016	3047	709	finally
    //   3047	3094	709	finally
    //   3094	3138	709	finally
    //   3141	3186	709	finally
    //   3189	3226	709	finally
    //   3231	3254	709	finally
    //   3271	3288	709	finally
    //   3293	3315	709	finally
    //   3324	3386	709	finally
    //   3386	3404	709	finally
    //   3412	3419	709	finally
    //   3439	3463	709	finally
    //   3466	3474	709	finally
    //   3474	3499	709	finally
    //   3505	3542	709	finally
    //   3557	3580	709	finally
    //   3580	3606	709	finally
    //   3612	3690	709	finally
    //   3705	3731	709	finally
    //   3731	3757	709	finally
    //   3763	3793	709	finally
    //   3796	3820	709	finally
    //   3820	3834	709	finally
    //   3834	3873	709	finally
    //   3876	3898	709	finally
    //   3900	3949	709	finally
    //   3949	3979	709	finally
    //   3982	4003	709	finally
    //   4008	4032	709	finally
    //   4032	4058	709	finally
    //   4063	4071	709	finally
    //   4071	4096	709	finally
    //   4096	4108	709	finally
    //   4108	4133	709	finally
    //   4133	4155	709	finally
    //   4155	4162	709	finally
    //   4171	4186	709	finally
    //   4192	4198	709	finally
    //   4198	4212	709	finally
    //   4225	4231	709	finally
    //   4231	4323	709	finally
    //   4326	4350	709	finally
    //   4353	4363	709	finally
    //   4368	4389	709	finally
    //   4392	4399	709	finally
    //   1008	1016	1266	java/io/IOException
    //   604	649	1350	android/database/sqlite/SQLiteException
    //   657	667	1350	android/database/sqlite/SQLiteException
    //   675	694	1350	android/database/sqlite/SQLiteException
    //   955	965	1350	android/database/sqlite/SQLiteException
    //   973	983	1350	android/database/sqlite/SQLiteException
    //   991	1000	1350	android/database/sqlite/SQLiteException
    //   1008	1016	1350	android/database/sqlite/SQLiteException
    //   1024	1034	1350	android/database/sqlite/SQLiteException
    //   1042	1061	1350	android/database/sqlite/SQLiteException
    //   1069	1076	1350	android/database/sqlite/SQLiteException
    //   1084	1093	1350	android/database/sqlite/SQLiteException
    //   1115	1121	1350	android/database/sqlite/SQLiteException
    //   1141	1150	1350	android/database/sqlite/SQLiteException
    //   1162	1210	1350	android/database/sqlite/SQLiteException
    //   1276	1297	1350	android/database/sqlite/SQLiteException
    //   1325	1331	1350	android/database/sqlite/SQLiteException
    //   1458	1466	1539	java/io/IOException
    //   4133	4155	4366	android/database/sqlite/SQLiteException
    //   604	649	4408	finally
    //   657	667	4408	finally
    //   675	694	4408	finally
    //   955	965	4408	finally
    //   973	983	4408	finally
    //   991	1000	4408	finally
    //   1008	1016	4408	finally
    //   1024	1034	4408	finally
    //   1042	1061	4408	finally
    //   1069	1076	4408	finally
    //   1084	1093	4408	finally
    //   1115	1121	4408	finally
    //   1141	1150	4408	finally
    //   1162	1210	4408	finally
    //   1276	1297	4408	finally
    //   1325	1331	4408	finally
    //   67	74	4413	android/database/sqlite/SQLiteException
    //   86	93	4413	android/database/sqlite/SQLiteException
    //   114	135	4413	android/database/sqlite/SQLiteException
    //   150	198	4413	android/database/sqlite/SQLiteException
    //   210	219	4413	android/database/sqlite/SQLiteException
    //   501	514	4413	android/database/sqlite/SQLiteException
    //   529	539	4413	android/database/sqlite/SQLiteException
    //   551	561	4413	android/database/sqlite/SQLiteException
    //   573	580	4413	android/database/sqlite/SQLiteException
    //   742	760	4413	android/database/sqlite/SQLiteException
    //   775	822	4413	android/database/sqlite/SQLiteException
    //   834	843	4413	android/database/sqlite/SQLiteException
    //   875	885	4413	android/database/sqlite/SQLiteException
    //   900	910	4413	android/database/sqlite/SQLiteException
    //   922	929	4413	android/database/sqlite/SQLiteException
    //   1218	1228	4422	android/database/sqlite/SQLiteException
    //   1232	1251	4422	android/database/sqlite/SQLiteException
    //   1404	1413	4422	android/database/sqlite/SQLiteException
    //   1417	1427	4422	android/database/sqlite/SQLiteException
    //   1431	1441	4422	android/database/sqlite/SQLiteException
    //   1445	1454	4422	android/database/sqlite/SQLiteException
    //   1458	1466	4422	android/database/sqlite/SQLiteException
    //   1470	1483	4422	android/database/sqlite/SQLiteException
    //   1487	1503	4422	android/database/sqlite/SQLiteException
    //   1507	1519	4422	android/database/sqlite/SQLiteException
    //   1545	1566	4422	android/database/sqlite/SQLiteException
    //   1570	1579	4422	android/database/sqlite/SQLiteException
    //   67	74	4529	finally
    //   86	93	4529	finally
    //   114	135	4529	finally
    //   150	198	4529	finally
    //   210	219	4529	finally
    //   501	514	4529	finally
    //   529	539	4529	finally
    //   551	561	4529	finally
    //   573	580	4529	finally
    //   742	760	4529	finally
    //   775	822	4529	finally
    //   834	843	4529	finally
    //   875	885	4529	finally
    //   900	910	4529	finally
    //   922	929	4529	finally
    //   1218	1228	4529	finally
    //   1232	1251	4529	finally
    //   1364	1385	4529	finally
    //   1404	1413	4529	finally
    //   1417	1427	4529	finally
    //   1431	1441	4529	finally
    //   1445	1454	4529	finally
    //   1458	1466	4529	finally
    //   1470	1483	4529	finally
    //   1487	1503	4529	finally
    //   1507	1519	4529	finally
    //   1545	1566	4529	finally
    //   1570	1579	4529	finally
  }
  
  private final int a(FileChannel paramFileChannel)
  {
    qO().mN();
    if ((paramFileChannel == null) || (!paramFileChannel.isOpen())) {
      qP().aTa.bq("Bad channel to read from");
    }
    ByteBuffer localByteBuffer;
    for (;;)
    {
      return 0;
      localByteBuffer = ByteBuffer.allocate(4);
      try
      {
        paramFileChannel.position(0L);
        i = paramFileChannel.read(localByteBuffer);
        if (i != 4)
        {
          if (i == -1) {
            continue;
          }
          qP().aTd.j("Unexpected data length. Bytes read", Integer.valueOf(i));
          return 0;
        }
      }
      catch (IOException paramFileChannel)
      {
        qP().aTa.j("Failed to read from channel", paramFileChannel);
        return 0;
      }
    }
    localByteBuffer.flip();
    int i = localByteBuffer.getInt();
    return i;
  }
  
  private final fx a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject3 = "Unknown";
    String str = "Unknown";
    int i = Integer.MIN_VALUE;
    Object localObject1 = paramContext.getPackageManager();
    if (localObject1 == null)
    {
      qP().aTa.bq("PackageManager is null, can not log app install information");
      return null;
    }
    try
    {
      localObject1 = ((PackageManager)localObject1).getInstallerPackageName(paramString1);
      localObject3 = localObject1;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        try
        {
          localPackageInfo = ee.ag(paramContext).getPackageInfo(paramString1, 0);
          localObject3 = str;
          if (localPackageInfo != null)
          {
            localObject3 = ee.ag(paramContext).bN(paramString1);
            if (TextUtils.isEmpty((CharSequence)localObject3)) {
              break label245;
            }
            localObject3 = ((CharSequence)localObject3).toString();
          }
        }
        catch (PackageManager.NameNotFoundException paramContext)
        {
          localObject3 = "Unknown";
          qP().aTa.e("Error retrieving newly installed package info. appId, appName", hb.ck(paramString1), localObject3);
          return null;
        }
        try
        {
          str = localPackageInfo.versionName;
          i = localPackageInfo.versionCode;
          localObject3 = str;
          return new fx(paramString1, paramString2, (String)localObject3, i, (String)localObject1, 12211L, qL().o(paramContext, paramString1), null, paramBoolean1, false, "", 0L, 0L, 0, paramBoolean2);
        }
        catch (PackageManager.NameNotFoundException paramContext)
        {
          continue;
        }
        localIllegalArgumentException = localIllegalArgumentException;
        qP().aTa.j("Error retrieving installer package name. appId", hb.ck(paramString1));
        continue;
        localObject2 = localObject3;
        if ("com.android.vending".equals(localObject3)) {
          localObject2 = "";
        }
      }
    }
    if (localObject3 == null) {
      localObject1 = "manual_install";
    }
    for (;;)
    {
      PackageInfo localPackageInfo;
      Object localObject2;
      label245:
      localObject3 = "Unknown";
    }
  }
  
  private static void a(ix paramix)
  {
    if (paramix == null) {
      throw new IllegalStateException("Component not created");
    }
  }
  
  static void a(iy paramiy)
  {
    if (paramiy == null) {
      throw new IllegalStateException("Component not created");
    }
    if (!paramiy.isInitialized())
    {
      paramiy = String.valueOf(paramiy.getClass());
      throw new IllegalStateException(String.valueOf(paramiy).length() + 27 + "Component not initialized: " + paramiy);
    }
  }
  
  private final boolean a(int paramInt, FileChannel paramFileChannel)
  {
    boolean bool = true;
    qO().mN();
    if ((paramFileChannel == null) || (!paramFileChannel.isOpen()))
    {
      qP().aTa.bq("Bad channel to read from");
      bool = false;
    }
    for (;;)
    {
      return bool;
      ByteBuffer localByteBuffer = ByteBuffer.allocate(4);
      localByteBuffer.putInt(paramInt);
      localByteBuffer.flip();
      try
      {
        paramFileChannel.truncate(0L);
        paramFileChannel.write(localByteBuffer);
        paramFileChannel.force(true);
        if (paramFileChannel.size() != 4L)
        {
          qP().aTa.j("Error writing to channel. Bytes written", Long.valueOf(paramFileChannel.size()));
          return true;
        }
      }
      catch (IOException paramFileChannel)
      {
        qP().aTa.j("Failed to write to channel", paramFileChannel);
      }
    }
    return false;
  }
  
  private static boolean a(lr paramlr, String paramString, Object paramObject)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramObject == null)) {}
    label111:
    for (;;)
    {
      return false;
      paramlr = paramlr.aYh;
      int j = paramlr.length;
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          break label111;
        }
        Object localObject = paramlr[i];
        if (paramString.equals(((ls)localObject).name))
        {
          if (((!(paramObject instanceof Long)) || (!paramObject.equals(((ls)localObject).aYl))) && ((!(paramObject instanceof String)) || (!paramObject.equals(((ls)localObject).aTr))) && ((!(paramObject instanceof Double)) || (!paramObject.equals(((ls)localObject).aXk)))) {
            break;
          }
          return true;
        }
        i += 1;
      }
    }
  }
  
  private final boolean a(String paramString, gp paramgp)
  {
    String str = paramgp.aRH.aRP.getString("currency");
    double d1;
    long l1;
    Object localObject;
    int i;
    if ("ecommerce_purchase".equals(paramgp.name))
    {
      double d2 = Double.valueOf(paramgp.aRH.aRP.getDouble("value")).doubleValue() * 1000000.0D;
      d1 = d2;
      if (d2 == 0.0D) {
        d1 = paramgp.aRH.getLong("value").longValue() * 1000000.0D;
      }
      if ((d1 <= 9.223372036854776E18D) && (d1 >= -9.223372036854776E18D))
      {
        l1 = Math.round(d1);
        if (!TextUtils.isEmpty(str))
        {
          localObject = str.toUpperCase(Locale.US);
          if (((String)localObject).matches("[A-Z]{3}"))
          {
            str = String.valueOf("_ltv_");
            localObject = String.valueOf(localObject);
            if (((String)localObject).length() == 0) {
              break label387;
            }
            str = str.concat((String)localObject);
            localObject = qJ().v(paramString, str);
            if ((localObject != null) && ((((ld)localObject).value instanceof Long))) {
              break label426;
            }
            localObject = qJ();
            i = this.aUN.b(paramString, gr.aSI);
            ae.bf(paramString);
            ((ix)localObject).mN();
            ((iy)localObject).pf();
          }
        }
      }
    }
    for (;;)
    {
      try
      {
        ((gd)localObject).getWritableDatabase().execSQL("delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);", new String[] { paramString, paramString, String.valueOf(i - 1) });
        paramgp = new ld(paramString, paramgp.aRb, str, this.aLd.currentTimeMillis(), Long.valueOf(l1));
        if (!qJ().a(paramgp))
        {
          qP().aTa.d("Too many unique user properties are set. Ignoring user property. appId", hb.ck(paramString), qK().cj(paramgp.name), paramgp.value);
          qL().b(9, null, null, 0);
        }
        return true;
        qP().aTd.e("Data lost. Currency value is too big. appId", hb.ck(paramString), Double.valueOf(d1));
        return false;
        l1 = paramgp.aRH.getLong("value").longValue();
        break;
        label387:
        str = new String(str);
      }
      catch (SQLiteException localSQLiteException)
      {
        ((ix)localObject).qP().aTa.e("Error pruning currencies. appId", hb.ck(paramString), localSQLiteException);
        continue;
      }
      label426:
      long l2 = ((Long)((ld)localObject).value).longValue();
      paramgp = new ld(paramString, paramgp.aRb, str, this.aLd.currentTimeMillis(), Long.valueOf(l1 + l2));
    }
  }
  
  private final lq[] a(String paramString, lw[] paramArrayOflw, lr[] paramArrayOflr)
  {
    ae.bf(paramString);
    return qB().a(paramString, paramArrayOflr, paramArrayOflw);
  }
  
  public static hz ai(Context paramContext)
  {
    ae.E(paramContext);
    ae.E(paramContext.getApplicationContext());
    if (aUL == null) {}
    try
    {
      if (aUL == null) {
        aUL = new hz(new iz(paramContext));
      }
      return aUL;
    }
    finally {}
  }
  
  private final void b(fw paramfw)
  {
    qO().mN();
    if (TextUtils.isEmpty(paramfw.getGmpAppId()))
    {
      b(paramfw.getAppId(), 204, null, null, null);
      return;
    }
    Object localObject1 = paramfw.getGmpAppId();
    String str2 = paramfw.getAppInstanceId();
    Object localObject2 = new Uri.Builder();
    Object localObject3 = ((Uri.Builder)localObject2).scheme((String)gr.aSi.aSN).encodedAuthority((String)gr.aSj.aSN);
    localObject1 = String.valueOf(localObject1);
    if (((String)localObject1).length() != 0)
    {
      localObject1 = "config/app/".concat((String)localObject1);
      ((Uri.Builder)localObject3).path((String)localObject1).appendQueryParameter("app_instance_id", str2).appendQueryParameter("platform", "android").appendQueryParameter("gmp_version", "12211");
      str2 = ((Uri.Builder)localObject2).build().toString();
    }
    for (;;)
    {
      try
      {
        localObject2 = new URL(str2);
        qP().aTi.j("Fetching remote configuration", paramfw.getAppId());
        localObject1 = qM().cr(paramfw.getAppId());
        localObject3 = qM();
        String str3 = paramfw.getAppId();
        ((ix)localObject3).mN();
        localObject3 = (String)((ht)localObject3).aUu.get(str3);
        if ((localObject1 == null) || (TextUtils.isEmpty((CharSequence)localObject3))) {
          break label357;
        }
        localObject1 = new a();
        ((Map)localObject1).put("If-Modified-Since", localObject3);
        this.aVu = true;
        localObject3 = rW();
        str3 = paramfw.getAppId();
        id localid = new id(this);
        ((ix)localObject3).mN();
        ((iy)localObject3).pf();
        ae.E(localObject2);
        ae.E(localid);
        ((ix)localObject3).qO().j(new hi((hf)localObject3, str3, (URL)localObject2, null, (Map)localObject1, localid));
        return;
      }
      catch (MalformedURLException localMalformedURLException)
      {
        qP().aTa.e("Failed to parse config URL. Not fetching. appId", hb.ck(paramfw.getAppId()), str2);
        return;
      }
      String str1 = new String("config/app/");
      break;
      label357:
      str1 = null;
    }
  }
  
  private final Boolean c(fw paramfw)
  {
    try
    {
      if (paramfw.qW() != -2147483648L)
      {
        int i = ee.ag(this.aUM).getPackageInfo(paramfw.getAppId(), 0).versionCode;
        if (paramfw.qW() == i) {
          return Boolean.valueOf(true);
        }
      }
      else
      {
        String str = ee.ag(this.aUM).getPackageInfo(paramfw.getAppId(), 0).versionName;
        if ((paramfw.qq() != null) && (paramfw.qq().equals(str))) {
          return Boolean.valueOf(true);
        }
      }
    }
    catch (PackageManager.NameNotFoundException paramfw)
    {
      return null;
    }
    return Boolean.valueOf(false);
  }
  
  private final void c(gp paramgp, fx paramfx)
  {
    ae.E(paramfx);
    ae.bf(paramfx.packageName);
    long l1 = System.nanoTime();
    qO().mN();
    pf();
    localObject1 = paramfx.packageName;
    qL();
    if (!le.d(paramgp, paramfx)) {
      return;
    }
    if (!paramfx.aQK)
    {
      f(paramfx);
      return;
    }
    if (qM().C((String)localObject1, paramgp.name))
    {
      qP().aTd.e("Dropping blacklisted event. appId", hb.ck((String)localObject1), qK().ch(paramgp.name));
      if ((qL().cG((String)localObject1)) || (qL().cH((String)localObject1))) {}
      for (i = 1;; i = 0)
      {
        if ((i == 0) && (!"_err".equals(paramgp.name))) {
          qL().b(11, "_ev", paramgp.name, 0);
        }
        if (i == 0) {
          break;
        }
        paramgp = qJ().cb((String)localObject1);
        if (paramgp == null) {
          break;
        }
        l1 = Math.max(paramgp.rd(), paramgp.rc());
        if (Math.abs(this.aLd.currentTimeMillis() - l1) <= ((Long)gr.aSD.aSN).longValue()) {
          break;
        }
        qP().aTh.bq("Fetching config for blacklisted app");
        b(paramgp);
        return;
      }
    }
    if (qP().cQ(2)) {
      qP().aTi.j("Logging event", qK().a(paramgp));
    }
    qJ().beginTransaction();
    long l2;
    for (;;)
    {
      Object localObject2;
      try
      {
        f(paramfx);
        if ((("_iap".equals(paramgp.name)) || ("ecommerce_purchase".equals(paramgp.name))) && (!a((String)localObject1, paramgp)))
        {
          qJ().setTransactionSuccessful();
          return;
        }
        bool1 = le.cw(paramgp.name);
        boolean bool2 = "_err".equals(paramgp.name);
        localObject2 = qJ().a(sa(), (String)localObject1, true, bool1, false, bool2, false);
        l2 = ((ge)localObject2).aRu - ((Integer)gr.aSo.aSN).intValue();
        if (l2 > 0L)
        {
          if (l2 % 1000L == 1L) {
            qP().aTa.e("Data loss. Too many events logged. appId, count", hb.ck((String)localObject1), Long.valueOf(((ge)localObject2).aRu));
          }
          qJ().setTransactionSuccessful();
          return;
        }
        if (bool1)
        {
          l2 = ((ge)localObject2).aRt - ((Integer)gr.aSq.aSN).intValue();
          if (l2 > 0L)
          {
            if (l2 % 1000L == 1L) {
              qP().aTa.e("Data loss. Too many public events logged. appId, count", hb.ck((String)localObject1), Long.valueOf(((ge)localObject2).aRt));
            }
            qL().b(16, "_ev", paramgp.name, 0);
            qJ().setTransactionSuccessful();
            return;
          }
        }
        if (bool2)
        {
          l2 = ((ge)localObject2).aRw - Math.max(0, Math.min(1000000, this.aUN.b(paramfx.packageName, gr.aSp)));
          if (l2 > 0L)
          {
            if (l2 == 1L) {
              qP().aTa.e("Too many error events logged. appId, count", hb.ck((String)localObject1), Long.valueOf(((ge)localObject2).aRw));
            }
            qJ().setTransactionSuccessful();
            return;
          }
        }
        localObject2 = paramgp.aRH.rB();
        qL().a((Bundle)localObject2, "_o", paramgp.aRb);
        if (qL().cE((String)localObject1))
        {
          qL().a((Bundle)localObject2, "_dbg", Long.valueOf(1L));
          qL().a((Bundle)localObject2, "_r", Long.valueOf(1L));
        }
        l2 = qJ().cc((String)localObject1);
        if (l2 > 0L) {
          qP().aTd.e("Data lost. Too many events stored on disk, deleted. appId", hb.ck((String)localObject1), Long.valueOf(l2));
        }
        paramgp = new gk(this, paramgp.aRb, (String)localObject1, paramgp.name, paramgp.aRS, 0L, (Bundle)localObject2);
        localObject2 = qJ().t((String)localObject1, paramgp.name);
        if (localObject2 == null)
        {
          localObject2 = qJ();
          ae.bf((String)localObject1);
          if ((((gd)localObject2).a("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[] { localObject1 }, 0L) >= 500L) && (bool1))
          {
            qP().aTa.d("Too many event names used, ignoring event. appId, name, supported count", hb.ck((String)localObject1), qK().ch(paramgp.name), Integer.valueOf(500));
            qL().b(8, null, null, 0);
            return;
          }
          localObject1 = new gl((String)localObject1, paramgp.name, 0L, 0L, paramgp.timestamp, 0L, null, null, null);
          qJ().a((gl)localObject1);
          qO().mN();
          pf();
          ae.E(paramgp);
          ae.E(paramfx);
          ae.bf(paramgp.aQx);
          ae.au(paramgp.aQx.equals(paramfx.packageName));
          locallu = new lu();
          locallu.aYo = Integer.valueOf(1);
          locallu.aYw = "android";
          locallu.aQx = paramfx.packageName;
          locallu.aQH = paramfx.aQH;
          locallu.aQF = paramfx.aQF;
          if (paramfx.aQG == -2147483648L)
          {
            localObject1 = null;
            locallu.aYI = ((Integer)localObject1);
            locallu.aYA = Long.valueOf(paramfx.aQI);
            locallu.aQz = paramfx.aQz;
            if (paramfx.aQJ != 0L) {
              continue;
            }
            localObject1 = null;
            locallu.aYE = ((Long)localObject1);
            localObject1 = qQ().cm(paramfx.packageName);
            if (TextUtils.isEmpty((CharSequence)((Pair)localObject1).first)) {
              continue;
            }
            if (paramfx.aQM)
            {
              locallu.aYC = ((String)((Pair)localObject1).first);
              locallu.aYD = ((Boolean)((Pair)localObject1).second);
            }
            qE().pf();
            locallu.aYy = Build.MODEL;
            qE().pf();
            locallu.aYx = Build.VERSION.RELEASE;
            locallu.aYz = Integer.valueOf((int)qE().ry());
            locallu.aRE = qE().rz();
            locallu.aYB = null;
            locallu.aYr = null;
            locallu.aYs = null;
            locallu.aYt = null;
            locallu.aYN = Long.valueOf(paramfx.aQL);
            if ((isEnabled()) && (gc.rn())) {
              locallu.aYO = null;
            }
            localObject2 = qJ().cb(paramfx.packageName);
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              localObject1 = new fw(this, paramfx.packageName);
              ((fw)localObject1).bP(qD().rD());
              ((fw)localObject1).bS(paramfx.aQB);
              ((fw)localObject1).bQ(paramfx.aQz);
              ((fw)localObject1).bR(qQ().cn(paramfx.packageName));
              ((fw)localObject1).w(0L);
              ((fw)localObject1).r(0L);
              ((fw)localObject1).s(0L);
              ((fw)localObject1).bT(paramfx.aQF);
              ((fw)localObject1).t(paramfx.aQG);
              ((fw)localObject1).bU(paramfx.aQH);
              ((fw)localObject1).u(paramfx.aQI);
              ((fw)localObject1).v(paramfx.aQJ);
              ((fw)localObject1).setMeasurementEnabled(paramfx.aQK);
              ((fw)localObject1).z(paramfx.aQL);
              qJ().a((fw)localObject1);
            }
            locallu.aQy = ((fw)localObject1).getAppInstanceId();
            locallu.aQB = ((fw)localObject1).qT();
            paramfx = qJ().ca(paramfx.packageName);
            locallu.aYq = new lw[paramfx.size()];
            i = 0;
            if (i >= paramfx.size()) {
              break;
            }
            localObject1 = new lw();
            locallu.aYq[i] = localObject1;
            ((lw)localObject1).name = ((ld)paramfx.get(i)).name;
            ((lw)localObject1).aYS = Long.valueOf(((ld)paramfx.get(i)).aXh);
            qL().a((lw)localObject1, ((ld)paramfx.get(i)).value);
            i += 1;
            continue;
          }
        }
        else
        {
          l2 = ((gl)localObject2).aRK;
          paramgp = new gk(this, paramgp.aRb, paramgp.aQx, paramgp.name, paramgp.timestamp, l2, paramgp.aRH);
          localObject1 = ((gl)localObject2).B(paramgp.timestamp);
          continue;
        }
        localObject1 = Integer.valueOf((int)paramfx.aQG);
        continue;
        localObject1 = Long.valueOf(paramfx.aQJ);
        continue;
        if (qE().ah(this.aUM)) {
          continue;
        }
        localObject2 = Settings.Secure.getString(this.aUM.getContentResolver(), "android_id");
        if (localObject2 == null)
        {
          qP().aTd.j("null secure ID. appId", hb.ck(locallu.aQx));
          localObject1 = "null";
          locallu.aYL = ((String)localObject1);
          continue;
        }
        localObject1 = localObject2;
      }
      finally
      {
        qJ().endTransaction();
      }
      if (((String)localObject2).isEmpty())
      {
        qP().aTd.j("empty secure ID. appId", hb.ck(locallu.aQx));
        localObject1 = localObject2;
      }
    }
    try
    {
      l2 = qJ().a(locallu);
      paramfx = qJ();
      if (paramgp.aRH == null) {
        break label2061;
      }
      localObject1 = paramgp.aRH.iterator();
      do
      {
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
      } while (!"_r".equals((String)((Iterator)localObject1).next()));
      bool1 = true;
    }
    catch (IOException paramfx)
    {
      for (;;)
      {
        qP().aTa.e("Data loss. Failed to insert raw event metadata. appId", hb.ck(locallu.aQx), paramfx);
        continue;
        bool1 = qM().D(paramgp.aQx, paramgp.name);
        localObject1 = qJ().a(sa(), paramgp.aQx, false, false, false, false, false);
        if (bool1)
        {
          long l3 = ((ge)localObject1).aRx;
          i = this.aUN.bW(paramgp.aQx);
          if (l3 < i)
          {
            bool1 = true;
            continue;
          }
        }
        bool1 = false;
      }
    }
    if (paramfx.a(paramgp, l2, bool1)) {
      this.aVt = 0L;
    }
    qJ().setTransactionSuccessful();
    if (qP().cQ(2)) {
      qP().aTi.j("Event recorded", qK().a(paramgp));
    }
    qJ().endTransaction();
    sd();
    qP().aTi.j("Background event processing time, ms", Long.valueOf((System.nanoTime() - l1 + 500000L) / 1000000L));
  }
  
  private final fx cs(String paramString)
  {
    fw localfw = qJ().cb(paramString);
    if ((localfw == null) || (TextUtils.isEmpty(localfw.qq())))
    {
      qP().aTh.j("No app data available; dropping", paramString);
      return null;
    }
    Boolean localBoolean = c(localfw);
    if ((localBoolean != null) && (!localBoolean.booleanValue()))
    {
      qP().aTa.j("App version does not match; dropping. appId", hb.ck(paramString));
      return null;
    }
    return new fx(paramString, localfw.getGmpAppId(), localfw.qq(), localfw.qW(), localfw.qX(), localfw.qY(), localfw.qZ(), null, localfw.ra(), false, localfw.qT(), localfw.rg(), 0L, 0, localfw.rh());
  }
  
  static void qy()
  {
    throw new IllegalStateException("Unexpected call on client side");
  }
  
  private final hj rX()
  {
    if (this.aVg == null) {
      throw new IllegalStateException("Network broadcast receiver not created");
    }
    return this.aVg;
  }
  
  private final kz rY()
  {
    a(this.aVh);
    return this.aVh;
  }
  
  private final boolean rZ()
  {
    qO().mN();
    File localFile = new File(this.aUM.getFilesDir(), "google_app_measurement.db");
    try
    {
      this.aVn = new RandomAccessFile(localFile, "rw").getChannel();
      this.aVm = this.aVn.tryLock();
      if (this.aVm != null)
      {
        qP().aTi.bq("Storage concurrent access okay");
        return true;
      }
      qP().aTa.bq("Storage concurrent data access panic");
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      for (;;)
      {
        qP().aTa.j("Failed to acquire storage lock", localFileNotFoundException);
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        qP().aTa.j("Failed to access storage lock file", localIOException);
      }
    }
    return false;
  }
  
  private final long sa()
  {
    long l3 = this.aLd.currentTimeMillis();
    hl localhl = qQ();
    localhl.pf();
    localhl.mN();
    long l2 = localhl.aTL.get();
    long l1 = l2;
    if (l2 == 0L)
    {
      l1 = localhl.qL().sr().nextInt(86400000) + 1;
      localhl.aTL.set(l1);
    }
    return (l1 + l3) / 1000L / 60L / 60L / 24L;
  }
  
  private final boolean sc()
  {
    boolean bool = false;
    qO().mN();
    pf();
    if (qJ().b("select count(1) > 0 from raw_events", null) != 0L) {}
    for (int i = 1;; i = 0)
    {
      if ((i != 0) || (!TextUtils.isEmpty(qJ().ro()))) {
        bool = true;
      }
      return bool;
    }
  }
  
  private final boolean sg()
  {
    qO().mN();
    pf();
    return this.aVj;
  }
  
  private final void sh()
  {
    qO().mN();
    if ((this.aVu) || (this.aVv) || (this.aVw)) {
      qP().aTi.d("Not stopping services. fetch, network, upload", Boolean.valueOf(this.aVu), Boolean.valueOf(this.aVv), Boolean.valueOf(this.aVw));
    }
    do
    {
      return;
      qP().aTi.bq("Stopping uploading service(s)");
    } while (this.aVp == null);
    Iterator localIterator = this.aVp.iterator();
    while (localIterator.hasNext()) {
      ((Runnable)localIterator.next()).run();
    }
    this.aVp.clear();
  }
  
  /* Error */
  protected final void a(int paramInt, Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 882	com/google/android/gms/internal/hz:qO	()Lcom/google/android/gms/internal/hu;
    //   4: invokevirtual 283	com/google/android/gms/internal/ix:mN	()V
    //   7: aload_0
    //   8: invokevirtual 1333	com/google/android/gms/internal/hz:pf	()V
    //   11: aload_3
    //   12: astore 6
    //   14: aload_3
    //   15: ifnonnull +8 -> 23
    //   18: iconst_0
    //   19: newarray <illegal type>
    //   21: astore 6
    //   23: aload_0
    //   24: getfield 1816	com/google/android/gms/internal/hz:aVo	Ljava/util/List;
    //   27: astore_3
    //   28: aload_0
    //   29: aconst_null
    //   30: putfield 1816	com/google/android/gms/internal/hz:aVo	Ljava/util/List;
    //   33: iload_1
    //   34: sipush 200
    //   37: if_icmpeq +10 -> 47
    //   40: iload_1
    //   41: sipush 204
    //   44: if_icmpne +316 -> 360
    //   47: aload_2
    //   48: ifnonnull +312 -> 360
    //   51: aload_0
    //   52: invokevirtual 1487	com/google/android/gms/internal/hz:qQ	()Lcom/google/android/gms/internal/hl;
    //   55: getfield 1819	com/google/android/gms/internal/hl:aTH	Lcom/google/android/gms/internal/hn;
    //   58: aload_0
    //   59: getfield 112	com/google/android/gms/internal/hz:aLd	Lcom/google/android/gms/common/util/e;
    //   62: invokeinterface 118 1 0
    //   67: invokevirtual 1777	com/google/android/gms/internal/hn:set	(J)V
    //   70: aload_0
    //   71: invokevirtual 1487	com/google/android/gms/internal/hz:qQ	()Lcom/google/android/gms/internal/hl;
    //   74: getfield 1822	com/google/android/gms/internal/hl:aTI	Lcom/google/android/gms/internal/hn;
    //   77: lconst_0
    //   78: invokevirtual 1777	com/google/android/gms/internal/hn:set	(J)V
    //   81: aload_0
    //   82: invokevirtual 1680	com/google/android/gms/internal/hz:sd	()V
    //   85: aload_0
    //   86: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   89: getfield 238	com/google/android/gms/internal/hb:aTi	Lcom/google/android/gms/internal/hd;
    //   92: ldc_w 1824
    //   95: iload_1
    //   96: invokestatic 735	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   99: aload 6
    //   101: arraylength
    //   102: invokestatic 735	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   105: invokevirtual 404	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   108: aload_0
    //   109: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   112: invokevirtual 277	com/google/android/gms/internal/gd:beginTransaction	()V
    //   115: aload_3
    //   116: invokeinterface 1805 1 0
    //   121: astore_3
    //   122: aload_3
    //   123: invokeinterface 783 1 0
    //   128: ifeq +163 -> 291
    //   131: aload_3
    //   132: invokeinterface 787 1 0
    //   137: checkcast 507	java/lang/Long
    //   140: astore 6
    //   142: aload_0
    //   143: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   146: astore_2
    //   147: aload 6
    //   149: invokevirtual 611	java/lang/Long:longValue	()J
    //   152: lstore 4
    //   154: aload_2
    //   155: invokevirtual 283	com/google/android/gms/internal/ix:mN	()V
    //   158: aload_2
    //   159: invokevirtual 286	com/google/android/gms/internal/iy:pf	()V
    //   162: aload_2
    //   163: invokevirtual 290	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   166: astore 6
    //   168: aload 6
    //   170: ldc_w 1826
    //   173: ldc_w 1828
    //   176: iconst_1
    //   177: anewarray 298	java/lang/String
    //   180: dup
    //   181: iconst_0
    //   182: lload 4
    //   184: invokestatic 302	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   187: aastore
    //   188: invokevirtual 1832	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   191: iconst_1
    //   192: if_icmpeq -70 -> 122
    //   195: new 266	android/database/sqlite/SQLiteException
    //   198: dup
    //   199: ldc_w 1834
    //   202: invokespecial 1835	android/database/sqlite/SQLiteException:<init>	(Ljava/lang/String;)V
    //   205: athrow
    //   206: astore_3
    //   207: aload_2
    //   208: invokevirtual 234	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   211: getfield 447	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   214: ldc_w 1837
    //   217: aload_3
    //   218: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   221: aload_3
    //   222: athrow
    //   223: astore_2
    //   224: aload_0
    //   225: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   228: invokevirtual 456	com/google/android/gms/internal/gd:endTransaction	()V
    //   231: aload_2
    //   232: athrow
    //   233: astore_2
    //   234: aload_0
    //   235: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   238: getfield 447	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   241: ldc_w 1839
    //   244: aload_2
    //   245: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   248: aload_0
    //   249: aload_0
    //   250: getfield 112	com/google/android/gms/internal/hz:aLd	Lcom/google/android/gms/common/util/e;
    //   253: invokeinterface 1842 1 0
    //   258: putfield 1672	com/google/android/gms/internal/hz:aVt	J
    //   261: aload_0
    //   262: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   265: getfield 238	com/google/android/gms/internal/hb:aTi	Lcom/google/android/gms/internal/hd;
    //   268: ldc_w 1844
    //   271: aload_0
    //   272: getfield 1672	com/google/android/gms/internal/hz:aVt	J
    //   275: invokestatic 510	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   278: invokevirtual 453	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   281: aload_0
    //   282: iconst_0
    //   283: putfield 1796	com/google/android/gms/internal/hz:aVv	Z
    //   286: aload_0
    //   287: invokespecial 1846	com/google/android/gms/internal/hz:sh	()V
    //   290: return
    //   291: aload_0
    //   292: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   295: invokevirtual 844	com/google/android/gms/internal/gd:setTransactionSuccessful	()V
    //   298: aload_0
    //   299: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   302: invokevirtual 456	com/google/android/gms/internal/gd:endTransaction	()V
    //   305: aload_0
    //   306: invokevirtual 1302	com/google/android/gms/internal/hz:rW	()Lcom/google/android/gms/internal/hf;
    //   309: invokevirtual 1849	com/google/android/gms/internal/hf:qe	()Z
    //   312: ifeq +34 -> 346
    //   315: aload_0
    //   316: invokespecial 1851	com/google/android/gms/internal/hz:sc	()Z
    //   319: ifeq +27 -> 346
    //   322: aload_0
    //   323: invokevirtual 1854	com/google/android/gms/internal/hz:sb	()V
    //   326: aload_0
    //   327: lconst_0
    //   328: putfield 1672	com/google/android/gms/internal/hz:aVt	J
    //   331: goto -50 -> 281
    //   334: astore_2
    //   335: aload_0
    //   336: iconst_0
    //   337: putfield 1796	com/google/android/gms/internal/hz:aVv	Z
    //   340: aload_0
    //   341: invokespecial 1846	com/google/android/gms/internal/hz:sh	()V
    //   344: aload_2
    //   345: athrow
    //   346: aload_0
    //   347: ldc2_w 101
    //   350: putfield 104	com/google/android/gms/internal/hz:aVs	J
    //   353: aload_0
    //   354: invokevirtual 1680	com/google/android/gms/internal/hz:sd	()V
    //   357: goto -31 -> 326
    //   360: aload_0
    //   361: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   364: getfield 238	com/google/android/gms/internal/hb:aTi	Lcom/google/android/gms/internal/hd;
    //   367: ldc_w 1856
    //   370: iload_1
    //   371: invokestatic 735	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   374: aload_2
    //   375: invokevirtual 404	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   378: aload_0
    //   379: invokevirtual 1487	com/google/android/gms/internal/hz:qQ	()Lcom/google/android/gms/internal/hl;
    //   382: getfield 1822	com/google/android/gms/internal/hl:aTI	Lcom/google/android/gms/internal/hn;
    //   385: aload_0
    //   386: getfield 112	com/google/android/gms/internal/hz:aLd	Lcom/google/android/gms/common/util/e;
    //   389: invokeinterface 118 1 0
    //   394: invokevirtual 1777	com/google/android/gms/internal/hn:set	(J)V
    //   397: iload_1
    //   398: sipush 503
    //   401: if_icmpeq +48 -> 449
    //   404: iload_1
    //   405: sipush 429
    //   408: if_icmpne +36 -> 444
    //   411: goto +38 -> 449
    //   414: iload_1
    //   415: ifeq +22 -> 437
    //   418: aload_0
    //   419: invokevirtual 1487	com/google/android/gms/internal/hz:qQ	()Lcom/google/android/gms/internal/hl;
    //   422: getfield 1859	com/google/android/gms/internal/hl:aTJ	Lcom/google/android/gms/internal/hn;
    //   425: aload_0
    //   426: getfield 112	com/google/android/gms/internal/hz:aLd	Lcom/google/android/gms/common/util/e;
    //   429: invokeinterface 118 1 0
    //   434: invokevirtual 1777	com/google/android/gms/internal/hn:set	(J)V
    //   437: aload_0
    //   438: invokevirtual 1680	com/google/android/gms/internal/hz:sd	()V
    //   441: goto -160 -> 281
    //   444: iconst_0
    //   445: istore_1
    //   446: goto -32 -> 414
    //   449: iconst_1
    //   450: istore_1
    //   451: goto -37 -> 414
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	454	0	this	hz
    //   0	454	1	paramInt	int
    //   0	454	2	paramThrowable	Throwable
    //   0	454	3	paramArrayOfByte	byte[]
    //   152	31	4	l	long
    //   12	157	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   168	206	206	android/database/sqlite/SQLiteException
    //   115	122	223	finally
    //   122	168	223	finally
    //   168	206	223	finally
    //   207	223	223	finally
    //   291	298	223	finally
    //   51	115	233	android/database/sqlite/SQLiteException
    //   224	233	233	android/database/sqlite/SQLiteException
    //   298	326	233	android/database/sqlite/SQLiteException
    //   326	331	233	android/database/sqlite/SQLiteException
    //   346	357	233	android/database/sqlite/SQLiteException
    //   18	23	334	finally
    //   23	33	334	finally
    //   51	115	334	finally
    //   224	233	334	finally
    //   234	281	334	finally
    //   298	326	334	finally
    //   326	331	334	finally
    //   346	357	334	finally
    //   360	397	334	finally
    //   418	437	334	finally
    //   437	441	334	finally
  }
  
  public final byte[] a(gp paramgp, String paramString)
  {
    pf();
    qO().mN();
    qy();
    ae.E(paramgp);
    ae.bf(paramString);
    lt locallt = new lt();
    qJ().beginTransaction();
    for (;;)
    {
      fw localfw;
      boolean bool;
      Object localObject3;
      lu locallu;
      long l1;
      Object localObject4;
      try
      {
        localfw = qJ().cb(paramString);
        if (localfw == null)
        {
          qP().aTh.j("Log and bundle not available. package_name", paramString);
          return new byte[0];
        }
        if (!localfw.ra())
        {
          qP().aTh.j("Log and bundle disabled. package_name", paramString);
          return new byte[0];
        }
        if ((("_iap".equals(paramgp.name)) || ("ecommerce_purchase".equals(paramgp.name))) && (!a(paramString, paramgp))) {
          qP().aTd.j("Failed to handle purchase event at single event bundle creation. appId", hb.ck(paramString));
        }
        bool = this.aUN.bZ(paramString);
        localObject1 = Long.valueOf(0L);
        localObject3 = localObject1;
        if (bool)
        {
          localObject3 = localObject1;
          if ("_e".equals(paramgp.name))
          {
            if ((paramgp.aRH != null) && (paramgp.aRH.aRP.size() != 0)) {
              continue;
            }
            qP().aTd.j("The engagement event does not contain any parameters. appId", hb.ck(paramString));
            localObject3 = localObject1;
          }
        }
        locallu = new lu();
        locallt.aYm = new lu[] { locallu };
        locallu.aYo = Integer.valueOf(1);
        locallu.aYw = "android";
        locallu.aQx = localfw.getAppId();
        locallu.aQH = localfw.qX();
        locallu.aQF = localfw.qq();
        l1 = localfw.qW();
        if (l1 != -2147483648L) {
          break label866;
        }
        localObject1 = null;
        locallu.aYI = ((Integer)localObject1);
        locallu.aYA = Long.valueOf(localfw.qY());
        locallu.aQz = localfw.getGmpAppId();
        locallu.aYE = Long.valueOf(localfw.qZ());
        if ((isEnabled()) && (gc.rn()) && (this.aUN.bY(locallu.aQx))) {
          locallu.aYO = null;
        }
        localObject1 = qQ().cm(localfw.getAppId());
        if ((localfw.rh()) && (!TextUtils.isEmpty((CharSequence)((Pair)localObject1).first)))
        {
          locallu.aYC = ((String)((Pair)localObject1).first);
          locallu.aYD = ((Boolean)((Pair)localObject1).second);
        }
        qE().pf();
        locallu.aYy = Build.MODEL;
        qE().pf();
        locallu.aYx = Build.VERSION.RELEASE;
        locallu.aYz = Integer.valueOf((int)qE().ry());
        locallu.aRE = qE().rz();
        locallu.aQy = localfw.getAppInstanceId();
        locallu.aQB = localfw.qT();
        List localList = qJ().ca(localfw.getAppId());
        locallu.aYq = new lw[localList.size()];
        localObject1 = null;
        if (!bool) {
          break label1730;
        }
        localObject1 = qJ().v(locallu.aQx, "_lte");
        if ((localObject1 != null) && (((ld)localObject1).value != null)) {
          break label877;
        }
        localObject1 = new ld(locallu.aQx, "auto", "_lte", this.aLd.currentTimeMillis(), localObject3);
        break label1730;
        if (i >= localList.size()) {
          break label939;
        }
        localObject4 = new lw();
        locallu.aYq[i] = localObject4;
        ((lw)localObject4).name = ((ld)localList.get(i)).name;
        ((lw)localObject4).aYS = Long.valueOf(((ld)localList.get(i)).aXh);
        qL().a((lw)localObject4, ((ld)localList.get(i)).value);
        if ((!bool) || (!"_lte".equals(((lw)localObject4).name))) {
          break label1727;
        }
        ((lw)localObject4).aYl = ((Long)((ld)localObject1).value);
        ((lw)localObject4).aYS = Long.valueOf(this.aLd.currentTimeMillis());
        localObject2 = localObject4;
        break label1738;
        if (paramgp.aRH.getLong("_et") == null)
        {
          qP().aTd.j("The engagement event does not include duration. appId", hb.ck(paramString));
          localObject3 = localObject1;
          continue;
        }
        localObject3 = paramgp.aRH.getLong("_et");
      }
      finally
      {
        qJ().endTransaction();
      }
      continue;
      label866:
      Object localObject1 = Integer.valueOf((int)l1);
      continue;
      label877:
      if (((Long)localObject3).longValue() > 0L)
      {
        localObject1 = new ld(locallu.aQx, "auto", "_lte", this.aLd.currentTimeMillis(), Long.valueOf(((Long)((ld)localObject1).value).longValue() + ((Long)localObject3).longValue()));
        break label1730;
        label939:
        if ((bool) && (localObject2 == null))
        {
          localObject2 = new lw();
          ((lw)localObject2).name = "_lte";
          ((lw)localObject2).aYS = Long.valueOf(this.aLd.currentTimeMillis());
          ((lw)localObject2).aYl = ((Long)((ld)localObject1).value);
          locallu.aYq = ((lw[])Arrays.copyOf(locallu.aYq, locallu.aYq.length + 1));
          locallu.aYq[(locallu.aYq.length - 1)] = localObject2;
        }
        if (((Long)localObject3).longValue() > 0L) {
          qJ().a((ld)localObject1);
        }
        localObject1 = paramgp.aRH.rB();
        if ("_iap".equals(paramgp.name))
        {
          ((Bundle)localObject1).putLong("_c", 1L);
          qP().aTh.bq("Marking in-app purchase as real-time");
          ((Bundle)localObject1).putLong("_r", 1L);
        }
        ((Bundle)localObject1).putString("_o", paramgp.aRb);
        if (qL().cE(locallu.aQx))
        {
          qL().a((Bundle)localObject1, "_dbg", Long.valueOf(1L));
          qL().a((Bundle)localObject1, "_r", Long.valueOf(1L));
        }
        localObject2 = qJ().t(paramString, paramgp.name);
        if (localObject2 == null)
        {
          localObject2 = new gl(paramString, paramgp.name, 1L, 0L, paramgp.aRS, 0L, null, null, null);
          qJ().a((gl)localObject2);
          l1 = 0L;
        }
        for (;;)
        {
          paramgp = new gk(this, paramgp.aRb, paramString, paramgp.name, paramgp.aRS, l1, (Bundle)localObject1);
          localObject1 = new lr();
          locallu.aYp = new lr[] { localObject1 };
          ((lr)localObject1).aYi = Long.valueOf(paramgp.timestamp);
          ((lr)localObject1).name = paramgp.name;
          ((lr)localObject1).aYj = Long.valueOf(paramgp.aRG);
          ((lr)localObject1).aYh = new ls[paramgp.aRH.aRP.size()];
          localObject2 = paramgp.aRH.iterator();
          i = 0;
          while (((Iterator)localObject2).hasNext())
          {
            localObject4 = (String)((Iterator)localObject2).next();
            localObject3 = new ls();
            ((lr)localObject1).aYh[i] = localObject3;
            ((ls)localObject3).name = ((String)localObject4);
            localObject4 = paramgp.aRH.get((String)localObject4);
            qL().a((ls)localObject3, localObject4);
            i += 1;
          }
          l1 = ((gl)localObject2).aRK;
          localObject2 = ((gl)localObject2).B(paramgp.aRS).rA();
          qJ().a((gl)localObject2);
        }
        locallu.aYH = a(localfw.getAppId(), locallu.aYq, locallu.aYp);
        locallu.aYs = ((lr)localObject1).aYi;
        locallu.aYt = ((lr)localObject1).aYi;
        l1 = localfw.qV();
        long l2;
        if (l1 != 0L)
        {
          paramgp = Long.valueOf(l1);
          locallu.aYv = paramgp;
          l2 = localfw.qU();
          if (l2 != 0L) {
            break label1720;
          }
        }
        for (;;)
        {
          if (l1 != 0L) {}
          for (paramgp = Long.valueOf(l1);; paramgp = null)
          {
            locallu.aYu = paramgp;
            localfw.re();
            locallu.aYF = Integer.valueOf((int)localfw.rb());
            locallu.aYB = Long.valueOf(12211L);
            locallu.aYr = Long.valueOf(this.aLd.currentTimeMillis());
            locallu.aYG = Boolean.TRUE;
            localfw.r(locallu.aYs.longValue());
            localfw.s(locallu.aYt.longValue());
            qJ().a(localfw);
            qJ().setTransactionSuccessful();
            qJ().endTransaction();
            try
            {
              paramgp = new byte[locallt.sZ()];
              localObject1 = mv.b(paramgp, paramgp.length);
              locallt.a((mv)localObject1);
              ((mv)localObject1).sR();
              paramgp = qL().n(paramgp);
              return paramgp;
            }
            catch (IOException paramgp)
            {
              qP().aTa.e("Data loss. Failed to bundle and serialize. appId", hb.ck(paramString), paramgp);
              return null;
            }
            paramgp = null;
            break;
          }
          label1720:
          l1 = l2;
        }
        label1727:
        break label1738;
      }
      label1730:
      Object localObject2 = null;
      int i = 0;
      continue;
      label1738:
      i += 1;
    }
  }
  
  final void b(ga paramga, fx paramfx)
  {
    int i = 1;
    ae.E(paramga);
    ae.bf(paramga.packageName);
    ae.E(paramga.aRb);
    ae.E(paramga.aRc);
    ae.bf(paramga.aRc.name);
    qO().mN();
    pf();
    if (TextUtils.isEmpty(paramfx.aQz)) {
      return;
    }
    if (!paramfx.aQK)
    {
      f(paramfx);
      return;
    }
    paramga = new ga(paramga);
    paramga.aRe = false;
    qJ().beginTransaction();
    for (;;)
    {
      try
      {
        Object localObject = qJ().w(paramga.packageName, paramga.aRc.name);
        if ((localObject != null) && (!((ga)localObject).aRb.equals(paramga.aRb))) {
          qP().aTd.d("Updating a conditional user property with different origin. name, origin, origin (from DB)", qK().cj(paramga.aRc.name), paramga.aRb, ((ga)localObject).aRb);
        }
        if ((localObject != null) && (((ga)localObject).aRe))
        {
          paramga.aRb = ((ga)localObject).aRb;
          paramga.aRd = ((ga)localObject).aRd;
          paramga.aRh = ((ga)localObject).aRh;
          paramga.aRf = ((ga)localObject).aRf;
          paramga.aRi = ((ga)localObject).aRi;
          paramga.aRe = ((ga)localObject).aRe;
          paramga.aRc = new lb(paramga.aRc.name, ((ga)localObject).aRc.aXh, paramga.aRc.getValue(), ((ga)localObject).aRc.aRb);
          i = 0;
          if (paramga.aRe)
          {
            localObject = paramga.aRc;
            localObject = new ld(paramga.packageName, paramga.aRb, ((lb)localObject).name, ((lb)localObject).aXh, ((lb)localObject).getValue());
            if (!qJ().a((ld)localObject)) {
              break label534;
            }
            qP().aTh.d("User property updated immediately", paramga.packageName, qK().cj(((ld)localObject).name), ((ld)localObject).value);
            if ((i != 0) && (paramga.aRi != null)) {
              c(new gp(paramga.aRi, paramga.aRd), paramfx);
            }
          }
          if (!qJ().a(paramga)) {
            break label574;
          }
          qP().aTh.d("Conditional property added", paramga.packageName, qK().cj(paramga.aRc.name), paramga.aRc.getValue());
          qJ().setTransactionSuccessful();
        }
        else
        {
          if (!TextUtils.isEmpty(paramga.aRf)) {
            break label618;
          }
          paramga.aRc = new lb(paramga.aRc.name, paramga.aRd, paramga.aRc.getValue(), paramga.aRc.aRb);
          paramga.aRe = true;
          continue;
        }
        qP().aTa.d("(2)Too many active user properties, ignoring", hb.ck(paramga.packageName), qK().cj(((ld)localObject).name), ((ld)localObject).value);
      }
      finally
      {
        qJ().endTransaction();
      }
      label534:
      continue;
      label574:
      qP().aTa.d("Too many conditional properties, ignoring", hb.ck(paramga.packageName), qK().cj(paramga.aRc.name), paramga.aRc.getValue());
      continue;
      label618:
      i = 0;
    }
  }
  
  final void b(gp paramgp, fx paramfx)
  {
    ae.E(paramfx);
    ae.bf(paramfx.packageName);
    qO().mN();
    pf();
    Object localObject2 = paramfx.packageName;
    long l = paramgp.aRS;
    qL();
    if (!le.d(paramgp, paramfx)) {
      return;
    }
    if (!paramfx.aQK)
    {
      f(paramfx);
      return;
    }
    qJ().beginTransaction();
    for (;;)
    {
      try
      {
        localObject1 = qJ();
        ae.bf((String)localObject2);
        ((ix)localObject1).mN();
        ((iy)localObject1).pf();
        if (l < 0L)
        {
          ((ix)localObject1).qP().aTd.e("Invalid time querying timed out conditional properties", hb.ck((String)localObject2), Long.valueOf(l));
          localObject1 = Collections.emptyList();
          localObject1 = ((List)localObject1).iterator();
          if (!((Iterator)localObject1).hasNext()) {
            break;
          }
          localObject3 = (ga)((Iterator)localObject1).next();
          if (localObject3 == null) {
            continue;
          }
          qP().aTh.d("User property timed out", ((ga)localObject3).packageName, qK().cj(((ga)localObject3).aRc.name), ((ga)localObject3).aRc.getValue());
          if (((ga)localObject3).aRg != null) {
            c(new gp(((ga)localObject3).aRg, l), paramfx);
          }
          qJ().x((String)localObject2, ((ga)localObject3).aRc.name);
          continue;
        }
      }
      finally
      {
        qJ().endTransaction();
      }
      tmp272_269[0] = localObject2;
      String[] tmp277_272 = tmp272_269;
      tmp277_272[1] = String.valueOf(l);
      localObject1 = ((gd)localObject1).c("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", tmp277_272);
    }
    Object localObject1 = qJ();
    ae.bf((String)localObject2);
    ((ix)localObject1).mN();
    ((iy)localObject1).pf();
    if (l < 0L) {
      ((ix)localObject1).qP().aTd.e("Invalid time querying expired conditional properties", hb.ck((String)localObject2), Long.valueOf(l));
    }
    Object localObject4;
    for (localObject1 = Collections.emptyList();; localObject1 = ((gd)localObject1).c("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[] { localObject2, String.valueOf(l) }))
    {
      localObject3 = new ArrayList(((List)localObject1).size());
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject4 = (ga)((Iterator)localObject1).next();
        if (localObject4 != null)
        {
          qP().aTh.d("User property expired", ((ga)localObject4).packageName, qK().cj(((ga)localObject4).aRc.name), ((ga)localObject4).aRc.getValue());
          qJ().u((String)localObject2, ((ga)localObject4).aRc.name);
          if (((ga)localObject4).aRk != null) {
            ((List)localObject3).add(((ga)localObject4).aRk);
          }
          qJ().x((String)localObject2, ((ga)localObject4).aRc.name);
        }
      }
    }
    localObject1 = (ArrayList)localObject3;
    int j = ((ArrayList)localObject1).size();
    int i = 0;
    while (i < j)
    {
      localObject3 = ((ArrayList)localObject1).get(i);
      i += 1;
      c(new gp((gp)localObject3, l), paramfx);
    }
    localObject1 = qJ();
    Object localObject3 = paramgp.name;
    ae.bf((String)localObject2);
    ae.bf((String)localObject3);
    ((ix)localObject1).mN();
    ((iy)localObject1).pf();
    if (l < 0L)
    {
      ((ix)localObject1).qP().aTd.d("Invalid time querying triggered conditional properties", hb.ck((String)localObject2), ((ix)localObject1).qK().ch((String)localObject3), Long.valueOf(l));
      localObject1 = Collections.emptyList();
      localObject2 = new ArrayList(((List)localObject1).size());
      localObject1 = ((List)localObject1).iterator();
      label694:
      do
      {
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        localObject3 = (ga)((Iterator)localObject1).next();
      } while (localObject3 == null);
      localObject4 = ((ga)localObject3).aRc;
      localObject4 = new ld(((ga)localObject3).packageName, ((ga)localObject3).aRb, ((lb)localObject4).name, l, ((lb)localObject4).getValue());
      if (!qJ().a((ld)localObject4)) {
        break label895;
      }
      qP().aTh.d("User property triggered", ((ga)localObject3).packageName, qK().cj(((ld)localObject4).name), ((ld)localObject4).value);
    }
    for (;;)
    {
      if (((ga)localObject3).aRi != null) {
        ((List)localObject2).add(((ga)localObject3).aRi);
      }
      ((ga)localObject3).aRc = new lb((ld)localObject4);
      ((ga)localObject3).aRe = true;
      qJ().a((ga)localObject3);
      break label694;
      localObject1 = ((gd)localObject1).c("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[] { localObject2, localObject3, String.valueOf(l) });
      break;
      label895:
      qP().aTa.d("Too many active user properties, ignoring", hb.ck(((ga)localObject3).packageName), qK().cj(((ld)localObject4).name), ((ld)localObject4).value);
    }
    c(paramgp, paramfx);
    paramgp = (ArrayList)localObject2;
    j = paramgp.size();
    i = 0;
    while (i < j)
    {
      localObject1 = paramgp.get(i);
      i += 1;
      c(new gp((gp)localObject1, l), paramfx);
    }
    qJ().setTransactionSuccessful();
    qJ().endTransaction();
  }
  
  final void b(gp paramgp, String paramString)
  {
    fw localfw = qJ().cb(paramString);
    if ((localfw == null) || (TextUtils.isEmpty(localfw.qq())))
    {
      qP().aTh.j("No app data available; dropping event", paramString);
      return;
    }
    Boolean localBoolean = c(localfw);
    if (localBoolean == null) {
      if (!"_ui".equals(paramgp.name)) {
        qP().aTd.j("Could not find package. appId", hb.ck(paramString));
      }
    }
    while (localBoolean.booleanValue())
    {
      b(paramgp, new fx(paramString, localfw.getGmpAppId(), localfw.qq(), localfw.qW(), localfw.qX(), localfw.qY(), localfw.qZ(), null, localfw.ra(), false, localfw.qT(), localfw.rg(), 0L, 0, localfw.rh()));
      return;
    }
    qP().aTa.j("App version does not match; dropping event. appId", hb.ck(paramString));
  }
  
  /* Error */
  final void b(lb paramlb, fx paramfx)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: iconst_0
    //   4: istore_3
    //   5: aload_0
    //   6: invokevirtual 882	com/google/android/gms/internal/hz:qO	()Lcom/google/android/gms/internal/hu;
    //   9: invokevirtual 283	com/google/android/gms/internal/ix:mN	()V
    //   12: aload_0
    //   13: invokevirtual 1333	com/google/android/gms/internal/hz:pf	()V
    //   16: aload_2
    //   17: getfield 1477	com/google/android/gms/internal/fx:aQz	Ljava/lang/String;
    //   20: invokestatic 296	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   23: ifeq +4 -> 27
    //   26: return
    //   27: aload_2
    //   28: getfield 1339	com/google/android/gms/internal/fx:aQK	Z
    //   31: ifne +9 -> 40
    //   34: aload_0
    //   35: aload_2
    //   36: invokevirtual 1343	com/google/android/gms/internal/hz:f	(Lcom/google/android/gms/internal/fx;)V
    //   39: return
    //   40: aload_0
    //   41: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   44: aload_1
    //   45: getfield 1946	com/google/android/gms/internal/lb:name	Ljava/lang/String;
    //   48: invokevirtual 2059	com/google/android/gms/internal/le:cy	(Ljava/lang/String;)I
    //   51: istore 5
    //   53: iload 5
    //   55: ifeq +58 -> 113
    //   58: aload_0
    //   59: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   62: pop
    //   63: aload_1
    //   64: getfield 1946	com/google/android/gms/internal/lb:name	Ljava/lang/String;
    //   67: bipush 24
    //   69: iconst_1
    //   70: invokestatic 2062	com/google/android/gms/internal/le:a	(Ljava/lang/String;IZ)Ljava/lang/String;
    //   73: astore 7
    //   75: aload_1
    //   76: getfield 1946	com/google/android/gms/internal/lb:name	Ljava/lang/String;
    //   79: ifnull +11 -> 90
    //   82: aload_1
    //   83: getfield 1946	com/google/android/gms/internal/lb:name	Ljava/lang/String;
    //   86: invokevirtual 311	java/lang/String:length	()I
    //   89: istore_3
    //   90: aload_0
    //   91: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   94: astore_1
    //   95: aload_2
    //   96: getfield 1329	com/google/android/gms/internal/fx:packageName	Ljava/lang/String;
    //   99: astore_2
    //   100: aload_1
    //   101: iload 5
    //   103: ldc_w 422
    //   106: aload 7
    //   108: iload_3
    //   109: invokevirtual 426	com/google/android/gms/internal/le:b	(ILjava/lang/String;Ljava/lang/String;I)V
    //   112: return
    //   113: aload_0
    //   114: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   117: aload_1
    //   118: getfield 1946	com/google/android/gms/internal/lb:name	Ljava/lang/String;
    //   121: aload_1
    //   122: invokevirtual 1972	com/google/android/gms/internal/lb:getValue	()Ljava/lang/Object;
    //   125: invokevirtual 2066	com/google/android/gms/internal/le:l	(Ljava/lang/String;Ljava/lang/Object;)I
    //   128: istore 5
    //   130: iload 5
    //   132: ifeq +80 -> 212
    //   135: aload_0
    //   136: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   139: pop
    //   140: aload_1
    //   141: getfield 1946	com/google/android/gms/internal/lb:name	Ljava/lang/String;
    //   144: bipush 24
    //   146: iconst_1
    //   147: invokestatic 2062	com/google/android/gms/internal/le:a	(Ljava/lang/String;IZ)Ljava/lang/String;
    //   150: astore 7
    //   152: aload_1
    //   153: invokevirtual 1972	com/google/android/gms/internal/lb:getValue	()Ljava/lang/Object;
    //   156: astore_1
    //   157: iload 4
    //   159: istore_3
    //   160: aload_1
    //   161: ifnull +28 -> 189
    //   164: aload_1
    //   165: instanceof 298
    //   168: ifne +13 -> 181
    //   171: iload 4
    //   173: istore_3
    //   174: aload_1
    //   175: instanceof 976
    //   178: ifeq +11 -> 189
    //   181: aload_1
    //   182: invokestatic 307	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   185: invokevirtual 311	java/lang/String:length	()I
    //   188: istore_3
    //   189: aload_0
    //   190: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   193: astore_1
    //   194: aload_2
    //   195: getfield 1329	com/google/android/gms/internal/fx:packageName	Ljava/lang/String;
    //   198: astore_2
    //   199: aload_1
    //   200: iload 5
    //   202: ldc_w 422
    //   205: aload 7
    //   207: iload_3
    //   208: invokevirtual 426	com/google/android/gms/internal/le:b	(ILjava/lang/String;Ljava/lang/String;I)V
    //   211: return
    //   212: aload_0
    //   213: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   216: pop
    //   217: aload_1
    //   218: getfield 1946	com/google/android/gms/internal/lb:name	Ljava/lang/String;
    //   221: aload_1
    //   222: invokevirtual 1972	com/google/android/gms/internal/lb:getValue	()Ljava/lang/Object;
    //   225: invokestatic 2070	com/google/android/gms/internal/le:m	(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    //   228: astore 7
    //   230: aload 7
    //   232: ifnull -206 -> 26
    //   235: new 620	com/google/android/gms/internal/ld
    //   238: dup
    //   239: aload_2
    //   240: getfield 1329	com/google/android/gms/internal/fx:packageName	Ljava/lang/String;
    //   243: aload_1
    //   244: getfield 1973	com/google/android/gms/internal/lb:aRb	Ljava/lang/String;
    //   247: aload_1
    //   248: getfield 1946	com/google/android/gms/internal/lb:name	Ljava/lang/String;
    //   251: aload_1
    //   252: getfield 1971	com/google/android/gms/internal/lb:aXh	J
    //   255: aload 7
    //   257: invokespecial 629	com/google/android/gms/internal/ld:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    //   260: astore_1
    //   261: aload_0
    //   262: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   265: getfield 648	com/google/android/gms/internal/hb:aTh	Lcom/google/android/gms/internal/hd;
    //   268: ldc_w 2072
    //   271: aload_0
    //   272: invokevirtual 396	com/google/android/gms/internal/hz:qK	()Lcom/google/android/gms/internal/gz;
    //   275: aload_1
    //   276: getfield 1201	com/google/android/gms/internal/ld:name	Ljava/lang/String;
    //   279: invokevirtual 1204	com/google/android/gms/internal/gz:cj	(Ljava/lang/String;)Ljava/lang/String;
    //   282: aload 7
    //   284: invokevirtual 404	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   287: aload_0
    //   288: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   291: invokevirtual 277	com/google/android/gms/internal/gd:beginTransaction	()V
    //   294: aload_0
    //   295: aload_2
    //   296: invokevirtual 1343	com/google/android/gms/internal/hz:f	(Lcom/google/android/gms/internal/fx;)V
    //   299: aload_0
    //   300: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   303: aload_1
    //   304: invokevirtual 645	com/google/android/gms/internal/gd:a	(Lcom/google/android/gms/internal/ld;)Z
    //   307: istore 6
    //   309: aload_0
    //   310: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   313: invokevirtual 844	com/google/android/gms/internal/gd:setTransactionSuccessful	()V
    //   316: iload 6
    //   318: ifeq +39 -> 357
    //   321: aload_0
    //   322: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   325: getfield 648	com/google/android/gms/internal/hb:aTh	Lcom/google/android/gms/internal/hd;
    //   328: ldc_w 2074
    //   331: aload_0
    //   332: invokevirtual 396	com/google/android/gms/internal/hz:qK	()Lcom/google/android/gms/internal/gz;
    //   335: aload_1
    //   336: getfield 1201	com/google/android/gms/internal/ld:name	Ljava/lang/String;
    //   339: invokevirtual 1204	com/google/android/gms/internal/gz:cj	(Ljava/lang/String;)Ljava/lang/String;
    //   342: aload_1
    //   343: getfield 624	com/google/android/gms/internal/ld:value	Ljava/lang/Object;
    //   346: invokevirtual 404	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   349: aload_0
    //   350: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   353: invokevirtual 456	com/google/android/gms/internal/gd:endTransaction	()V
    //   356: return
    //   357: aload_0
    //   358: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   361: getfield 447	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   364: ldc_w 2076
    //   367: aload_0
    //   368: invokevirtual 396	com/google/android/gms/internal/hz:qK	()Lcom/google/android/gms/internal/gz;
    //   371: aload_1
    //   372: getfield 1201	com/google/android/gms/internal/ld:name	Ljava/lang/String;
    //   375: invokevirtual 1204	com/google/android/gms/internal/gz:cj	(Ljava/lang/String;)Ljava/lang/String;
    //   378: aload_1
    //   379: getfield 624	com/google/android/gms/internal/ld:value	Ljava/lang/Object;
    //   382: invokevirtual 404	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   385: aload_0
    //   386: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   389: astore_1
    //   390: aload_2
    //   391: getfield 1329	com/google/android/gms/internal/fx:packageName	Ljava/lang/String;
    //   394: astore_2
    //   395: aload_1
    //   396: bipush 9
    //   398: aconst_null
    //   399: aconst_null
    //   400: iconst_0
    //   401: invokevirtual 426	com/google/android/gms/internal/le:b	(ILjava/lang/String;Ljava/lang/String;I)V
    //   404: goto -55 -> 349
    //   407: astore_1
    //   408: aload_0
    //   409: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   412: invokevirtual 456	com/google/android/gms/internal/gd:endTransaction	()V
    //   415: aload_1
    //   416: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	417	0	this	hz
    //   0	417	1	paramlb	lb
    //   0	417	2	paramfx	fx
    //   4	204	3	i	int
    //   1	171	4	j	int
    //   51	150	5	k	int
    //   307	10	6	bool	boolean
    //   73	210	7	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   294	316	407	finally
    //   321	349	407	finally
    //   357	404	407	finally
  }
  
  final void b(String paramString, int paramInt, Throwable paramThrowable, byte[] paramArrayOfByte, Map<String, List<String>> paramMap)
  {
    int j = 1;
    qO().mN();
    pf();
    ae.bf(paramString);
    byte[] arrayOfByte = paramArrayOfByte;
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      label115:
      label139:
      int i;
      try
      {
        arrayOfByte = new byte[0];
        qP().aTi.j("onConfigFetched. Response size", Integer.valueOf(arrayOfByte.length));
        qJ().beginTransaction();
        try
        {
          paramArrayOfByte = qJ().cb(paramString);
          if ((paramInt == 200) || (paramInt == 204)) {
            break label513;
          }
          if (paramInt == 304)
          {
            break label513;
            if (paramArrayOfByte == null)
            {
              qP().aTd.j("App does not exist in onConfigFetched. appId", hb.ck(paramString));
              qJ().setTransactionSuccessful();
              qJ().endTransaction();
            }
          }
          else
          {
            i = 0;
            continue;
          }
          if ((i == 0) && (paramInt != 404)) {
            break label373;
          }
          if (paramMap == null) {
            break label315;
          }
          paramThrowable = (List)paramMap.get("Last-Modified");
          if ((paramThrowable == null) || (paramThrowable.size() <= 0)) {
            break label320;
          }
          paramThrowable = (String)paramThrowable.get(0);
        }
        finally
        {
          label203:
          qJ().endTransaction();
        }
        if (qM().cr(paramString) == null) {
          qM().a(paramString, null, null);
        }
        label225:
        paramArrayOfByte.x(this.aLd.currentTimeMillis());
        qJ().a(paramArrayOfByte);
        if (paramInt != 404) {
          break label340;
        }
        qP().aTf.j("Config not found. Using empty config. appId", paramString);
        label269:
        if ((!rW().qe()) || (!sc())) {
          break label366;
        }
        sb();
        continue;
        paramThrowable = null;
      }
      finally
      {
        this.aVu = false;
        sh();
      }
      label315:
      continue;
      label320:
      paramThrowable = null;
      label340:
      label366:
      label373:
      label507:
      label513:
      do
      {
        qM().a(paramString, arrayOfByte, paramThrowable);
        break label225;
        qP().aTi.e("Successfully fetched config. Got network response. code, size", Integer.valueOf(paramInt), Integer.valueOf(arrayOfByte.length));
        break label269;
        sd();
        break label115;
        paramArrayOfByte.y(this.aLd.currentTimeMillis());
        qJ().a(paramArrayOfByte);
        qP().aTi.e("Fetching config failed. code, error", Integer.valueOf(paramInt), paramThrowable);
        paramThrowable = qM();
        paramThrowable.mN();
        paramThrowable.aUu.put(paramString, null);
        qQ().aTI.set(this.aLd.currentTimeMillis());
        i = j;
        if (paramInt != 503) {
          if (paramInt != 429) {
            break label507;
          }
        }
        for (i = j;; i = 0)
        {
          if (i != 0) {
            qQ().aTJ.set(this.aLd.currentTimeMillis());
          }
          sd();
          break;
        }
        if (paramThrowable != null) {
          break label139;
        }
        i = 1;
        break;
        if (paramInt == 404) {
          break label203;
        }
      } while (paramInt != 304);
    }
  }
  
  final void c(ga paramga)
  {
    fx localfx = cs(paramga.packageName);
    if (localfx != null) {
      b(paramga, localfx);
    }
  }
  
  /* Error */
  final void c(ga paramga, fx paramfx)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 95	com/google/android/gms/common/internal/ae:E	(Ljava/lang/Object;)Ljava/lang/Object;
    //   4: pop
    //   5: aload_1
    //   6: getfield 1938	com/google/android/gms/internal/ga:packageName	Ljava/lang/String;
    //   9: invokestatic 1191	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   12: pop
    //   13: aload_1
    //   14: getfield 1943	com/google/android/gms/internal/ga:aRc	Lcom/google/android/gms/internal/lb;
    //   17: invokestatic 95	com/google/android/gms/common/internal/ae:E	(Ljava/lang/Object;)Ljava/lang/Object;
    //   20: pop
    //   21: aload_1
    //   22: getfield 1943	com/google/android/gms/internal/ga:aRc	Lcom/google/android/gms/internal/lb;
    //   25: getfield 1946	com/google/android/gms/internal/lb:name	Ljava/lang/String;
    //   28: invokestatic 1191	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   31: pop
    //   32: aload_0
    //   33: invokevirtual 882	com/google/android/gms/internal/hz:qO	()Lcom/google/android/gms/internal/hu;
    //   36: invokevirtual 283	com/google/android/gms/internal/ix:mN	()V
    //   39: aload_0
    //   40: invokevirtual 1333	com/google/android/gms/internal/hz:pf	()V
    //   43: aload_2
    //   44: getfield 1477	com/google/android/gms/internal/fx:aQz	Ljava/lang/String;
    //   47: invokestatic 296	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   50: ifeq +4 -> 54
    //   53: return
    //   54: aload_2
    //   55: getfield 1339	com/google/android/gms/internal/fx:aQK	Z
    //   58: ifne +9 -> 67
    //   61: aload_0
    //   62: aload_2
    //   63: invokevirtual 1343	com/google/android/gms/internal/hz:f	(Lcom/google/android/gms/internal/fx;)V
    //   66: return
    //   67: aload_0
    //   68: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   71: invokevirtual 277	com/google/android/gms/internal/gd:beginTransaction	()V
    //   74: aload_0
    //   75: aload_2
    //   76: invokevirtual 1343	com/google/android/gms/internal/hz:f	(Lcom/google/android/gms/internal/fx;)V
    //   79: aload_0
    //   80: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   83: aload_1
    //   84: getfield 1938	com/google/android/gms/internal/ga:packageName	Ljava/lang/String;
    //   87: aload_1
    //   88: getfield 1943	com/google/android/gms/internal/ga:aRc	Lcom/google/android/gms/internal/lb;
    //   91: getfield 1946	com/google/android/gms/internal/lb:name	Ljava/lang/String;
    //   94: invokevirtual 1955	com/google/android/gms/internal/gd:w	(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ga;
    //   97: astore 4
    //   99: aload 4
    //   101: ifnull +156 -> 257
    //   104: aload_0
    //   105: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   108: getfield 648	com/google/android/gms/internal/hb:aTh	Lcom/google/android/gms/internal/hd;
    //   111: ldc_w 2107
    //   114: aload_1
    //   115: getfield 1938	com/google/android/gms/internal/ga:packageName	Ljava/lang/String;
    //   118: aload_0
    //   119: invokevirtual 396	com/google/android/gms/internal/hz:qK	()Lcom/google/android/gms/internal/gz;
    //   122: aload_1
    //   123: getfield 1943	com/google/android/gms/internal/ga:aRc	Lcom/google/android/gms/internal/lb;
    //   126: getfield 1946	com/google/android/gms/internal/lb:name	Ljava/lang/String;
    //   129: invokevirtual 1204	com/google/android/gms/internal/gz:cj	(Ljava/lang/String;)Ljava/lang/String;
    //   132: invokevirtual 404	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   135: aload_0
    //   136: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   139: aload_1
    //   140: getfield 1938	com/google/android/gms/internal/ga:packageName	Ljava/lang/String;
    //   143: aload_1
    //   144: getfield 1943	com/google/android/gms/internal/ga:aRc	Lcom/google/android/gms/internal/lb;
    //   147: getfield 1946	com/google/android/gms/internal/lb:name	Ljava/lang/String;
    //   150: invokevirtual 2008	com/google/android/gms/internal/gd:x	(Ljava/lang/String;Ljava/lang/String;)I
    //   153: pop
    //   154: aload 4
    //   156: getfield 1952	com/google/android/gms/internal/ga:aRe	Z
    //   159: ifeq +21 -> 180
    //   162: aload_0
    //   163: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   166: aload_1
    //   167: getfield 1938	com/google/android/gms/internal/ga:packageName	Ljava/lang/String;
    //   170: aload_1
    //   171: getfield 1943	com/google/android/gms/internal/ga:aRc	Lcom/google/android/gms/internal/lb;
    //   174: getfield 1946	com/google/android/gms/internal/lb:name	Ljava/lang/String;
    //   177: invokevirtual 2022	com/google/android/gms/internal/gd:u	(Ljava/lang/String;Ljava/lang/String;)V
    //   180: aload_1
    //   181: getfield 2025	com/google/android/gms/internal/ga:aRk	Lcom/google/android/gms/internal/gp;
    //   184: ifnull +58 -> 242
    //   187: aconst_null
    //   188: astore_3
    //   189: aload_1
    //   190: getfield 2025	com/google/android/gms/internal/ga:aRk	Lcom/google/android/gms/internal/gp;
    //   193: getfield 1128	com/google/android/gms/internal/gp:aRH	Lcom/google/android/gms/internal/gm;
    //   196: ifnull +14 -> 210
    //   199: aload_1
    //   200: getfield 2025	com/google/android/gms/internal/ga:aRk	Lcom/google/android/gms/internal/gp;
    //   203: getfield 1128	com/google/android/gms/internal/gp:aRH	Lcom/google/android/gms/internal/gm;
    //   206: invokevirtual 1415	com/google/android/gms/internal/gm:rB	()Landroid/os/Bundle;
    //   209: astore_3
    //   210: aload_0
    //   211: aload_0
    //   212: invokevirtual 408	com/google/android/gms/internal/hz:qL	()Lcom/google/android/gms/internal/le;
    //   215: aload_1
    //   216: getfield 2025	com/google/android/gms/internal/ga:aRk	Lcom/google/android/gms/internal/gp;
    //   219: getfield 1143	com/google/android/gms/internal/gp:name	Ljava/lang/String;
    //   222: aload_3
    //   223: aload 4
    //   225: getfield 1939	com/google/android/gms/internal/ga:aRb	Ljava/lang/String;
    //   228: aload_1
    //   229: getfield 2025	com/google/android/gms/internal/ga:aRk	Lcom/google/android/gms/internal/gp;
    //   232: getfield 1431	com/google/android/gms/internal/gp:aRS	J
    //   235: invokevirtual 2110	com/google/android/gms/internal/le:a	(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;J)Lcom/google/android/gms/internal/gp;
    //   238: aload_2
    //   239: invokespecial 1983	com/google/android/gms/internal/hz:c	(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V
    //   242: aload_0
    //   243: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   246: invokevirtual 844	com/google/android/gms/internal/gd:setTransactionSuccessful	()V
    //   249: aload_0
    //   250: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   253: invokevirtual 456	com/google/android/gms/internal/gd:endTransaction	()V
    //   256: return
    //   257: aload_0
    //   258: invokevirtual 256	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   261: getfield 259	com/google/android/gms/internal/hb:aTd	Lcom/google/android/gms/internal/hd;
    //   264: ldc_w 2112
    //   267: aload_1
    //   268: getfield 1938	com/google/android/gms/internal/ga:packageName	Ljava/lang/String;
    //   271: invokestatic 392	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   274: aload_0
    //   275: invokevirtual 396	com/google/android/gms/internal/hz:qK	()Lcom/google/android/gms/internal/gz;
    //   278: aload_1
    //   279: getfield 1943	com/google/android/gms/internal/ga:aRc	Lcom/google/android/gms/internal/lb;
    //   282: getfield 1946	com/google/android/gms/internal/lb:name	Ljava/lang/String;
    //   285: invokevirtual 1204	com/google/android/gms/internal/gz:cj	(Ljava/lang/String;)Ljava/lang/String;
    //   288: invokevirtual 404	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   291: goto -49 -> 242
    //   294: astore_1
    //   295: aload_0
    //   296: invokevirtual 272	com/google/android/gms/internal/hz:qJ	()Lcom/google/android/gms/internal/gd;
    //   299: invokevirtual 456	com/google/android/gms/internal/gd:endTransaction	()V
    //   302: aload_1
    //   303: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	304	0	this	hz
    //   0	304	1	paramga	ga
    //   0	304	2	paramfx	fx
    //   188	35	3	localBundle	Bundle
    //   97	127	4	localga	ga
    // Exception table:
    //   from	to	target	type
    //   74	99	294	finally
    //   104	180	294	finally
    //   180	187	294	finally
    //   189	210	294	finally
    //   210	242	294	finally
    //   242	249	294	finally
    //   257	291	294	finally
  }
  
  final void c(lb paramlb, fx paramfx)
  {
    qO().mN();
    pf();
    if (TextUtils.isEmpty(paramfx.aQz)) {
      return;
    }
    if (!paramfx.aQK)
    {
      f(paramfx);
      return;
    }
    qP().aTh.j("Removing user property", qK().cj(paramlb.name));
    qJ().beginTransaction();
    try
    {
      f(paramfx);
      qJ().u(paramfx.packageName, paramlb.name);
      qJ().setTransactionSuccessful();
      qP().aTh.j("User property removed", qK().cj(paramlb.name));
      return;
    }
    finally
    {
      qJ().endTransaction();
    }
  }
  
  public final String ct(String paramString)
  {
    Object localObject = qO().c(new ib(this, paramString));
    try
    {
      localObject = (String)((Future)localObject).get(30000L, TimeUnit.MILLISECONDS);
      return (String)localObject;
    }
    catch (InterruptedException localInterruptedException)
    {
      qP().aTa.e("Failed to get app instance id. appId", hb.ck(paramString), localInterruptedException);
      return null;
    }
    catch (ExecutionException localExecutionException)
    {
      for (;;) {}
    }
    catch (TimeoutException localTimeoutException)
    {
      for (;;) {}
    }
  }
  
  final void d(fx paramfx)
  {
    qJ().cb(paramfx.packageName);
    localgd = qJ();
    str = paramfx.packageName;
    ae.bf(str);
    localgd.mN();
    localgd.pf();
    try
    {
      SQLiteDatabase localSQLiteDatabase = localgd.getWritableDatabase();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = str;
      int i = localSQLiteDatabase.delete("apps", "app_id=?", arrayOfString);
      int j = localSQLiteDatabase.delete("events", "app_id=?", arrayOfString);
      int k = localSQLiteDatabase.delete("user_attributes", "app_id=?", arrayOfString);
      int m = localSQLiteDatabase.delete("conditional_properties", "app_id=?", arrayOfString);
      int n = localSQLiteDatabase.delete("raw_events", "app_id=?", arrayOfString);
      int i1 = localSQLiteDatabase.delete("raw_events_metadata", "app_id=?", arrayOfString);
      int i2 = localSQLiteDatabase.delete("queue", "app_id=?", arrayOfString);
      int i3 = localSQLiteDatabase.delete("audience_filter_values", "app_id=?", arrayOfString);
      i = localSQLiteDatabase.delete("main_event_params", "app_id=?", arrayOfString) + (i + 0 + j + k + m + n + i1 + i2 + i3);
      if (i > 0) {
        localgd.qP().aTi.e("Reset analytics data. app, records", str, Integer.valueOf(i));
      }
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        localgd.qP().aTa.e("Error resetting analytics data. appId, error", hb.ck(str), localSQLiteException);
      }
    }
    e(a(this.aUM, paramfx.packageName, paramfx.aQz, paramfx.aQK, paramfx.aQM));
  }
  
  final void d(ga paramga)
  {
    fx localfx = cs(paramga.packageName);
    if (localfx != null) {
      c(paramga, localfx);
    }
  }
  
  public final void e(fx paramfx)
  {
    qO().mN();
    pf();
    ae.E(paramfx);
    ae.bf(paramfx.packageName);
    if (TextUtils.isEmpty(paramfx.aQz)) {
      return;
    }
    Object localObject1 = qJ().cb(paramfx.packageName);
    Object localObject2;
    if ((localObject1 != null) && (TextUtils.isEmpty(((fw)localObject1).getGmpAppId())) && (!TextUtils.isEmpty(paramfx.aQz)))
    {
      ((fw)localObject1).x(0L);
      qJ().a((fw)localObject1);
      localObject1 = qM();
      localObject2 = paramfx.packageName;
      ((ix)localObject1).mN();
      ((ht)localObject1).aUs.remove(localObject2);
    }
    if (!paramfx.aQK)
    {
      f(paramfx);
      return;
    }
    long l2 = paramfx.aQZ;
    long l1 = l2;
    if (l2 == 0L) {
      l1 = this.aLd.currentTimeMillis();
    }
    int i = paramfx.aRa;
    if ((i != 0) && (i != 1))
    {
      qP().aTd.e("Incorrect app type, assuming installed app. appId, appType", hb.ck(paramfx.packageName), Integer.valueOf(i));
      i = 0;
      qJ().beginTransaction();
      for (;;)
      {
        try
        {
          localObject2 = qJ().cb(paramfx.packageName);
          localObject1 = localObject2;
          if (localObject2 != null)
          {
            localObject1 = localObject2;
            if (((fw)localObject2).getGmpAppId() != null)
            {
              localObject1 = localObject2;
              if (!((fw)localObject2).getGmpAppId().equals(paramfx.aQz))
              {
                qP().aTd.j("New GMP App Id passed in. Removing cached database data. appId", hb.ck(((fw)localObject2).getAppId()));
                localObject1 = qJ();
                localObject2 = ((fw)localObject2).getAppId();
                ((iy)localObject1).pf();
                ((ix)localObject1).mN();
                ae.bf((String)localObject2);
              }
            }
          }
          try
          {
            localObject3 = ((gd)localObject1).getWritableDatabase();
            String[] arrayOfString = new String[1];
            arrayOfString[0] = localObject2;
            int j = ((SQLiteDatabase)localObject3).delete("events", "app_id=?", arrayOfString);
            int k = ((SQLiteDatabase)localObject3).delete("user_attributes", "app_id=?", arrayOfString);
            int m = ((SQLiteDatabase)localObject3).delete("conditional_properties", "app_id=?", arrayOfString);
            int n = ((SQLiteDatabase)localObject3).delete("apps", "app_id=?", arrayOfString);
            int i1 = ((SQLiteDatabase)localObject3).delete("raw_events", "app_id=?", arrayOfString);
            int i2 = ((SQLiteDatabase)localObject3).delete("raw_events_metadata", "app_id=?", arrayOfString);
            int i3 = ((SQLiteDatabase)localObject3).delete("event_filters", "app_id=?", arrayOfString);
            int i4 = ((SQLiteDatabase)localObject3).delete("property_filters", "app_id=?", arrayOfString);
            j = ((SQLiteDatabase)localObject3).delete("audience_filter_values", "app_id=?", arrayOfString) + (j + 0 + k + m + n + i1 + i2 + i3 + i4);
            if (j > 0) {
              ((ix)localObject1).qP().aTi.e("Deleted application data. app, records", localObject2, Integer.valueOf(j));
            }
          }
          catch (SQLiteException localSQLiteException)
          {
            Object localObject3;
            ((ix)localObject1).qP().aTa.e("Error deleting application data. appId, error", hb.ck((String)localObject2), localSQLiteException);
            continue;
          }
          localObject1 = null;
          if (localObject1 != null)
          {
            if (((fw)localObject1).qW() == -2147483648L) {
              break label959;
            }
            if (((fw)localObject1).qW() != paramfx.aQG)
            {
              localObject2 = new Bundle();
              ((Bundle)localObject2).putString("_pv", ((fw)localObject1).qq());
              b(new gp("_au", new gm((Bundle)localObject2), "auto", l1), paramfx);
            }
          }
          f(paramfx);
          localObject1 = null;
          if (i != 0) {
            break label1036;
          }
          localObject1 = qJ().t(paramfx.packageName, "_f");
          if (localObject1 != null) {
            break label1378;
          }
          l2 = (1L + l1 / 3600000L) * 3600000L;
          if (i != 0) {
            break label1278;
          }
          b(new lb("_fot", l1, Long.valueOf(l2), "auto"), paramfx);
          qO().mN();
          pf();
          localObject3 = new Bundle();
          ((Bundle)localObject3).putLong("_c", 1L);
          ((Bundle)localObject3).putLong("_r", 1L);
          ((Bundle)localObject3).putLong("_uwa", 0L);
          ((Bundle)localObject3).putLong("_pfo", 0L);
          ((Bundle)localObject3).putLong("_sys", 0L);
          ((Bundle)localObject3).putLong("_sysu", 0L);
          if (this.aUM.getPackageManager() != null) {
            break;
          }
          qP().aTa.j("PackageManager is null, first open report might be inaccurate. appId", hb.ck(paramfx.packageName));
          label775:
          localObject1 = qJ();
          localObject2 = paramfx.packageName;
          ae.bf((String)localObject2);
          ((ix)localObject1).mN();
          ((iy)localObject1).pf();
          l2 = ((gd)localObject1).A((String)localObject2, "first_open_count");
          if (l2 >= 0L) {
            ((Bundle)localObject3).putLong("_pfo", l2);
          }
          b(new gp("_f", new gm((Bundle)localObject3), "auto", l1), paramfx);
          label861:
          localObject1 = new Bundle();
          ((Bundle)localObject1).putLong("_et", 1L);
          b(new gp("_e", new gm((Bundle)localObject1), "auto", l1), paramfx);
          label908:
          qJ().setTransactionSuccessful();
          return;
        }
        finally
        {
          qJ().endTransaction();
        }
        label959:
        if ((((fw)localObject1).qq() != null) && (!((fw)localObject1).qq().equals(paramfx.aQF)))
        {
          localObject2 = new Bundle();
          ((Bundle)localObject2).putString("_pv", ((fw)localObject1).qq());
          b(new gp("_au", new gm((Bundle)localObject2), "auto", l1), paramfx);
          continue;
          label1036:
          if (i == 1) {
            localObject1 = qJ().t(paramfx.packageName, "_v");
          }
        }
      }
      localObject1 = null;
    }
    for (;;)
    {
      try
      {
        localObject2 = ee.ag(this.aUM).getPackageInfo(paramfx.packageName, 0);
        localObject1 = localObject2;
        if ((localObject1 != null) && (((PackageInfo)localObject1).firstInstallTime != 0L))
        {
          i = 0;
          if (((PackageInfo)localObject1).firstInstallTime == ((PackageInfo)localObject1).lastUpdateTime) {
            break label1425;
          }
          localSQLiteException.putLong("_uwa", 1L);
          if (i == 0) {
            break label1430;
          }
          l2 = 1L;
          b(new lb("_fi", l1, Long.valueOf(l2), "auto"), paramfx);
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        try
        {
          localObject1 = ee.ag(this.aUM).getApplicationInfo(paramfx.packageName, 0);
          if (localObject1 == null) {
            break label775;
          }
          if ((((ApplicationInfo)localObject1).flags & 0x1) != 0) {
            localSQLiteException.putLong("_sys", 1L);
          }
          if ((((ApplicationInfo)localObject1).flags & 0x80) == 0) {
            break label775;
          }
          localSQLiteException.putLong("_sysu", 1L);
          break label775;
          localNameNotFoundException2 = localNameNotFoundException2;
          qP().aTa.e("Package info is null, first open report might be inaccurate. appId", hb.ck(paramfx.packageName), localNameNotFoundException2);
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException1)
        {
          qP().aTa.e("Application info is null, first open report might be inaccurate. appId", hb.ck(paramfx.packageName), localNameNotFoundException1);
          localBundle = null;
          continue;
        }
      }
      label1278:
      if (i != 1) {
        break label861;
      }
      b(new lb("_fvt", l1, Long.valueOf(l2), "auto"), paramfx);
      qO().mN();
      pf();
      Bundle localBundle = new Bundle();
      localBundle.putLong("_c", 1L);
      localBundle.putLong("_r", 1L);
      b(new gp("_v", new gm(localBundle), "auto", l1), paramfx);
      break label861;
      label1378:
      if (!paramfx.aQY) {
        break label908;
      }
      b(new gp("_cd", new gm(new Bundle()), "auto", l1), paramfx);
      break label908;
      break;
      label1425:
      i = 1;
      continue;
      label1430:
      l2 = 0L;
    }
  }
  
  final void f(fx paramfx)
  {
    int k = 1;
    qO().mN();
    pf();
    ae.E(paramfx);
    ae.bf(paramfx.packageName);
    fw localfw2 = qJ().cb(paramfx.packageName);
    String str = qQ().cn(paramfx.packageName);
    int i = 0;
    fw localfw1;
    int j;
    if (localfw2 == null)
    {
      localfw1 = new fw(this, paramfx.packageName);
      localfw1.bP(qD().rD());
      localfw1.bR(str);
      i = 1;
      j = i;
      if (!TextUtils.isEmpty(paramfx.aQz))
      {
        j = i;
        if (!paramfx.aQz.equals(localfw1.getGmpAppId()))
        {
          localfw1.bQ(paramfx.aQz);
          j = 1;
        }
      }
      i = j;
      if (!TextUtils.isEmpty(paramfx.aQB))
      {
        i = j;
        if (!paramfx.aQB.equals(localfw1.qT()))
        {
          localfw1.bS(paramfx.aQB);
          i = 1;
        }
      }
      j = i;
      if (paramfx.aQI != 0L)
      {
        j = i;
        if (paramfx.aQI != localfw1.qY())
        {
          localfw1.u(paramfx.aQI);
          j = 1;
        }
      }
      i = j;
      if (!TextUtils.isEmpty(paramfx.aQF))
      {
        i = j;
        if (!paramfx.aQF.equals(localfw1.qq()))
        {
          localfw1.bT(paramfx.aQF);
          i = 1;
        }
      }
      if (paramfx.aQG != localfw1.qW())
      {
        localfw1.t(paramfx.aQG);
        i = 1;
      }
      j = i;
      if (paramfx.aQH != null)
      {
        j = i;
        if (!paramfx.aQH.equals(localfw1.qX()))
        {
          localfw1.bU(paramfx.aQH);
          j = 1;
        }
      }
      i = j;
      if (paramfx.aQJ != localfw1.qZ())
      {
        localfw1.v(paramfx.aQJ);
        i = 1;
      }
      if (paramfx.aQK != localfw1.ra())
      {
        localfw1.setMeasurementEnabled(paramfx.aQK);
        i = 1;
      }
      j = i;
      if (!TextUtils.isEmpty(paramfx.aQX))
      {
        j = i;
        if (!paramfx.aQX.equals(localfw1.rf()))
        {
          localfw1.bV(paramfx.aQX);
          j = 1;
        }
      }
      if (paramfx.aQL != localfw1.rg())
      {
        localfw1.z(paramfx.aQL);
        j = 1;
      }
      if (paramfx.aQM == localfw1.rh()) {
        break label509;
      }
      localfw1.av(paramfx.aQM);
    }
    label509:
    for (i = k;; i = j)
    {
      if (i != 0) {
        qJ().a(localfw1);
      }
      return;
      localfw1 = localfw2;
      if (str.equals(localfw2.qS())) {
        break;
      }
      localfw2.bR(str);
      localfw2.bP(qD().rD());
      i = 1;
      localfw1 = localfw2;
      break;
    }
  }
  
  public final boolean isEnabled()
  {
    boolean bool = false;
    qO().mN();
    pf();
    if (this.aUN.rj()) {
      return false;
    }
    Boolean localBoolean = this.aUN.bX("firebase_analytics_collection_enabled");
    if (localBoolean != null) {
      bool = localBoolean.booleanValue();
    }
    for (;;)
    {
      return qQ().ax(bool);
      if (!au.nO()) {
        bool = true;
      }
    }
  }
  
  final void pf()
  {
    if (!this.initialized) {
      throw new IllegalStateException("AppMeasurement is not initialized");
    }
  }
  
  public final fs qA()
  {
    a(this.aVa);
    return this.aVa;
  }
  
  public final fz qB()
  {
    a(this.aVi);
    return this.aVi;
  }
  
  public final ja qC()
  {
    a(this.aUZ);
    return this.aUZ;
  }
  
  public final gw qD()
  {
    a(this.aVf);
    return this.aVf;
  }
  
  public final gj qE()
  {
    a(this.aVe);
    return this.aVe;
  }
  
  public final ju qF()
  {
    a(this.aVd);
    return this.aVd;
  }
  
  public final jq qG()
  {
    a(this.aUY);
    return this.aUY;
  }
  
  public final gd qJ()
  {
    a(this.aVb);
    return this.aVb;
  }
  
  public final gz qK()
  {
    a(this.aUW);
    return this.aUW;
  }
  
  public final le qL()
  {
    a(this.aUV);
    return this.aUV;
  }
  
  public final ht qM()
  {
    a(this.aUS);
    return this.aUS;
  }
  
  public final hu qO()
  {
    a(this.aUQ);
    return this.aUQ;
  }
  
  public final hb qP()
  {
    a(this.aUP);
    return this.aUP;
  }
  
  public final hl qQ()
  {
    a(this.aUO);
    return this.aUO;
  }
  
  protected final boolean rV()
  {
    pf();
    qO().mN();
    if ((this.aVk == null) || (this.aVl == 0L) || ((this.aVk != null) && (!this.aVk.booleanValue()) && (Math.abs(this.aLd.elapsedRealtime() - this.aVl) > 1000L)))
    {
      this.aVl = this.aLd.elapsedRealtime();
      if ((!qL().bE("android.permission.INTERNET")) || (!qL().bE("android.permission.ACCESS_NETWORK_STATE")) || ((!ee.ag(this.aUM).qw()) && ((!hq.s(this.aUM)) || (!ko.aj(this.aUM))))) {
        break label189;
      }
    }
    label189:
    for (boolean bool = true;; bool = false)
    {
      this.aVk = Boolean.valueOf(bool);
      if (this.aVk.booleanValue()) {
        this.aVk = Boolean.valueOf(qL().cB(qD().getGmpAppId()));
      }
      return this.aVk.booleanValue();
    }
  }
  
  public final hf rW()
  {
    a(this.aUX);
    return this.aUX;
  }
  
  public final void sb()
  {
    qO().mN();
    pf();
    this.aVw = true;
    int i;
    int j;
    for (;;)
    {
      long l1;
      Object localObject4;
      try
      {
        Object localObject1 = qF().aWB;
        if (localObject1 == null)
        {
          qP().aTd.bq("Upload data called on the client side before use of service was decided");
          return;
        }
        if (((Boolean)localObject1).booleanValue())
        {
          qP().aTa.bq("Upload called in the client side when service should be used");
          return;
        }
        if (this.aVt > 0L)
        {
          sd();
          return;
        }
        qO().mN();
        if (this.aVo != null)
        {
          i = 1;
          if (i != 0) {
            qP().aTi.bq("Uploading requested multiple times");
          }
        }
        else
        {
          i = 0;
          continue;
        }
        if (!rW().qe())
        {
          qP().aTi.bq("Network not connected, ignoring upload request");
          sd();
          return;
        }
        l1 = this.aLd.currentTimeMillis();
        D(l1 - gc.rl());
        long l2 = qQ().aTH.get();
        if (l2 != 0L) {
          qP().aTh.j("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(l1 - l2)));
        }
        str = qJ().ro();
        if (TextUtils.isEmpty(str)) {
          break label952;
        }
        if (this.aVs == -1L) {
          this.aVs = qJ().rq();
        }
        i = this.aUN.b(str, gr.aSk);
        j = Math.max(0, this.aUN.b(str, gr.aSl));
        localObject4 = qJ().b(str, i, j);
        lt locallt;
        label532:
        byte[] arrayOfByte;
        if (!((List)localObject4).isEmpty())
        {
          localObject1 = ((List)localObject4).iterator();
          if (!((Iterator)localObject1).hasNext()) {
            break label1019;
          }
          localObject5 = (lu)((Pair)((Iterator)localObject1).next()).first;
          if (TextUtils.isEmpty(((lu)localObject5).aYC)) {
            continue;
          }
          localObject1 = ((lu)localObject5).aYC;
          break label1022;
          if (i >= ((List)localObject4).size()) {
            break label1012;
          }
          localObject5 = (lu)((Pair)((List)localObject4).get(i)).first;
          if ((TextUtils.isEmpty(((lu)localObject5).aYC)) || (((lu)localObject5).aYC.equals(localObject1))) {
            break label1044;
          }
          localObject1 = ((List)localObject4).subList(0, i);
          locallt = new lt();
          locallt.aYm = new lu[((List)localObject1).size()];
          localObject4 = new ArrayList(((List)localObject1).size());
          if ((!gc.rn()) || (!this.aUN.bY(str))) {
            break label1051;
          }
          i = 1;
          break;
          if (j < locallt.aYm.length)
          {
            locallt.aYm[j] = ((lu)((Pair)((List)localObject1).get(j)).first);
            ((List)localObject4).add((Long)((Pair)((List)localObject1).get(j)).second);
            locallt.aYm[j].aYB = Long.valueOf(12211L);
            locallt.aYm[j].aYr = Long.valueOf(l1);
            locallt.aYm[j].aYG = Boolean.valueOf(false);
            if (i != 0) {
              break label1037;
            }
            locallt.aYm[j].aYO = null;
            break label1037;
          }
          if (!qP().cQ(2)) {
            break label1006;
          }
          localObject1 = qK().a(locallt);
          arrayOfByte = qL().b(locallt);
          localObject5 = (String)gr.aSu.aSN;
        }
        try
        {
          URL localURL = new URL((String)localObject5);
          if (((List)localObject4).isEmpty()) {
            continue;
          }
          bool = true;
          ae.au(bool);
          if (this.aVo == null) {
            continue;
          }
          qP().aTa.bq("Set uploading progress before finishing the previous upload");
          qQ().aTI.set(l1);
          localObject4 = "?";
          if (locallt.aYm.length > 0) {
            localObject4 = locallt.aYm[0].aQx;
          }
          qP().aTi.d("Uploading data. app, uncompressed size, data", localObject4, Integer.valueOf(arrayOfByte.length), localObject1);
          this.aVv = true;
          localObject1 = rW();
          localObject4 = new ic(this);
          ((ix)localObject1).mN();
          ((iy)localObject1).pf();
          ae.E(localURL);
          ae.E(arrayOfByte);
          ae.E(localObject4);
          ((ix)localObject1).qO().j(new hi((hf)localObject1, str, localURL, arrayOfByte, null, (hg)localObject4));
        }
        catch (MalformedURLException localMalformedURLException)
        {
          boolean bool;
          qP().aTa.e("Failed to parse upload URL. Not uploading. appId", hb.ck(str), localObject5);
          continue;
        }
        return;
      }
      finally
      {
        String str;
        Object localObject5;
        this.aVw = false;
        sh();
      }
      bool = false;
      continue;
      this.aVo = new ArrayList((Collection)localObject4);
      continue;
      label952:
      this.aVs = -1L;
      Object localObject3 = qJ().A(l1 - gc.rl());
      if (!TextUtils.isEmpty((CharSequence)localObject3))
      {
        localObject3 = qJ().cb((String)localObject3);
        if (localObject3 != null)
        {
          b((fw)localObject3);
          continue;
          label1006:
          localObject3 = null;
          continue;
          label1012:
          label1019:
          label1022:
          do
          {
            localObject3 = localObject4;
            break;
            localObject3 = null;
          } while (localObject3 == null);
          i = 0;
        }
      }
    }
    for (;;)
    {
      j = 0;
      break label532;
      label1037:
      j += 1;
      break label532;
      label1044:
      i += 1;
      break;
      label1051:
      i = 0;
    }
  }
  
  final void sd()
  {
    qO().mN();
    pf();
    if (!sg()) {
      return;
    }
    long l1;
    if (this.aVt > 0L)
    {
      l1 = 3600000L - Math.abs(this.aLd.elapsedRealtime() - this.aVt);
      if (l1 > 0L)
      {
        qP().aTi.j("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(l1));
        rX().unregister();
        rY().cancel();
        return;
      }
      this.aVt = 0L;
    }
    if ((!rV()) || (!sc()))
    {
      qP().aTi.bq("Nothing to upload or uploading impossible");
      rX().unregister();
      rY().cancel();
      return;
    }
    long l3 = this.aLd.currentTimeMillis();
    long l2 = Math.max(0L, ((Long)gr.aSE.aSN).longValue());
    int i;
    label204:
    label210:
    Object localObject;
    if (qJ().b("select count(1) > 0 from raw_events where realtime = 1", null) != 0L)
    {
      i = 1;
      if (i == 0)
      {
        if (qJ().b("select count(1) > 0 from queue where has_realtime = 1", null) == 0L) {
          break label360;
        }
        i = 1;
        if (i == 0) {
          break label365;
        }
      }
      i = 1;
      if (i == 0) {
        break label390;
      }
      localObject = this.aUN.rm();
      if ((TextUtils.isEmpty((CharSequence)localObject)) || (".none.".equals(localObject))) {
        break label370;
      }
      l1 = Math.max(0L, ((Long)gr.aSz.aSN).longValue());
    }
    for (;;)
    {
      l6 = qQ().aTH.get();
      l4 = qQ().aTI.get();
      l5 = Math.max(qJ().a("select max(bundle_end_timestamp) from queue", null, 0L), qJ().a("select max(timestamp) from raw_events", null, 0L));
      if (l5 != 0L) {
        break label410;
      }
      l1 = 0L;
      if (l1 != 0L) {
        break label608;
      }
      qP().aTi.bq("Next upload time is 0");
      rX().unregister();
      rY().cancel();
      return;
      i = 0;
      break;
      label360:
      i = 0;
      break label204;
      label365:
      i = 0;
      break label210;
      label370:
      l1 = Math.max(0L, ((Long)gr.aSy.aSN).longValue());
      continue;
      label390:
      l1 = Math.max(0L, ((Long)gr.aSx.aSN).longValue());
    }
    label410:
    long l5 = l3 - Math.abs(l5 - l3);
    long l6 = Math.abs(l6 - l3);
    long l4 = l3 - Math.abs(l4 - l3);
    l6 = Math.max(l3 - l6, l4);
    l3 = l5 + l2;
    l2 = l3;
    if (i != 0)
    {
      l2 = l3;
      if (l6 > 0L) {
        l2 = Math.min(l5, l6) + l1;
      }
    }
    if (!qL().c(l6, l1)) {}
    for (l1 += l6;; l1 = l2)
    {
      if ((l4 != 0L) && (l4 >= l5))
      {
        i = 0;
        for (;;)
        {
          if (i >= Math.min(20, Math.max(0, ((Integer)gr.aSG.aSN).intValue()))) {
            break label600;
          }
          l2 = 1 << i;
          l1 = Math.max(0L, ((Long)gr.aSF.aSN).longValue()) * l2 + l1;
          if (l1 > l4) {
            break;
          }
          i += 1;
        }
        label600:
        l1 = 0L;
        break;
      }
      break;
      label608:
      if (!rW().qe())
      {
        qP().aTi.bq("No network");
        localObject = rX();
        ((hj)localObject).zzjev.pf();
        ((hj)localObject).zzjev.qO().mN();
        if (!((hj)localObject).aTA)
        {
          ((hj)localObject).zzjev.aUM.registerReceiver((BroadcastReceiver)localObject, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
          ((hj)localObject).aTB = ((hj)localObject).zzjev.rW().qe();
          ((hj)localObject).zzjev.qP().aTi.j("Registering connectivity change receiver. Network connected", Boolean.valueOf(((hj)localObject).aTB));
          ((hj)localObject).aTA = true;
        }
        rY().cancel();
        return;
      }
      l2 = qQ().aTJ.get();
      l3 = Math.max(0L, ((Long)gr.aSv.aSN).longValue());
      if (!qL().c(l2, l3)) {
        l1 = Math.max(l1, l3 + l2);
      }
      for (;;)
      {
        rX().unregister();
        l2 = l1 - this.aLd.currentTimeMillis();
        l1 = l2;
        if (l2 <= 0L)
        {
          l1 = Math.max(0L, ((Long)gr.aSA.aSN).longValue());
          qQ().aTH.set(this.aLd.currentTimeMillis());
        }
        qP().aTi.j("Upload scheduled in approximately ms", Long.valueOf(l1));
        rY().n(l1);
        return;
      }
    }
  }
  
  final void se()
  {
    this.aVr += 1;
  }
  
  final void sf()
  {
    qO().mN();
    pf();
    int i;
    int j;
    if (!this.aVj)
    {
      qP().aTg.bq("This instance being marked as an uploader");
      qO().mN();
      pf();
      if ((sg()) && (rZ()))
      {
        i = a(this.aVn);
        j = qD().rE();
        qO().mN();
        if (i <= j) {
          break label116;
        }
        qP().aTa.e("Panic: can't downgrade version. Previous, current version", Integer.valueOf(i), Integer.valueOf(j));
      }
    }
    for (;;)
    {
      this.aVj = true;
      sd();
      return;
      label116:
      if (i < j) {
        if (a(j, this.aVn)) {
          qP().aTi.e("Storage version upgraded. Previous, current version", Integer.valueOf(i), Integer.valueOf(j));
        } else {
          qP().aTa.e("Storage version upgrade failed. Previous, current version", Integer.valueOf(i), Integer.valueOf(j));
        }
      }
    }
  }
  
  protected final void start()
  {
    qO().mN();
    qJ().rp();
    if (qQ().aTH.get() == 0L) {
      qQ().aTH.set(this.aLd.currentTimeMillis());
    }
    if (Long.valueOf(qQ().aTM.get()).longValue() == 0L)
    {
      qP().aTi.j("Persisting first open", Long.valueOf(this.aQZ));
      qQ().aTM.set(this.aQZ);
    }
    if (!rV())
    {
      if (isEnabled())
      {
        if (!qL().bE("android.permission.INTERNET")) {
          qP().aTa.bq("App is missing INTERNET permission");
        }
        if (!qL().bE("android.permission.ACCESS_NETWORK_STATE")) {
          qP().aTa.bq("App is missing ACCESS_NETWORK_STATE permission");
        }
        if (!ee.ag(this.aUM).qw())
        {
          if (!hq.s(this.aUM)) {
            qP().aTa.bq("AppMeasurementReceiver not registered/enabled");
          }
          if (!ko.aj(this.aUM)) {
            qP().aTa.bq("AppMeasurementService not registered/enabled");
          }
        }
        qP().aTa.bq("Uploading is not possible. App measurement disabled");
      }
      sd();
      return;
    }
    Object localObject1;
    if (!TextUtils.isEmpty(qD().getGmpAppId()))
    {
      localObject1 = qQ().rL();
      if (localObject1 != null) {
        break label458;
      }
      qQ().co(qD().getGmpAppId());
    }
    for (;;)
    {
      localObject1 = qC();
      Object localObject2 = qQ().aTN;
      if (!((hp)localObject2).aUb)
      {
        ((hp)localObject2).aUb = true;
        ((hp)localObject2).value = hl.a(((hp)localObject2).aUc).getString(((hp)localObject2).key, null);
      }
      ((ja)localObject1).cu(((hp)localObject2).value);
      if (TextUtils.isEmpty(qD().getGmpAppId())) {
        break;
      }
      localObject1 = qC();
      ((ix)localObject1).mN();
      ((iy)localObject1).pf();
      if (((ja)localObject1).zzjev.rV())
      {
        ((ix)localObject1).qF().sm();
        localObject2 = ((ix)localObject1).qQ().rP();
        if (!TextUtils.isEmpty((CharSequence)localObject2))
        {
          ((ix)localObject1).qE().pf();
          if (!((String)localObject2).equals(Build.VERSION.RELEASE))
          {
            Bundle localBundle = new Bundle();
            localBundle.putString("_po", (String)localObject2);
            ((ja)localObject1).a("auto", "_ou", localBundle);
          }
        }
      }
      qF().b(new AtomicReference());
      break;
      label458:
      if (!((String)localObject1).equals(qD().getGmpAppId()))
      {
        qP().aTg.bq("Rechecking which service to use due to a GMP App Id change");
        qQ().rO();
        this.aVd.disconnect();
        this.aVd.py();
        qQ().co(qD().getGmpAppId());
        qQ().aTM.set(this.aQZ);
        qQ().aTN.cp(null);
      }
    }
  }
  
  final class a
    implements gf
  {
    private long aVA;
    lu aVx;
    List<Long> aVy;
    List<lr> aVz;
    
    private a() {}
    
    private static long a(lr paramlr)
    {
      return paramlr.aYi.longValue() / 1000L / 60L / 60L;
    }
    
    public final boolean a(long paramLong, lr paramlr)
    {
      ae.E(paramlr);
      if (this.aVz == null) {
        this.aVz = new ArrayList();
      }
      if (this.aVy == null) {
        this.aVy = new ArrayList();
      }
      if ((this.aVz.size() > 0) && (a((lr)this.aVz.get(0)) != a(paramlr))) {
        return false;
      }
      long l = this.aVA + paramlr.sZ();
      if (l >= Math.max(0, ((Integer)gr.aSm.aSN).intValue())) {
        return false;
      }
      this.aVA = l;
      this.aVz.add(paramlr);
      this.aVy.add(Long.valueOf(paramLong));
      return this.aVz.size() < Math.max(1, ((Integer)gr.aSn.aSN).intValue());
    }
    
    public final void b(lu paramlu)
    {
      ae.E(paramlu);
      this.aVx = paramlu;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */