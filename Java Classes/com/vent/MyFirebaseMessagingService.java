package com.vent;

import com.google.firebase.messaging.FirebaseMessagingService;

public final class MyFirebaseMessagingService
  extends FirebaseMessagingService
{
  /* Error */
  public final void onMessageReceived(com.google.firebase.messaging.b paramb)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 17	com/google/firebase/messaging/FirebaseMessagingService:onMessageReceived	(Lcom/google/firebase/messaging/b;)V
    //   5: aload_0
    //   6: invokevirtual 21	com/vent/MyFirebaseMessagingService:getApplication	()Landroid/app/Application;
    //   9: instanceof 23
    //   12: ifne +14 -> 26
    //   15: iconst_1
    //   16: ldc 25
    //   18: invokestatic 31	com/vent/d/c:h	(ILjava/lang/String;)V
    //   21: iconst_0
    //   22: invokestatic 37	java/lang/System:exit	(I)V
    //   25: return
    //   26: aload_1
    //   27: aload_0
    //   28: invokestatic 43	com/layer/sdk/services/LayerFcmService:handleMessageReceived	(Lcom/google/firebase/messaging/b;Landroid/content/Context;)Z
    //   31: istore_3
    //   32: iload_3
    //   33: ifne -8 -> 25
    //   36: invokestatic 47	java/lang/System:currentTimeMillis	()J
    //   39: putstatic 53	com/vent/bb:ciI	J
    //   42: iconst_1
    //   43: putstatic 57	com/vent/bb:chP	Z
    //   46: aload_1
    //   47: invokevirtual 63	com/google/firebase/messaging/b:getData	()Ljava/util/Map;
    //   50: astore 5
    //   52: aload 5
    //   54: ldc 65
    //   56: invokeinterface 71 2 0
    //   61: checkcast 73	java/lang/String
    //   64: astore 4
    //   66: aload 4
    //   68: invokestatic 79	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   71: ifeq +7 -> 78
    //   74: invokestatic 82	com/vent/bb:EA	()V
    //   77: return
    //   78: aload 5
    //   80: ldc 84
    //   82: invokeinterface 71 2 0
    //   87: checkcast 73	java/lang/String
    //   90: astore 6
    //   92: invokestatic 90	java/lang/Math:random	()D
    //   95: ldc2_w 91
    //   98: dmul
    //   99: invokestatic 96	java/lang/Math:round	(D)J
    //   102: l2i
    //   103: istore_2
    //   104: getstatic 100	com/vent/bb:ceP	Lcom/vent/a/y;
    //   107: ifnonnull +12 -> 119
    //   110: ldc 102
    //   112: invokestatic 106	com/vent/d/c:eu	(Ljava/lang/String;)V
    //   115: invokestatic 82	com/vent/bb:EA	()V
    //   118: return
    //   119: aload 4
    //   121: ldc 108
    //   123: invokevirtual 112	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   126: ifne +404 -> 530
    //   129: aload 6
    //   131: ifnull +609 -> 740
    //   134: new 114	com/vent/a/t
    //   137: dup
    //   138: new 116	org/json/JSONObject
    //   141: dup
    //   142: aload 6
    //   144: invokespecial 118	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   147: invokespecial 121	com/vent/a/t:<init>	(Lorg/json/JSONObject;)V
    //   150: astore_1
    //   151: aload 4
    //   153: ldc 123
    //   155: invokestatic 126	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   158: ifeq +6 -> 164
    //   161: invokestatic 129	com/vent/bb:Ez	()V
    //   164: new 131	android/content/Intent
    //   167: dup
    //   168: aload_0
    //   169: ldc -123
    //   171: invokespecial 136	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   174: astore 7
    //   176: aload 7
    //   178: ldc -119
    //   180: invokevirtual 141	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   183: pop
    //   184: aload 7
    //   186: aload_0
    //   187: invokevirtual 145	com/vent/MyFirebaseMessagingService:getApplicationContext	()Landroid/content/Context;
    //   190: ldc -123
    //   192: invokevirtual 149	android/content/Intent:setClass	(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    //   195: pop
    //   196: aload 7
    //   198: ldc -105
    //   200: invokevirtual 155	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   203: pop
    //   204: aload 7
    //   206: ldc -99
    //   208: iload_2
    //   209: invokevirtual 161	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   212: pop
    //   213: aload 4
    //   215: ldc 108
    //   217: invokevirtual 112	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   220: ifne +315 -> 535
    //   223: iconst_1
    //   224: invokestatic 164	com/vent/bb:eH	(I)V
    //   227: aload 7
    //   229: ldc -90
    //   231: ldc -88
    //   233: invokevirtual 171	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   236: pop
    //   237: aload 7
    //   239: ldc -83
    //   241: aload 4
    //   243: invokevirtual 171	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   246: pop
    //   247: iconst_1
    //   248: putstatic 178	com/vent/as:ceK	Z
    //   251: iconst_1
    //   252: putstatic 181	com/vent/ActMain:bWN	Z
    //   255: aload_0
    //   256: iload_2
    //   257: aload 7
    //   259: ldc -74
    //   261: invokestatic 188	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   264: astore 6
    //   266: aload_0
    //   267: invokestatic 192	com/vent/MyApplication:bt	(Landroid/content/Context;)V
    //   270: new 194	android/support/v4/app/aa$c
    //   273: dup
    //   274: aload_0
    //   275: iconst_0
    //   276: invokespecial 197	android/support/v4/app/aa$c:<init>	(Landroid/content/Context;B)V
    //   279: ldc -58
    //   281: invokevirtual 202	android/support/v4/app/aa$c:ad	(I)Landroid/support/v4/app/aa$c;
    //   284: astore 7
    //   286: aload 7
    //   288: aload_0
    //   289: invokevirtual 206	com/vent/MyFirebaseMessagingService:getResources	()Landroid/content/res/Resources;
    //   292: ldc -49
    //   294: invokestatic 213	android/graphics/BitmapFactory:decodeResource	(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    //   297: putfield 217	android/support/v4/app/aa$c:zA	Landroid/graphics/Bitmap;
    //   300: aload 7
    //   302: aload_0
    //   303: ldc -38
    //   305: invokevirtual 222	com/vent/MyFirebaseMessagingService:getString	(I)Ljava/lang/String;
    //   308: invokevirtual 226	android/support/v4/app/aa$c:d	(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;
    //   311: aconst_null
    //   312: aconst_null
    //   313: aload 5
    //   315: ldc -28
    //   317: invokeinterface 71 2 0
    //   322: checkcast 73	java/lang/String
    //   325: invokestatic 234	com/vent/d/e:ex	(Ljava/lang/String;)Ljava/lang/String;
    //   328: iconst_0
    //   329: aconst_null
    //   330: iconst_0
    //   331: iconst_1
    //   332: invokestatic 238	com/vent/d/e:a	(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;ILjava/lang/Object;ZZ)Landroid/text/SpannableStringBuilder;
    //   335: invokevirtual 241	android/support/v4/app/aa$c:e	(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;
    //   338: invokevirtual 245	android/support/v4/app/aa$c:cZ	()Landroid/support/v4/app/aa$c;
    //   341: astore 7
    //   343: aload 7
    //   345: aload 6
    //   347: putfield 249	android/support/v4/app/aa$c:zx	Landroid/app/PendingIntent;
    //   350: aload 7
    //   352: iconst_0
    //   353: putfield 253	android/support/v4/app/aa$c:gS	I
    //   356: aload 7
    //   358: ldc -1
    //   360: putfield 259	android/support/v4/app/aa$c:zS	Ljava/lang/String;
    //   363: new 261	android/support/v4/app/aa$g
    //   366: dup
    //   367: invokespecial 262	android/support/v4/app/aa$g:<init>	()V
    //   370: astore 6
    //   372: aload 6
    //   374: aload_0
    //   375: invokevirtual 206	com/vent/MyFirebaseMessagingService:getResources	()Landroid/content/res/Resources;
    //   378: ldc_w 263
    //   381: invokestatic 213	android/graphics/BitmapFactory:decodeResource	(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    //   384: putfield 266	android/support/v4/app/aa$g:Am	Landroid/graphics/Bitmap;
    //   387: aload 7
    //   389: aload 6
    //   391: invokevirtual 269	android/support/v4/app/aa$c:a	(Landroid/support/v4/app/aa$d;)Landroid/support/v4/app/aa$c;
    //   394: astore 6
    //   396: aload 5
    //   398: ldc_w 271
    //   401: invokeinterface 71 2 0
    //   406: checkcast 73	java/lang/String
    //   409: astore 5
    //   411: aload 5
    //   413: ifnull +14 -> 427
    //   416: aload 5
    //   418: invokestatic 277	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   421: invokevirtual 281	java/lang/Integer:intValue	()I
    //   424: invokestatic 284	com/vent/bb:setUnreadCount	(I)V
    //   427: aload 6
    //   429: getstatic 287	com/vent/bb:ciF	I
    //   432: getstatic 290	com/vent/bb:ciG	I
    //   435: iadd
    //   436: putfield 293	android/support/v4/app/aa$c:zC	I
    //   439: invokestatic 82	com/vent/bb:EA	()V
    //   442: aload_0
    //   443: invokevirtual 145	com/vent/MyFirebaseMessagingService:getApplicationContext	()Landroid/content/Context;
    //   446: invokestatic 296	com/vent/d/c:bH	(Landroid/content/Context;)V
    //   449: getstatic 301	android/os/Build$VERSION:SDK_INT	I
    //   452: bipush 26
    //   454: if_icmplt +139 -> 593
    //   457: aload 6
    //   459: getstatic 304	com/vent/MyApplication:cgD	Ljava/lang/String;
    //   462: putfield 307	android/support/v4/app/aa$c:zY	Ljava/lang/String;
    //   465: aload 6
    //   467: invokevirtual 311	android/support/v4/app/aa$c:build	()Landroid/app/Notification;
    //   470: astore_1
    //   471: aload_1
    //   472: ifnull +26 -> 498
    //   475: aload_0
    //   476: ldc -88
    //   478: invokevirtual 315	com/vent/MyFirebaseMessagingService:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   481: checkcast 317	android/app/NotificationManager
    //   484: astore 5
    //   486: aload 5
    //   488: ifnull +10 -> 498
    //   491: aload 5
    //   493: iconst_0
    //   494: aload_1
    //   495: invokevirtual 321	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   498: aload 4
    //   500: ldc 108
    //   502: invokevirtual 112	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   505: ifne -480 -> 25
    //   508: new 131	android/content/Intent
    //   511: dup
    //   512: getstatic 324	com/vent/ActMain:bWV	Ljava/lang/String;
    //   515: invokespecial 325	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   518: astore_1
    //   519: aload_0
    //   520: invokestatic 331	android/support/v4/content/c:i	(Landroid/content/Context;)Landroid/support/v4/content/c;
    //   523: aload_1
    //   524: invokevirtual 334	android/support/v4/content/c:a	(Landroid/content/Intent;)Z
    //   527: pop
    //   528: return
    //   529: astore_1
    //   530: aconst_null
    //   531: astore_1
    //   532: goto -381 -> 151
    //   535: iconst_2
    //   536: invokestatic 164	com/vent/bb:eH	(I)V
    //   539: aload 7
    //   541: ldc -90
    //   543: ldc 108
    //   545: invokevirtual 171	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   548: pop
    //   549: aload 6
    //   551: ifnull -296 -> 255
    //   554: aload 7
    //   556: ldc_w 336
    //   559: new 338	com/vent/a/m
    //   562: dup
    //   563: new 116	org/json/JSONObject
    //   566: dup
    //   567: aload 6
    //   569: invokespecial 118	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   572: ldc_w 340
    //   575: invokevirtual 342	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   578: invokespecial 345	com/vent/a/m:<init>	(Ljava/lang/CharSequence;)V
    //   581: invokevirtual 348	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   584: pop
    //   585: goto -330 -> 255
    //   588: astore 6
    //   590: goto -335 -> 255
    //   593: aload 6
    //   595: iconst_0
    //   596: putfield 351	android/support/v4/app/aa$c:zD	I
    //   599: getstatic 354	com/vent/bb:chX	Z
    //   602: ifeq +105 -> 707
    //   605: iconst_2
    //   606: istore_2
    //   607: aload 6
    //   609: iload_2
    //   610: invokevirtual 357	android/support/v4/app/aa$c:ae	(I)Landroid/support/v4/app/aa$c;
    //   613: astore 5
    //   615: getstatic 360	com/vent/bb:chW	Z
    //   618: ifeq +94 -> 712
    //   621: aload_1
    //   622: ifnull +90 -> 712
    //   625: aload_1
    //   626: getfield 363	com/vent/a/t:ckI	I
    //   629: ldc_w 364
    //   632: if_icmpeq +80 -> 712
    //   635: aload_1
    //   636: getfield 363	com/vent/a/t:ckI	I
    //   639: istore_2
    //   640: aload 5
    //   642: iload_2
    //   643: sipush 300
    //   646: sipush 1000
    //   649: invokevirtual 368	android/support/v4/app/aa$c:c	(III)Landroid/support/v4/app/aa$c;
    //   652: iconst_1
    //   653: newarray <illegal type>
    //   655: dup
    //   656: iconst_0
    //   657: lconst_0
    //   658: lastore
    //   659: invokevirtual 371	android/support/v4/app/aa$c:a	([J)Landroid/support/v4/app/aa$c;
    //   662: pop
    //   663: getstatic 374	com/vent/bb:chU	Z
    //   666: ifeq -201 -> 465
    //   669: aload 6
    //   671: new 376	java/lang/StringBuilder
    //   674: dup
    //   675: ldc_w 378
    //   678: invokespecial 379	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   681: aload_0
    //   682: invokevirtual 383	com/vent/MyFirebaseMessagingService:getPackageName	()Ljava/lang/String;
    //   685: invokevirtual 387	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   688: ldc_w 389
    //   691: invokevirtual 387	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   694: invokevirtual 392	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   697: invokestatic 398	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   700: invokevirtual 401	android/support/v4/app/aa$c:e	(Landroid/net/Uri;)Landroid/support/v4/app/aa$c;
    //   703: pop
    //   704: goto -239 -> 465
    //   707: iconst_0
    //   708: istore_2
    //   709: goto -102 -> 607
    //   712: aload_0
    //   713: invokevirtual 206	com/vent/MyFirebaseMessagingService:getResources	()Landroid/content/res/Resources;
    //   716: ldc_w 402
    //   719: invokevirtual 408	android/content/res/Resources:getColor	(I)I
    //   722: istore_2
    //   723: goto -83 -> 640
    //   726: astore 4
    //   728: goto -692 -> 36
    //   731: astore_1
    //   732: goto -234 -> 498
    //   735: astore 5
    //   737: goto -310 -> 427
    //   740: aconst_null
    //   741: astore_1
    //   742: goto -591 -> 151
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	745	0	this	MyFirebaseMessagingService
    //   0	745	1	paramb	com.google.firebase.messaging.b
    //   103	620	2	i	int
    //   31	2	3	bool	boolean
    //   64	435	4	str	String
    //   726	1	4	localException1	Exception
    //   50	591	5	localObject1	Object
    //   735	1	5	localNumberFormatException	NumberFormatException
    //   90	478	6	localObject2	Object
    //   588	82	6	localException2	Exception
    //   174	381	7	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   134	151	529	java/lang/Exception
    //   554	585	588	java/lang/Exception
    //   26	32	726	java/lang/Exception
    //   465	471	731	java/lang/Exception
    //   475	486	731	java/lang/Exception
    //   491	498	731	java/lang/Exception
    //   416	427	735	java/lang/NumberFormatException
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/MyFirebaseMessagingService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */