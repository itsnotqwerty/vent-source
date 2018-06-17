package com.layer.sdk.internal.telemetry;

import android.os.Bundle;
import com.b.a.w;
import com.firebase.jobdispatcher.y;
import com.layer.sdk.internal.lsdkk.k;

public class TelemetryUploadService
  extends y
{
  public static final String JOB_TAG_ONE_SHOT = "SDK_UPLOAD_ONE_SHOT";
  public static final String JOB_TAG_SCHEDULED_UPLOAD = "SDK_UPLOAD";
  private static final w JSON = w.dK("application/json; charset=utf-8");
  public static final String KEY_EXTRA_ENDPOINT = "KEY_EXTRA_ENDPOINT";
  private static final int ONE_WEEK_IN_MILLIS = 604800000;
  public static final String TAG = "LayerSDK:Tele";
  
  /* Error */
  private static boolean uploadTelemetryDataAndPurgeOutdatedRecords(android.content.Context paramContext, g paramg, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +849 -> 850
    //   4: aload_1
    //   5: invokevirtual 53	com/layer/sdk/internal/telemetry/g:wJ	()I
    //   8: ifle +842 -> 850
    //   11: new 55	com/b/a/x
    //   14: dup
    //   15: invokespecial 56	com/b/a/x:<init>	()V
    //   18: astore 6
    //   20: aload 6
    //   22: ldc2_w 57
    //   25: getstatic 64	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   28: invokevirtual 67	com/b/a/x:a	(JLjava/util/concurrent/TimeUnit;)V
    //   31: aload 6
    //   33: iconst_1
    //   34: anewarray 69	com/b/a/y
    //   37: dup
    //   38: iconst_0
    //   39: getstatic 73	com/b/a/y:bMk	Lcom/b/a/y;
    //   42: aastore
    //   43: invokestatic 79	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   46: invokevirtual 83	com/b/a/x:x	(Ljava/util/List;)Lcom/b/a/x;
    //   49: pop
    //   50: new 85	com/google/a/g
    //   53: dup
    //   54: invokespecial 86	com/google/a/g:<init>	()V
    //   57: astore_3
    //   58: aload_3
    //   59: new 88	com/layer/sdk/internal/telemetry/a
    //   62: dup
    //   63: invokespecial 89	com/layer/sdk/internal/telemetry/a:<init>	()V
    //   66: putfield 93	com/google/a/g:bgP	Lcom/google/a/e;
    //   69: aload_3
    //   70: ldc 95
    //   72: putfield 98	com/google/a/g:bgG	Ljava/lang/String;
    //   75: aload_3
    //   76: iconst_0
    //   77: putfield 102	com/google/a/g:bgR	Z
    //   80: aload_3
    //   81: iconst_1
    //   82: putfield 105	com/google/a/g:bgz	Z
    //   85: aload_3
    //   86: ldc 107
    //   88: new 9	com/layer/sdk/internal/telemetry/TelemetryUploadService$b
    //   91: dup
    //   92: invokespecial 108	com/layer/sdk/internal/telemetry/TelemetryUploadService$b:<init>	()V
    //   95: invokevirtual 111	com/google/a/g:a	(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/a/g;
    //   98: ldc 113
    //   100: new 6	com/layer/sdk/internal/telemetry/TelemetryUploadService$a
    //   103: dup
    //   104: invokespecial 114	com/layer/sdk/internal/telemetry/TelemetryUploadService$a:<init>	()V
    //   107: invokevirtual 111	com/google/a/g:a	(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/a/g;
    //   110: invokevirtual 118	com/google/a/g:vc	()Lcom/google/a/f;
    //   113: aload_1
    //   114: invokevirtual 124	com/google/a/f:ab	(Ljava/lang/Object;)Ljava/lang/String;
    //   117: astore 7
    //   119: iconst_2
    //   120: invokestatic 129	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   123: ifeq +10 -> 133
    //   126: ldc 27
    //   128: aload 7
    //   130: invokestatic 132	com/layer/sdk/internal/lsdkk/k:b	(Ljava/lang/Object;Ljava/lang/String;)V
    //   133: new 134	com/b/a/aa$a
    //   136: dup
    //   137: invokespecial 135	com/b/a/aa$a:<init>	()V
    //   140: aload_2
    //   141: invokevirtual 138	com/b/a/aa$a:a	(Ljava/lang/String;)Lcom/b/a/aa$a;
    //   144: astore 8
    //   146: getstatic 39	com/layer/sdk/internal/telemetry/TelemetryUploadService:JSON	Lcom/b/a/w;
    //   149: astore 5
    //   151: getstatic 144	com/b/a/a/i:bII	Ljava/nio/charset/Charset;
    //   154: astore_2
    //   155: aload 5
    //   157: astore 4
    //   159: aload 5
    //   161: ifnull +59 -> 220
    //   164: aload 5
    //   166: getfield 147	com/b/a/w:f	Ljava/lang/String;
    //   169: ifnull +166 -> 335
    //   172: aload 5
    //   174: getfield 147	com/b/a/w:f	Ljava/lang/String;
    //   177: invokestatic 153	java/nio/charset/Charset:forName	(Ljava/lang/String;)Ljava/nio/charset/Charset;
    //   180: astore_3
    //   181: aload 5
    //   183: astore 4
    //   185: aload_3
    //   186: astore_2
    //   187: aload_3
    //   188: ifnonnull +32 -> 220
    //   191: getstatic 144	com/b/a/a/i:bII	Ljava/nio/charset/Charset;
    //   194: astore_2
    //   195: new 155	java/lang/StringBuilder
    //   198: dup
    //   199: invokespecial 156	java/lang/StringBuilder:<init>	()V
    //   202: aload 5
    //   204: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   207: ldc -94
    //   209: invokevirtual 165	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: invokestatic 37	com/b/a/w:dK	(Ljava/lang/String;)Lcom/b/a/w;
    //   218: astore 4
    //   220: aload 6
    //   222: aload 8
    //   224: ldc -85
    //   226: aload 4
    //   228: aload 7
    //   230: aload_2
    //   231: invokevirtual 177	java/lang/String:getBytes	(Ljava/nio/charset/Charset;)[B
    //   234: invokestatic 182	com/b/a/ab:a	(Lcom/b/a/w;[B)Lcom/b/a/ab;
    //   237: invokevirtual 185	com/b/a/aa$a:a	(Ljava/lang/String;Lcom/b/a/ab;)Lcom/b/a/aa$a;
    //   240: invokevirtual 189	com/b/a/aa$a:An	()Lcom/b/a/aa;
    //   243: invokevirtual 193	com/b/a/x:e	(Lcom/b/a/aa;)Lcom/b/a/h;
    //   246: invokevirtual 199	com/b/a/h:xb	()Lcom/b/a/ac;
    //   249: astore_2
    //   250: aload_2
    //   251: astore_3
    //   252: aload_2
    //   253: getfield 205	com/b/a/ac:bMz	Lcom/b/a/b;
    //   256: invokevirtual 209	com/b/a/b:f	()Ljava/lang/String;
    //   259: astore 4
    //   261: aload_1
    //   262: invokevirtual 213	com/layer/sdk/internal/telemetry/g:wI	()Lcom/layer/sdk/internal/telemetry/f;
    //   265: astore_3
    //   266: aload_2
    //   267: ifnull +73 -> 340
    //   270: aload_2
    //   271: invokevirtual 217	com/b/a/ac:d	()Z
    //   274: ifeq +66 -> 340
    //   277: aload_1
    //   278: invokevirtual 213	com/layer/sdk/internal/telemetry/g:wI	()Lcom/layer/sdk/internal/telemetry/f;
    //   281: astore_1
    //   282: iconst_2
    //   283: invokestatic 129	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   286: ifeq +33 -> 319
    //   289: ldc 27
    //   291: new 155	java/lang/StringBuilder
    //   294: dup
    //   295: ldc -37
    //   297: invokespecial 222	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   300: aload_1
    //   301: getfield 228	com/layer/sdk/internal/telemetry/f:btG	Lcom/layer/sdk/internal/telemetry/f$a;
    //   304: getfield 232	com/layer/sdk/internal/telemetry/f$a:btM	Ljava/util/Calendar;
    //   307: invokevirtual 238	java/util/Calendar:getTimeInMillis	()J
    //   310: invokevirtual 241	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   313: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   316: invokestatic 243	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   319: aload_0
    //   320: aload_1
    //   321: getfield 228	com/layer/sdk/internal/telemetry/f:btG	Lcom/layer/sdk/internal/telemetry/f$a;
    //   324: getfield 232	com/layer/sdk/internal/telemetry/f$a:btM	Ljava/util/Calendar;
    //   327: invokevirtual 238	java/util/Calendar:getTimeInMillis	()J
    //   330: invokestatic 248	com/layer/sdk/internal/telemetry/TelemetryManager:b	(Landroid/content/Context;J)V
    //   333: iconst_1
    //   334: ireturn
    //   335: aconst_null
    //   336: astore_3
    //   337: goto -156 -> 181
    //   340: aload_2
    //   341: ifnull +34 -> 375
    //   344: aload_2
    //   345: getfield 251	com/b/a/ac:c	I
    //   348: sipush 422
    //   351: if_icmpne +24 -> 375
    //   354: bipush 6
    //   356: invokestatic 129	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   359: ifeq +14 -> 373
    //   362: ldc 27
    //   364: ldc -3
    //   366: invokestatic 243	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   369: aload_0
    //   370: invokestatic 257	com/layer/sdk/internal/telemetry/TelemetryManager:ax	(Landroid/content/Context;)V
    //   373: iconst_0
    //   374: ireturn
    //   375: bipush 6
    //   377: invokestatic 129	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   380: ifeq +51 -> 431
    //   383: ldc 27
    //   385: ldc_w 259
    //   388: invokestatic 261	com/layer/sdk/internal/lsdkk/k:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   391: aload_2
    //   392: ifnull +39 -> 431
    //   395: ldc 27
    //   397: new 155	java/lang/StringBuilder
    //   400: dup
    //   401: ldc_w 263
    //   404: invokespecial 222	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   407: aload_2
    //   408: getfield 251	com/b/a/ac:c	I
    //   411: invokevirtual 266	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   414: ldc_w 268
    //   417: invokevirtual 165	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   420: aload 4
    //   422: invokevirtual 165	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   425: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   428: invokestatic 261	com/layer/sdk/internal/lsdkk/k:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   431: aload_0
    //   432: aload_3
    //   433: getfield 228	com/layer/sdk/internal/telemetry/f:btG	Lcom/layer/sdk/internal/telemetry/f$a;
    //   436: getfield 232	com/layer/sdk/internal/telemetry/f$a:btM	Ljava/util/Calendar;
    //   439: invokevirtual 238	java/util/Calendar:getTimeInMillis	()J
    //   442: ldc2_w 269
    //   445: lsub
    //   446: invokestatic 248	com/layer/sdk/internal/telemetry/TelemetryManager:b	(Landroid/content/Context;J)V
    //   449: iconst_0
    //   450: ireturn
    //   451: astore 4
    //   453: aconst_null
    //   454: astore_2
    //   455: aload_2
    //   456: astore_3
    //   457: bipush 6
    //   459: invokestatic 129	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   462: ifeq +17 -> 479
    //   465: aload_2
    //   466: astore_3
    //   467: ldc 27
    //   469: aload 4
    //   471: invokevirtual 273	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   474: aload 4
    //   476: invokestatic 276	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   479: aload_1
    //   480: invokevirtual 213	com/layer/sdk/internal/telemetry/g:wI	()Lcom/layer/sdk/internal/telemetry/f;
    //   483: astore_3
    //   484: aload_2
    //   485: ifnull +68 -> 553
    //   488: aload_2
    //   489: invokevirtual 217	com/b/a/ac:d	()Z
    //   492: ifeq +61 -> 553
    //   495: aload_1
    //   496: invokevirtual 213	com/layer/sdk/internal/telemetry/g:wI	()Lcom/layer/sdk/internal/telemetry/f;
    //   499: astore_1
    //   500: iconst_2
    //   501: invokestatic 129	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   504: ifeq +33 -> 537
    //   507: ldc 27
    //   509: new 155	java/lang/StringBuilder
    //   512: dup
    //   513: ldc -37
    //   515: invokespecial 222	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   518: aload_1
    //   519: getfield 228	com/layer/sdk/internal/telemetry/f:btG	Lcom/layer/sdk/internal/telemetry/f$a;
    //   522: getfield 232	com/layer/sdk/internal/telemetry/f$a:btM	Ljava/util/Calendar;
    //   525: invokevirtual 238	java/util/Calendar:getTimeInMillis	()J
    //   528: invokevirtual 241	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   531: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   534: invokestatic 243	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   537: aload_0
    //   538: aload_1
    //   539: getfield 228	com/layer/sdk/internal/telemetry/f:btG	Lcom/layer/sdk/internal/telemetry/f$a;
    //   542: getfield 232	com/layer/sdk/internal/telemetry/f$a:btM	Ljava/util/Calendar;
    //   545: invokevirtual 238	java/util/Calendar:getTimeInMillis	()J
    //   548: invokestatic 248	com/layer/sdk/internal/telemetry/TelemetryManager:b	(Landroid/content/Context;J)V
    //   551: iconst_1
    //   552: ireturn
    //   553: aload_2
    //   554: ifnull +34 -> 588
    //   557: aload_2
    //   558: getfield 251	com/b/a/ac:c	I
    //   561: sipush 422
    //   564: if_icmpne +24 -> 588
    //   567: bipush 6
    //   569: invokestatic 129	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   572: ifeq +14 -> 586
    //   575: ldc 27
    //   577: ldc -3
    //   579: invokestatic 243	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   582: aload_0
    //   583: invokestatic 257	com/layer/sdk/internal/telemetry/TelemetryManager:ax	(Landroid/content/Context;)V
    //   586: iconst_0
    //   587: ireturn
    //   588: bipush 6
    //   590: invokestatic 129	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   593: ifeq +50 -> 643
    //   596: ldc 27
    //   598: ldc_w 259
    //   601: invokestatic 261	com/layer/sdk/internal/lsdkk/k:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   604: aload_2
    //   605: ifnull +38 -> 643
    //   608: ldc 27
    //   610: new 155	java/lang/StringBuilder
    //   613: dup
    //   614: ldc_w 263
    //   617: invokespecial 222	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   620: aload_2
    //   621: getfield 251	com/b/a/ac:c	I
    //   624: invokevirtual 266	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   627: ldc_w 268
    //   630: invokevirtual 165	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   633: aconst_null
    //   634: invokevirtual 165	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   637: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   640: invokestatic 261	com/layer/sdk/internal/lsdkk/k:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   643: aload_0
    //   644: aload_3
    //   645: getfield 228	com/layer/sdk/internal/telemetry/f:btG	Lcom/layer/sdk/internal/telemetry/f$a;
    //   648: getfield 232	com/layer/sdk/internal/telemetry/f$a:btM	Ljava/util/Calendar;
    //   651: invokevirtual 238	java/util/Calendar:getTimeInMillis	()J
    //   654: ldc2_w 269
    //   657: lsub
    //   658: invokestatic 248	com/layer/sdk/internal/telemetry/TelemetryManager:b	(Landroid/content/Context;J)V
    //   661: iconst_0
    //   662: ireturn
    //   663: astore_2
    //   664: aconst_null
    //   665: astore_3
    //   666: aload_1
    //   667: invokevirtual 213	com/layer/sdk/internal/telemetry/g:wI	()Lcom/layer/sdk/internal/telemetry/f;
    //   670: astore_2
    //   671: aload_3
    //   672: ifnull +68 -> 740
    //   675: aload_3
    //   676: invokevirtual 217	com/b/a/ac:d	()Z
    //   679: ifeq +61 -> 740
    //   682: aload_1
    //   683: invokevirtual 213	com/layer/sdk/internal/telemetry/g:wI	()Lcom/layer/sdk/internal/telemetry/f;
    //   686: astore_1
    //   687: iconst_2
    //   688: invokestatic 129	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   691: ifeq +33 -> 724
    //   694: ldc 27
    //   696: new 155	java/lang/StringBuilder
    //   699: dup
    //   700: ldc -37
    //   702: invokespecial 222	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   705: aload_1
    //   706: getfield 228	com/layer/sdk/internal/telemetry/f:btG	Lcom/layer/sdk/internal/telemetry/f$a;
    //   709: getfield 232	com/layer/sdk/internal/telemetry/f$a:btM	Ljava/util/Calendar;
    //   712: invokevirtual 238	java/util/Calendar:getTimeInMillis	()J
    //   715: invokevirtual 241	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   718: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   721: invokestatic 243	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   724: aload_0
    //   725: aload_1
    //   726: getfield 228	com/layer/sdk/internal/telemetry/f:btG	Lcom/layer/sdk/internal/telemetry/f$a;
    //   729: getfield 232	com/layer/sdk/internal/telemetry/f$a:btM	Ljava/util/Calendar;
    //   732: invokevirtual 238	java/util/Calendar:getTimeInMillis	()J
    //   735: invokestatic 248	com/layer/sdk/internal/telemetry/TelemetryManager:b	(Landroid/content/Context;J)V
    //   738: iconst_1
    //   739: ireturn
    //   740: aload_3
    //   741: ifnull +34 -> 775
    //   744: aload_3
    //   745: getfield 251	com/b/a/ac:c	I
    //   748: sipush 422
    //   751: if_icmpne +24 -> 775
    //   754: bipush 6
    //   756: invokestatic 129	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   759: ifeq +14 -> 773
    //   762: ldc 27
    //   764: ldc -3
    //   766: invokestatic 243	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   769: aload_0
    //   770: invokestatic 257	com/layer/sdk/internal/telemetry/TelemetryManager:ax	(Landroid/content/Context;)V
    //   773: iconst_0
    //   774: ireturn
    //   775: bipush 6
    //   777: invokestatic 129	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   780: ifeq +50 -> 830
    //   783: ldc 27
    //   785: ldc_w 259
    //   788: invokestatic 261	com/layer/sdk/internal/lsdkk/k:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   791: aload_3
    //   792: ifnull +38 -> 830
    //   795: ldc 27
    //   797: new 155	java/lang/StringBuilder
    //   800: dup
    //   801: ldc_w 263
    //   804: invokespecial 222	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   807: aload_3
    //   808: getfield 251	com/b/a/ac:c	I
    //   811: invokevirtual 266	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   814: ldc_w 268
    //   817: invokevirtual 165	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   820: aconst_null
    //   821: invokevirtual 165	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   824: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   827: invokestatic 261	com/layer/sdk/internal/lsdkk/k:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   830: aload_0
    //   831: aload_2
    //   832: getfield 228	com/layer/sdk/internal/telemetry/f:btG	Lcom/layer/sdk/internal/telemetry/f$a;
    //   835: getfield 232	com/layer/sdk/internal/telemetry/f$a:btM	Ljava/util/Calendar;
    //   838: invokevirtual 238	java/util/Calendar:getTimeInMillis	()J
    //   841: ldc2_w 269
    //   844: lsub
    //   845: invokestatic 248	com/layer/sdk/internal/telemetry/TelemetryManager:b	(Landroid/content/Context;J)V
    //   848: iconst_0
    //   849: ireturn
    //   850: iconst_2
    //   851: invokestatic 129	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   854: ifeq +11 -> 865
    //   857: ldc 27
    //   859: ldc_w 278
    //   862: invokestatic 243	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   865: iconst_0
    //   866: ireturn
    //   867: astore_2
    //   868: goto -202 -> 666
    //   871: astore 4
    //   873: goto -418 -> 455
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	876	0	paramContext	android.content.Context
    //   0	876	1	paramg	g
    //   0	876	2	paramString	String
    //   57	751	3	localObject1	Object
    //   157	264	4	localObject2	Object
    //   451	24	4	localThrowable1	Throwable
    //   871	1	4	localThrowable2	Throwable
    //   149	54	5	localw	w
    //   18	203	6	localx	com.b.a.x
    //   117	112	7	str	String
    //   144	79	8	locala	com.b.a.aa.a
    // Exception table:
    //   from	to	target	type
    //   133	155	451	java/lang/Throwable
    //   164	181	451	java/lang/Throwable
    //   191	220	451	java/lang/Throwable
    //   220	250	451	java/lang/Throwable
    //   133	155	663	finally
    //   164	181	663	finally
    //   191	220	663	finally
    //   220	250	663	finally
    //   252	261	867	finally
    //   457	465	867	finally
    //   467	479	867	finally
    //   252	261	871	java/lang/Throwable
  }
  
  public int onRunJob(com.firebase.jobdispatcher.r paramr)
  {
    String str = paramr.getTag();
    if (k.a(2)) {
      k.a("LayerSDK:Tele", "Upload task started");
    }
    if ((paramr.getExtras() != null) && (paramr.getExtras().containsKey("KEY_EXTRA_ENDPOINT")))
    {
      paramr = paramr.getExtras().getString("KEY_EXTRA_ENDPOINT");
      localg = TelemetryManager.aw(getApplicationContext());
      if (localg != null) {}
    }
    while (!k.a(6))
    {
      boolean bool;
      do
      {
        g localg;
        return 2;
        bool = uploadTelemetryDataAndPurgeOutdatedRecords(getApplicationContext(), localg, paramr);
        if (!str.equals("SDK_UPLOAD_ONE_SHOT")) {
          break;
        }
      } while (!bool);
      return 0;
      if (bool) {
        return 0;
      }
      return 1;
    }
    k.e("LayerSDK:Tele", "Upload failing due to nonexistent endpoint. Not retrying.");
    return 2;
  }
  
  static final class a
    implements com.google.a.r<d>
  {}
  
  static final class b
    implements com.google.a.r<f.a>
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/telemetry/TelemetryUploadService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */