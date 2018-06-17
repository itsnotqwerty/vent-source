package com.vent;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.location.Location;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.v7.app.c.a;
import android.text.TextUtils;
import com.google.firebase.iid.FirebaseInstanceId;
import com.vent.a.f;
import com.vent.a.g;
import com.vent.a.h;
import com.vent.a.m;
import com.vent.a.o;
import com.vent.a.q;
import com.vent.a.x;
import com.vent.views.MyFragmentTabHost;
import io.branch.referral.d.e;
import io.branch.referral.r;
import io.branch.referral.w;
import io.intercom.android.sdk.Intercom;
import io.intercom.android.sdk.UserAttributes.Builder;
import io.intercom.android.sdk.identity.Registration;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class bb
{
  public static String[][] bYq;
  private static boolean cbE;
  public static ArrayList<f> ccH;
  public static com.vent.a.y ceP;
  public static String ceg;
  public static String chM;
  private static boolean chN;
  static final boolean chO;
  public static boolean chP;
  public static String chQ;
  static String chR;
  public static boolean chS;
  public static boolean chT;
  public static boolean chU;
  public static boolean chV;
  public static boolean chW;
  public static boolean chX;
  public static boolean chY;
  public static boolean chZ;
  public static long ciA;
  public static String ciB;
  public static HashMap<m, q> ciC;
  public static final Set<m> ciD = new HashSet();
  public static boolean ciE;
  public static int ciF;
  public static int ciG;
  static String ciH;
  public static long ciI;
  public static String ciJ;
  public static m ciK;
  public static HashMap<m, x> ciL;
  public static long ciM;
  public static HashMap<m, q> ciN;
  public static Map<m, h> ciO;
  public static Map<m, g> ciP;
  public static Map<m, o> ciQ;
  public static Map<m, ArrayList<m>> ciR;
  public static long ciS;
  public static Map<m, Integer> ciT;
  public static final Set<m> ciU = new HashSet();
  public static final List<m> ciV = new ArrayList();
  public static m ciW;
  public static long ciX;
  public static SharedPreferences ciY;
  private static File ciZ;
  public static boolean cia;
  public static boolean cib;
  public static boolean cic;
  public static boolean cid;
  public static boolean cie;
  public static int cif;
  public static int cig;
  public static long cih;
  public static boolean cii;
  public static boolean cij;
  public static boolean cik;
  public static int cil;
  public static int cim;
  public static boolean cin;
  public static boolean cio;
  public static boolean cip;
  public static final List<String> ciq;
  public static String cir;
  public static String cis;
  public static long cit;
  public static long ciu;
  public static int civ;
  public static int ciw;
  public static long cix;
  public static Location ciy;
  public static boolean ciz;
  private static File cja;
  private static File cjb;
  private static File cjc;
  private static boolean cjd;
  static boolean cje;
  static long cjf;
  static String cjg;
  static Runnable cjh = new Runnable()
  {
    public final void run()
    {
      String str = bb.cjg;
      bb.cjf = 0L;
      bb.cjg = null;
      bb.ef(str);
    }
  };
  static boolean cji;
  static boolean cjj;
  static boolean cjk;
  static Handler handler;
  public static String pin;
  
  static
  {
    boolean bool = false;
    handler = new Handler(Looper.getMainLooper());
    chN = false;
    if (Build.VERSION.SDK_INT >= 14) {
      bool = true;
    }
    chO = bool;
    ciq = new ArrayList();
  }
  
  public static void EA()
  {
    if (chP) {
      EB();
    }
  }
  
  /* Error */
  public static void EB()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: iconst_0
    //   4: putstatic 188	com/vent/bb:chP	Z
    //   7: invokestatic 196	com/vent/bb:EF	()V
    //   10: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   13: invokeinterface 204 1 0
    //   18: astore_1
    //   19: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   22: invokeinterface 208 1 0
    //   27: invokeinterface 214 1 0
    //   32: invokeinterface 220 1 0
    //   37: astore_0
    //   38: aload_0
    //   39: invokeinterface 226 1 0
    //   44: ifeq +48 -> 92
    //   47: aload_0
    //   48: invokeinterface 230 1 0
    //   53: checkcast 232	java/lang/String
    //   56: astore_2
    //   57: aload_2
    //   58: ldc -22
    //   60: invokevirtual 238	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   63: ifeq -25 -> 38
    //   66: aload_1
    //   67: aload_2
    //   68: invokeinterface 244 2 0
    //   73: pop
    //   74: goto -36 -> 38
    //   77: astore_0
    //   78: aload_0
    //   79: invokevirtual 247	org/json/JSONException:printStackTrace	()V
    //   82: aload_1
    //   83: invokeinterface 250 1 0
    //   88: ldc 2
    //   90: monitorexit
    //   91: return
    //   92: aload_1
    //   93: ldc -4
    //   95: invokeinterface 244 2 0
    //   100: pop
    //   101: aload_1
    //   102: ldc -2
    //   104: invokeinterface 244 2 0
    //   109: pop
    //   110: aload_1
    //   111: ldc_w 256
    //   114: invokeinterface 244 2 0
    //   119: pop
    //   120: aload_1
    //   121: ldc_w 258
    //   124: invokeinterface 244 2 0
    //   129: pop
    //   130: aload_1
    //   131: ldc_w 260
    //   134: invokeinterface 244 2 0
    //   139: pop
    //   140: aload_1
    //   141: ldc_w 262
    //   144: invokeinterface 244 2 0
    //   149: pop
    //   150: aload_1
    //   151: ldc_w 264
    //   154: invokeinterface 244 2 0
    //   159: pop
    //   160: aload_1
    //   161: ldc_w 266
    //   164: getstatic 271	com/vent/MyApplication:cgG	I
    //   167: i2l
    //   168: invokeinterface 275 4 0
    //   173: pop
    //   174: getstatic 277	com/vent/bb:ceP	Lcom/vent/a/y;
    //   177: ifnonnull +758 -> 935
    //   180: aload_1
    //   181: ldc_w 279
    //   184: aconst_null
    //   185: invokeinterface 283 3 0
    //   190: pop
    //   191: aload_1
    //   192: ldc_w 285
    //   195: lconst_0
    //   196: invokeinterface 275 4 0
    //   201: pop
    //   202: aload_1
    //   203: ldc_w 287
    //   206: getstatic 289	com/vent/bb:ceg	Ljava/lang/String;
    //   209: invokeinterface 283 3 0
    //   214: pop
    //   215: aload_1
    //   216: ldc_w 291
    //   219: getstatic 293	com/vent/bb:ciB	Ljava/lang/String;
    //   222: invokeinterface 283 3 0
    //   227: pop
    //   228: aload_1
    //   229: ldc_w 295
    //   232: invokeinterface 244 2 0
    //   237: pop
    //   238: aload_1
    //   239: ldc_w 297
    //   242: getstatic 299	com/vent/bb:ciE	Z
    //   245: invokeinterface 303 3 0
    //   250: pop
    //   251: aload_1
    //   252: ldc_w 305
    //   255: getstatic 307	com/vent/bb:ciH	Ljava/lang/String;
    //   258: invokeinterface 283 3 0
    //   263: pop
    //   264: aload_1
    //   265: ldc_w 309
    //   268: getstatic 311	com/vent/bb:ciI	J
    //   271: invokeinterface 275 4 0
    //   276: pop
    //   277: aload_1
    //   278: ldc_w 313
    //   281: getstatic 315	com/vent/bb:ciJ	Ljava/lang/String;
    //   284: invokeinterface 283 3 0
    //   289: pop
    //   290: getstatic 317	com/vent/bb:ciK	Lcom/vent/a/m;
    //   293: ifnonnull +709 -> 1002
    //   296: aconst_null
    //   297: astore_0
    //   298: aload_1
    //   299: ldc_w 319
    //   302: aload_0
    //   303: invokeinterface 283 3 0
    //   308: pop
    //   309: aload_1
    //   310: ldc_w 321
    //   313: getstatic 323	com/vent/bb:ciF	I
    //   316: invokeinterface 327 3 0
    //   321: pop
    //   322: aload_1
    //   323: ldc_w 329
    //   326: getstatic 331	com/vent/bb:ciG	I
    //   329: invokeinterface 327 3 0
    //   334: pop
    //   335: aload_1
    //   336: ldc_w 333
    //   339: getstatic 176	com/vent/bb:ciD	Ljava/util/Set;
    //   342: invokestatic 339	com/vent/d/b:d	(Ljava/util/Collection;)Ljava/lang/String;
    //   345: invokeinterface 283 3 0
    //   350: pop
    //   351: aload_1
    //   352: ldc_w 341
    //   355: getstatic 343	com/vent/bb:cig	I
    //   358: invokeinterface 327 3 0
    //   363: pop
    //   364: aload_1
    //   365: ldc_w 345
    //   368: getstatic 347	com/vent/bb:cit	J
    //   371: invokeinterface 275 4 0
    //   376: pop
    //   377: aload_1
    //   378: ldc_w 349
    //   381: getstatic 351	com/vent/bb:ciu	J
    //   384: invokeinterface 275 4 0
    //   389: pop
    //   390: aload_1
    //   391: ldc_w 353
    //   394: iconst_0
    //   395: invokeinterface 303 3 0
    //   400: pop
    //   401: aload_1
    //   402: ldc_w 355
    //   405: getstatic 357	com/vent/bb:chS	Z
    //   408: invokeinterface 303 3 0
    //   413: pop
    //   414: aload_1
    //   415: ldc_w 359
    //   418: getstatic 361	com/vent/bb:chT	Z
    //   421: invokeinterface 303 3 0
    //   426: pop
    //   427: aload_1
    //   428: ldc_w 363
    //   431: getstatic 365	com/vent/bb:chU	Z
    //   434: invokeinterface 303 3 0
    //   439: pop
    //   440: aload_1
    //   441: ldc_w 367
    //   444: getstatic 369	com/vent/bb:chV	Z
    //   447: invokeinterface 303 3 0
    //   452: pop
    //   453: aload_1
    //   454: ldc_w 371
    //   457: getstatic 373	com/vent/bb:chX	Z
    //   460: invokeinterface 303 3 0
    //   465: pop
    //   466: aload_1
    //   467: ldc_w 375
    //   470: getstatic 377	com/vent/bb:chY	Z
    //   473: invokeinterface 303 3 0
    //   478: pop
    //   479: aload_1
    //   480: ldc_w 379
    //   483: getstatic 381	com/vent/bb:chW	Z
    //   486: invokeinterface 303 3 0
    //   491: pop
    //   492: aload_1
    //   493: ldc_w 383
    //   496: getstatic 385	com/vent/bb:chZ	Z
    //   499: invokeinterface 303 3 0
    //   504: pop
    //   505: aload_1
    //   506: ldc_w 387
    //   509: getstatic 389	com/vent/bb:cia	Z
    //   512: invokeinterface 303 3 0
    //   517: pop
    //   518: aload_1
    //   519: ldc_w 391
    //   522: getstatic 393	com/vent/bb:cib	Z
    //   525: invokeinterface 303 3 0
    //   530: pop
    //   531: aload_1
    //   532: ldc_w 395
    //   535: getstatic 397	com/vent/bb:cij	Z
    //   538: invokeinterface 303 3 0
    //   543: pop
    //   544: aload_1
    //   545: ldc_w 399
    //   548: getstatic 401	com/vent/bb:cik	Z
    //   551: invokeinterface 303 3 0
    //   556: pop
    //   557: aload_1
    //   558: ldc_w 403
    //   561: getstatic 405	com/vent/bb:cic	Z
    //   564: invokeinterface 303 3 0
    //   569: pop
    //   570: aload_1
    //   571: ldc_w 407
    //   574: getstatic 409	com/vent/bb:ciz	Z
    //   577: invokeinterface 303 3 0
    //   582: pop
    //   583: aload_1
    //   584: ldc_w 411
    //   587: getstatic 413	com/vent/bb:cid	Z
    //   590: invokeinterface 303 3 0
    //   595: pop
    //   596: aload_1
    //   597: ldc_w 415
    //   600: getstatic 417	com/vent/bb:cie	Z
    //   603: invokeinterface 303 3 0
    //   608: pop
    //   609: aload_1
    //   610: ldc_w 419
    //   613: invokeinterface 244 2 0
    //   618: pop
    //   619: aload_1
    //   620: ldc_w 421
    //   623: getstatic 423	com/vent/bb:cif	I
    //   626: invokeinterface 327 3 0
    //   631: pop
    //   632: aload_1
    //   633: ldc_w 424
    //   636: getstatic 426	com/vent/bb:pin	Ljava/lang/String;
    //   639: invokeinterface 283 3 0
    //   644: pop
    //   645: aload_1
    //   646: ldc_w 428
    //   649: getstatic 430	com/vent/bb:cih	J
    //   652: invokeinterface 275 4 0
    //   657: pop
    //   658: aload_1
    //   659: ldc_w 432
    //   662: getstatic 434	com/vent/bb:cii	Z
    //   665: invokeinterface 303 3 0
    //   670: pop
    //   671: aload_1
    //   672: ldc_w 436
    //   675: getstatic 438	com/vent/bb:cil	I
    //   678: invokeinterface 327 3 0
    //   683: pop
    //   684: aload_1
    //   685: ldc_w 440
    //   688: getstatic 442	com/vent/bb:cim	I
    //   691: invokeinterface 327 3 0
    //   696: pop
    //   697: getstatic 171	com/vent/bb:ciq	Ljava/util/List;
    //   700: astore_0
    //   701: aload_0
    //   702: monitorenter
    //   703: aload_1
    //   704: ldc_w 444
    //   707: ldc_w 446
    //   710: getstatic 171	com/vent/bb:ciq	Ljava/util/List;
    //   713: invokestatic 452	android/text/TextUtils:join	(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    //   716: invokeinterface 283 3 0
    //   721: pop
    //   722: aload_0
    //   723: monitorexit
    //   724: aload_1
    //   725: ldc_w 454
    //   728: getstatic 459	com/vent/h:cap	I
    //   731: invokeinterface 327 3 0
    //   736: pop
    //   737: aload_1
    //   738: ldc_w 461
    //   741: getstatic 463	com/vent/bb:cir	Ljava/lang/String;
    //   744: invokeinterface 283 3 0
    //   749: pop
    //   750: aload_1
    //   751: ldc_w 465
    //   754: getstatic 467	com/vent/bb:cis	Ljava/lang/String;
    //   757: invokeinterface 283 3 0
    //   762: pop
    //   763: aload_1
    //   764: ldc_w 469
    //   767: getstatic 471	com/vent/bb:cin	Z
    //   770: invokeinterface 303 3 0
    //   775: pop
    //   776: aload_1
    //   777: ldc_w 473
    //   780: getstatic 475	com/vent/bb:cio	Z
    //   783: invokeinterface 303 3 0
    //   788: pop
    //   789: aload_1
    //   790: ldc_w 477
    //   793: getstatic 479	com/vent/bb:cip	Z
    //   796: invokeinterface 303 3 0
    //   801: pop
    //   802: aload_1
    //   803: ldc_w 481
    //   806: getstatic 483	com/vent/bb:civ	I
    //   809: invokeinterface 327 3 0
    //   814: pop
    //   815: aload_1
    //   816: ldc_w 485
    //   819: getstatic 487	com/vent/bb:ciw	I
    //   822: invokeinterface 327 3 0
    //   827: pop
    //   828: aload_1
    //   829: getstatic 489	com/vent/bb:chQ	Ljava/lang/String;
    //   832: getstatic 494	com/vent/b/a:cld	Z
    //   835: invokeinterface 303 3 0
    //   840: pop
    //   841: aload_1
    //   842: new 496	java/lang/StringBuilder
    //   845: dup
    //   846: invokespecial 497	java/lang/StringBuilder:<init>	()V
    //   849: getstatic 489	com/vent/bb:chQ	Ljava/lang/String;
    //   852: invokevirtual 501	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   855: ldc_w 503
    //   858: invokevirtual 501	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   861: invokevirtual 507	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   864: getstatic 510	com/vent/b/a:cle	Z
    //   867: invokeinterface 303 3 0
    //   872: pop
    //   873: getstatic 178	com/vent/bb:ciU	Ljava/util/Set;
    //   876: invokestatic 516	com/vent/a/m:h	(Ljava/util/Set;)Lorg/json/JSONArray;
    //   879: astore_0
    //   880: aload_0
    //   881: ifnull +136 -> 1017
    //   884: aload_0
    //   885: invokevirtual 519	org/json/JSONArray:toString	()Ljava/lang/String;
    //   888: astore_0
    //   889: aload_1
    //   890: ldc_w 521
    //   893: aload_0
    //   894: invokeinterface 283 3 0
    //   899: pop
    //   900: aload_1
    //   901: ldc_w 523
    //   904: getstatic 525	com/vent/bb:cix	J
    //   907: invokeinterface 275 4 0
    //   912: pop
    //   913: aload_1
    //   914: ldc_w 527
    //   917: getstatic 529	com/vent/bb:ciX	J
    //   920: invokeinterface 275 4 0
    //   925: pop
    //   926: goto -844 -> 82
    //   929: astore_0
    //   930: ldc 2
    //   932: monitorexit
    //   933: aload_0
    //   934: athrow
    //   935: new 531	com/vent/a/y
    //   938: dup
    //   939: getstatic 277	com/vent/bb:ceP	Lcom/vent/a/y;
    //   942: invokespecial 534	com/vent/a/y:<init>	(Lcom/vent/a/x;)V
    //   945: astore_0
    //   946: aload_0
    //   947: aconst_null
    //   948: putfield 537	com/vent/a/y:ckm	Ljava/lang/String;
    //   951: aload_0
    //   952: aconst_null
    //   953: putfield 540	com/vent/a/y:ckn	Ljava/util/Map;
    //   956: aload_0
    //   957: aconst_null
    //   958: putfield 543	com/vent/a/y:cjE	Ljava/util/HashMap;
    //   961: aload_0
    //   962: aconst_null
    //   963: putfield 547	com/vent/a/y:ceB	Ljava/util/HashSet;
    //   966: aload_0
    //   967: aconst_null
    //   968: putfield 550	com/vent/a/y:ckS	Lcom/vent/a/m;
    //   971: aload_1
    //   972: ldc_w 279
    //   975: aload_0
    //   976: invokevirtual 554	com/vent/a/y:EK	()Lorg/json/JSONObject;
    //   979: invokevirtual 557	org/json/JSONObject:toString	()Ljava/lang/String;
    //   982: invokeinterface 283 3 0
    //   987: pop
    //   988: aload_1
    //   989: ldc_w 285
    //   992: lconst_0
    //   993: invokeinterface 275 4 0
    //   998: pop
    //   999: goto -797 -> 202
    //   1002: getstatic 317	com/vent/bb:ciK	Lcom/vent/a/m;
    //   1005: invokevirtual 558	com/vent/a/m:toString	()Ljava/lang/String;
    //   1008: astore_0
    //   1009: goto -711 -> 298
    //   1012: astore_2
    //   1013: aload_0
    //   1014: monitorexit
    //   1015: aload_2
    //   1016: athrow
    //   1017: aconst_null
    //   1018: astore_0
    //   1019: goto -130 -> 889
    // Local variable table:
    //   start	length	slot	name	signature
    //   37	11	0	localIterator	Iterator
    //   77	2	0	localJSONException	JSONException
    //   929	5	0	localObject2	Object
    //   945	74	0	localObject3	Object
    //   18	971	1	localEditor	android.content.SharedPreferences.Editor
    //   56	12	2	str	String
    //   1012	4	2	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   19	38	77	org/json/JSONException
    //   38	74	77	org/json/JSONException
    //   92	202	77	org/json/JSONException
    //   202	296	77	org/json/JSONException
    //   298	703	77	org/json/JSONException
    //   724	880	77	org/json/JSONException
    //   884	889	77	org/json/JSONException
    //   889	926	77	org/json/JSONException
    //   935	999	77	org/json/JSONException
    //   1002	1009	77	org/json/JSONException
    //   1015	1017	77	org/json/JSONException
    //   3	19	929	finally
    //   19	38	929	finally
    //   38	74	929	finally
    //   78	82	929	finally
    //   82	91	929	finally
    //   92	202	929	finally
    //   202	296	929	finally
    //   298	703	929	finally
    //   724	880	929	finally
    //   884	889	929	finally
    //   889	926	929	finally
    //   930	933	929	finally
    //   935	999	929	finally
    //   1002	1009	929	finally
    //   1015	1017	929	finally
    //   703	724	1012	finally
    //   1013	1015	1012	finally
  }
  
  static void EC()
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.writeInt(100);
    com.vent.d.d.b(localParcel, 0, ciT);
    com.vent.d.c.a(cjc, localParcel);
    localParcel.recycle();
  }
  
  static void ED()
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.writeInt(MyApplication.cgG);
    localParcel.writeLong(ciS);
    com.vent.d.d.a(localParcel, 0, ciO);
    com.vent.d.d.a(localParcel, 0, ciP);
    com.vent.d.d.a(localParcel, 0, ciQ);
    Object localObject1 = ciR;
    if (localObject1 == null)
    {
      localParcel.writeInt(0);
      com.vent.d.c.a(ciZ, localParcel);
      localParcel.recycle();
      return;
    }
    localParcel.writeInt(((Map)localObject1).size());
    localObject1 = ((Map)localObject1).entrySet().iterator();
    for (;;)
    {
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        ((m)((Map.Entry)localObject2).getKey()).writeToParcel(localParcel, 0);
        localObject2 = (ArrayList)((Map.Entry)localObject2).getValue();
        if (localObject2 == null) {
          localParcel.writeInt(0);
        }
      }
      else
      {
        break;
      }
      localParcel.writeInt(((ArrayList)localObject2).size());
      Object localObject2 = ((ArrayList)localObject2).iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((Parcelable)((Iterator)localObject2).next()).writeToParcel(localParcel, 0);
      }
    }
  }
  
  static void EE()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      com.vent.d.b.a(localJSONObject, "emots_recent", ciV);
      localJSONObject.put("last_emotCat", ciW);
      com.vent.d.c.a(cjb, localJSONObject);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  static void EF()
  {
    bYq = a(ceP, ceg);
  }
  
  static HashMap<m, Integer> EG()
  {
    HashMap localHashMap = new HashMap();
    h localh;
    int i;
    if ((!com.vent.d.c.l(ciO)) && (!com.vent.d.c.l(ciP)))
    {
      Iterator localIterator1 = ciO.values().iterator();
      for (;;)
      {
        if (localIterator1.hasNext())
        {
          localh = (h)localIterator1.next();
          if (localh.EW())
          {
            Iterator localIterator2 = localh.cjT.iterator();
            i = 0;
            label79:
            if (localIterator2.hasNext())
            {
              m localm = (m)localIterator2.next();
              g localg = (g)ciP.get(localm);
              if ((localg == null) || (!localg.axa)) {
                break label160;
              }
              i = (i << 1) + localm.hashCode();
            }
          }
        }
      }
    }
    label160:
    for (;;)
    {
      break label79;
      localHashMap.put(localh.cjy, Integer.valueOf(i));
      break;
      return localHashMap;
    }
  }
  
  static boolean EH()
  {
    if ((ciT == null) || (com.vent.d.c.l(ciO))) {
      return false;
    }
    Iterator localIterator = EG().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((h)ciO.get(localEntry.getKey())).EW())
      {
        Integer localInteger = (Integer)ciT.get(localEntry.getKey());
        if ((localInteger == null) || (localInteger.intValue() != ((Integer)localEntry.getValue()).intValue())) {
          return true;
        }
      }
    }
    return false;
  }
  
  static int EI()
  {
    if (ccH != null) {
      return ccH.size();
    }
    return 0;
  }
  
  public static void EJ()
  {
    if ((cjk) || (!MyApplication.cgw) || (ciI + 86400000L >= System.currentTimeMillis()) || (ceP == null)) {
      return;
    }
    cjk = true;
    com.vent.d.c.b(new AsyncTask()
    {
      private static Void Bq()
      {
        if (bb.ceP == null) {
          return null;
        }
        try
        {
          bb.ciI = System.currentTimeMillis() - 86400000L + 300000L;
          FirebaseInstanceId localFirebaseInstanceId = FirebaseInstanceId.us();
          if (localFirebaseInstanceId != null)
          {
            localFirebaseInstanceId.uu();
            bb.ee("reset");
          }
        }
        catch (Exception localException)
        {
          for (;;) {}
        }
        bb.cjk = false;
        return null;
      }
    });
  }
  
  public static String Er()
  {
    return bl(chN);
  }
  
  public static boolean Es()
  {
    return false;
  }
  
  static void Et()
  {
    try
    {
      Parcel localParcel = com.vent.d.c.j(cjc);
      if (localParcel != null)
      {
        localParcel.setDataPosition(0);
        if (100 == localParcel.readInt()) {
          ciT = com.vent.d.d.g(localParcel);
        }
        localParcel.recycle();
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  static void Eu()
  {
    try
    {
      Parcel localParcel = com.vent.d.c.j(ciZ);
      if (localParcel != null)
      {
        localParcel.setDataPosition(0);
        if (MyApplication.cgG == localParcel.readInt())
        {
          ciS = localParcel.readLong();
          ciO = com.vent.d.d.c(localParcel, h.CREATOR);
          ciP = com.vent.d.d.c(localParcel, g.CREATOR);
          ciQ = com.vent.d.d.c(localParcel, o.CREATOR);
          Parcelable.Creator localCreator = m.CREATOR;
          int i = localParcel.readInt();
          if ((i < 0) || (i > 10000)) {
            throw new Exception("bad size in parcel");
          }
          HashMap localHashMap = new HashMap(i);
          for (;;)
          {
            int j = i - 1;
            if (i <= 0) {
              break;
            }
            m localm = new m(localParcel);
            i = localParcel.readInt();
            if ((i < 0) || (i > 10000)) {
              throw new Exception("bad size in parcel");
            }
            if (i == 0)
            {
              localHashMap.put(localm, null);
              i = j;
            }
            else
            {
              ArrayList localArrayList = new ArrayList(i);
              while (i > 0)
              {
                localArrayList.add(localCreator.createFromParcel(localParcel));
                i -= 1;
              }
              localHashMap.put(localm, localArrayList);
              i = j;
            }
          }
          ciR = localHashMap;
        }
        localParcel.recycle();
        c(ciO, ciP);
        return;
      }
    }
    catch (Exception localException) {}
  }
  
  static void Ev()
  {
    JSONObject localJSONObject = com.vent.d.c.i(cjb);
    if (localJSONObject != null) {}
    try
    {
      ciV.clear();
      ArrayList localArrayList = com.vent.d.b.a(localJSONObject, "emots_recent");
      if (localArrayList != null) {
        ciV.addAll(localArrayList);
      }
      ciW = m.r(localJSONObject.optString("last_emotCat"));
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  static void Ew()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("conversations", com.vent.d.b.e(ccH));
      localJSONObject.put("conversations_users", com.vent.d.b.k(ciL));
      localJSONObject.put("conversations_age", ciM);
      com.vent.d.c.a(cja, localJSONObject);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  static void Ex()
  {
    Object localObject = com.vent.d.c.i(cja);
    if (localObject != null) {}
    try
    {
      ccH = com.vent.d.b.a(f.class, ((JSONObject)localObject).optJSONArray("conversations"));
      ciL = com.vent.d.b.a(x.class, ((JSONObject)localObject).optJSONArray("conversations_users"), false);
      ciM = ((JSONObject)localObject).optInt("conversations_age");
      if (ccH != null)
      {
        int k = ccH.size();
        i = 0;
        if (i < k)
        {
          localObject = ((f)ccH.get(i)).cjL;
          j = 0;
          if (j >= k) {
            break label157;
          }
          if ((i == j) || ((localObject != null) && (!((Uri)localObject).equals(((f)ccH.get(j)).cjL)))) {
            break label150;
          }
          ccH = null;
          ciL = null;
          ciN = null;
          ciM = 0L;
        }
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        int i;
        int j;
        localJSONException.printStackTrace();
        continue;
        label150:
        j += 1;
        continue;
        label157:
        i += 1;
      }
    }
  }
  
  static JSONObject Ey()
  {
    Object localObject2 = null;
    localJSONObject = new JSONObject();
    try
    {
      if (ceP != null) {}
      for (Object localObject1 = ceP.EK();; localObject1 = null)
      {
        localJSONObject.put("user", localObject1);
        localJSONObject.put("authentication_token", ceg);
        localJSONObject.put("email", ciB);
        localJSONObject.put("user_age", ciA);
        localObject1 = localObject2;
        if (ciC != null) {
          localObject1 = com.vent.d.b.k(ciC);
        }
        localJSONObject.put("invite_tiers", localObject1);
        localJSONObject.put("agreed", ciE);
        localJSONObject.put("unreadCount", ciF);
        localJSONObject.put("unreadCountChat", ciG);
        localJSONObject.put("gifted_emotions", m.h(ciD));
        return localJSONObject;
      }
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  public static void Ez()
  {
    if (ciA != 0L)
    {
      ciA = 0L;
      chP = true;
    }
  }
  
  static int a(com.vent.a.e parame)
  {
    if (parame != null)
    {
      parame = parame.cjy;
      if ((ccH != null) && (parame != null))
      {
        int i = 0;
        while (i < ccH.size())
        {
          if (((f)ccH.get(i)).b(parame)) {
            return i;
          }
          i += 1;
        }
      }
      return -1;
    }
    return -1;
  }
  
  private static long a(SharedPreferences paramSharedPreferences, String paramString, long paramLong)
  {
    try
    {
      long l = paramSharedPreferences.getLong(paramString, paramLong);
      return l;
    }
    catch (ClassCastException paramSharedPreferences) {}
    return paramLong;
  }
  
  static HashMap<m, ArrayList<m>> a(JSONArray paramJSONArray, Map<m, o> paramMap)
  {
    Object localObject2 = null;
    String str = null;
    Object localObject1 = localObject2;
    if (paramJSONArray != null)
    {
      try
      {
        k = paramJSONArray.length();
        localObject1 = localObject2;
        if (k <= 0) {
          break label190;
        }
        localObject1 = new a(paramMap);
        paramMap = new HashMap(k);
        i = 0;
      }
      catch (Exception paramMap)
      {
        try
        {
          int k;
          int i;
          localObject2 = paramJSONArray.getJSONObject(i);
          str = (String)((JSONObject)localObject2).keys().next();
          localObject2 = ((JSONObject)localObject2).getJSONArray(str);
          int m = ((JSONArray)localObject2).length();
          if (m > 0)
          {
            ArrayList localArrayList = new ArrayList(m);
            int j = 0;
            while (j < m)
            {
              localArrayList.add(o.eh(((JSONArray)localObject2).getString(j)));
              j += 1;
            }
            if (!localArrayList.isEmpty())
            {
              Collections.sort(localArrayList, (Comparator)localObject1);
              paramMap.put(new m(str), localArrayList);
            }
          }
          i += 1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            paramJSONArray = paramMap;
            paramMap = localException;
          }
        }
        paramMap = paramMap;
        paramJSONArray = str;
      }
      if (i >= k) {
        return paramMap;
      }
      paramMap.printStackTrace();
      localObject1 = paramJSONArray;
    }
    label190:
    return (HashMap<m, ArrayList<m>>)localObject1;
    return paramMap;
  }
  
  public static void a(final Activity paramActivity, final int paramInt, final JSONObject paramJSONObject)
  {
    int i;
    if (ceP != null)
    {
      i = 1;
      if (i == 0) {
        break label82;
      }
      cje = true;
      localc = com.vent.d.c.v(paramActivity, 2131689761);
      if ((ceP != null) && (paramActivity != null)) {
        new File(ag.aH(paramActivity), ceP.cjy.toString()).delete();
      }
      a(paramActivity, false, new Runnable()
      {
        public final void run()
        {
          com.vent.d.c.a(this.bUB);
          bb.cje = false;
          if (((paramActivity instanceof ActMain)) && (com.vent.d.c.bG(paramActivity)))
          {
            bb.cje = true;
            new c.a(paramActivity).setMessage(com.vent.d.c.a(paramActivity, paramInt, paramJSONObject)).setNeutralButton(17039370, null).setOnDismissListener(new DialogInterface.OnDismissListener()
            {
              public final void onDismiss(DialogInterface paramAnonymous2DialogInterface)
              {
                bb.cje = false;
                bb.r(bb.3.this.bXe);
              }
            }).create().show();
          }
          while (bb.cje) {
            return;
          }
          bb.r(paramActivity);
        }
      });
    }
    label82:
    while (cje)
    {
      android.support.v7.app.c localc;
      return;
      i = 0;
      break;
    }
    a(paramActivity, null, null);
  }
  
  static void a(Context paramContext, boolean paramBoolean, Runnable paramRunnable)
  {
    MyApplication localMyApplication;
    if (ceP != null)
    {
      localMyApplication = (MyApplication)paramContext.getApplicationContext();
      com.vent.d.c.b(new AsyncTask()
      {
        private String[][] bYq;
        private String cjl;
        private String cjm;
        private String username;
        
        protected final void onPreExecute()
        {
          super.onPreExecute();
          this.cjl = bb.ciH;
          this.bYq = ((String[][])com.vent.d.c.d(bb.bYq));
          this.cjm = bb.Er();
          this.username = null;
        }
      });
      if (!MyApplication.cgC) {}
    }
    try
    {
      localObject = Intercom.client();
      if (localObject != null) {
        ((Intercom)localObject).logout();
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject;
        io.branch.referral.y localy;
        localException.printStackTrace();
      }
      paramContext.run();
    }
    localObject = io.branch.referral.d.bQ(paramContext);
    if (localObject != null)
    {
      localy = new io.branch.referral.y(((io.branch.referral.d)localObject).cvX);
      if ((!localy.cBc) && (!localy.bU(((io.branch.referral.d)localObject).cvX))) {
        ((io.branch.referral.d)localObject).a(localy);
      }
    }
    localObject = localMyApplication.Bc();
    if (localObject != null) {
      ((ba)localObject).bk(paramBoolean);
    }
    as.aI(paramContext);
    ceP = null;
    ceg = null;
    ciB = null;
    ciC = null;
    ciD.clear();
    ciA = 0L;
    cit = 0L;
    ciE = false;
    ciH = null;
    ciI = 0L;
    ciJ = null;
    ciK = null;
    ciF = 0;
    ciG = 0;
    cig = 0;
    ciX = 0L;
    cir = null;
    cis = null;
    chP = true;
    ActVent.Cm();
    FrgVentsList.flushCache();
    ak.flushCache();
    EB();
    com.vent.d.c.bH(paramContext);
    ciS = 0L;
    ED();
    paramContext = new Runnable()
    {
      public final void run()
      {
        
        if (this.cjn != null) {
          this.cjn.run();
        }
      }
    };
    if (localObject != null)
    {
      localMyApplication.Ea();
      ((ba)localObject).Eq();
      ((ba)localObject).a(paramBoolean, paramContext, 0);
      return;
    }
  }
  
  private static void a(com.vent.a.y paramy, JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    String str2 = com.vent.d.b.d(paramJSONObject1, "email");
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = null;
    }
    if (str1 != null)
    {
      ciB = str1;
      paramJSONObject1 = com.vent.d.b.d(paramJSONObject1, "authentication_token");
      if (!TextUtils.isEmpty(paramJSONObject1)) {
        ceg = paramJSONObject1;
      }
      if (paramy.ckR == null) {
        paramy.ckR = ceP.ckR;
      }
      ceP = paramy;
      ciA = System.currentTimeMillis();
    }
    try
    {
      ciC = com.vent.d.b.b(q.class, paramJSONObject2.optJSONArray("invite_tiers"));
      chP = true;
      return;
    }
    catch (JSONException paramy)
    {
      for (;;)
      {
        paramy.printStackTrace();
        ciC = null;
      }
    }
  }
  
  public static boolean a(Activity paramActivity, String paramString, x paramx)
  {
    Object localObject2 = null;
    ActMain localActMain;
    if (paramActivity != null) {
      if (ceP == null)
      {
        if (!(paramActivity instanceof ActMain)) {
          paramActivity.finish();
        }
        do
        {
          return false;
          localActMain = (ActMain)paramActivity;
        } while (!localActMain.bTz);
        if (!cjd)
        {
          cjd = true;
          localObject1 = localActMain.getIntent();
          if (localObject1 == null) {
            break label206;
          }
        }
      }
    }
    label206:
    for (Object localObject1 = ((Intent)localObject1).getStringExtra("switchUser");; localObject1 = null)
    {
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        paramActivity = new File((String)localObject1);
        localActMain.BJ();
        if (localActMain.bWy != null) {
          localActMain.bWy.setVisibility(0);
        }
        ag.a(localActMain, paramActivity);
        localActMain.BW();
        return false;
      }
      localActMain.BD();
      localActMain.BH();
      localActMain.clearAll();
      if (localActMain.bTI == null) {}
      for (localObject1 = localObject2;; localObject1 = localActMain.bTI.FC())
      {
        ActWelcome.a(paramActivity, (Bundle)localObject1, paramString, paramx);
        localActMain.overridePendingTransition(0, 0);
        break;
      }
      if (!ciE)
      {
        if (((paramActivity instanceof ActMain)) && (((ActMain)paramActivity).bTz)) {
          ActAgree.a(paramActivity, null);
        }
        return false;
      }
      return true;
    }
  }
  
  private static boolean a(SharedPreferences paramSharedPreferences, String paramString, boolean paramBoolean)
  {
    try
    {
      boolean bool = paramSharedPreferences.getBoolean(paramString, paramBoolean);
      return bool;
    }
    catch (ClassCastException paramSharedPreferences) {}
    return paramBoolean;
  }
  
  public static boolean a(m paramm)
  {
    return (ceP != null) && (paramm != null) && (m.b(ceP.cjy, paramm));
  }
  
  static String[][] a(x paramx, String paramString)
  {
    if (MyApplication.cgA) {}
    for (String str = "amazon"; paramx != null; str = "android")
    {
      paramx = new String[] { "X-User-Username", paramx.username };
      String[] arrayOfString1 = { "X-User-Token", paramString };
      paramString = chQ;
      String[] arrayOfString2 = { "X-OB1", chR };
      localObject = str + ";" + MyApplication.cgF;
      return new String[][] { paramx, arrayOfString1, { "X-3PO", paramString }, arrayOfString2, { "X-App-Version", localObject }, { "X-User-Platform", str } };
    }
    paramString = new String[] { "X-3PO", chQ };
    paramx = chR;
    Object localObject = { "X-App-Version", str + ";" + MyApplication.cgF };
    return new String[][] { paramString, { "X-OB1", paramx }, localObject, { "X-User-Platform", str } };
  }
  
  private static String b(SharedPreferences paramSharedPreferences, String paramString1, String paramString2)
  {
    try
    {
      paramSharedPreferences = paramSharedPreferences.getString(paramString1, paramString2);
      return paramSharedPreferences;
    }
    catch (ClassCastException paramSharedPreferences) {}
    return paramString2;
  }
  
  static void b(JSONObject paramJSONObject)
  {
    long l = 0L;
    boolean bool = true;
    int j = 0;
    Object localObject2 = null;
    for (;;)
    {
      try
      {
        JSONObject localJSONObject = paramJSONObject.getJSONObject("user");
        if (paramJSONObject.isNull("user")) {
          break label336;
        }
        localObject1 = new com.vent.a.y(localJSONObject, true);
        ceP = (com.vent.a.y)localObject1;
        if ((localJSONObject != null) && (!localJSONObject.isNull("authentication_token")))
        {
          ceg = com.vent.d.b.d(localJSONObject, "authentication_token");
          if ((localJSONObject != null) && (!localJSONObject.isNull("email")))
          {
            ciB = com.vent.d.b.d(paramJSONObject, "email");
            if (!paramJSONObject.isNull("user_age")) {
              l = paramJSONObject.getLong("user_age");
            }
            ciA = l;
            if (paramJSONObject.isNull("invite_tiers")) {
              break label319;
            }
            localObject1 = com.vent.d.b.b(q.class, paramJSONObject.getJSONArray("invite_tiers"));
            ciC = (HashMap)localObject1;
            if ((paramJSONObject.isNull("agreed")) || (!paramJSONObject.getBoolean("agreed"))) {
              break label325;
            }
            ciE = bool;
            ciH = null;
            ciI = 0L;
            if (paramJSONObject.isNull("unreadCount")) {
              break label331;
            }
            i = paramJSONObject.getInt("unreadCount");
            ciF = i;
            i = j;
            if (!paramJSONObject.isNull("unreadCountChat")) {
              i = paramJSONObject.getInt("unreadCountChat");
            }
            ciG = i;
            ciD.clear();
            localObject1 = localObject2;
            if (!paramJSONObject.isNull("gifted_emotions")) {
              localObject1 = m.a(paramJSONObject.getJSONArray("gifted_emotions"));
            }
            if (localObject1 != null) {
              ciD.addAll((Collection)localObject1);
            }
            chP = true;
          }
        }
        else
        {
          ceg = com.vent.d.b.b(paramJSONObject, "authentication_token", null);
          continue;
        }
        ciB = com.vent.d.b.b(paramJSONObject, "email", null);
      }
      catch (JSONException paramJSONObject)
      {
        paramJSONObject.printStackTrace();
        return;
      }
      continue;
      label319:
      Object localObject1 = null;
      continue;
      label325:
      bool = false;
      continue;
      label331:
      int i = 0;
      continue;
      label336:
      localObject1 = null;
    }
  }
  
  static void b(JSONObject paramJSONObject, boolean paramBoolean)
  {
    int i = 0;
    if (ceP != null) {}
    for (;;)
    {
      try
      {
        Object localObject;
        if (!paramJSONObject.isNull("users"))
        {
          localObject = paramJSONObject.optJSONArray("users");
          if (i < ((JSONArray)localObject).length())
          {
            JSONObject localJSONObject = ((JSONArray)localObject).getJSONObject(i);
            if (!c(new x(localJSONObject, false))) {
              break label138;
            }
            a(new com.vent.a.y(localJSONObject, true), localJSONObject, paramJSONObject);
            return;
          }
        }
        if (!paramJSONObject.isNull("user"))
        {
          localObject = paramJSONObject.optJSONObject("user");
          if (c(new x((JSONObject)localObject, false))) {
            a(new com.vent.a.y((JSONObject)localObject, true), (JSONObject)localObject, paramJSONObject);
          }
        }
      }
      catch (JSONException paramJSONObject)
      {
        paramJSONObject.printStackTrace();
        continue;
      }
      if (paramBoolean)
      {
        EA();
        return;
      }
      return;
      label138:
      i += 1;
    }
  }
  
  static void bA(Context paramContext)
  {
    if (!MyApplication.cgC) {
      return;
    }
    for (;;)
    {
      try
      {
        Intercom localIntercom = Intercom.client();
        if (localIntercom == null) {
          break;
        }
        int i = com.vent.d.c.bI(paramContext);
        cit = System.currentTimeMillis();
        ciu = i;
        EB();
        if (ceP == null) {
          break;
        }
        UserAttributes.Builder localBuilder = new UserAttributes.Builder().withEmail(ciB).withCustomAttribute("username", ceP.username);
        if (ceP.cjA == null)
        {
          paramContext = null;
          localIntercom.updateUser(localBuilder.withCustomAttribute("account_created_at", paramContext).withCustomAttribute("android_apiver", Integer.valueOf(Build.VERSION.SDK_INT)).withCustomAttribute("android_appver", Integer.valueOf(i)).build());
          return;
        }
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
        return;
      }
      long l = ceP.cjA.getTime();
      paramContext = Long.valueOf(l);
    }
  }
  
  static String bl(boolean paramBoolean)
  {
    if (paramBoolean) {
      return chM;
    }
    return "https://api.ventfeed.com/";
  }
  
  /* Error */
  static void bw(Context paramContext)
  {
    // Byte code:
    //   0: getstatic 1292	com/vent/bb:cbE	Z
    //   3: ifeq +4 -> 7
    //   6: return
    //   7: iconst_1
    //   8: putstatic 1292	com/vent/bb:cbE	Z
    //   11: aload_0
    //   12: invokevirtual 1296	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   15: ldc_w 1298
    //   18: invokestatic 1303	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   21: putstatic 489	com/vent/bb:chQ	Ljava/lang/String;
    //   24: ldc_w 1305
    //   27: invokestatic 1311	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   30: new 496	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 497	java/lang/StringBuilder:<init>	()V
    //   37: getstatic 489	com/vent/bb:chQ	Ljava/lang/String;
    //   40: invokevirtual 501	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: ldc_w 1313
    //   46: invokestatic 1316	com/vent/d/c:eo	(Ljava/lang/String;)Ljava/lang/String;
    //   49: invokevirtual 501	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 507	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: ldc_w 1318
    //   58: invokevirtual 1322	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   61: invokevirtual 1326	java/security/MessageDigest:digest	([B)[B
    //   64: astore 4
    //   66: ldc_w 1328
    //   69: putstatic 489	com/vent/bb:chQ	Ljava/lang/String;
    //   72: aload 4
    //   74: arraylength
    //   75: istore_2
    //   76: iconst_0
    //   77: istore_1
    //   78: iload_1
    //   79: iload_2
    //   80: if_icmpge +48 -> 128
    //   83: aload 4
    //   85: iload_1
    //   86: baload
    //   87: istore_3
    //   88: new 496	java/lang/StringBuilder
    //   91: dup
    //   92: invokespecial 497	java/lang/StringBuilder:<init>	()V
    //   95: getstatic 489	com/vent/bb:chQ	Ljava/lang/String;
    //   98: invokevirtual 501	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: iload_3
    //   102: invokestatic 1333	com/vent/d/e:eU	(I)Ljava/lang/String;
    //   105: invokevirtual 501	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: invokevirtual 507	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: putstatic 489	com/vent/bb:chQ	Ljava/lang/String;
    //   114: iload_1
    //   115: iconst_1
    //   116: iadd
    //   117: istore_1
    //   118: goto -40 -> 78
    //   121: astore 4
    //   123: aload 4
    //   125: invokevirtual 652	java/lang/Exception:printStackTrace	()V
    //   128: ldc_w 1305
    //   131: invokestatic 1311	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   134: new 496	java/lang/StringBuilder
    //   137: dup
    //   138: invokespecial 497	java/lang/StringBuilder:<init>	()V
    //   141: getstatic 489	com/vent/bb:chQ	Ljava/lang/String;
    //   144: invokevirtual 501	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: ldc_w 1335
    //   150: invokestatic 1316	com/vent/d/c:eo	(Ljava/lang/String;)Ljava/lang/String;
    //   153: invokevirtual 501	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: invokevirtual 507	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   159: ldc_w 1318
    //   162: invokevirtual 1322	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   165: invokevirtual 1326	java/security/MessageDigest:digest	([B)[B
    //   168: astore 4
    //   170: ldc_w 1328
    //   173: putstatic 1183	com/vent/bb:chR	Ljava/lang/String;
    //   176: aload 4
    //   178: arraylength
    //   179: istore_2
    //   180: iconst_0
    //   181: istore_1
    //   182: iload_1
    //   183: iload_2
    //   184: if_icmpge +48 -> 232
    //   187: aload 4
    //   189: iload_1
    //   190: baload
    //   191: istore_3
    //   192: new 496	java/lang/StringBuilder
    //   195: dup
    //   196: invokespecial 497	java/lang/StringBuilder:<init>	()V
    //   199: getstatic 1183	com/vent/bb:chR	Ljava/lang/String;
    //   202: invokevirtual 501	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   205: iload_3
    //   206: invokestatic 1333	com/vent/d/e:eU	(I)Ljava/lang/String;
    //   209: invokevirtual 501	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 507	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: putstatic 1183	com/vent/bb:chR	Ljava/lang/String;
    //   218: iload_1
    //   219: iconst_1
    //   220: iadd
    //   221: istore_1
    //   222: goto -40 -> 182
    //   225: astore 4
    //   227: aload 4
    //   229: invokevirtual 652	java/lang/Exception:printStackTrace	()V
    //   232: aload_0
    //   233: ldc_w 1337
    //   236: iconst_0
    //   237: invokevirtual 1341	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   240: putstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   243: aload_0
    //   244: invokestatic 1344	com/vent/bb:bx	(Landroid/content/Context;)V
    //   247: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	248	0	paramContext	Context
    //   77	145	1	i	int
    //   75	110	2	j	int
    //   87	119	3	k	int
    //   64	20	4	arrayOfByte1	byte[]
    //   121	3	4	localException1	Exception
    //   168	20	4	arrayOfByte2	byte[]
    //   225	3	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   24	76	121	java/lang/Exception
    //   88	114	121	java/lang/Exception
    //   128	180	225	java/lang/Exception
    //   192	218	225	java/lang/Exception
  }
  
  private static void bx(Context paramContext)
  {
    cjb = new File(paramContext.getFilesDir(), "emots_recent" + "");
    if (Build.VERSION.SDK_INT >= 21) {}
    for (paramContext = paramContext.getNoBackupFilesDir();; paramContext = paramContext.getFilesDir())
    {
      ciZ = new File(paramContext, "prefs_emotions" + "" + ".bin");
      cjc = new File(paramContext, "emotcath" + "");
      cja = new File(paramContext, "prefs_chat" + "");
      return;
    }
  }
  
  /* Error */
  public static void by(Context paramContext)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: iconst_1
    //   3: istore_1
    //   4: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   7: ldc_w 353
    //   10: iconst_0
    //   11: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   14: pop
    //   15: aload_0
    //   16: invokestatic 1344	com/vent/bb:bx	(Landroid/content/Context;)V
    //   19: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   22: ldc_w 279
    //   25: aconst_null
    //   26: invokestatic 1365	com/vent/bb:b	(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   29: astore_0
    //   30: aload_0
    //   31: invokestatic 1075	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   34: ifne +977 -> 1011
    //   37: new 556	org/json/JSONObject
    //   40: dup
    //   41: aload_0
    //   42: invokespecial 1366	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   45: astore_0
    //   46: aload_0
    //   47: ifnull +55 -> 102
    //   50: new 531	com/vent/a/y
    //   53: dup
    //   54: aload_0
    //   55: iconst_1
    //   56: invokespecial 1212	com/vent/a/y:<init>	(Lorg/json/JSONObject;Z)V
    //   59: putstatic 277	com/vent/bb:ceP	Lcom/vent/a/y;
    //   62: aload_0
    //   63: ldc_w 287
    //   66: invokevirtual 1209	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   69: ifne +836 -> 905
    //   72: aload_0
    //   73: ldc_w 287
    //   76: invokestatic 1072	com/vent/d/b:d	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   79: putstatic 289	com/vent/bb:ceg	Ljava/lang/String;
    //   82: aload_0
    //   83: ldc_w 291
    //   86: invokevirtual 1209	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   89: ifne +846 -> 935
    //   92: aload_0
    //   93: ldc_w 291
    //   96: invokestatic 1072	com/vent/d/b:d	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   99: putstatic 293	com/vent/bb:ciB	Ljava/lang/String;
    //   102: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   105: ldc_w 285
    //   108: lconst_0
    //   109: invokestatic 1368	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    //   112: putstatic 877	com/vent/bb:ciA	J
    //   115: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   118: ldc_w 297
    //   121: iconst_0
    //   122: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   125: putstatic 299	com/vent/bb:ciE	Z
    //   128: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   131: ldc_w 305
    //   134: aconst_null
    //   135: invokestatic 1365	com/vent/bb:b	(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   138: putstatic 307	com/vent/bb:ciH	Ljava/lang/String;
    //   141: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   144: ldc_w 309
    //   147: lconst_0
    //   148: invokestatic 1368	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    //   151: putstatic 311	com/vent/bb:ciI	J
    //   154: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   157: ldc_w 319
    //   160: aconst_null
    //   161: invokestatic 1365	com/vent/bb:b	(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   164: astore_0
    //   165: aload_0
    //   166: invokestatic 1075	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   169: ifeq +782 -> 951
    //   172: aconst_null
    //   173: astore_0
    //   174: aload_0
    //   175: putstatic 317	com/vent/bb:ciK	Lcom/vent/a/m;
    //   178: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   181: ldc_w 313
    //   184: aconst_null
    //   185: invokestatic 1365	com/vent/bb:b	(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   188: putstatic 315	com/vent/bb:ciJ	Ljava/lang/String;
    //   191: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   194: ldc_w 321
    //   197: iconst_0
    //   198: invokeinterface 1371 3 0
    //   203: putstatic 323	com/vent/bb:ciF	I
    //   206: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   209: ldc_w 329
    //   212: iconst_0
    //   213: invokeinterface 1371 3 0
    //   218: putstatic 331	com/vent/bb:ciG	I
    //   221: getstatic 176	com/vent/bb:ciD	Ljava/util/Set;
    //   224: invokeinterface 1033 1 0
    //   229: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   232: ldc_w 333
    //   235: aconst_null
    //   236: invokestatic 1365	com/vent/bb:b	(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   239: astore_0
    //   240: aload_0
    //   241: invokestatic 1075	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   244: ifeq +719 -> 963
    //   247: aconst_null
    //   248: astore_0
    //   249: aload_0
    //   250: ifnull +13 -> 263
    //   253: getstatic 176	com/vent/bb:ciD	Ljava/util/Set;
    //   256: aload_0
    //   257: invokeinterface 1224 2 0
    //   262: pop
    //   263: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   266: ldc_w 345
    //   269: lconst_0
    //   270: invokestatic 1368	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    //   273: putstatic 347	com/vent/bb:cit	J
    //   276: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   279: ldc_w 349
    //   282: lconst_0
    //   283: invokestatic 1368	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    //   286: putstatic 351	com/vent/bb:ciu	J
    //   289: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   292: ldc_w 355
    //   295: iconst_0
    //   296: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   299: putstatic 357	com/vent/bb:chS	Z
    //   302: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   305: ldc_w 359
    //   308: iconst_0
    //   309: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   312: putstatic 361	com/vent/bb:chT	Z
    //   315: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   318: ldc_w 363
    //   321: iconst_1
    //   322: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   325: putstatic 365	com/vent/bb:chU	Z
    //   328: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   331: ldc_w 367
    //   334: iconst_1
    //   335: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   338: putstatic 369	com/vent/bb:chV	Z
    //   341: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   344: ldc_w 379
    //   347: iconst_1
    //   348: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   351: putstatic 381	com/vent/bb:chW	Z
    //   354: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   357: ldc_w 371
    //   360: iconst_0
    //   361: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   364: putstatic 373	com/vent/bb:chX	Z
    //   367: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   370: ldc_w 375
    //   373: iconst_0
    //   374: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   377: putstatic 377	com/vent/bb:chY	Z
    //   380: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   383: ldc_w 383
    //   386: iconst_0
    //   387: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   390: putstatic 385	com/vent/bb:chZ	Z
    //   393: iconst_0
    //   394: putstatic 389	com/vent/bb:cia	Z
    //   397: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   400: ldc_w 391
    //   403: iconst_0
    //   404: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   407: putstatic 393	com/vent/bb:cib	Z
    //   410: iconst_0
    //   411: putstatic 397	com/vent/bb:cij	Z
    //   414: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   417: ldc_w 399
    //   420: iconst_0
    //   421: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   424: putstatic 401	com/vent/bb:cik	Z
    //   427: iconst_0
    //   428: putstatic 405	com/vent/bb:cic	Z
    //   431: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   434: ldc_w 407
    //   437: iconst_0
    //   438: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   441: putstatic 409	com/vent/bb:ciz	Z
    //   444: iconst_0
    //   445: putstatic 413	com/vent/bb:cid	Z
    //   448: iconst_0
    //   449: putstatic 417	com/vent/bb:cie	Z
    //   452: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   455: ldc_w 419
    //   458: invokeinterface 1374 2 0
    //   463: ifeq +508 -> 971
    //   466: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   469: ldc_w 419
    //   472: iconst_0
    //   473: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   476: ifeq +5 -> 481
    //   479: iconst_2
    //   480: istore_1
    //   481: iload_1
    //   482: putstatic 423	com/vent/bb:cif	I
    //   485: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   488: ldc_w 421
    //   491: getstatic 423	com/vent/bb:cif	I
    //   494: invokeinterface 1371 3 0
    //   499: putstatic 423	com/vent/bb:cif	I
    //   502: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   505: ldc_w 341
    //   508: iconst_0
    //   509: invokeinterface 1371 3 0
    //   514: putstatic 343	com/vent/bb:cig	I
    //   517: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   520: ldc_w 424
    //   523: ldc_w 1328
    //   526: invokestatic 1365	com/vent/bb:b	(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   529: putstatic 426	com/vent/bb:pin	Ljava/lang/String;
    //   532: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   535: ldc_w 428
    //   538: ldc2_w 1375
    //   541: invokestatic 1368	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    //   544: putstatic 430	com/vent/bb:cih	J
    //   547: iconst_0
    //   548: putstatic 434	com/vent/bb:cii	Z
    //   551: iconst_0
    //   552: putstatic 438	com/vent/bb:cil	I
    //   555: iconst_0
    //   556: putstatic 442	com/vent/bb:cim	I
    //   559: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   562: ldc_w 444
    //   565: aconst_null
    //   566: invokestatic 1365	com/vent/bb:b	(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   569: astore_0
    //   570: getstatic 171	com/vent/bb:ciq	Ljava/util/List;
    //   573: astore_3
    //   574: aload_3
    //   575: monitorenter
    //   576: getstatic 171	com/vent/bb:ciq	Ljava/util/List;
    //   579: invokeinterface 808 1 0
    //   584: getstatic 171	com/vent/bb:ciq	Ljava/util/List;
    //   587: astore 4
    //   589: aload_0
    //   590: invokestatic 1075	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   593: ifne +397 -> 990
    //   596: new 167	java/util/ArrayList
    //   599: dup
    //   600: aload_0
    //   601: ldc_w 446
    //   604: invokevirtual 1380	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   607: invokestatic 1386	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   610: invokespecial 1389	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   613: astore_0
    //   614: aload 4
    //   616: aload_0
    //   617: invokeinterface 815 2 0
    //   622: pop
    //   623: aload_3
    //   624: monitorexit
    //   625: bipush 15
    //   627: putstatic 459	com/vent/h:cap	I
    //   630: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   633: ldc_w 461
    //   636: aconst_null
    //   637: invokestatic 1365	com/vent/bb:b	(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   640: putstatic 463	com/vent/bb:cir	Ljava/lang/String;
    //   643: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   646: ldc_w 465
    //   649: aconst_null
    //   650: invokestatic 1365	com/vent/bb:b	(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   653: putstatic 467	com/vent/bb:cis	Ljava/lang/String;
    //   656: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   659: ldc_w 469
    //   662: iconst_0
    //   663: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   666: putstatic 471	com/vent/bb:cin	Z
    //   669: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   672: ldc_w 473
    //   675: iconst_0
    //   676: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   679: putstatic 475	com/vent/bb:cio	Z
    //   682: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   685: ldc_w 477
    //   688: iconst_0
    //   689: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   692: putstatic 479	com/vent/bb:cip	Z
    //   695: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   698: ldc_w 481
    //   701: iconst_1
    //   702: invokeinterface 1371 3 0
    //   707: putstatic 483	com/vent/bb:civ	I
    //   710: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   713: ldc_w 485
    //   716: iconst_0
    //   717: invokeinterface 1371 3 0
    //   722: putstatic 487	com/vent/bb:ciw	I
    //   725: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   728: getstatic 489	com/vent/bb:chQ	Ljava/lang/String;
    //   731: iconst_0
    //   732: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   735: putstatic 494	com/vent/b/a:cld	Z
    //   738: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   741: new 496	java/lang/StringBuilder
    //   744: dup
    //   745: invokespecial 497	java/lang/StringBuilder:<init>	()V
    //   748: getstatic 489	com/vent/bb:chQ	Ljava/lang/String;
    //   751: invokevirtual 501	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   754: ldc_w 503
    //   757: invokevirtual 501	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   760: invokevirtual 507	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   763: iconst_0
    //   764: invokestatic 1363	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    //   767: putstatic 510	com/vent/b/a:cle	Z
    //   770: getstatic 178	com/vent/bb:ciU	Ljava/util/Set;
    //   773: invokeinterface 1033 1 0
    //   778: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   781: ldc_w 521
    //   784: aconst_null
    //   785: invokestatic 1365	com/vent/bb:b	(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   788: astore_0
    //   789: aload_0
    //   790: invokestatic 1075	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   793: ifne +213 -> 1006
    //   796: new 518	org/json/JSONArray
    //   799: dup
    //   800: aload_0
    //   801: invokespecial 1390	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   804: invokestatic 1223	com/vent/a/m:a	(Lorg/json/JSONArray;)Ljava/util/HashSet;
    //   807: astore_0
    //   808: aload_0
    //   809: ifnull +13 -> 822
    //   812: getstatic 178	com/vent/bb:ciU	Ljava/util/Set;
    //   815: aload_0
    //   816: invokeinterface 1224 2 0
    //   821: pop
    //   822: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   825: ldc_w 523
    //   828: lconst_0
    //   829: invokestatic 1368	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    //   832: putstatic 525	com/vent/bb:cix	J
    //   835: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   838: ldc_w 527
    //   841: lconst_0
    //   842: invokestatic 1368	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    //   845: putstatic 529	com/vent/bb:ciX	J
    //   848: getstatic 271	com/vent/MyApplication:cgG	I
    //   851: i2l
    //   852: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   855: ldc_w 266
    //   858: lconst_0
    //   859: invokestatic 1368	com/vent/bb:a	(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    //   862: lcmp
    //   863: ifeq +32 -> 895
    //   866: iconst_0
    //   867: putstatic 471	com/vent/bb:cin	Z
    //   870: iconst_0
    //   871: putstatic 475	com/vent/bb:cio	Z
    //   874: getstatic 1170	com/vent/MyApplication:cgA	Z
    //   877: ifne +7 -> 884
    //   880: iconst_0
    //   881: putstatic 479	com/vent/bb:cip	Z
    //   884: lconst_0
    //   885: putstatic 311	com/vent/bb:ciI	J
    //   888: lconst_0
    //   889: putstatic 525	com/vent/bb:cix	J
    //   892: invokestatic 191	com/vent/bb:EB	()V
    //   895: invokestatic 196	com/vent/bb:EF	()V
    //   898: getstatic 483	com/vent/bb:civ	I
    //   901: invokestatic 1395	android/support/v7/app/f:aO	(I)V
    //   904: return
    //   905: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   908: ldc_w 287
    //   911: aconst_null
    //   912: invokestatic 1365	com/vent/bb:b	(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   915: putstatic 289	com/vent/bb:ceg	Ljava/lang/String;
    //   918: goto -836 -> 82
    //   921: astore_0
    //   922: aload_0
    //   923: invokevirtual 247	org/json/JSONException:printStackTrace	()V
    //   926: aconst_null
    //   927: putstatic 277	com/vent/bb:ceP	Lcom/vent/a/y;
    //   930: lconst_0
    //   931: putstatic 877	com/vent/bb:ciA	J
    //   934: return
    //   935: getstatic 198	com/vent/bb:ciY	Landroid/content/SharedPreferences;
    //   938: ldc_w 291
    //   941: aconst_null
    //   942: invokestatic 1365	com/vent/bb:b	(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   945: putstatic 293	com/vent/bb:ciB	Ljava/lang/String;
    //   948: goto -846 -> 102
    //   951: new 512	com/vent/a/m
    //   954: dup
    //   955: aload_0
    //   956: invokespecial 937	com/vent/a/m:<init>	(Ljava/lang/CharSequence;)V
    //   959: astore_0
    //   960: goto -786 -> 174
    //   963: aload_0
    //   964: invokestatic 1399	com/vent/d/b:es	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   967: astore_0
    //   968: goto -719 -> 249
    //   971: iload_2
    //   972: istore_1
    //   973: getstatic 163	android/os/Build$VERSION:SDK_INT	I
    //   976: bipush 26
    //   978: if_icmpge +5 -> 983
    //   981: iconst_3
    //   982: istore_1
    //   983: iload_1
    //   984: putstatic 423	com/vent/bb:cif	I
    //   987: goto -502 -> 485
    //   990: new 167	java/util/ArrayList
    //   993: dup
    //   994: invokespecial 169	java/util/ArrayList:<init>	()V
    //   997: astore_0
    //   998: goto -384 -> 614
    //   1001: astore_0
    //   1002: aload_3
    //   1003: monitorexit
    //   1004: aload_0
    //   1005: athrow
    //   1006: aconst_null
    //   1007: astore_0
    //   1008: goto -200 -> 808
    //   1011: aconst_null
    //   1012: astore_0
    //   1013: goto -967 -> 46
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1016	0	paramContext	Context
    //   3	981	1	i	int
    //   1	971	2	j	int
    //   587	28	4	localList2	List
    // Exception table:
    //   from	to	target	type
    //   4	46	921	org/json/JSONException
    //   50	82	921	org/json/JSONException
    //   82	102	921	org/json/JSONException
    //   102	172	921	org/json/JSONException
    //   174	247	921	org/json/JSONException
    //   253	263	921	org/json/JSONException
    //   263	466	921	org/json/JSONException
    //   466	479	921	org/json/JSONException
    //   481	485	921	org/json/JSONException
    //   485	576	921	org/json/JSONException
    //   625	808	921	org/json/JSONException
    //   812	822	921	org/json/JSONException
    //   822	884	921	org/json/JSONException
    //   884	895	921	org/json/JSONException
    //   895	904	921	org/json/JSONException
    //   905	918	921	org/json/JSONException
    //   935	948	921	org/json/JSONException
    //   951	960	921	org/json/JSONException
    //   963	968	921	org/json/JSONException
    //   973	981	921	org/json/JSONException
    //   983	987	921	org/json/JSONException
    //   1004	1006	921	org/json/JSONException
    //   576	614	1001	finally
    //   614	625	1001	finally
    //   990	998	1001	finally
    //   1002	1004	1001	finally
  }
  
  static void bz(Context paramContext)
  {
    if (MyApplication.cgC) {}
    try
    {
      localObject1 = Intercom.client();
      if (localObject1 != null) {
        ((Intercom)localObject1).registerIdentifiedUser(new Registration().withUserId(ceP.cjy.toString()));
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject1;
        Object localObject2;
        localException.printStackTrace();
        continue;
        if (((w)localObject2).Hj())
        {
          w localw = (w)localObject2;
          localObject2 = io.branch.referral.d.cvT;
          if (localw.cBr != null) {
            localw.cBr.a(((io.branch.referral.d)localObject2).Gx(), null);
          }
        }
      }
    }
    if (ceP != null)
    {
      localObject1 = io.branch.referral.d.bQ(paramContext.getApplicationContext());
      localObject2 = ceP.cjy.toString();
      localObject2 = new w(((io.branch.referral.d)localObject1).cvX, (String)localObject2);
      if ((!((r)localObject2).cBc) && (!((r)localObject2).bU(((io.branch.referral.d)localObject1).cvX))) {
        ((io.branch.referral.d)localObject1).a((r)localObject2);
      }
    }
    else
    {
      bA(paramContext);
      return;
    }
  }
  
  static void c(Map<m, h> paramMap, Map<m, g> paramMap1)
  {
    if ((paramMap != null) && (paramMap1 != null))
    {
      paramMap = paramMap.values().iterator();
      while (paramMap.hasNext())
      {
        h localh = (h)paramMap.next();
        if (localh.cjT != null)
        {
          int j = localh.cjT.size();
          int i = 0;
          while (i < j)
          {
            g localg = (g)paramMap1.get(localh.cjT.get(i));
            if (localg != null)
            {
              localg.cjQ = localh.cjy;
              localh.cjT.set(i, localg.cjy);
            }
            i += 1;
          }
        }
      }
    }
  }
  
  static void c(JSONObject paramJSONObject)
  {
    b(paramJSONObject, true);
  }
  
  public static boolean c(x paramx)
  {
    return (paramx != null) && (a(paramx.cjy));
  }
  
  static void d(Map<m, o> paramMap, Map<m, ArrayList<m>> paramMap1)
  {
    if ((paramMap != null) && (paramMap1 != null))
    {
      paramMap1 = paramMap1.values().iterator();
      while (paramMap1.hasNext())
      {
        List localList = (List)paramMap1.next();
        int j = localList.size();
        int i = 0;
        while (i < j)
        {
          o localo = o.b(paramMap, (m)localList.get(i));
          if (localo != null) {
            localList.set(i, localo.cjy);
          }
          i += 1;
        }
      }
    }
  }
  
  public static void dZ(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.isEmpty()) {
        str = null;
      }
    }
    if (!TextUtils.equals(cis, str))
    {
      cis = str;
      chP = true;
    }
  }
  
  public static void eG(int paramInt)
  {
    if (ciG != paramInt)
    {
      ciG = paramInt;
      chP = true;
    }
  }
  
  public static void eH(int paramInt)
  {
    if (cig != paramInt)
    {
      cig = paramInt;
      chP = true;
    }
  }
  
  public static void ea(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.isEmpty()) {
        str = null;
      }
    }
    if (!TextUtils.equals(cir, str))
    {
      cir = str;
      chP = true;
    }
  }
  
  public static boolean eb(String paramString)
  {
    List localList = ciq;
    int i = 0;
    boolean bool = false;
    for (;;)
    {
      try
      {
        if (i < ciq.size())
        {
          String str = (String)ciq.get(i);
          if (!str.equalsIgnoreCase(paramString)) {
            break label132;
          }
          if ((i == ciq.size() - 1) && (str.equals(paramString))) {
            return bool;
          }
          ciq.remove(i);
          bool = true;
          continue;
        }
        ciq.add(paramString);
        if (ciq.size() > 10)
        {
          ciq.remove(0);
          continue;
        }
      }
      finally {}
      return true;
      label132:
      i += 1;
    }
  }
  
  static boolean ec(String paramString)
  {
    if (paramString == null) {}
    int i;
    boolean bool;
    int k;
    for (int j = 0;; j = paramString.length())
    {
      i = 0;
      bool = false;
      if (i >= j) {
        break label144;
      }
      k = paramString.indexOf('#', i);
      if (k == -1) {
        break label144;
      }
      if ((k != 0) && (!com.vent.d.e.e(paramString.charAt(k - 1))) && (paramString.charAt(k - 1) != '_')) {
        break label136;
      }
      i = k + 1;
      while (i < j)
      {
        char c = paramString.charAt(i);
        if ((!Character.isLetter(c)) && (!Character.isDigit(c))) {
          break;
        }
        i += 1;
      }
    }
    String str = paramString.substring(k, i);
    if (str.length() > 1) {
      bool = eb(str);
    }
    for (;;)
    {
      break;
      label136:
      i = k + 1;
      break;
      label144:
      chP = bool;
      return bool;
    }
  }
  
  static void ed(String paramString)
  {
    if (ec(paramString)) {
      EB();
    }
  }
  
  static void ee(String paramString)
  {
    i(paramString, 100);
  }
  
  static void ef(String paramString)
  {
    if (cji)
    {
      cjj = true;
      return;
    }
    cjj = false;
    cji = true;
    com.vent.d.c.b(new AsyncTask()
    {
      String cjr;
      String cjs;
      String cjt;
      
      private Void Bq()
      {
        if (MyApplication.cgw) {}
        try
        {
          FirebaseInstanceId localFirebaseInstanceId = FirebaseInstanceId.us();
          if (localFirebaseInstanceId != null) {
            this.cjr = localFirebaseInstanceId.uv();
          }
        }
        catch (Exception localException)
        {
          for (;;) {}
        }
        return null;
      }
      
      protected final void onPreExecute()
      {
        super.onPreExecute();
        this.cjs = bb.ciH;
        this.cjt = null;
      }
    });
  }
  
  static void i(String paramString, int paramInt)
  {
    long l = SystemClock.uptimeMillis() + paramInt;
    if ((cjf != 0L) && (l < cjf)) {
      return;
    }
    if (cjf != 0L) {
      handler.removeCallbacks(cjh);
    }
    cjf = l;
    cjg = paramString;
    handler.postDelayed(cjh, paramInt);
  }
  
  static f l(Uri paramUri)
  {
    if ((ccH != null) && (paramUri != null))
    {
      Iterator localIterator = ccH.iterator();
      while (localIterator.hasNext())
      {
        f localf = (f)localIterator.next();
        if (localf.n(paramUri)) {
          return localf;
        }
      }
    }
    return null;
  }
  
  static int m(Uri paramUri)
  {
    if ((ccH != null) && (paramUri != null))
    {
      int i = 0;
      while (i < ccH.size())
      {
        if (((f)ccH.get(i)).n(paramUri)) {
          return i;
        }
        i += 1;
      }
    }
    return -1;
  }
  
  public static boolean r(Activity paramActivity)
  {
    return a(paramActivity, null, null);
  }
  
  public static void setUnreadCount(int paramInt)
  {
    if (ciF != paramInt)
    {
      ciF = paramInt;
      chP = true;
    }
  }
  
  private static final class a
    implements Comparator<m>
  {
    final Map<m, o> ciQ;
    
    a(Map<m, o> paramMap)
    {
      this.ciQ = paramMap;
    }
  }
  
  static final class b
    implements Comparator<m>
  {
    final HashMap<m, g> bXh;
    
    b(HashMap<m, g> paramHashMap)
    {
      this.bXh = paramHashMap;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/bb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */