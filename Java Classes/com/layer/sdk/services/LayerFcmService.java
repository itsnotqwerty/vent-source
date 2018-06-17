package com.layer.sdk.services;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.layer.sdk.LayerClient;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.internal.lsdkd.n;
import com.layer.sdk.internal.lsdki.a.c;
import com.layer.sdk.internal.lsdki.a.e;
import com.layer.sdk.internal.lsdki.lsdkc.c;
import com.layer.sdk.internal.lsdki.lsdkc.c.d;
import com.layer.sdk.internal.lsdkk.i;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.internal.telemetry.TelemetryManager;
import com.layer.sdk.internal.telemetry.TelemetryManager.Measurement;
import com.layer.sdk.listeners.LayerConnectionListener;
import java.util.HashSet;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class LayerFcmService
  extends FirebaseMessagingService
{
  public static final String KEY_LAYER = "layer";
  public static final String KEY_USER_ID = "user-id";
  public static final String PUBLIC_KEY_CONVERSATION_ID = "layer-conversation-id";
  public static final String PUBLIC_KEY_MESSAGE_ID = "layer-message-id";
  public static final String PUBLIC_KEY_SOURCE = "layer-source";
  public static final String PUBLIC_KEY_USER_ID = "user-id";
  public static final String PUSH_ACTION = "com.layer.sdk.PUSH";
  private static final k.a a = k.a(LayerFcmService.class);
  private static final TimeUnit b = TimeUnit.MINUTES;
  private static final i<UUID, Uri> c = new i(30000L);
  private static long d;
  
  private static Bundle a(Uri paramUri1, Uri paramUri2, Map<String, String> paramMap, Origin paramOrigin)
  {
    paramMap = n.a(paramMap);
    if (paramUri1 != null) {
      paramMap.putParcelable("layer-conversation-id", paramUri1);
    }
    if (paramUri2 != null) {
      paramMap.putParcelable("layer-message-id", paramUri2);
    }
    paramMap.putString("layer-source", paramOrigin.getValue());
    return paramMap;
  }
  
  private static void a(Context paramContext, UUID paramUUID, Uri paramUri1, Uri paramUri2, Map<String, String> paramMap, Origin paramOrigin, boolean paramBoolean)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    com.layer.sdk.internal.a locala;
    if (paramBoolean)
    {
      locala = com.layer.sdk.internal.a.b();
      paramBoolean = bool2;
      if (locala == null) {}
    }
    do
    {
      do
      {
        try
        {
          paramBoolean = locala.E();
          if ((paramUUID != null) && (locala.A() != null))
          {
            Object localObject = locala.g();
            if ((localObject != null) && (paramUUID.equals(((com.layer.sdk.internal.lsdkk.lsdka.a)localObject).g())))
            {
              localObject = a(paramUri1, paramUri2, paramMap, paramOrigin);
              ((Bundle)localObject).putString("user-id", paramUUID.toString());
              locala.A().a(locala, (Bundle)localObject);
            }
          }
          locala.close();
          bool1 = paramBoolean;
          if (paramUUID != null)
          {
            bool1 = paramBoolean;
            if (paramUri2 != null)
            {
              bool1 = paramBoolean;
              if (!c.a(paramUUID, paramUri2))
              {
                if (k.a(2)) {
                  k.a(a, "Aborting broadcast due to deduplication.");
                }
                return;
              }
            }
          }
        }
        finally
        {
          locala.close();
        }
        if (!TextUtils.isEmpty((String)paramMap.get("alert"))) {
          break;
        }
      } while (!k.a(2));
      k.a(a, "Aborting broadcast due to empty message.");
      return;
      if (bool1) {
        break;
      }
    } while (!k.a(2));
    k.a(a, "Aborting broadcast due to LayerClient suppressing broadcast.");
    return;
    paramUri1 = a(paramUri1, paramUri2, paramMap, paramOrigin);
    paramUUID = paramContext.getApplicationContext().getPackageName();
    paramUri1 = new Intent("com.layer.sdk.PUSH").setPackage(paramUUID).putExtras(paramUri1).addFlags(32);
    if (k.a(2)) {
      k.a(a, "Broadcasting com.layer.sdk.PUSH to " + paramUUID + ".");
    }
    paramContext.sendBroadcast(paramUri1);
  }
  
  private static void a(com.layer.sdk.internal.a parama, final HashSet<UUID> paramHashSet)
  {
    parama.registerConnectionListener(new LayerConnectionListener()
    {
      private final AtomicBoolean btV = new AtomicBoolean(false);
      
      public final void a()
      {
        if (!this.btV.compareAndSet(false, true)) {
          return;
        }
        new Thread(new Runnable()
        {
          public final void run()
          {
            try
            {
              if (k.a(2)) {
                k.a(LayerFcmService.wq(), "Waiting 3 " + LayerFcmService.wK() + " to try closing client...");
              }
              LayerFcmService.wK().sleep(3L);
              return;
            }
            catch (InterruptedException localInterruptedException) {}finally
            {
              LayerFcmService.1.this.a.close();
            }
          }
        }).start();
      }
      
      public final void onConnectionConnected(LayerClient paramAnonymousLayerClient)
      {
        if (!paramAnonymousLayerClient.isAuthenticated())
        {
          a();
          return;
        }
        paramAnonymousLayerClient.unregisterConnectionListener(this);
        ((com.layer.sdk.internal.a)paramAnonymousLayerClient).a(a.e.c, true, true, paramHashSet.isEmpty(), paramHashSet, new a.c()
        {
          public final void a(c paramAnonymous2c)
          {
            LayerFcmService.c();
            LayerFcmService.1.this.a();
          }
          
          public final void a(c paramAnonymous2c, c.d paramAnonymous2d) {}
          
          public final void a(c paramAnonymous2c, Error paramAnonymous2Error)
          {
            LayerFcmService.c();
            LayerFcmService.1.this.a();
          }
        }, false);
      }
      
      public final void onConnectionDisconnected(LayerClient paramAnonymousLayerClient)
      {
        a();
      }
      
      public final void onConnectionError(LayerClient paramAnonymousLayerClient, LayerException paramAnonymousLayerException)
      {
        a();
      }
    });
    parama.connect();
  }
  
  private static void d()
  {
    d = System.currentTimeMillis();
  }
  
  private static void e()
  {
    long l1 = System.currentTimeMillis();
    long l2 = d;
    TelemetryManager.record(TelemetryManager.Measurement.TIME_FROM_PUSH_TO_DATA_SYNC, l1 - l2);
  }
  
  /* Error */
  public static boolean handleMessageReceived(com.google.firebase.messaging.b paramb, Context paramContext)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aconst_null
    //   3: astore 6
    //   5: aload_0
    //   6: invokestatic 254	com/layer/sdk/services/LayerFcmService:isLayerMessage	(Lcom/google/firebase/messaging/b;)Z
    //   9: ifne +21 -> 30
    //   12: iconst_2
    //   13: invokestatic 141	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   16: ifeq +12 -> 28
    //   19: getstatic 51	com/layer/sdk/services/LayerFcmService:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   22: ldc_w 256
    //   25: invokestatic 146	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   28: iconst_0
    //   29: ireturn
    //   30: invokestatic 258	com/layer/sdk/services/LayerFcmService:d	()V
    //   33: ldc_w 260
    //   36: aload_0
    //   37: getfield 266	com/google/firebase/messaging/b:Cs	Landroid/os/Bundle;
    //   40: ldc_w 268
    //   43: invokevirtual 272	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   46: invokevirtual 273	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   49: ifeq +21 -> 70
    //   52: iconst_2
    //   53: invokestatic 141	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   56: ifeq +12 -> 68
    //   59: getstatic 51	com/layer/sdk/services/LayerFcmService:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   62: ldc_w 275
    //   65: invokestatic 146	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   68: iconst_1
    //   69: ireturn
    //   70: aload_1
    //   71: invokevirtual 172	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   74: invokestatic 278	com/layer/sdk/internal/lsdkk/k:a	(Landroid/content/Context;)V
    //   77: iconst_2
    //   78: invokestatic 141	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   81: ifeq +12 -> 93
    //   84: getstatic 51	com/layer/sdk/services/LayerFcmService:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   87: ldc_w 280
    //   90: invokestatic 146	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   93: aload_0
    //   94: invokevirtual 284	com/google/firebase/messaging/b:getData	()Ljava/util/Map;
    //   97: astore 8
    //   99: aload 8
    //   101: ldc 20
    //   103: invokeinterface 154 2 0
    //   108: checkcast 156	java/lang/String
    //   111: invokestatic 288	java/util/UUID:fromString	(Ljava/lang/String;)Ljava/util/UUID;
    //   114: astore 9
    //   116: new 290	org/json/JSONObject
    //   119: dup
    //   120: aload 8
    //   122: ldc 17
    //   124: invokeinterface 154 2 0
    //   129: checkcast 156	java/lang/String
    //   132: invokespecial 291	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   135: astore 7
    //   137: aload 7
    //   139: ldc_w 293
    //   142: invokevirtual 297	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   145: ifeq +298 -> 443
    //   148: aload 7
    //   150: ldc_w 293
    //   153: invokevirtual 298	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   156: invokestatic 304	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   159: astore_3
    //   160: aload_3
    //   161: astore_0
    //   162: aload_3
    //   163: ifnonnull +74 -> 237
    //   166: aload_3
    //   167: astore 4
    //   169: aload 7
    //   171: ldc_w 306
    //   174: invokevirtual 297	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   177: ifeq +271 -> 448
    //   180: aload_3
    //   181: astore 4
    //   183: aload 7
    //   185: ldc_w 306
    //   188: invokevirtual 298	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   191: invokestatic 304	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   194: astore 5
    //   196: aload_3
    //   197: astore_0
    //   198: aload 5
    //   200: ifnull +37 -> 237
    //   203: aload_3
    //   204: astore 4
    //   206: iconst_2
    //   207: invokestatic 141	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   210: ifeq +15 -> 225
    //   213: aload_3
    //   214: astore 4
    //   216: getstatic 51	com/layer/sdk/services/LayerFcmService:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   219: ldc_w 308
    //   222: invokestatic 146	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   225: aload_3
    //   226: astore 4
    //   228: aload 5
    //   230: invokevirtual 311	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
    //   233: invokestatic 315	com/layer/sdk/internal/lsdkd/m:b	(Ljava/lang/String;)Landroid/net/Uri;
    //   236: astore_0
    //   237: aload_0
    //   238: astore 4
    //   240: aload 7
    //   242: ldc_w 317
    //   245: invokevirtual 297	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   248: ifeq +206 -> 454
    //   251: aload_0
    //   252: astore 4
    //   254: aload 7
    //   256: ldc_w 317
    //   259: invokevirtual 298	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   262: invokestatic 304	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   265: astore_3
    //   266: aload 7
    //   268: ldc_w 319
    //   271: invokevirtual 297	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   274: ifeq +185 -> 459
    //   277: aload 7
    //   279: ldc_w 319
    //   282: invokevirtual 298	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   285: invokestatic 304	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   288: astore 4
    //   290: aload_3
    //   291: astore 5
    //   293: aload_3
    //   294: ifnonnull +15 -> 309
    //   297: aload_3
    //   298: astore 5
    //   300: aload 4
    //   302: ifnull +7 -> 309
    //   305: aload 4
    //   307: astore 5
    //   309: aload 5
    //   311: astore_3
    //   312: aload 4
    //   314: astore 5
    //   316: invokestatic 99	com/layer/sdk/internal/a:b	()Lcom/layer/sdk/internal/a;
    //   319: astore 7
    //   321: aload 7
    //   323: ifnull +5 -> 328
    //   326: iconst_1
    //   327: istore_2
    //   328: aload 7
    //   330: astore 4
    //   332: iload_2
    //   333: ifne +163 -> 496
    //   336: new 321	com/layer/sdk/internal/lsdke/h
    //   339: dup
    //   340: aload_1
    //   341: invokespecial 323	com/layer/sdk/internal/lsdke/h:<init>	(Landroid/content/Context;)V
    //   344: astore 4
    //   346: aload 4
    //   348: invokevirtual 326	com/layer/sdk/internal/lsdke/h:c	()Landroid/net/Uri;
    //   351: astore 10
    //   353: aload 4
    //   355: invokevirtual 329	com/layer/sdk/internal/lsdke/h:b	()Lcom/layer/b/a/a$a;
    //   358: astore 11
    //   360: aload 7
    //   362: astore 4
    //   364: aload 10
    //   366: ifnull +130 -> 496
    //   369: aload 7
    //   371: astore 4
    //   373: aload 11
    //   375: ifnull +121 -> 496
    //   378: aload 7
    //   380: astore 4
    //   382: aload 11
    //   384: getfield 334	com/layer/b/a/a$a:a	Ljava/util/UUID;
    //   387: ifnull +109 -> 496
    //   390: aload 7
    //   392: astore 4
    //   394: aload 11
    //   396: getfield 336	com/layer/b/a/a$a:b	Ljava/lang/String;
    //   399: ifnull +97 -> 496
    //   402: aload_1
    //   403: aload 10
    //   405: new 338	com/layer/sdk/LayerClient$Options
    //   408: dup
    //   409: aload_1
    //   410: invokevirtual 172	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   413: invokespecial 339	com/layer/sdk/LayerClient$Options:<init>	(Landroid/content/Context;)V
    //   416: invokestatic 342	com/layer/sdk/internal/a:a	(Landroid/content/Context;Landroid/net/Uri;Lcom/layer/sdk/LayerClient$Options;)Lcom/layer/sdk/LayerClient;
    //   419: checkcast 96	com/layer/sdk/internal/a
    //   422: astore 7
    //   424: aload 7
    //   426: astore 4
    //   428: aload 7
    //   430: invokevirtual 345	com/layer/sdk/internal/a:isAuthenticated	()Z
    //   433: ifne +63 -> 496
    //   436: aload 7
    //   438: invokevirtual 135	com/layer/sdk/internal/a:close	()V
    //   441: iconst_1
    //   442: ireturn
    //   443: aconst_null
    //   444: astore_3
    //   445: goto -285 -> 160
    //   448: aconst_null
    //   449: astore 5
    //   451: goto -255 -> 196
    //   454: aconst_null
    //   455: astore_3
    //   456: goto -190 -> 266
    //   459: aconst_null
    //   460: astore 4
    //   462: goto -172 -> 290
    //   465: astore 4
    //   467: aconst_null
    //   468: astore_3
    //   469: aconst_null
    //   470: astore_0
    //   471: bipush 6
    //   473: invokestatic 141	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   476: ifeq +14 -> 490
    //   479: getstatic 51	com/layer/sdk/services/LayerFcmService:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   482: ldc_w 347
    //   485: aload 4
    //   487: invokestatic 350	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   490: aconst_null
    //   491: astore 5
    //   493: goto -177 -> 316
    //   496: aload 4
    //   498: ifnull +87 -> 585
    //   501: new 352	java/util/HashSet
    //   504: dup
    //   505: invokespecial 353	java/util/HashSet:<init>	()V
    //   508: astore 7
    //   510: aload_0
    //   511: ifnull +39 -> 550
    //   514: aload 4
    //   516: aload_0
    //   517: invokevirtual 357	com/layer/sdk/internal/a:getConversation	(Landroid/net/Uri;)Lcom/layer/sdk/messaging/Conversation;
    //   520: checkcast 359	com/layer/sdk/internal/lsdkd/lsdka/c
    //   523: astore 10
    //   525: aload 10
    //   527: ifnull +102 -> 629
    //   530: aload 10
    //   532: invokevirtual 362	com/layer/sdk/internal/lsdkd/lsdka/c:j	()Ljava/util/UUID;
    //   535: astore 10
    //   537: aload 10
    //   539: ifnull +11 -> 550
    //   542: aload 7
    //   544: aload 10
    //   546: invokevirtual 365	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   549: pop
    //   550: aload 5
    //   552: ifnull +26 -> 578
    //   555: aload 4
    //   557: invokevirtual 369	com/layer/sdk/internal/a:o	()Lcom/layer/sdk/internal/lsdkd/lsdka/a;
    //   560: astore 5
    //   562: aload 5
    //   564: ifnull +14 -> 578
    //   567: aload 7
    //   569: aload 5
    //   571: invokevirtual 372	com/layer/sdk/internal/lsdkd/lsdka/a:j	()Ljava/util/UUID;
    //   574: invokevirtual 365	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   577: pop
    //   578: aload 4
    //   580: aload 7
    //   582: invokestatic 374	com/layer/sdk/services/LayerFcmService:a	(Lcom/layer/sdk/internal/a;Ljava/util/HashSet;)V
    //   585: aload_1
    //   586: invokevirtual 172	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   589: aload 9
    //   591: aload_0
    //   592: aload_3
    //   593: aload 8
    //   595: getstatic 378	com/layer/sdk/services/LayerFcmService$Origin:FCM	Lcom/layer/sdk/services/LayerFcmService$Origin;
    //   598: iload_2
    //   599: invokestatic 380	com/layer/sdk/services/LayerFcmService:a	(Landroid/content/Context;Ljava/util/UUID;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/Map;Lcom/layer/sdk/services/LayerFcmService$Origin;Z)V
    //   602: iconst_1
    //   603: ireturn
    //   604: astore_0
    //   605: aload_0
    //   606: invokevirtual 384	com/layer/sdk/exceptions/LayerException:getType	()Lcom/layer/sdk/exceptions/LayerException$Type;
    //   609: getstatic 390	com/layer/sdk/exceptions/LayerException$Type:NOT_AUTHENTICATED	Lcom/layer/sdk/exceptions/LayerException$Type;
    //   612: invokevirtual 391	com/layer/sdk/exceptions/LayerException$Type:equals	(Ljava/lang/Object;)Z
    //   615: ifeq +12 -> 627
    //   618: getstatic 51	com/layer/sdk/services/LayerFcmService:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   621: ldc_w 393
    //   624: invokestatic 395	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;)V
    //   627: iconst_1
    //   628: ireturn
    //   629: aload 5
    //   631: ifnonnull -81 -> 550
    //   634: aload 7
    //   636: aload_0
    //   637: invokestatic 398	com/layer/sdk/internal/lsdkd/m:c	(Landroid/net/Uri;)Ljava/util/UUID;
    //   640: invokevirtual 365	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   643: pop
    //   644: goto -94 -> 550
    //   647: astore 10
    //   649: aload 6
    //   651: astore 5
    //   653: aload 10
    //   655: invokevirtual 384	com/layer/sdk/exceptions/LayerException:getType	()Lcom/layer/sdk/exceptions/LayerException$Type;
    //   658: getstatic 390	com/layer/sdk/exceptions/LayerException$Type:NOT_AUTHENTICATED	Lcom/layer/sdk/exceptions/LayerException$Type;
    //   661: invokevirtual 391	com/layer/sdk/exceptions/LayerException$Type:equals	(Ljava/lang/Object;)Z
    //   664: ifeq -102 -> 562
    //   667: getstatic 51	com/layer/sdk/services/LayerFcmService:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   670: ldc_w 393
    //   673: invokestatic 146	com/layer/sdk/internal/lsdkk/k:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   676: aload 6
    //   678: astore 5
    //   680: goto -118 -> 562
    //   683: astore 5
    //   685: aconst_null
    //   686: astore_3
    //   687: aload 4
    //   689: astore_0
    //   690: aload 5
    //   692: astore 4
    //   694: goto -223 -> 471
    //   697: astore 4
    //   699: goto -228 -> 471
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	702	0	paramb	com.google.firebase.messaging.b
    //   0	702	1	paramContext	Context
    //   1	598	2	bool	boolean
    //   159	528	3	localObject1	Object
    //   167	294	4	localObject2	Object
    //   465	223	4	localJSONException1	org.json.JSONException
    //   692	1	4	localObject3	Object
    //   697	1	4	localJSONException2	org.json.JSONException
    //   194	485	5	localObject4	Object
    //   683	8	5	localJSONException3	org.json.JSONException
    //   3	674	6	localObject5	Object
    //   135	500	7	localObject6	Object
    //   97	497	8	localMap	Map
    //   114	476	9	localUUID	UUID
    //   351	194	10	localObject7	Object
    //   647	7	10	localLayerException	LayerException
    //   358	37	11	locala	com.layer.b.a.a.a
    // Exception table:
    //   from	to	target	type
    //   116	160	465	org/json/JSONException
    //   514	525	604	com/layer/sdk/exceptions/LayerException
    //   555	562	647	com/layer/sdk/exceptions/LayerException
    //   169	180	683	org/json/JSONException
    //   183	196	683	org/json/JSONException
    //   206	213	683	org/json/JSONException
    //   216	225	683	org/json/JSONException
    //   228	237	683	org/json/JSONException
    //   240	251	683	org/json/JSONException
    //   254	266	683	org/json/JSONException
    //   266	290	697	org/json/JSONException
  }
  
  public static boolean isLayerMessage(com.google.firebase.messaging.b paramb)
  {
    paramb = paramb.getData();
    if ((paramb == null) || (paramb.isEmpty()))
    {
      if (k.a(2)) {
        k.a(a, "Not a Layer push due to empty FCM data.");
      }
      return false;
    }
    if ((!paramb.containsKey("layer")) || (TextUtils.isEmpty((CharSequence)paramb.get("layer"))))
    {
      if (k.a(2)) {
        k.a(a, "Not a Layer push due to no Layer data.");
      }
      return false;
    }
    if ((!paramb.containsKey("user-id")) || (TextUtils.isEmpty((CharSequence)paramb.get("user-id"))))
    {
      if (k.a(2)) {
        k.a(a, "Not a Layer push due to empty user-id.");
      }
      return false;
    }
    return true;
  }
  
  public void onMessageReceived(com.google.firebase.messaging.b paramb)
  {
    handleMessageReceived(paramb, this);
  }
  
  public static enum Origin
  {
    FCM("FCM"),  LAYER("Layer");
    
    private final String a;
    
    private Origin(String paramString)
    {
      this.a = paramString;
    }
    
    public final String getValue()
    {
      return this.a;
    }
    
    public final String toString()
    {
      return this.a;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/services/LayerFcmService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */