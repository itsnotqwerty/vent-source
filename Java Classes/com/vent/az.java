package com.vent;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.h;
import okhttp3.i;
import okhttp3.internal.a.d;
import okhttp3.s;
import okhttp3.t;
import okhttp3.t.a;
import okhttp3.u;
import org.json.JSONObject;

public final class az
{
  private static final Charset UTF_8 = Charset.forName("UTF-8");
  private static int cgP = 0;
  public static t cgQ;
  private static final s cgR = s.fw("application/json; charset=utf-8");
  private static final Map<String, String> cgS;
  private static final Map<String, String> cgT;
  
  static
  {
    HashMap localHashMap = new HashMap();
    cgS = localHashMap;
    localHashMap.put("\r", "");
    cgS.put("\n", " ");
    cgS.put("\t", " ");
    cgS.put("  ", " ");
    localHashMap = new HashMap();
    cgT = localHashMap;
    localHashMap.put("\r", "");
    cgT.put("\n\n", "\n");
  }
  
  static void Ed()
  {
    if (cgQ != null) {}
    try
    {
      cgQ.cZb.cWd.evictAll();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  static void Ee()
  {
    com.vent.d.c.b(new AsyncTask()
    {
      private static Void Bq()
      {
        Object localObject1 = az.cgQ.cZd;
        ArrayList localArrayList = new ArrayList();
        try
        {
          Iterator localIterator = ((h)localObject1).connections.iterator();
          while (localIterator.hasNext())
          {
            okhttp3.internal.b.c localc = (okhttp3.internal.b.c)localIterator.next();
            if (localc.allocations.isEmpty())
            {
              localc.noNewStreams = true;
              localArrayList.add(localc);
              localIterator.remove();
            }
          }
        }
        finally {}
        localObject1 = ((List)localObject2).iterator();
        while (((Iterator)localObject1).hasNext()) {
          okhttp3.internal.c.closeQuietly(((okhttp3.internal.b.c)((Iterator)localObject1).next()).socket);
        }
        return null;
      }
    });
  }
  
  static void Ef()
  {
    if (cgQ != null) {}
    try
    {
      cgQ.cZb.close();
      cgQ = null;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  /* Error */
  public static a a(String paramString1, String paramString2, String[][] paramArrayOfString, JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: aload_3
    //   1: astore 23
    //   3: aload_3
    //   4: ifnonnull +63 -> 67
    //   7: iconst_m1
    //   8: istore 5
    //   10: aload_0
    //   11: invokevirtual 124	java/lang/String:hashCode	()I
    //   14: lookupswitch	default:+26->40, 79599:+387->401, 2461856:+402->416
    //   40: iload 5
    //   42: tableswitch	default:+22->64, 0:+389->431, 1:+389->431
    //   64: aload_3
    //   65: astore 23
    //   67: new 8	com/vent/az$a
    //   70: dup
    //   71: invokespecial 125	com/vent/az$a:<init>	()V
    //   74: astore 27
    //   76: ldc 2
    //   78: monitorenter
    //   79: getstatic 35	com/vent/az:cgP	I
    //   82: iconst_1
    //   83: iadd
    //   84: istore 13
    //   86: iload 13
    //   88: putstatic 35	com/vent/az:cgP	I
    //   91: ldc 2
    //   93: monitorexit
    //   94: iconst_0
    //   95: istore 7
    //   97: iconst_0
    //   98: istore 5
    //   100: iload 5
    //   102: iconst_1
    //   103: iadd
    //   104: istore 10
    //   106: iload 13
    //   108: invokestatic 129	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   111: astore_3
    //   112: aload_3
    //   113: astore 24
    //   115: iload 10
    //   117: iconst_1
    //   118: if_icmple +24 -> 142
    //   121: new 131	java/lang/StringBuilder
    //   124: dup
    //   125: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   128: aload_3
    //   129: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: ldc -118
    //   134: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: astore 24
    //   142: aconst_null
    //   143: astore 22
    //   145: iconst_0
    //   146: istore 11
    //   148: iconst_0
    //   149: istore 12
    //   151: invokestatic 148	android/os/SystemClock:elapsedRealtime	()J
    //   154: lstore 16
    //   156: aload 23
    //   158: ifnull +291 -> 449
    //   161: aload 22
    //   163: astore 21
    //   165: iload 11
    //   167: istore 6
    //   169: getstatic 45	com/vent/az:cgR	Lokhttp3/s;
    //   172: astore 25
    //   174: aload 22
    //   176: astore 21
    //   178: iload 11
    //   180: istore 6
    //   182: aload 23
    //   184: invokevirtual 151	org/json/JSONObject:toString	()Ljava/lang/String;
    //   187: astore 28
    //   189: aload 22
    //   191: astore 21
    //   193: iload 11
    //   195: istore 6
    //   197: getstatic 154	okhttp3/internal/c:UTF_8	Ljava/nio/charset/Charset;
    //   200: astore_3
    //   201: aload 25
    //   203: astore 20
    //   205: aload 25
    //   207: ifnull +76 -> 283
    //   210: aload 22
    //   212: astore 21
    //   214: iload 11
    //   216: istore 6
    //   218: aload 25
    //   220: aconst_null
    //   221: invokevirtual 158	okhttp3/s:charset	(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    //   224: astore 26
    //   226: aload 25
    //   228: astore 20
    //   230: aload 26
    //   232: astore_3
    //   233: aload 26
    //   235: ifnonnull +48 -> 283
    //   238: aload 22
    //   240: astore 21
    //   242: iload 11
    //   244: istore 6
    //   246: getstatic 154	okhttp3/internal/c:UTF_8	Ljava/nio/charset/Charset;
    //   249: astore_3
    //   250: aload 22
    //   252: astore 21
    //   254: iload 11
    //   256: istore 6
    //   258: new 131	java/lang/StringBuilder
    //   261: dup
    //   262: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   265: aload 25
    //   267: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   270: ldc -93
    //   272: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   278: invokestatic 43	okhttp3/s:fw	(Ljava/lang/String;)Lokhttp3/s;
    //   281: astore 20
    //   283: aload 22
    //   285: astore 21
    //   287: iload 11
    //   289: istore 6
    //   291: aload 20
    //   293: aload 28
    //   295: aload_3
    //   296: invokevirtual 167	java/lang/String:getBytes	(Ljava/nio/charset/Charset;)[B
    //   299: invokestatic 172	okhttp3/x:a	(Lokhttp3/s;[B)Lokhttp3/x;
    //   302: astore_3
    //   303: aload 22
    //   305: astore 21
    //   307: iload 11
    //   309: istore 6
    //   311: new 174	okhttp3/w$a
    //   314: dup
    //   315: invokespecial 175	okhttp3/w$a:<init>	()V
    //   318: aload_0
    //   319: aload_3
    //   320: invokevirtual 178	okhttp3/w$a:a	(Ljava/lang/String;Lokhttp3/x;)Lokhttp3/w$a;
    //   323: aload_1
    //   324: invokevirtual 182	okhttp3/w$a:fy	(Ljava/lang/String;)Lokhttp3/w$a;
    //   327: astore_3
    //   328: aload_2
    //   329: ifnull +125 -> 454
    //   332: aload 22
    //   334: astore 21
    //   336: iload 11
    //   338: istore 6
    //   340: aload_2
    //   341: arraylength
    //   342: istore 8
    //   344: iconst_0
    //   345: istore 5
    //   347: iload 5
    //   349: iload 8
    //   351: if_icmpge +103 -> 454
    //   354: aload_2
    //   355: iload 5
    //   357: aaload
    //   358: astore 21
    //   360: aload 21
    //   362: iconst_0
    //   363: aaload
    //   364: astore 20
    //   366: aload 21
    //   368: iconst_1
    //   369: aaload
    //   370: astore 25
    //   372: aload 22
    //   374: astore 21
    //   376: iload 11
    //   378: istore 6
    //   380: aload_3
    //   381: getfield 186	okhttp3/w$a:cZr	Lokhttp3/p$a;
    //   384: aload 20
    //   386: aload 25
    //   388: invokevirtual 192	okhttp3/p$a:X	(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/p$a;
    //   391: pop
    //   392: iload 5
    //   394: iconst_1
    //   395: iadd
    //   396: istore 5
    //   398: goto -51 -> 347
    //   401: aload_0
    //   402: ldc -62
    //   404: invokevirtual 198	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   407: ifeq -367 -> 40
    //   410: iconst_0
    //   411: istore 5
    //   413: goto -373 -> 40
    //   416: aload_0
    //   417: ldc -56
    //   419: invokevirtual 198	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   422: ifeq -382 -> 40
    //   425: iconst_1
    //   426: istore 5
    //   428: goto -388 -> 40
    //   431: new 150	org/json/JSONObject
    //   434: dup
    //   435: invokespecial 201	org/json/JSONObject:<init>	()V
    //   438: astore 23
    //   440: goto -373 -> 67
    //   443: astore_0
    //   444: ldc 2
    //   446: monitorexit
    //   447: aload_0
    //   448: athrow
    //   449: aconst_null
    //   450: astore_3
    //   451: goto -148 -> 303
    //   454: aload 22
    //   456: astore 21
    //   458: iload 11
    //   460: istore 6
    //   462: getstatic 81	com/vent/az:cgQ	Lokhttp3/t;
    //   465: aload_3
    //   466: invokevirtual 205	okhttp3/w$a:MH	()Lokhttp3/w;
    //   469: iconst_0
    //   470: invokestatic 210	okhttp3/v:a	(Lokhttp3/t;Lokhttp3/w;Z)Lokhttp3/v;
    //   473: invokeinterface 216 1 0
    //   478: astore 25
    //   480: aload 25
    //   482: astore 21
    //   484: iload 11
    //   486: istore 6
    //   488: aload 27
    //   490: aload 25
    //   492: getfield 221	okhttp3/y:code	I
    //   495: putfield 224	com/vent/az$a:bYo	I
    //   498: aload 25
    //   500: astore 21
    //   502: iload 11
    //   504: istore 6
    //   506: aload 25
    //   508: getfield 228	okhttp3/y:cZu	Lokhttp3/z;
    //   511: invokevirtual 234	okhttp3/z:LX	()Lokhttp3/s;
    //   514: astore 20
    //   516: aload 20
    //   518: ifnonnull +966 -> 1484
    //   521: ldc 56
    //   523: astore_3
    //   524: aload 25
    //   526: astore 21
    //   528: iload 11
    //   530: istore 6
    //   532: aload 25
    //   534: getfield 228	okhttp3/y:cZu	Lokhttp3/z;
    //   537: astore 22
    //   539: aload 22
    //   541: ifnonnull +987 -> 1528
    //   544: lconst_0
    //   545: lstore 14
    //   547: aconst_null
    //   548: astore 20
    //   550: aload 25
    //   552: astore 21
    //   554: iload 11
    //   556: istore 6
    //   558: aload 20
    //   560: invokestatic 240	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   563: istore 18
    //   565: iload 18
    //   567: ifne +1672 -> 2239
    //   570: aload 25
    //   572: astore 21
    //   574: iload 11
    //   576: istore 6
    //   578: aload_3
    //   579: ldc -14
    //   581: invokevirtual 198	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   584: ifne +1598 -> 2182
    //   587: aload 25
    //   589: astore 21
    //   591: iload 11
    //   593: istore 6
    //   595: aload_3
    //   596: ldc -12
    //   598: invokevirtual 198	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   601: ifeq +1638 -> 2239
    //   604: aload 25
    //   606: astore 21
    //   608: iload 11
    //   610: istore 6
    //   612: aload 20
    //   614: iconst_0
    //   615: invokevirtual 248	java/lang/String:charAt	(I)C
    //   618: bipush 123
    //   620: if_icmpeq +1562 -> 2182
    //   623: aload 25
    //   625: astore 21
    //   627: iload 11
    //   629: istore 6
    //   631: aload 20
    //   633: iconst_0
    //   634: invokevirtual 248	java/lang/String:charAt	(I)C
    //   637: bipush 91
    //   639: if_icmpne +1600 -> 2239
    //   642: goto +1540 -> 2182
    //   645: aload 25
    //   647: astore 21
    //   649: iload 11
    //   651: istore 6
    //   653: aload 27
    //   655: getfield 224	com/vent/az$a:bYo	I
    //   658: sipush 200
    //   661: if_icmplt +22 -> 683
    //   664: aload 25
    //   666: astore 21
    //   668: iload 11
    //   670: istore 6
    //   672: aload 27
    //   674: getfield 224	com/vent/az$a:bYo	I
    //   677: sipush 299
    //   680: if_icmple +1508 -> 2188
    //   683: aload 25
    //   685: astore 21
    //   687: iload 11
    //   689: istore 6
    //   691: aload 27
    //   693: getfield 224	com/vent/az$a:bYo	I
    //   696: sipush 401
    //   699: if_icmplt +1499 -> 2198
    //   702: aload 25
    //   704: astore 21
    //   706: iload 11
    //   708: istore 6
    //   710: aload 27
    //   712: getfield 224	com/vent/az$a:bYo	I
    //   715: sipush 404
    //   718: if_icmpgt +1480 -> 2198
    //   721: goto +1467 -> 2188
    //   724: aload 25
    //   726: astore 21
    //   728: iload 11
    //   730: istore 6
    //   732: aload 27
    //   734: aload 25
    //   736: getfield 252	okhttp3/y:receivedResponseAtMillis	J
    //   739: aload 25
    //   741: getfield 255	okhttp3/y:sentRequestAtMillis	J
    //   744: lsub
    //   745: putfield 258	com/vent/az$a:cgX	J
    //   748: iload 8
    //   750: ifeq +870 -> 1620
    //   753: aload 25
    //   755: astore 21
    //   757: iload 11
    //   759: istore 6
    //   761: aload 27
    //   763: new 150	org/json/JSONObject
    //   766: dup
    //   767: aload 20
    //   769: invokespecial 261	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   772: putfield 265	com/vent/az$a:bYp	Lorg/json/JSONObject;
    //   775: aload 25
    //   777: astore 21
    //   779: iload 11
    //   781: istore 6
    //   783: aload 27
    //   785: invokestatic 148	android/os/SystemClock:elapsedRealtime	()J
    //   788: lconst_0
    //   789: lsub
    //   790: putfield 268	com/vent/az$a:cgW	J
    //   793: aload 25
    //   795: astore 21
    //   797: iload 11
    //   799: istore 6
    //   801: aload 27
    //   803: invokestatic 148	android/os/SystemClock:elapsedRealtime	()J
    //   806: lload 16
    //   808: lsub
    //   809: putfield 271	com/vent/az$a:cgU	J
    //   812: aconst_null
    //   813: astore 22
    //   815: aconst_null
    //   816: astore 26
    //   818: iload 12
    //   820: istore 5
    //   822: iload 9
    //   824: ifeq +432 -> 1256
    //   827: aload 25
    //   829: astore 21
    //   831: iload 11
    //   833: istore 6
    //   835: iconst_1
    //   836: new 131	java/lang/StringBuilder
    //   839: dup
    //   840: ldc_w 273
    //   843: invokespecial 274	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   846: aload 24
    //   848: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   851: ldc 66
    //   853: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   856: aload_0
    //   857: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   860: ldc 66
    //   862: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   865: aload_1
    //   866: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   869: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   872: invokestatic 278	com/vent/d/c:h	(ILjava/lang/String;)V
    //   875: iconst_1
    //   876: istore 11
    //   878: iconst_1
    //   879: istore 9
    //   881: aload 25
    //   883: ldc_w 280
    //   886: aconst_null
    //   887: invokevirtual 284	okhttp3/y:header	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   890: astore 21
    //   892: aload 21
    //   894: invokestatic 240	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   897: ifne +24 -> 921
    //   900: aload 27
    //   902: aload 21
    //   904: invokestatic 289	java/lang/Float:valueOf	(Ljava/lang/String;)Ljava/lang/Float;
    //   907: invokevirtual 293	java/lang/Float:floatValue	()F
    //   910: ldc_w 294
    //   913: fmul
    //   914: invokestatic 300	java/lang/Math:round	(F)I
    //   917: i2l
    //   918: putfield 303	com/vent/az$a:cgV	J
    //   921: aload 25
    //   923: astore 21
    //   925: iload 11
    //   927: istore 6
    //   929: aload 25
    //   931: getfield 307	okhttp3/y:cZv	Lokhttp3/y;
    //   934: ifnull +875 -> 1809
    //   937: aload 25
    //   939: astore 21
    //   941: iload 11
    //   943: istore 6
    //   945: aload 25
    //   947: getfield 307	okhttp3/y:cZv	Lokhttp3/y;
    //   950: getfield 221	okhttp3/y:code	I
    //   953: sipush 304
    //   956: if_icmpne +853 -> 1809
    //   959: iconst_1
    //   960: istore 5
    //   962: aload 25
    //   964: astore 21
    //   966: iload 11
    //   968: istore 6
    //   970: aload 25
    //   972: ldc_w 309
    //   975: ldc 56
    //   977: invokevirtual 284	okhttp3/y:header	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   980: ldc_w 311
    //   983: invokevirtual 314	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   986: istore 19
    //   988: iload 5
    //   990: ifeq +825 -> 1815
    //   993: bipush 67
    //   995: istore 4
    //   997: iload 18
    //   999: ifeq +835 -> 1834
    //   1002: aload 25
    //   1004: astore 21
    //   1006: iload 11
    //   1008: istore 6
    //   1010: aload 25
    //   1012: getfield 307	okhttp3/y:cZv	Lokhttp3/y;
    //   1015: getfield 318	okhttp3/y:message	Ljava/lang/String;
    //   1018: astore 20
    //   1020: aload 26
    //   1022: astore 22
    //   1024: iconst_m1
    //   1025: istore 5
    //   1027: aload 25
    //   1029: astore 21
    //   1031: iload 11
    //   1033: istore 6
    //   1035: aload_3
    //   1036: invokevirtual 124	java/lang/String:hashCode	()I
    //   1039: lookupswitch	default:+1165->2204, -1082243251:+1031->2070, -43840953:+1008->2047, 0:+985->2024, 817335912:+1055->2094
    //   1080: aload 25
    //   1082: astore 21
    //   1084: iload 11
    //   1086: istore 6
    //   1088: iconst_1
    //   1089: new 131	java/lang/StringBuilder
    //   1092: dup
    //   1093: ldc_w 273
    //   1096: invokespecial 274	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1099: aload 24
    //   1101: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1104: ldc 66
    //   1106: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1109: aload 27
    //   1111: getfield 224	com/vent/az$a:bYo	I
    //   1114: invokestatic 129	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   1117: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1120: ldc 66
    //   1122: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1125: new 131	java/lang/StringBuilder
    //   1128: dup
    //   1129: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   1132: aload 27
    //   1134: getfield 271	com/vent/az$a:cgU	J
    //   1137: invokestatic 321	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   1140: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1143: ldc_w 323
    //   1146: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1149: aload 27
    //   1151: getfield 258	com/vent/az$a:cgX	J
    //   1154: invokevirtual 326	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1157: ldc_w 328
    //   1160: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1163: aload 27
    //   1165: getfield 303	com/vent/az$a:cgV	J
    //   1168: invokevirtual 326	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1171: ldc_w 330
    //   1174: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1177: aload 27
    //   1179: getfield 268	com/vent/az$a:cgW	J
    //   1182: invokevirtual 326	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1185: ldc_w 332
    //   1188: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1191: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1194: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1197: ldc 66
    //   1199: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1202: lload 14
    //   1204: ldc2_w 333
    //   1207: ladd
    //   1208: ldc2_w 335
    //   1211: ldiv
    //   1212: invokevirtual 326	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1215: ldc_w 338
    //   1218: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1221: iload 4
    //   1223: invokevirtual 341	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   1226: ldc_w 343
    //   1229: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1232: aload_3
    //   1233: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1236: ldc 66
    //   1238: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1241: aload 20
    //   1243: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1246: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1249: invokestatic 278	com/vent/d/c:h	(ILjava/lang/String;)V
    //   1252: iload 9
    //   1254: istore 5
    //   1256: iload 8
    //   1258: ifne +181 -> 1439
    //   1261: aload 25
    //   1263: astore 21
    //   1265: iload 5
    //   1267: istore 6
    //   1269: aload 27
    //   1271: getfield 224	com/vent/az$a:bYo	I
    //   1274: sipush 200
    //   1277: if_icmplt +22 -> 1299
    //   1280: aload 25
    //   1282: astore 21
    //   1284: iload 5
    //   1286: istore 6
    //   1288: aload 27
    //   1290: getfield 224	com/vent/az$a:bYo	I
    //   1293: sipush 299
    //   1296: if_icmple +143 -> 1439
    //   1299: aload 25
    //   1301: astore 21
    //   1303: iload 5
    //   1305: istore 6
    //   1307: aload 25
    //   1309: getfield 307	okhttp3/y:cZv	Lokhttp3/y;
    //   1312: getfield 318	okhttp3/y:message	Ljava/lang/String;
    //   1315: astore_3
    //   1316: aload 25
    //   1318: astore 21
    //   1320: iload 5
    //   1322: istore 6
    //   1324: aload 27
    //   1326: new 150	org/json/JSONObject
    //   1329: dup
    //   1330: invokespecial 201	org/json/JSONObject:<init>	()V
    //   1333: putfield 265	com/vent/az$a:bYp	Lorg/json/JSONObject;
    //   1336: aload 25
    //   1338: astore 21
    //   1340: iload 5
    //   1342: istore 6
    //   1344: aload_3
    //   1345: invokestatic 240	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1348: ifne +769 -> 2117
    //   1351: aload 25
    //   1353: astore 21
    //   1355: iload 5
    //   1357: istore 6
    //   1359: aload 27
    //   1361: getfield 265	com/vent/az$a:bYp	Lorg/json/JSONObject;
    //   1364: ldc_w 345
    //   1367: new 131	java/lang/StringBuilder
    //   1370: dup
    //   1371: ldc_w 347
    //   1374: invokespecial 274	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1377: aload 27
    //   1379: getfield 224	com/vent/az$a:bYo	I
    //   1382: invokevirtual 350	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1385: ldc 64
    //   1387: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1390: aload_3
    //   1391: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1394: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1397: invokevirtual 353	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1400: pop
    //   1401: aload 25
    //   1403: astore 21
    //   1405: iload 5
    //   1407: istore 6
    //   1409: aload 22
    //   1411: invokestatic 240	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1414: ifne +25 -> 1439
    //   1417: aload 25
    //   1419: astore 21
    //   1421: iload 5
    //   1423: istore 6
    //   1425: aload 27
    //   1427: getfield 265	com/vent/az$a:bYp	Lorg/json/JSONObject;
    //   1430: ldc_w 355
    //   1433: aload 22
    //   1435: invokevirtual 353	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1438: pop
    //   1439: iconst_1
    //   1440: istore 7
    //   1442: aload 25
    //   1444: invokestatic 359	com/vent/d/c:c	(Ljava/io/Closeable;)V
    //   1447: iload 7
    //   1449: ifne +725 -> 2174
    //   1452: aload_0
    //   1453: ldc_w 361
    //   1456: invokevirtual 198	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1459: ifeq +715 -> 2174
    //   1462: iload 10
    //   1464: iconst_1
    //   1465: if_icmpgt +709 -> 2174
    //   1468: ldc2_w 362
    //   1471: invokestatic 369	java/lang/Thread:sleep	(J)V
    //   1474: invokestatic 371	com/vent/az:Ee	()V
    //   1477: iload 10
    //   1479: istore 5
    //   1481: goto -1381 -> 100
    //   1484: aload 25
    //   1486: astore 21
    //   1488: iload 11
    //   1490: istore 6
    //   1492: new 131	java/lang/StringBuilder
    //   1495: dup
    //   1496: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   1499: aload 20
    //   1501: getfield 374	okhttp3/s:type	Ljava/lang/String;
    //   1504: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1507: ldc_w 376
    //   1510: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1513: aload 20
    //   1515: getfield 379	okhttp3/s:subtype	Ljava/lang/String;
    //   1518: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1521: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1524: astore_3
    //   1525: goto -1001 -> 524
    //   1528: aload 25
    //   1530: astore 21
    //   1532: iload 11
    //   1534: istore 6
    //   1536: aload 22
    //   1538: invokevirtual 383	okhttp3/z:bytes	()[B
    //   1541: astore 22
    //   1543: aload 25
    //   1545: astore 21
    //   1547: iload 11
    //   1549: istore 6
    //   1551: aload 22
    //   1553: arraylength
    //   1554: i2l
    //   1555: lstore 14
    //   1557: aload 20
    //   1559: ifnull +45 -> 1604
    //   1562: aload 25
    //   1564: astore 21
    //   1566: iload 11
    //   1568: istore 6
    //   1570: aload 20
    //   1572: getstatic 33	com/vent/az:UTF_8	Ljava/nio/charset/Charset;
    //   1575: invokevirtual 158	okhttp3/s:charset	(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    //   1578: astore 20
    //   1580: aload 25
    //   1582: astore 21
    //   1584: iload 11
    //   1586: istore 6
    //   1588: new 120	java/lang/String
    //   1591: dup
    //   1592: aload 22
    //   1594: aload 20
    //   1596: invokespecial 386	java/lang/String:<init>	([BLjava/nio/charset/Charset;)V
    //   1599: astore 20
    //   1601: goto -1051 -> 550
    //   1604: aload 25
    //   1606: astore 21
    //   1608: iload 11
    //   1610: istore 6
    //   1612: getstatic 33	com/vent/az:UTF_8	Ljava/nio/charset/Charset;
    //   1615: astore 20
    //   1617: goto -37 -> 1580
    //   1620: aload 25
    //   1622: astore 21
    //   1624: iload 11
    //   1626: istore 6
    //   1628: aload 27
    //   1630: getfield 265	com/vent/az$a:bYp	Lorg/json/JSONObject;
    //   1633: ifnonnull -840 -> 793
    //   1636: aload 25
    //   1638: astore 21
    //   1640: iload 11
    //   1642: istore 6
    //   1644: aload 27
    //   1646: new 150	org/json/JSONObject
    //   1649: dup
    //   1650: invokespecial 201	org/json/JSONObject:<init>	()V
    //   1653: putfield 265	com/vent/az$a:bYp	Lorg/json/JSONObject;
    //   1656: goto -863 -> 793
    //   1659: astore 20
    //   1661: iload 6
    //   1663: iconst_1
    //   1664: if_icmpeq +50 -> 1714
    //   1667: iload 6
    //   1669: iconst_m1
    //   1670: ixor
    //   1671: iconst_1
    //   1672: iand
    //   1673: iconst_3
    //   1674: iand
    //   1675: new 131	java/lang/StringBuilder
    //   1678: dup
    //   1679: ldc_w 273
    //   1682: invokespecial 274	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1685: aload 24
    //   1687: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1690: ldc 66
    //   1692: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1695: aload_0
    //   1696: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1699: ldc 66
    //   1701: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1704: aload_1
    //   1705: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1708: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1711: invokestatic 278	com/vent/d/c:h	(ILjava/lang/String;)V
    //   1714: aload 27
    //   1716: invokestatic 148	android/os/SystemClock:elapsedRealtime	()J
    //   1719: lload 16
    //   1721: lsub
    //   1722: putfield 271	com/vent/az$a:cgU	J
    //   1725: new 131	java/lang/StringBuilder
    //   1728: dup
    //   1729: ldc_w 273
    //   1732: invokespecial 274	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1735: aload 24
    //   1737: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1740: ldc 66
    //   1742: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1745: aload 27
    //   1747: getfield 271	com/vent/az$a:cgU	J
    //   1750: invokevirtual 326	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1753: ldc_w 388
    //   1756: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1759: astore 22
    //   1761: aload 20
    //   1763: instanceof 390
    //   1766: ifeq +395 -> 2161
    //   1769: ldc_w 392
    //   1772: astore_3
    //   1773: iconst_1
    //   1774: aload 22
    //   1776: aload_3
    //   1777: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1780: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1783: invokestatic 278	com/vent/d/c:h	(ILjava/lang/String;)V
    //   1786: aload 27
    //   1788: iconst_0
    //   1789: putfield 224	com/vent/az$a:bYo	I
    //   1792: aload 27
    //   1794: aload 20
    //   1796: invokestatic 395	com/vent/d/c:h	(Ljava/lang/Exception;)Lorg/json/JSONObject;
    //   1799: putfield 265	com/vent/az$a:bYp	Lorg/json/JSONObject;
    //   1802: aload 21
    //   1804: astore 25
    //   1806: goto -364 -> 1442
    //   1809: iconst_0
    //   1810: istore 5
    //   1812: goto -850 -> 962
    //   1815: iload 19
    //   1817: ifeq +10 -> 1827
    //   1820: bipush 80
    //   1822: istore 4
    //   1824: goto -827 -> 997
    //   1827: bipush 78
    //   1829: istore 4
    //   1831: goto -834 -> 997
    //   1834: iload 8
    //   1836: ifeq +43 -> 1879
    //   1839: aload 25
    //   1841: astore 21
    //   1843: iload 11
    //   1845: istore 6
    //   1847: aload 20
    //   1849: iconst_0
    //   1850: sipush 1024
    //   1853: aload 20
    //   1855: invokevirtual 398	java/lang/String:length	()I
    //   1858: invokestatic 402	java/lang/Math:min	(II)I
    //   1861: invokevirtual 406	java/lang/String:substring	(II)Ljava/lang/String;
    //   1864: getstatic 52	com/vent/az:cgS	Ljava/util/Map;
    //   1867: invokestatic 411	com/vent/d/e:a	(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    //   1870: astore 20
    //   1872: aload 26
    //   1874: astore 22
    //   1876: goto -852 -> 1024
    //   1879: aload 25
    //   1881: astore 21
    //   1883: iload 11
    //   1885: istore 6
    //   1887: aload 20
    //   1889: ldc_w 413
    //   1892: invokevirtual 417	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   1895: istore 5
    //   1897: iload 5
    //   1899: iflt +85 -> 1984
    //   1902: aload 25
    //   1904: astore 21
    //   1906: iload 11
    //   1908: istore 6
    //   1910: aload 20
    //   1912: ldc_w 419
    //   1915: iload 5
    //   1917: invokevirtual 422	java/lang/String:indexOf	(Ljava/lang/String;I)I
    //   1920: istore 12
    //   1922: iload 12
    //   1924: iflt +60 -> 1984
    //   1927: aload 25
    //   1929: astore 21
    //   1931: iload 11
    //   1933: istore 6
    //   1935: aload 20
    //   1937: iload 5
    //   1939: iload 12
    //   1941: bipush 8
    //   1943: iadd
    //   1944: invokevirtual 406	java/lang/String:substring	(II)Ljava/lang/String;
    //   1947: astore 22
    //   1949: aload 25
    //   1951: astore 21
    //   1953: iload 11
    //   1955: istore 6
    //   1957: aload 22
    //   1959: invokestatic 240	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1962: ifne +22 -> 1984
    //   1965: aload 22
    //   1967: astore 20
    //   1969: aload 22
    //   1971: astore 21
    //   1973: aload 20
    //   1975: astore 22
    //   1977: aload 21
    //   1979: astore 20
    //   1981: goto -957 -> 1024
    //   1984: aload 25
    //   1986: astore 21
    //   1988: iload 11
    //   1990: istore 6
    //   1992: aload 20
    //   1994: iconst_0
    //   1995: sipush 1024
    //   1998: aload 20
    //   2000: invokevirtual 398	java/lang/String:length	()I
    //   2003: invokestatic 402	java/lang/Math:min	(II)I
    //   2006: invokevirtual 406	java/lang/String:substring	(II)Ljava/lang/String;
    //   2009: getstatic 72	com/vent/az:cgT	Ljava/util/Map;
    //   2012: invokestatic 411	com/vent/d/e:a	(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    //   2015: astore 20
    //   2017: aload 26
    //   2019: astore 22
    //   2021: goto -997 -> 1024
    //   2024: aload 25
    //   2026: astore 21
    //   2028: iload 11
    //   2030: istore 6
    //   2032: aload_3
    //   2033: ldc 56
    //   2035: invokevirtual 198	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2038: ifeq +166 -> 2204
    //   2041: iconst_1
    //   2042: istore 5
    //   2044: goto +160 -> 2204
    //   2047: aload 25
    //   2049: astore 21
    //   2051: iload 11
    //   2053: istore 6
    //   2055: aload_3
    //   2056: ldc -14
    //   2058: invokevirtual 198	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2061: ifeq +143 -> 2204
    //   2064: iconst_2
    //   2065: istore 5
    //   2067: goto +137 -> 2204
    //   2070: aload 25
    //   2072: astore 21
    //   2074: iload 11
    //   2076: istore 6
    //   2078: aload_3
    //   2079: ldc_w 424
    //   2082: invokevirtual 198	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2085: ifeq +119 -> 2204
    //   2088: iconst_3
    //   2089: istore 5
    //   2091: goto +113 -> 2204
    //   2094: aload 25
    //   2096: astore 21
    //   2098: iload 11
    //   2100: istore 6
    //   2102: aload_3
    //   2103: ldc -12
    //   2105: invokevirtual 198	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2108: ifeq +96 -> 2204
    //   2111: iconst_4
    //   2112: istore 5
    //   2114: goto +90 -> 2204
    //   2117: aload 25
    //   2119: astore 21
    //   2121: iload 5
    //   2123: istore 6
    //   2125: aload 27
    //   2127: getfield 265	com/vent/az$a:bYp	Lorg/json/JSONObject;
    //   2130: ldc_w 345
    //   2133: new 131	java/lang/StringBuilder
    //   2136: dup
    //   2137: ldc_w 347
    //   2140: invokespecial 274	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2143: aload 27
    //   2145: getfield 224	com/vent/az$a:bYo	I
    //   2148: invokevirtual 350	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   2151: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2154: invokevirtual 353	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   2157: pop
    //   2158: goto -757 -> 1401
    //   2161: aload 20
    //   2163: invokevirtual 427	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   2166: astore_3
    //   2167: goto -394 -> 1773
    //   2170: astore_3
    //   2171: goto -697 -> 1474
    //   2174: aload 27
    //   2176: areturn
    //   2177: astore 21
    //   2179: goto -1258 -> 921
    //   2182: iconst_1
    //   2183: istore 8
    //   2185: goto -1540 -> 645
    //   2188: iload 8
    //   2190: ifne +55 -> 2245
    //   2193: iload 18
    //   2195: ifne +50 -> 2245
    //   2198: iconst_1
    //   2199: istore 9
    //   2201: goto -1477 -> 724
    //   2204: iload 5
    //   2206: tableswitch	default:+30->2236, 1:+45->2251, 2:+52->2258, 3:+59->2265, 4:+66->2272
    //   2236: goto -1156 -> 1080
    //   2239: iconst_0
    //   2240: istore 8
    //   2242: goto -1597 -> 645
    //   2245: iconst_0
    //   2246: istore 9
    //   2248: goto -1524 -> 724
    //   2251: ldc_w 429
    //   2254: astore_3
    //   2255: goto -1175 -> 1080
    //   2258: ldc_w 431
    //   2261: astore_3
    //   2262: goto -1182 -> 1080
    //   2265: ldc_w 433
    //   2268: astore_3
    //   2269: goto -1189 -> 1080
    //   2272: ldc_w 435
    //   2275: astore_3
    //   2276: goto -1196 -> 1080
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	2279	0	paramString1	String
    //   0	2279	1	paramString2	String
    //   0	2279	2	paramArrayOfString	String[][]
    //   0	2279	3	paramJSONObject	JSONObject
    //   995	835	4	c	char
    //   8	2197	5	i	int
    //   167	1957	6	j	int
    //   95	1353	7	k	int
    //   342	1899	8	m	int
    //   822	1425	9	n	int
    //   104	1374	10	i1	int
    //   146	1953	11	i2	int
    //   149	1795	12	i3	int
    //   84	23	13	i4	int
    //   545	1011	14	l1	long
    //   154	1566	16	l2	long
    //   563	1631	18	bool1	boolean
    //   986	830	19	bool2	boolean
    //   203	1413	20	localObject1	Object
    //   1659	195	20	localException1	Exception
    //   1870	292	20	localObject2	Object
    //   163	1957	21	localObject3	Object
    //   2177	1	21	localException2	Exception
    //   143	1877	22	localObject4	Object
    //   1	438	23	localJSONObject	JSONObject
    //   113	1623	24	localObject5	Object
    //   172	1946	25	localObject6	Object
    //   224	1794	26	localCharset	Charset
    //   74	2101	27	locala	a
    //   187	107	28	str	String
    // Exception table:
    //   from	to	target	type
    //   79	94	443	finally
    //   444	447	443	finally
    //   169	174	1659	java/lang/Exception
    //   182	189	1659	java/lang/Exception
    //   197	201	1659	java/lang/Exception
    //   218	226	1659	java/lang/Exception
    //   246	250	1659	java/lang/Exception
    //   258	283	1659	java/lang/Exception
    //   291	303	1659	java/lang/Exception
    //   311	328	1659	java/lang/Exception
    //   340	344	1659	java/lang/Exception
    //   380	392	1659	java/lang/Exception
    //   462	480	1659	java/lang/Exception
    //   488	498	1659	java/lang/Exception
    //   506	516	1659	java/lang/Exception
    //   532	539	1659	java/lang/Exception
    //   558	565	1659	java/lang/Exception
    //   578	587	1659	java/lang/Exception
    //   595	604	1659	java/lang/Exception
    //   612	623	1659	java/lang/Exception
    //   631	642	1659	java/lang/Exception
    //   653	664	1659	java/lang/Exception
    //   672	683	1659	java/lang/Exception
    //   691	702	1659	java/lang/Exception
    //   710	721	1659	java/lang/Exception
    //   732	748	1659	java/lang/Exception
    //   761	775	1659	java/lang/Exception
    //   783	793	1659	java/lang/Exception
    //   801	812	1659	java/lang/Exception
    //   835	875	1659	java/lang/Exception
    //   929	937	1659	java/lang/Exception
    //   945	959	1659	java/lang/Exception
    //   970	988	1659	java/lang/Exception
    //   1010	1020	1659	java/lang/Exception
    //   1035	1080	1659	java/lang/Exception
    //   1088	1252	1659	java/lang/Exception
    //   1269	1280	1659	java/lang/Exception
    //   1288	1299	1659	java/lang/Exception
    //   1307	1316	1659	java/lang/Exception
    //   1324	1336	1659	java/lang/Exception
    //   1344	1351	1659	java/lang/Exception
    //   1359	1401	1659	java/lang/Exception
    //   1409	1417	1659	java/lang/Exception
    //   1425	1439	1659	java/lang/Exception
    //   1492	1525	1659	java/lang/Exception
    //   1536	1543	1659	java/lang/Exception
    //   1551	1557	1659	java/lang/Exception
    //   1570	1580	1659	java/lang/Exception
    //   1588	1601	1659	java/lang/Exception
    //   1612	1617	1659	java/lang/Exception
    //   1628	1636	1659	java/lang/Exception
    //   1644	1656	1659	java/lang/Exception
    //   1847	1872	1659	java/lang/Exception
    //   1887	1897	1659	java/lang/Exception
    //   1910	1922	1659	java/lang/Exception
    //   1935	1949	1659	java/lang/Exception
    //   1957	1965	1659	java/lang/Exception
    //   1992	2017	1659	java/lang/Exception
    //   2032	2041	1659	java/lang/Exception
    //   2055	2064	1659	java/lang/Exception
    //   2078	2088	1659	java/lang/Exception
    //   2102	2111	1659	java/lang/Exception
    //   2125	2158	1659	java/lang/Exception
    //   1468	1474	2170	java/lang/InterruptedException
    //   881	921	2177	java/lang/Exception
  }
  
  static void bu(Context paramContext)
  {
    t.a locala;
    if (cgQ == null)
    {
      locala = new t.a();
      locala.cZb = new okhttp3.c(new File(paramContext.getCacheDir(), "http"));
      locala.cWc = null;
      locala.connectTimeout = okhttp3.internal.c.a("timeout", TimeUnit.MILLISECONDS);
      locala.readTimeout = okhttp3.internal.c.a("timeout", TimeUnit.MILLISECONDS);
      locala.writeTimeout = okhttp3.internal.c.a("timeout", TimeUnit.MILLISECONDS);
      if (Build.VERSION.SDK_INT != 19) {
        break label131;
      }
      locala.E(Collections.singletonList(u.cZf));
    }
    for (;;)
    {
      bb.Es();
      locala.connectionSpecs = okhttp3.internal.c.immutableList(Collections.singletonList(i.cYJ));
      cgQ = new t(locala);
      return;
      label131:
      locala.E(Arrays.asList(new u[] { u.cZh, u.cZf }));
    }
  }
  
  public static final class a
  {
    public int bYo;
    public JSONObject bYp;
    public long cgU;
    public long cgV;
    public long cgW;
    public long cgX;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/az.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */