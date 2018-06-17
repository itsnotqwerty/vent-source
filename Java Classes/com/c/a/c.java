package com.c.a;

import android.graphics.Bitmap;
import android.os.Handler;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;

final class c
  implements Runnable
{
  private static final Object bMS = new Object();
  private static final ThreadLocal<StringBuilder> bMT = new ThreadLocal() {};
  private static final AtomicInteger bMU = new AtomicInteger();
  private static final y bMV = new y()
  {
    public final y.a a(w paramAnonymousw, int paramAnonymousInt)
      throws IOException
    {
      throw new IllegalStateException("Unrecognized type of request: " + paramAnonymousw);
    }
    
    public final boolean a(w paramAnonymousw)
    {
      return true;
    }
  };
  Exception awX;
  final t bMF;
  final int bMJ;
  int bMK;
  a bMP;
  final int bMW = bMU.incrementAndGet();
  final i bMX;
  final d bMY;
  final aa bMZ;
  final w bNa;
  final y bNb;
  List<a> bNc;
  Bitmap bNd;
  Future<?> bNe;
  t.d bNf;
  int bNg;
  int bNh;
  int bNi;
  final String key;
  
  private c(t paramt, i parami, d paramd, aa paramaa, a parama, y paramy)
  {
    this.bMF = paramt;
    this.bMX = parami;
    this.bMY = paramd;
    this.bMZ = paramaa;
    this.bMP = parama;
    this.key = parama.key;
    this.bNa = parama.bMG;
    this.bNi = parama.bMG.bNi;
    this.bMJ = parama.bMJ;
    this.bMK = parama.bMK;
    this.bNb = paramy;
    this.bNh = paramy.getRetryCount();
  }
  
  /* Error */
  private Bitmap As()
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 22
    //   3: aload_0
    //   4: getfield 115	com/c/a/c:bMJ	I
    //   7: invokestatic 137	com/c/a/p:dY	(I)Z
    //   10: ifeq +78 -> 88
    //   13: aload_0
    //   14: getfield 93	com/c/a/c:bMY	Lcom/c/a/d;
    //   17: aload_0
    //   18: getfield 102	com/c/a/c:key	Ljava/lang/String;
    //   21: invokeinterface 143 2 0
    //   26: astore 24
    //   28: aload 24
    //   30: astore 22
    //   32: aload 24
    //   34: ifnull +54 -> 88
    //   37: aload_0
    //   38: getfield 95	com/c/a/c:bMZ	Lcom/c/a/aa;
    //   41: invokevirtual 148	com/c/a/aa:AB	()V
    //   44: aload_0
    //   45: getstatic 153	com/c/a/t$d:bOn	Lcom/c/a/t$d;
    //   48: putfield 155	com/c/a/c:bNf	Lcom/c/a/t$d;
    //   51: aload 24
    //   53: astore 23
    //   55: aload_0
    //   56: getfield 89	com/c/a/c:bMF	Lcom/c/a/t;
    //   59: getfield 161	com/c/a/t:bOj	Z
    //   62: ifeq +23 -> 85
    //   65: ldc -93
    //   67: ldc -91
    //   69: aload_0
    //   70: getfield 107	com/c/a/c:bNa	Lcom/c/a/w;
    //   73: invokevirtual 169	com/c/a/w:Au	()Ljava/lang/String;
    //   76: ldc -85
    //   78: invokestatic 177	com/c/a/ag:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   81: aload 24
    //   83: astore 23
    //   85: aload 23
    //   87: areturn
    //   88: aload_0
    //   89: getfield 107	com/c/a/c:bNa	Lcom/c/a/w;
    //   92: astore 23
    //   94: aload_0
    //   95: getfield 127	com/c/a/c:bNh	I
    //   98: ifne +723 -> 821
    //   101: getstatic 183	com/c/a/q:bNV	Lcom/c/a/q;
    //   104: getfield 186	com/c/a/q:index	I
    //   107: istore 5
    //   109: aload 23
    //   111: iload 5
    //   113: putfield 187	com/c/a/w:bMK	I
    //   116: aload_0
    //   117: getfield 120	com/c/a/c:bNb	Lcom/c/a/y;
    //   120: aload_0
    //   121: getfield 107	com/c/a/c:bNa	Lcom/c/a/w;
    //   124: aload_0
    //   125: getfield 118	com/c/a/c:bMK	I
    //   128: invokevirtual 191	com/c/a/y:a	(Lcom/c/a/w;I)Lcom/c/a/y$a;
    //   131: astore 24
    //   133: aload 24
    //   135: ifnull +162 -> 297
    //   138: aload_0
    //   139: aload 24
    //   141: getfield 194	com/c/a/y$a:bNf	Lcom/c/a/t$d;
    //   144: putfield 155	com/c/a/c:bNf	Lcom/c/a/t$d;
    //   147: aload_0
    //   148: aload 24
    //   150: getfield 197	com/c/a/y$a:bOW	I
    //   153: putfield 199	com/c/a/c:bNg	I
    //   156: aload 24
    //   158: getfield 202	com/c/a/y$a:avo	Landroid/graphics/Bitmap;
    //   161: astore 23
    //   163: aload 23
    //   165: astore 22
    //   167: aload 23
    //   169: ifnonnull +128 -> 297
    //   172: aload 24
    //   174: getfield 206	com/c/a/y$a:bNE	Ljava/io/InputStream;
    //   177: astore 24
    //   179: aload_0
    //   180: getfield 107	com/c/a/c:bNa	Lcom/c/a/w;
    //   183: astore 22
    //   185: new 208	com/c/a/n
    //   188: dup
    //   189: aload 24
    //   191: invokespecial 211	com/c/a/n:<init>	(Ljava/io/InputStream;)V
    //   194: astore 25
    //   196: aload 25
    //   198: ldc -44
    //   200: invokevirtual 216	com/c/a/n:dX	(I)J
    //   203: lstore 18
    //   205: aload 22
    //   207: invokestatic 220	com/c/a/y:d	(Lcom/c/a/w;)Landroid/graphics/BitmapFactory$Options;
    //   210: astore 23
    //   212: aload 23
    //   214: invokestatic 223	com/c/a/y:a	(Landroid/graphics/BitmapFactory$Options;)Z
    //   217: istore 20
    //   219: aload 25
    //   221: invokestatic 227	com/c/a/ag:n	(Ljava/io/InputStream;)Z
    //   224: istore 21
    //   226: aload 25
    //   228: lload 18
    //   230: invokevirtual 231	com/c/a/n:Q	(J)V
    //   233: iload 21
    //   235: ifeq +595 -> 830
    //   238: aload 25
    //   240: invokestatic 235	com/c/a/ag:i	(Ljava/io/InputStream;)[B
    //   243: astore 25
    //   245: iload 20
    //   247: ifeq +32 -> 279
    //   250: aload 25
    //   252: iconst_0
    //   253: aload 25
    //   255: arraylength
    //   256: aload 23
    //   258: invokestatic 241	android/graphics/BitmapFactory:decodeByteArray	([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   261: pop
    //   262: aload 22
    //   264: getfield 244	com/c/a/w:bOG	I
    //   267: aload 22
    //   269: getfield 247	com/c/a/w:bOH	I
    //   272: aload 23
    //   274: aload 22
    //   276: invokestatic 250	com/c/a/y:a	(IILandroid/graphics/BitmapFactory$Options;Lcom/c/a/w;)V
    //   279: aload 25
    //   281: iconst_0
    //   282: aload 25
    //   284: arraylength
    //   285: aload 23
    //   287: invokestatic 241	android/graphics/BitmapFactory:decodeByteArray	([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   290: astore 22
    //   292: aload 24
    //   294: invokestatic 253	com/c/a/ag:m	(Ljava/io/InputStream;)V
    //   297: aload 22
    //   299: astore 23
    //   301: aload 22
    //   303: ifnull -218 -> 85
    //   306: aload_0
    //   307: getfield 89	com/c/a/c:bMF	Lcom/c/a/t;
    //   310: getfield 161	com/c/a/t:bOj	Z
    //   313: ifeq +17 -> 330
    //   316: ldc -93
    //   318: ldc -91
    //   320: aload_0
    //   321: getfield 107	com/c/a/c:bNa	Lcom/c/a/w;
    //   324: invokevirtual 169	com/c/a/w:Au	()Ljava/lang/String;
    //   327: invokestatic 257	com/c/a/ag:j	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   330: aload_0
    //   331: getfield 95	com/c/a/c:bMZ	Lcom/c/a/aa;
    //   334: aload 22
    //   336: iconst_2
    //   337: invokevirtual 260	com/c/a/aa:a	(Landroid/graphics/Bitmap;I)V
    //   340: aload_0
    //   341: getfield 107	com/c/a/c:bNa	Lcom/c/a/w;
    //   344: astore 23
    //   346: aload 23
    //   348: invokevirtual 264	com/c/a/w:Ax	()Z
    //   351: ifne +11 -> 362
    //   354: aload 23
    //   356: invokevirtual 267	com/c/a/w:Ay	()Z
    //   359: ifeq +549 -> 908
    //   362: iconst_1
    //   363: istore 5
    //   365: iload 5
    //   367: ifne +14 -> 381
    //   370: aload 22
    //   372: astore 23
    //   374: aload_0
    //   375: getfield 199	com/c/a/c:bNg	I
    //   378: ifeq -293 -> 85
    //   381: getstatic 68	com/c/a/c:bMS	Ljava/lang/Object;
    //   384: astore 25
    //   386: aload 25
    //   388: monitorenter
    //   389: aload_0
    //   390: getfield 107	com/c/a/c:bNa	Lcom/c/a/w;
    //   393: invokevirtual 264	com/c/a/w:Ax	()Z
    //   396: ifne +14 -> 410
    //   399: aload 22
    //   401: astore 24
    //   403: aload_0
    //   404: getfield 199	com/c/a/c:bNg	I
    //   407: ifeq +325 -> 732
    //   410: aload_0
    //   411: getfield 107	com/c/a/c:bNa	Lcom/c/a/w;
    //   414: astore 23
    //   416: aload_0
    //   417: getfield 199	com/c/a/c:bNg	I
    //   420: istore 15
    //   422: aload 22
    //   424: invokevirtual 272	android/graphics/Bitmap:getWidth	()I
    //   427: istore 5
    //   429: aload 22
    //   431: invokevirtual 275	android/graphics/Bitmap:getHeight	()I
    //   434: istore 6
    //   436: aload 23
    //   438: getfield 278	com/c/a/w:bOK	Z
    //   441: istore 20
    //   443: iconst_0
    //   444: istore 13
    //   446: iconst_0
    //   447: istore 7
    //   449: iconst_0
    //   450: istore 14
    //   452: iconst_0
    //   453: istore 8
    //   455: new 280	android/graphics/Matrix
    //   458: dup
    //   459: invokespecial 281	android/graphics/Matrix:<init>	()V
    //   462: astore 24
    //   464: aload 23
    //   466: invokevirtual 264	com/c/a/w:Ax	()Z
    //   469: ifeq +615 -> 1084
    //   472: aload 23
    //   474: getfield 244	com/c/a/w:bOG	I
    //   477: istore 16
    //   479: aload 23
    //   481: getfield 247	com/c/a/w:bOH	I
    //   484: istore 17
    //   486: aload 23
    //   488: getfield 285	com/c/a/w:bOL	F
    //   491: fstore_3
    //   492: fload_3
    //   493: fconst_0
    //   494: fcmpl
    //   495: ifeq +27 -> 522
    //   498: aload 23
    //   500: getfield 288	com/c/a/w:bOO	Z
    //   503: ifeq +411 -> 914
    //   506: aload 24
    //   508: fload_3
    //   509: aload 23
    //   511: getfield 291	com/c/a/w:bOM	F
    //   514: aload 23
    //   516: getfield 294	com/c/a/w:bON	F
    //   519: invokevirtual 298	android/graphics/Matrix:setRotate	(FFF)V
    //   522: aload 23
    //   524: getfield 301	com/c/a/w:bOI	Z
    //   527: ifeq +446 -> 973
    //   530: iload 16
    //   532: i2f
    //   533: iload 5
    //   535: i2f
    //   536: fdiv
    //   537: fstore 4
    //   539: iload 17
    //   541: i2f
    //   542: iload 6
    //   544: i2f
    //   545: fdiv
    //   546: fstore_3
    //   547: fload 4
    //   549: fload_3
    //   550: fcmpl
    //   551: ifle +380 -> 931
    //   554: iload 6
    //   556: i2f
    //   557: fload_3
    //   558: fload 4
    //   560: fdiv
    //   561: fmul
    //   562: f2d
    //   563: invokestatic 307	java/lang/Math:ceil	(D)D
    //   566: d2i
    //   567: istore 10
    //   569: iload 6
    //   571: iload 10
    //   573: isub
    //   574: iconst_2
    //   575: idiv
    //   576: istore 8
    //   578: iload 17
    //   580: i2f
    //   581: iload 10
    //   583: i2f
    //   584: fdiv
    //   585: fstore_3
    //   586: iload 5
    //   588: istore 9
    //   590: iload 7
    //   592: istore 13
    //   594: iload 8
    //   596: istore 14
    //   598: iload 9
    //   600: istore 11
    //   602: iload 10
    //   604: istore 12
    //   606: iload 20
    //   608: iload 5
    //   610: iload 6
    //   612: iload 16
    //   614: iload 17
    //   616: invokestatic 310	com/c/a/c:a	(ZIIII)Z
    //   619: ifeq +28 -> 647
    //   622: aload 24
    //   624: fload 4
    //   626: fload_3
    //   627: invokevirtual 314	android/graphics/Matrix:preScale	(FF)Z
    //   630: pop
    //   631: iload 10
    //   633: istore 12
    //   635: iload 9
    //   637: istore 11
    //   639: iload 8
    //   641: istore 14
    //   643: iload 7
    //   645: istore 13
    //   647: iload 15
    //   649: ifeq +12 -> 661
    //   652: aload 24
    //   654: iload 15
    //   656: i2f
    //   657: invokevirtual 318	android/graphics/Matrix:preRotate	(F)Z
    //   660: pop
    //   661: aload 22
    //   663: iload 13
    //   665: iload 14
    //   667: iload 11
    //   669: iload 12
    //   671: aload 24
    //   673: iconst_1
    //   674: invokestatic 322	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   677: astore 24
    //   679: aload 22
    //   681: astore 23
    //   683: aload 24
    //   685: aload 22
    //   687: if_acmpeq +12 -> 699
    //   690: aload 22
    //   692: invokevirtual 325	android/graphics/Bitmap:recycle	()V
    //   695: aload 24
    //   697: astore 23
    //   699: aload 23
    //   701: astore 24
    //   703: aload_0
    //   704: getfield 89	com/c/a/c:bMF	Lcom/c/a/t;
    //   707: getfield 161	com/c/a/t:bOj	Z
    //   710: ifeq +22 -> 732
    //   713: ldc -93
    //   715: ldc_w 327
    //   718: aload_0
    //   719: getfield 107	com/c/a/c:bNa	Lcom/c/a/w;
    //   722: invokevirtual 169	com/c/a/w:Au	()Ljava/lang/String;
    //   725: invokestatic 257	com/c/a/ag:j	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   728: aload 23
    //   730: astore 24
    //   732: aload 24
    //   734: astore 22
    //   736: aload_0
    //   737: getfield 107	com/c/a/c:bNa	Lcom/c/a/w;
    //   740: invokevirtual 267	com/c/a/w:Ay	()Z
    //   743: ifeq +53 -> 796
    //   746: aload_0
    //   747: getfield 107	com/c/a/c:bNa	Lcom/c/a/w;
    //   750: getfield 330	com/c/a/w:bOF	Ljava/util/List;
    //   753: aload 24
    //   755: invokestatic 333	com/c/a/c:a	(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    //   758: astore 23
    //   760: aload 23
    //   762: astore 22
    //   764: aload_0
    //   765: getfield 89	com/c/a/c:bMF	Lcom/c/a/t;
    //   768: getfield 161	com/c/a/t:bOj	Z
    //   771: ifeq +25 -> 796
    //   774: ldc -93
    //   776: ldc_w 327
    //   779: aload_0
    //   780: getfield 107	com/c/a/c:bNa	Lcom/c/a/w;
    //   783: invokevirtual 169	com/c/a/w:Au	()Ljava/lang/String;
    //   786: ldc_w 335
    //   789: invokestatic 177	com/c/a/ag:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   792: aload 23
    //   794: astore 22
    //   796: aload 25
    //   798: monitorexit
    //   799: aload 22
    //   801: astore 23
    //   803: aload 22
    //   805: ifnull -720 -> 85
    //   808: aload_0
    //   809: getfield 95	com/c/a/c:bMZ	Lcom/c/a/aa;
    //   812: aload 22
    //   814: iconst_3
    //   815: invokevirtual 260	com/c/a/aa:a	(Landroid/graphics/Bitmap;I)V
    //   818: aload 22
    //   820: areturn
    //   821: aload_0
    //   822: getfield 118	com/c/a/c:bMK	I
    //   825: istore 5
    //   827: goto -718 -> 109
    //   830: iload 20
    //   832: ifeq +36 -> 868
    //   835: aload 25
    //   837: aconst_null
    //   838: aload 23
    //   840: invokestatic 339	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   843: pop
    //   844: aload 22
    //   846: getfield 244	com/c/a/w:bOG	I
    //   849: aload 22
    //   851: getfield 247	com/c/a/w:bOH	I
    //   854: aload 23
    //   856: aload 22
    //   858: invokestatic 250	com/c/a/y:a	(IILandroid/graphics/BitmapFactory$Options;Lcom/c/a/w;)V
    //   861: aload 25
    //   863: lload 18
    //   865: invokevirtual 231	com/c/a/n:Q	(J)V
    //   868: aload 25
    //   870: aconst_null
    //   871: aload 23
    //   873: invokestatic 339	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   876: astore 23
    //   878: aload 23
    //   880: astore 22
    //   882: aload 23
    //   884: ifnonnull -592 -> 292
    //   887: new 131	java/io/IOException
    //   890: dup
    //   891: ldc_w 341
    //   894: invokespecial 344	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   897: athrow
    //   898: astore 22
    //   900: aload 24
    //   902: invokestatic 253	com/c/a/ag:m	(Ljava/io/InputStream;)V
    //   905: aload 22
    //   907: athrow
    //   908: iconst_0
    //   909: istore 5
    //   911: goto -546 -> 365
    //   914: aload 24
    //   916: fload_3
    //   917: invokevirtual 347	android/graphics/Matrix:setRotate	(F)V
    //   920: goto -398 -> 522
    //   923: astore 22
    //   925: aload 25
    //   927: monitorexit
    //   928: aload 22
    //   930: athrow
    //   931: iload 5
    //   933: i2f
    //   934: fload 4
    //   936: fload_3
    //   937: fdiv
    //   938: fmul
    //   939: f2d
    //   940: dstore_1
    //   941: dload_1
    //   942: invokestatic 307	java/lang/Math:ceil	(D)D
    //   945: d2i
    //   946: istore 9
    //   948: iload 5
    //   950: iload 9
    //   952: isub
    //   953: iconst_2
    //   954: idiv
    //   955: istore 7
    //   957: iload 16
    //   959: i2f
    //   960: iload 9
    //   962: i2f
    //   963: fdiv
    //   964: fstore 4
    //   966: iload 6
    //   968: istore 10
    //   970: goto -380 -> 590
    //   973: aload 23
    //   975: getfield 350	com/c/a/w:bOJ	Z
    //   978: ifeq +157 -> 1135
    //   981: iload 16
    //   983: i2f
    //   984: iload 5
    //   986: i2f
    //   987: fdiv
    //   988: fstore_3
    //   989: iload 17
    //   991: i2f
    //   992: iload 6
    //   994: i2f
    //   995: fdiv
    //   996: fstore 4
    //   998: fload_3
    //   999: fload 4
    //   1001: fcmpg
    //   1002: ifge +127 -> 1129
    //   1005: iload 20
    //   1007: iload 5
    //   1009: iload 6
    //   1011: iload 16
    //   1013: iload 17
    //   1015: invokestatic 310	com/c/a/c:a	(ZIIII)Z
    //   1018: ifeq +100 -> 1118
    //   1021: aload 24
    //   1023: fload_3
    //   1024: fload_3
    //   1025: invokevirtual 314	android/graphics/Matrix:preScale	(FF)Z
    //   1028: pop
    //   1029: goto +89 -> 1118
    //   1032: iload 16
    //   1034: ifeq +61 -> 1095
    //   1037: iload 16
    //   1039: i2f
    //   1040: iload 5
    //   1042: i2f
    //   1043: fdiv
    //   1044: fstore_3
    //   1045: iload 17
    //   1047: ifeq +59 -> 1106
    //   1050: iload 17
    //   1052: i2f
    //   1053: iload 6
    //   1055: i2f
    //   1056: fdiv
    //   1057: fstore 4
    //   1059: iload 20
    //   1061: iload 5
    //   1063: iload 6
    //   1065: iload 16
    //   1067: iload 17
    //   1069: invokestatic 310	com/c/a/c:a	(ZIIII)Z
    //   1072: ifeq +12 -> 1084
    //   1075: aload 24
    //   1077: fload_3
    //   1078: fload 4
    //   1080: invokevirtual 314	android/graphics/Matrix:preScale	(FF)Z
    //   1083: pop
    //   1084: iload 5
    //   1086: istore 11
    //   1088: iload 6
    //   1090: istore 12
    //   1092: goto -445 -> 647
    //   1095: iload 17
    //   1097: i2f
    //   1098: iload 6
    //   1100: i2f
    //   1101: fdiv
    //   1102: fstore_3
    //   1103: goto -58 -> 1045
    //   1106: iload 16
    //   1108: i2f
    //   1109: iload 5
    //   1111: i2f
    //   1112: fdiv
    //   1113: fstore 4
    //   1115: goto -56 -> 1059
    //   1118: iload 5
    //   1120: istore 11
    //   1122: iload 6
    //   1124: istore 12
    //   1126: goto -479 -> 647
    //   1129: fload 4
    //   1131: fstore_3
    //   1132: goto -127 -> 1005
    //   1135: iload 16
    //   1137: ifne +8 -> 1145
    //   1140: iload 17
    //   1142: ifeq -58 -> 1084
    //   1145: iload 16
    //   1147: iload 5
    //   1149: if_icmpne -117 -> 1032
    //   1152: iload 17
    //   1154: iload 6
    //   1156: if_icmpeq -72 -> 1084
    //   1159: goto -127 -> 1032
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1162	0	this	c
    //   940	2	1	d	double
    //   491	641	3	f1	float
    //   537	593	4	f2	float
    //   107	1043	5	i	int
    //   434	723	6	j	int
    //   447	509	7	k	int
    //   453	187	8	m	int
    //   588	373	9	n	int
    //   567	402	10	i1	int
    //   600	521	11	i2	int
    //   604	521	12	i3	int
    //   444	220	13	i4	int
    //   450	216	14	i5	int
    //   420	235	15	i6	int
    //   477	673	16	i7	int
    //   484	673	17	i8	int
    //   203	661	18	l	long
    //   217	843	20	bool1	boolean
    //   224	10	21	bool2	boolean
    //   1	880	22	localObject1	Object
    //   898	8	22	localObject2	Object
    //   923	6	22	localObject3	Object
    //   53	921	23	localObject4	Object
    //   26	1050	24	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   179	233	898	finally
    //   238	245	898	finally
    //   250	279	898	finally
    //   279	292	898	finally
    //   835	868	898	finally
    //   868	878	898	finally
    //   887	898	898	finally
    //   389	399	923	finally
    //   403	410	923	finally
    //   410	443	923	finally
    //   455	492	923	finally
    //   498	522	923	finally
    //   522	547	923	finally
    //   554	586	923	finally
    //   606	631	923	finally
    //   652	661	923	finally
    //   661	679	923	finally
    //   690	695	923	finally
    //   703	728	923	finally
    //   736	760	923	finally
    //   764	792	923	finally
    //   796	799	923	finally
    //   914	920	923	finally
    //   925	928	923	finally
    //   941	966	923	finally
    //   973	998	923	finally
    //   1005	1029	923	finally
    //   1037	1045	923	finally
    //   1050	1059	923	finally
    //   1059	1084	923	finally
  }
  
  private static Bitmap a(final List<ae> paramList, Bitmap paramBitmap)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      ae localae = (ae)paramList.get(i);
      Bitmap localBitmap;
      try
      {
        localBitmap = localae.c(paramBitmap);
        if (localBitmap != null) {
          break label158;
        }
        paramBitmap = new StringBuilder("Transformation ").append(localae.key()).append(" returned null after ").append(i).append(" previous transformation(s).\n\nTransformation list:\n");
        paramList = paramList.iterator();
        while (paramList.hasNext()) {
          paramBitmap.append(((ae)paramList.next()).key()).append('\n');
        }
        t.bNY.post(new Runnable()
        {
          public final void run()
          {
            throw new NullPointerException(this.bNl.toString());
          }
        });
      }
      catch (RuntimeException paramList)
      {
        t.bNY.post(new Runnable()
        {
          public final void run()
          {
            throw new RuntimeException("Transformation " + this.bNj.key() + " crashed with exception.", paramList);
          }
        });
        return null;
      }
      return null;
      label158:
      if ((localBitmap == paramBitmap) && (paramBitmap.isRecycled()))
      {
        t.bNY.post(new Runnable()
        {
          public final void run()
          {
            throw new IllegalStateException("Transformation " + this.bNj.key() + " returned input Bitmap but recycled it.");
          }
        });
        return null;
      }
      if ((localBitmap != paramBitmap) && (!paramBitmap.isRecycled()))
      {
        t.bNY.post(new Runnable()
        {
          public final void run()
          {
            throw new IllegalStateException("Transformation " + this.bNj.key() + " mutated input Bitmap but failed to recycle the original.");
          }
        });
        return null;
      }
      i += 1;
      paramBitmap = localBitmap;
    }
    return paramBitmap;
  }
  
  static c a(t paramt, i parami, d paramd, aa paramaa, a parama)
  {
    w localw = parama.bMG;
    List localList = paramt.bOd;
    int i = 0;
    int j = localList.size();
    while (i < j)
    {
      y localy = (y)localList.get(i);
      if (localy.a(localw)) {
        return new c(paramt, parami, paramd, paramaa, parama, localy);
      }
      i += 1;
    }
    return new c(paramt, parami, paramd, paramaa, parama, bMV);
  }
  
  private static boolean a(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return (!paramBoolean) || (paramInt1 > paramInt3) || (paramInt2 > paramInt4);
  }
  
  final void a(a parama)
  {
    int n = 1;
    int m = 0;
    boolean bool;
    if (this.bMP == parama)
    {
      this.bMP = null;
      bool = true;
    }
    for (;;)
    {
      int i;
      int k;
      label67:
      int j;
      if ((bool) && (parama.bMG.bNi == this.bNi))
      {
        i = t.e.bOs;
        if ((this.bNc != null) && (!this.bNc.isEmpty()))
        {
          k = 1;
          j = n;
          if (this.bMP == null)
          {
            if (k == 0) {
              break label207;
            }
            j = n;
          }
          label85:
          if (j == 0) {
            break label212;
          }
          if (this.bMP == null) {
            break label255;
          }
          i = this.bMP.bMG.bNi;
        }
      }
      label129:
      label207:
      label212:
      label252:
      label255:
      for (;;)
      {
        j = i;
        if (k != 0)
        {
          n = this.bNc.size();
          k = m;
          j = i;
          if (k < n)
          {
            j = ((a)this.bNc.get(k)).bMG.bNi;
            if (j - 1 <= i - 1) {
              break label252;
            }
            i = j;
          }
        }
        for (;;)
        {
          k += 1;
          break label129;
          if (this.bNc == null) {
            break label258;
          }
          bool = this.bNc.remove(parama);
          break;
          k = 0;
          break label67;
          j = 0;
          break label85;
          j = i;
          this.bNi = j;
          if (this.bMF.bOj) {
            ag.b("Hunter", "removed", parama.bMG.Au(), ag.a(this, "from "));
          }
          return;
        }
      }
      label258:
      bool = false;
    }
  }
  
  final boolean cancel()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.bMP == null) {
      if (this.bNc != null)
      {
        bool1 = bool2;
        if (!this.bNc.isEmpty()) {}
      }
      else
      {
        bool1 = bool2;
        if (this.bNe != null)
        {
          bool1 = bool2;
          if (this.bNe.cancel(false)) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  final boolean isCancelled()
  {
    return (this.bNe != null) && (this.bNe.isCancelled());
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 107	com/c/a/c:bNa	Lcom/c/a/w;
    //   4: astore_1
    //   5: aload_1
    //   6: getfield 482	com/c/a/w:uri	Landroid/net/Uri;
    //   9: ifnull +112 -> 121
    //   12: aload_1
    //   13: getfield 482	com/c/a/w:uri	Landroid/net/Uri;
    //   16: invokevirtual 487	android/net/Uri:getPath	()Ljava/lang/String;
    //   19: invokestatic 493	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   22: astore_1
    //   23: getstatic 71	com/c/a/c:bMT	Ljava/lang/ThreadLocal;
    //   26: invokevirtual 497	java/lang/ThreadLocal:get	()Ljava/lang/Object;
    //   29: checkcast 370	java/lang/StringBuilder
    //   32: astore_2
    //   33: aload_2
    //   34: aload_1
    //   35: invokevirtual 500	java/lang/String:length	()I
    //   38: bipush 8
    //   40: iadd
    //   41: invokevirtual 504	java/lang/StringBuilder:ensureCapacity	(I)V
    //   44: aload_2
    //   45: bipush 8
    //   47: aload_2
    //   48: invokevirtual 505	java/lang/StringBuilder:length	()I
    //   51: aload_1
    //   52: invokevirtual 509	java/lang/StringBuilder:replace	(IILjava/lang/String;)Ljava/lang/StringBuilder;
    //   55: pop
    //   56: invokestatic 515	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   59: aload_2
    //   60: invokevirtual 518	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokevirtual 521	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   66: aload_0
    //   67: getfield 89	com/c/a/c:bMF	Lcom/c/a/t;
    //   70: getfield 161	com/c/a/t:bOj	Z
    //   73: ifeq +15 -> 88
    //   76: ldc -93
    //   78: ldc_w 523
    //   81: aload_0
    //   82: invokestatic 527	com/c/a/ag:f	(Lcom/c/a/c;)Ljava/lang/String;
    //   85: invokestatic 257	com/c/a/ag:j	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   88: aload_0
    //   89: aload_0
    //   90: invokespecial 529	com/c/a/c:As	()Landroid/graphics/Bitmap;
    //   93: putfield 531	com/c/a/c:bNd	Landroid/graphics/Bitmap;
    //   96: aload_0
    //   97: getfield 531	com/c/a/c:bNd	Landroid/graphics/Bitmap;
    //   100: ifnonnull +32 -> 132
    //   103: aload_0
    //   104: getfield 91	com/c/a/c:bMX	Lcom/c/a/i;
    //   107: aload_0
    //   108: invokevirtual 536	com/c/a/i:b	(Lcom/c/a/c;)V
    //   111: invokestatic 515	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   114: ldc_w 538
    //   117: invokevirtual 521	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   120: return
    //   121: aload_1
    //   122: getfield 541	com/c/a/w:resourceId	I
    //   125: invokestatic 547	java/lang/Integer:toHexString	(I)Ljava/lang/String;
    //   128: astore_1
    //   129: goto -106 -> 23
    //   132: aload_0
    //   133: getfield 91	com/c/a/c:bMX	Lcom/c/a/i;
    //   136: astore_1
    //   137: aload_1
    //   138: getfield 550	com/c/a/i:handler	Landroid/os/Handler;
    //   141: aload_1
    //   142: getfield 550	com/c/a/i:handler	Landroid/os/Handler;
    //   145: iconst_4
    //   146: aload_0
    //   147: invokevirtual 554	android/os/Handler:obtainMessage	(ILjava/lang/Object;)Landroid/os/Message;
    //   150: invokevirtual 558	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   153: pop
    //   154: goto -43 -> 111
    //   157: astore_1
    //   158: aload_1
    //   159: getfield 561	com/c/a/j$b:bNF	Z
    //   162: ifeq +13 -> 175
    //   165: aload_1
    //   166: getfield 564	com/c/a/j$b:responseCode	I
    //   169: sipush 504
    //   172: if_icmpeq +8 -> 180
    //   175: aload_0
    //   176: aload_1
    //   177: putfield 566	com/c/a/c:awX	Ljava/lang/Exception;
    //   180: aload_0
    //   181: getfield 91	com/c/a/c:bMX	Lcom/c/a/i;
    //   184: aload_0
    //   185: invokevirtual 536	com/c/a/i:b	(Lcom/c/a/c;)V
    //   188: invokestatic 515	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   191: ldc_w 538
    //   194: invokevirtual 521	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   197: return
    //   198: astore_1
    //   199: aload_0
    //   200: aload_1
    //   201: putfield 566	com/c/a/c:awX	Ljava/lang/Exception;
    //   204: aload_0
    //   205: getfield 91	com/c/a/c:bMX	Lcom/c/a/i;
    //   208: aload_0
    //   209: invokevirtual 568	com/c/a/i:a	(Lcom/c/a/c;)V
    //   212: invokestatic 515	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   215: ldc_w 538
    //   218: invokevirtual 521	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   221: return
    //   222: astore_1
    //   223: aload_0
    //   224: aload_1
    //   225: putfield 566	com/c/a/c:awX	Ljava/lang/Exception;
    //   228: aload_0
    //   229: getfield 91	com/c/a/c:bMX	Lcom/c/a/i;
    //   232: aload_0
    //   233: invokevirtual 568	com/c/a/i:a	(Lcom/c/a/c;)V
    //   236: invokestatic 515	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   239: ldc_w 538
    //   242: invokevirtual 521	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   245: return
    //   246: astore_1
    //   247: new 570	java/io/StringWriter
    //   250: dup
    //   251: invokespecial 571	java/io/StringWriter:<init>	()V
    //   254: astore_2
    //   255: aload_0
    //   256: getfield 95	com/c/a/c:bMZ	Lcom/c/a/aa;
    //   259: astore_3
    //   260: new 573	com/c/a/ab
    //   263: dup
    //   264: aload_3
    //   265: getfield 574	com/c/a/aa:bMY	Lcom/c/a/d;
    //   268: invokeinterface 577 1 0
    //   273: aload_3
    //   274: getfield 574	com/c/a/aa:bMY	Lcom/c/a/d;
    //   277: invokeinterface 578 1 0
    //   282: aload_3
    //   283: getfield 582	com/c/a/aa:bOY	J
    //   286: aload_3
    //   287: getfield 585	com/c/a/aa:bOZ	J
    //   290: aload_3
    //   291: getfield 588	com/c/a/aa:bPa	J
    //   294: aload_3
    //   295: getfield 591	com/c/a/aa:bPb	J
    //   298: aload_3
    //   299: getfield 594	com/c/a/aa:bPc	J
    //   302: aload_3
    //   303: getfield 597	com/c/a/aa:bPd	J
    //   306: aload_3
    //   307: getfield 600	com/c/a/aa:bPe	J
    //   310: aload_3
    //   311: getfield 603	com/c/a/aa:bPf	J
    //   314: aload_3
    //   315: getfield 606	com/c/a/aa:bPg	I
    //   318: aload_3
    //   319: getfield 609	com/c/a/aa:bPh	I
    //   322: aload_3
    //   323: getfield 612	com/c/a/aa:bPi	I
    //   326: invokestatic 618	java/lang/System:currentTimeMillis	()J
    //   329: invokespecial 621	com/c/a/ab:<init>	(IIJJJJJJJJIIIJ)V
    //   332: astore_3
    //   333: new 623	java/io/PrintWriter
    //   336: dup
    //   337: aload_2
    //   338: invokespecial 626	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   341: astore 4
    //   343: aload 4
    //   345: ldc_w 628
    //   348: invokevirtual 631	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   351: aload 4
    //   353: ldc_w 633
    //   356: invokevirtual 631	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   359: aload 4
    //   361: ldc_w 635
    //   364: invokevirtual 638	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   367: aload 4
    //   369: aload_3
    //   370: getfield 640	com/c/a/ab:maxSize	I
    //   373: invokevirtual 642	java/io/PrintWriter:println	(I)V
    //   376: aload 4
    //   378: ldc_w 644
    //   381: invokevirtual 638	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   384: aload 4
    //   386: aload_3
    //   387: getfield 646	com/c/a/ab:size	I
    //   390: invokevirtual 642	java/io/PrintWriter:println	(I)V
    //   393: aload 4
    //   395: ldc_w 648
    //   398: invokevirtual 638	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   401: aload 4
    //   403: aload_3
    //   404: getfield 646	com/c/a/ab:size	I
    //   407: i2f
    //   408: aload_3
    //   409: getfield 640	com/c/a/ab:maxSize	I
    //   412: i2f
    //   413: fdiv
    //   414: ldc_w 649
    //   417: fmul
    //   418: f2d
    //   419: invokestatic 307	java/lang/Math:ceil	(D)D
    //   422: d2i
    //   423: invokevirtual 642	java/io/PrintWriter:println	(I)V
    //   426: aload 4
    //   428: ldc_w 651
    //   431: invokevirtual 638	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   434: aload 4
    //   436: aload_3
    //   437: getfield 652	com/c/a/ab:bOY	J
    //   440: invokevirtual 654	java/io/PrintWriter:println	(J)V
    //   443: aload 4
    //   445: ldc_w 656
    //   448: invokevirtual 638	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   451: aload 4
    //   453: aload_3
    //   454: getfield 657	com/c/a/ab:bOZ	J
    //   457: invokevirtual 654	java/io/PrintWriter:println	(J)V
    //   460: aload 4
    //   462: ldc_w 659
    //   465: invokevirtual 631	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   468: aload 4
    //   470: ldc_w 661
    //   473: invokevirtual 638	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   476: aload 4
    //   478: aload_3
    //   479: getfield 662	com/c/a/ab:bPg	I
    //   482: invokevirtual 642	java/io/PrintWriter:println	(I)V
    //   485: aload 4
    //   487: ldc_w 664
    //   490: invokevirtual 638	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   493: aload 4
    //   495: aload_3
    //   496: getfield 665	com/c/a/ab:bPa	J
    //   499: invokevirtual 654	java/io/PrintWriter:println	(J)V
    //   502: aload 4
    //   504: ldc_w 667
    //   507: invokevirtual 638	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   510: aload 4
    //   512: aload_3
    //   513: getfield 668	com/c/a/ab:bPd	J
    //   516: invokevirtual 654	java/io/PrintWriter:println	(J)V
    //   519: aload 4
    //   521: ldc_w 670
    //   524: invokevirtual 631	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   527: aload 4
    //   529: ldc_w 672
    //   532: invokevirtual 638	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   535: aload 4
    //   537: aload_3
    //   538: getfield 673	com/c/a/ab:bPh	I
    //   541: invokevirtual 642	java/io/PrintWriter:println	(I)V
    //   544: aload 4
    //   546: ldc_w 675
    //   549: invokevirtual 638	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   552: aload 4
    //   554: aload_3
    //   555: getfield 676	com/c/a/ab:bPb	J
    //   558: invokevirtual 654	java/io/PrintWriter:println	(J)V
    //   561: aload 4
    //   563: ldc_w 678
    //   566: invokevirtual 638	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   569: aload 4
    //   571: aload_3
    //   572: getfield 679	com/c/a/ab:bPi	I
    //   575: invokevirtual 642	java/io/PrintWriter:println	(I)V
    //   578: aload 4
    //   580: ldc_w 681
    //   583: invokevirtual 638	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   586: aload 4
    //   588: aload_3
    //   589: getfield 682	com/c/a/ab:bPc	J
    //   592: invokevirtual 654	java/io/PrintWriter:println	(J)V
    //   595: aload 4
    //   597: ldc_w 684
    //   600: invokevirtual 638	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   603: aload 4
    //   605: aload_3
    //   606: getfield 685	com/c/a/ab:bPe	J
    //   609: invokevirtual 654	java/io/PrintWriter:println	(J)V
    //   612: aload 4
    //   614: ldc_w 687
    //   617: invokevirtual 638	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   620: aload 4
    //   622: aload_3
    //   623: getfield 688	com/c/a/ab:bPf	J
    //   626: invokevirtual 654	java/io/PrintWriter:println	(J)V
    //   629: aload 4
    //   631: ldc_w 690
    //   634: invokevirtual 631	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   637: aload 4
    //   639: invokevirtual 693	java/io/PrintWriter:flush	()V
    //   642: aload_0
    //   643: new 353	java/lang/RuntimeException
    //   646: dup
    //   647: aload_2
    //   648: invokevirtual 694	java/io/StringWriter:toString	()Ljava/lang/String;
    //   651: aload_1
    //   652: invokespecial 697	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   655: putfield 566	com/c/a/c:awX	Ljava/lang/Exception;
    //   658: aload_0
    //   659: getfield 91	com/c/a/c:bMX	Lcom/c/a/i;
    //   662: aload_0
    //   663: invokevirtual 536	com/c/a/i:b	(Lcom/c/a/c;)V
    //   666: invokestatic 515	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   669: ldc_w 538
    //   672: invokevirtual 521	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   675: return
    //   676: astore_1
    //   677: aload_0
    //   678: aload_1
    //   679: putfield 566	com/c/a/c:awX	Ljava/lang/Exception;
    //   682: aload_0
    //   683: getfield 91	com/c/a/c:bMX	Lcom/c/a/i;
    //   686: aload_0
    //   687: invokevirtual 536	com/c/a/i:b	(Lcom/c/a/c;)V
    //   690: invokestatic 515	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   693: ldc_w 538
    //   696: invokevirtual 521	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   699: return
    //   700: astore_1
    //   701: invokestatic 515	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   704: ldc_w 538
    //   707: invokevirtual 521	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   710: aload_1
    //   711: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	712	0	this	c
    //   4	138	1	localObject1	Object
    //   157	20	1	localb	j.b
    //   198	3	1	locala	r.a
    //   222	3	1	localIOException	IOException
    //   246	406	1	localOutOfMemoryError	OutOfMemoryError
    //   676	3	1	localException	Exception
    //   700	11	1	localObject2	Object
    //   32	616	2	localObject3	Object
    //   259	364	3	localObject4	Object
    //   341	297	4	localPrintWriter	java.io.PrintWriter
    // Exception table:
    //   from	to	target	type
    //   0	23	157	com/c/a/j$b
    //   23	88	157	com/c/a/j$b
    //   88	111	157	com/c/a/j$b
    //   121	129	157	com/c/a/j$b
    //   132	154	157	com/c/a/j$b
    //   0	23	198	com/c/a/r$a
    //   23	88	198	com/c/a/r$a
    //   88	111	198	com/c/a/r$a
    //   121	129	198	com/c/a/r$a
    //   132	154	198	com/c/a/r$a
    //   0	23	222	java/io/IOException
    //   23	88	222	java/io/IOException
    //   88	111	222	java/io/IOException
    //   121	129	222	java/io/IOException
    //   132	154	222	java/io/IOException
    //   0	23	246	java/lang/OutOfMemoryError
    //   23	88	246	java/lang/OutOfMemoryError
    //   88	111	246	java/lang/OutOfMemoryError
    //   121	129	246	java/lang/OutOfMemoryError
    //   132	154	246	java/lang/OutOfMemoryError
    //   0	23	676	java/lang/Exception
    //   23	88	676	java/lang/Exception
    //   88	111	676	java/lang/Exception
    //   121	129	676	java/lang/Exception
    //   132	154	676	java/lang/Exception
    //   0	23	700	finally
    //   23	88	700	finally
    //   88	111	700	finally
    //   121	129	700	finally
    //   132	154	700	finally
    //   158	175	700	finally
    //   175	180	700	finally
    //   180	188	700	finally
    //   199	212	700	finally
    //   223	236	700	finally
    //   247	666	700	finally
    //   677	690	700	finally
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */