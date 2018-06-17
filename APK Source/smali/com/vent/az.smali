.class public final Lcom/vent/az;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/az$a;
    }
.end annotation


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static cgP:I

.field public static cgQ:Lokhttp3/t;

.field private static final cgR:Lokhttp3/s;

.field private static final cgS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final cgT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/vent/az;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    sput v0, Lcom/vent/az;->cgP:I

    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/s;->fw(Ljava/lang/String;)Lokhttp3/s;

    move-result-object v0

    sput-object v0, Lcom/vent/az;->cgR:Lokhttp3/s;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vent/az;->cgS:Ljava/util/Map;

    const-string v1, "\r"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vent/az;->cgS:Ljava/util/Map;

    const-string v1, "\n"

    const-string v2, " "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vent/az;->cgS:Ljava/util/Map;

    const-string v1, "\t"

    const-string v2, " "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vent/az;->cgS:Ljava/util/Map;

    const-string v1, "  "

    const-string v2, " "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vent/az;->cgT:Ljava/util/Map;

    const-string v1, "\r"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vent/az;->cgT:Ljava/util/Map;

    const-string v1, "\n\n"

    const-string v2, "\n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Ed()V
    .locals 1

    sget-object v0, Lcom/vent/az;->cgQ:Lokhttp3/t;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/vent/az;->cgQ:Lokhttp3/t;

    iget-object v0, v0, Lokhttp3/t;->cZb:Lokhttp3/c;

    iget-object v0, v0, Lokhttp3/c;->cWd:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->evictAll()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static Ee()V
    .locals 1

    new-instance v0, Lcom/vent/az$1;

    invoke-direct {v0}, Lcom/vent/az$1;-><init>()V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void
.end method

.method static Ef()V
    .locals 1

    sget-object v0, Lcom/vent/az;->cgQ:Lokhttp3/t;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/vent/az;->cgQ:Lokhttp3/t;

    iget-object v0, v0, Lokhttp3/t;->cZb:Lokhttp3/c;

    invoke-virtual {v0}, Lokhttp3/c;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/vent/az;->cgQ:Lokhttp3/t;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Lorg/json/JSONObject;)Lcom/vent/az$a;
    .locals 26

    if-nez p3, :cond_1

    const/4 v4, -0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    new-instance v18, Lcom/vent/az$a;

    invoke-direct/range {v18 .. v18}, Lcom/vent/az$a;-><init>()V

    const-class v5, Lcom/vent/az;

    monitor-enter v5

    :try_start_0
    sget v4, Lcom/vent/az;->cgP:I

    add-int/lit8 v19, v4, 0x1

    sput v19, Lcom/vent/az;->cgP:I

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    if-le v4, v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(retry)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    if-eqz p3, :cond_4

    :try_start_1
    sget-object v8, Lcom/vent/az;->cgR:Lokhttp3/s;

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v10, Lokhttp3/internal/c;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v8, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lokhttp3/s;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v10

    if-nez v10, :cond_3

    sget-object v10, Lokhttp3/internal/c;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "; charset=utf-8"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lokhttp3/s;->fw(Ljava/lang/String;)Lokhttp3/s;

    move-result-object v8

    :cond_3
    invoke-virtual {v11, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-static {v8, v10}, Lokhttp3/x;->a(Lokhttp3/s;[B)Lokhttp3/x;

    move-result-object v8

    :goto_3
    new-instance v10, Lokhttp3/w$a;

    invoke-direct {v10}, Lokhttp3/w$a;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v8}, Lokhttp3/w$a;->a(Ljava/lang/String;Lokhttp3/x;)Lokhttp3/w$a;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lokhttp3/w$a;->fy(Ljava/lang/String;)Lokhttp3/w$a;

    move-result-object v10

    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    array-length v11, v0

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v11, :cond_5

    aget-object v12, p2, v8

    const/4 v13, 0x0

    aget-object v13, v12, v13

    const/4 v14, 0x1

    aget-object v12, v12, v14

    iget-object v14, v10, Lokhttp3/w$a;->cZr:Lokhttp3/p$a;

    invoke-virtual {v14, v13, v12}, Lokhttp3/p$a;->X(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/p$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :sswitch_0
    const-string v5, "PUT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "POST"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct/range {p3 .. p3}, Lorg/json/JSONObject;-><init>()V

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    :try_start_3
    sget-object v8, Lcom/vent/az;->cgQ:Lokhttp3/t;

    invoke-virtual {v10}, Lokhttp3/w$a;->MH()Lokhttp3/w;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Lokhttp3/v;->a(Lokhttp3/t;Lokhttp3/w;Z)Lokhttp3/v;

    move-result-object v8

    invoke-interface {v8}, Lokhttp3/e;->Ma()Lokhttp3/y;

    move-result-object v7

    iget v8, v7, Lokhttp3/y;->code:I

    move-object/from16 v0, v18

    iput v8, v0, Lcom/vent/az$a;->bYo:I

    iget-object v8, v7, Lokhttp3/y;->cZu:Lokhttp3/z;

    invoke-virtual {v8}, Lokhttp3/z;->LX()Lokhttp3/s;

    move-result-object v11

    if-nez v11, :cond_10

    const-string v10, ""

    :goto_5
    iget-object v8, v7, Lokhttp3/y;->cZu:Lokhttp3/z;

    if-nez v8, :cond_11

    const-wide/16 v12, 0x0

    const/4 v8, 0x0

    move-wide/from16 v16, v12

    move-object v15, v8

    :goto_6
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_13

    const-string v8, "application/json"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "text/plain"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x7b

    if-eq v8, v11, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x5b

    if-ne v8, v11, :cond_13

    :cond_6
    const/4 v8, 0x1

    move v14, v8

    :goto_7
    move-object/from16 v0, v18

    iget v8, v0, Lcom/vent/az$a;->bYo:I

    const/16 v11, 0xc8

    if-lt v8, v11, :cond_7

    move-object/from16 v0, v18

    iget v8, v0, Lcom/vent/az$a;->bYo:I

    const/16 v11, 0x12b

    if-le v8, v11, :cond_8

    :cond_7
    move-object/from16 v0, v18

    iget v8, v0, Lcom/vent/az$a;->bYo:I

    const/16 v11, 0x191

    if-lt v8, v11, :cond_9

    move-object/from16 v0, v18

    iget v8, v0, Lcom/vent/az$a;->bYo:I

    const/16 v11, 0x194

    if-gt v8, v11, :cond_9

    :cond_8
    if-nez v14, :cond_14

    if-nez v12, :cond_14

    :cond_9
    const/4 v8, 0x1

    move v11, v8

    :goto_8
    iget-wide v0, v7, Lokhttp3/y;->receivedResponseAtMillis:J

    move-wide/from16 v22, v0

    iget-wide v0, v7, Lokhttp3/y;->sentRequestAtMillis:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/vent/az$a;->cgX:J

    if-eqz v14, :cond_15

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iput-object v8, v0, Lcom/vent/az$a;->bYp:Lorg/json/JSONObject;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/vent/az$a;->cgW:J

    :cond_a
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v22, v22, v20

    move-wide/from16 v0, v22

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/vent/az$a;->cgU:J

    const/4 v8, 0x0

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v22, "net "

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/vent/d/c;->h(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v9, 0x1

    :try_start_4
    const-string v11, "X-Runtime"

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v13}, Lokhttp3/y;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const/high16 v13, 0x447a0000    # 1000.0f

    mul-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-long v0, v11

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/vent/az$a;->cgV:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_b
    :goto_a
    :try_start_5
    iget-object v11, v7, Lokhttp3/y;->cZv:Lokhttp3/y;

    if-eqz v11, :cond_17

    iget-object v11, v7, Lokhttp3/y;->cZv:Lokhttp3/y;

    iget v11, v11, Lokhttp3/y;->code:I

    const/16 v13, 0x130

    if-ne v11, v13, :cond_17

    const/4 v11, 0x1

    :goto_b
    const-string v13, "CF-Cache-Status"

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v7, v13, v0}, Lokhttp3/y;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v22, "HIT"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v11, :cond_18

    const/16 v11, 0x43

    move v13, v11

    :goto_c
    if-eqz v12, :cond_1a

    iget-object v11, v7, Lokhttp3/y;->cZv:Lokhttp3/y;

    iget-object v11, v11, Lokhttp3/y;->message:Ljava/lang/String;

    move-object v12, v11

    :goto_d
    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :cond_c
    :goto_e
    packed-switch v11, :pswitch_data_1

    :goto_f
    const/4 v11, 0x1

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v22, "net "

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vent/az$a;->bYo:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/vent/az$a;->cgU:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms(n:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/vent/az$a;->cgX:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " s:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/vent/az$a;->cgV:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " j:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/vent/az$a;->cgW:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v22, 0x200

    add-long v16, v16, v22

    const-wide/16 v22, 0x400

    div-long v16, v16, v22

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ")KB "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/vent/d/c;->h(ILjava/lang/String;)V

    :cond_d
    if-nez v14, :cond_f

    move-object/from16 v0, v18

    iget v10, v0, Lcom/vent/az$a;->bYo:I

    const/16 v11, 0xc8

    if-lt v10, v11, :cond_e

    move-object/from16 v0, v18

    iget v10, v0, Lcom/vent/az$a;->bYo:I

    const/16 v11, 0x12b

    if-le v10, v11, :cond_f

    :cond_e
    iget-object v10, v7, Lokhttp3/y;->cZv:Lokhttp3/y;

    iget-object v10, v10, Lokhttp3/y;->message:Ljava/lang/String;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, v18

    iput-object v11, v0, Lcom/vent/az$a;->bYp:Lorg/json/JSONObject;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1d

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/vent/az$a;->bYp:Lorg/json/JSONObject;

    const-string v12, "error"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Error "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget v14, v0, Lcom/vent/az$a;->bYo:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_10
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/vent/az$a;->bYp:Lorg/json/JSONObject;

    const-string v11, "html_title"

    invoke-virtual {v10, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_f
    const/4 v5, 0x1

    move-object v6, v7

    :goto_11
    invoke-static {v6}, Lcom/vent/d/c;->c(Ljava/io/Closeable;)V

    if-nez v5, :cond_1f

    const-string v6, "GET"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x1

    if-gt v4, v6, :cond_1f

    const-wide/16 v6, 0x14d

    :try_start_6
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_12
    invoke-static {}, Lcom/vent/az;->Ee()V

    goto/16 :goto_2

    :cond_10
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v11, Lokhttp3/s;->type:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v11, Lokhttp3/s;->subtype:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    :cond_11
    invoke-virtual {v8}, Lokhttp3/z;->bytes()[B

    move-result-object v14

    array-length v8, v14

    int-to-long v12, v8

    new-instance v8, Ljava/lang/String;

    if-eqz v11, :cond_12

    sget-object v15, Lcom/vent/az;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v15}, Lokhttp3/s;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v11

    :goto_13
    invoke-direct {v8, v14, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-wide/from16 v16, v12

    move-object v15, v8

    goto/16 :goto_6

    :cond_12
    sget-object v11, Lcom/vent/az;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_13

    :cond_13
    const/4 v8, 0x0

    move v14, v8

    goto/16 :goto_7

    :cond_14
    const/4 v8, 0x0

    move v11, v8

    goto/16 :goto_8

    :cond_15
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/vent/az$a;->bYp:Lorg/json/JSONObject;

    if-nez v8, :cond_a

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, v18

    iput-object v8, v0, Lcom/vent/az$a;->bYp:Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v8

    const/4 v10, 0x1

    if-eq v9, v10, :cond_16

    xor-int/lit8 v9, v9, -0x1

    and-int/lit8 v9, v9, 0x1

    and-int/lit8 v9, v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "net "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vent/d/c;->h(ILjava/lang/String;)V

    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v10, v20

    move-object/from16 v0, v18

    iput-wide v10, v0, Lcom/vent/az$a;->cgU:J

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "net "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    iget-wide v10, v0, Lcom/vent/az$a;->cgU:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "ms "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    instance-of v6, v8, Ljava/net/SocketTimeoutException;

    if-eqz v6, :cond_1e

    const-string v6, "SocketTimeoutException"

    :goto_14
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/vent/d/c;->h(ILjava/lang/String;)V

    const/4 v6, 0x0

    move-object/from16 v0, v18

    iput v6, v0, Lcom/vent/az$a;->bYo:I

    invoke-static {v8}, Lcom/vent/d/c;->h(Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v0, v18

    iput-object v6, v0, Lcom/vent/az$a;->bYp:Lorg/json/JSONObject;

    move-object v6, v7

    goto/16 :goto_11

    :cond_17
    const/4 v11, 0x0

    goto/16 :goto_b

    :cond_18
    if-eqz v13, :cond_19

    const/16 v11, 0x50

    move v13, v11

    goto/16 :goto_c

    :cond_19
    const/16 v11, 0x4e

    move v13, v11

    goto/16 :goto_c

    :cond_1a
    if-eqz v14, :cond_1b

    const/4 v11, 0x0

    const/16 v12, 0x400

    :try_start_8
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v15, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/vent/az;->cgS:Ljava/util/Map;

    invoke-static {v11, v12}, Lcom/vent/d/e;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    goto/16 :goto_d

    :cond_1b
    const-string v11, "<title>"

    invoke-virtual {v15, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_1c

    const-string v12, "</title>"

    invoke-virtual {v15, v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    if-ltz v12, :cond_1c

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v15, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1c

    move-object v8, v11

    move-object v12, v11

    goto/16 :goto_d

    :cond_1c
    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v15, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/vent/az;->cgT:Ljava/util/Map;

    invoke-static {v11, v12}, Lcom/vent/d/e;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    goto/16 :goto_d

    :sswitch_2
    const-string v15, ""

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v11, 0x1

    goto/16 :goto_e

    :sswitch_3
    const-string v15, "application/json"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v11, 0x2

    goto/16 :goto_e

    :sswitch_4
    const-string v15, "text/html"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v11, 0x3

    goto/16 :goto_e

    :sswitch_5
    const-string v15, "text/plain"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v11, 0x4

    goto/16 :goto_e

    :pswitch_1
    const-string v10, "blank"

    goto/16 :goto_f

    :pswitch_2
    const-string v10, "json"

    goto/16 :goto_f

    :pswitch_3
    const-string v10, "html"

    goto/16 :goto_f

    :pswitch_4
    const-string v10, "plain"

    goto/16 :goto_f

    :cond_1d
    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/vent/az$a;->bYp:Lorg/json/JSONObject;

    const-string v11, "error"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget v13, v0, Lcom/vent/az$a;->bYo:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_10

    :cond_1e
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_14

    :catch_1
    move-exception v6

    goto/16 :goto_12

    :cond_1f
    return-object v18

    :catch_2
    move-exception v11

    goto/16 :goto_a

    nop

    :sswitch_data_0
    .sparse-switch
        0x136ef -> :sswitch_0
        0x2590a0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4081b8b3 -> :sswitch_4
        -0x29cf5b9 -> :sswitch_3
        0x0 -> :sswitch_2
        0x30b78e68 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static bu(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/vent/az;->cgQ:Lokhttp3/t;

    if-nez v0, :cond_0

    new-instance v0, Lokhttp3/t$a;

    invoke-direct {v0}, Lokhttp3/t$a;-><init>()V

    new-instance v1, Lokhttp3/c;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "http"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokhttp3/c;-><init>(Ljava/io/File;)V

    iput-object v1, v0, Lokhttp3/t$a;->cZb:Lokhttp3/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lokhttp3/t$a;->cWc:Lokhttp3/internal/a/f;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v1}, Lokhttp3/internal/c;->a(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lokhttp3/t$a;->connectTimeout:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v1}, Lokhttp3/internal/c;->a(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lokhttp3/t$a;->readTimeout:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v1}, Lokhttp3/internal/c;->a(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lokhttp3/t$a;->writeTimeout:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_1

    sget-object v1, Lokhttp3/u;->cZf:Lokhttp3/u;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/t$a;->E(Ljava/util/List;)Lokhttp3/t$a;

    :goto_0
    invoke-static {}, Lcom/vent/bb;->Es()Z

    sget-object v1, Lokhttp3/i;->cYJ:Lokhttp3/i;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/c;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/t$a;->connectionSpecs:Ljava/util/List;

    new-instance v1, Lokhttp3/t;

    invoke-direct {v1, v0}, Lokhttp3/t;-><init>(Lokhttp3/t$a;)V

    sput-object v1, Lcom/vent/az;->cgQ:Lokhttp3/t;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Lokhttp3/u;

    const/4 v2, 0x0

    sget-object v3, Lokhttp3/u;->cZh:Lokhttp3/u;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lokhttp3/u;->cZf:Lokhttp3/u;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/t$a;->E(Ljava/util/List;)Lokhttp3/t$a;

    goto :goto_0
.end method
