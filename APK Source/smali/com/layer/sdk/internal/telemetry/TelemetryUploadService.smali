.class public Lcom/layer/sdk/internal/telemetry/TelemetryUploadService;
.super Lcom/firebase/jobdispatcher/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/telemetry/TelemetryUploadService$a;,
        Lcom/layer/sdk/internal/telemetry/TelemetryUploadService$b;
    }
.end annotation


# static fields
.field public static final JOB_TAG_ONE_SHOT:Ljava/lang/String; = "SDK_UPLOAD_ONE_SHOT"

.field public static final JOB_TAG_SCHEDULED_UPLOAD:Ljava/lang/String; = "SDK_UPLOAD"

.field private static final JSON:Lcom/b/a/w;

.field public static final KEY_EXTRA_ENDPOINT:Ljava/lang/String; = "KEY_EXTRA_ENDPOINT"

.field private static final ONE_WEEK_IN_MILLIS:I = 0x240c8400

.field public static final TAG:Ljava/lang/String; = "LayerSDK:Tele"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lcom/b/a/w;->dK(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryUploadService;->JSON:Lcom/b/a/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/firebase/jobdispatcher/y;-><init>()V

    return-void
.end method

.method private static uploadTelemetryDataAndPurgeOutdatedRecords(Landroid/content/Context;Lcom/layer/sdk/internal/telemetry/g;Ljava/lang/String;)Z
    .locals 11

    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v0, 0x1

    const/4 v9, 0x6

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/layer/sdk/internal/telemetry/g;->wJ()I

    move-result v2

    if-lez v2, :cond_13

    new-instance v5, Lcom/b/a/x;

    invoke-direct {v5}, Lcom/b/a/x;-><init>()V

    const-wide/16 v2, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3, v6}, Lcom/b/a/x;->a(JLjava/util/concurrent/TimeUnit;)V

    new-array v2, v0, [Lcom/b/a/y;

    sget-object v3, Lcom/b/a/y;->bMk:Lcom/b/a/y;

    aput-object v3, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/b/a/x;->x(Ljava/util/List;)Lcom/b/a/x;

    new-instance v2, Lcom/google/a/g;

    invoke-direct {v2}, Lcom/google/a/g;-><init>()V

    new-instance v3, Lcom/layer/sdk/internal/telemetry/a;

    invoke-direct {v3}, Lcom/layer/sdk/internal/telemetry/a;-><init>()V

    iput-object v3, v2, Lcom/google/a/g;->bgP:Lcom/google/a/e;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    iput-object v3, v2, Lcom/google/a/g;->bgG:Ljava/lang/String;

    iput-boolean v1, v2, Lcom/google/a/g;->bgR:Z

    iput-boolean v0, v2, Lcom/google/a/g;->bgz:Z

    const-class v3, Lcom/layer/sdk/internal/telemetry/f$a;

    new-instance v6, Lcom/layer/sdk/internal/telemetry/TelemetryUploadService$b;

    invoke-direct {v6}, Lcom/layer/sdk/internal/telemetry/TelemetryUploadService$b;-><init>()V

    invoke-virtual {v2, v3, v6}, Lcom/google/a/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/a/g;

    move-result-object v2

    const-class v3, Lcom/layer/sdk/internal/telemetry/d;

    new-instance v6, Lcom/layer/sdk/internal/telemetry/TelemetryUploadService$a;

    invoke-direct {v6}, Lcom/layer/sdk/internal/telemetry/TelemetryUploadService$a;-><init>()V

    invoke-virtual {v2, v3, v6}, Lcom/google/a/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/g;->vc()Lcom/google/a/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/a/f;->ab(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LayerSDK:Tele"

    invoke-static {v2, v6}, Lcom/layer/sdk/internal/lsdkk/k;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v2, Lcom/b/a/aa$a;

    invoke-direct {v2}, Lcom/b/a/aa$a;-><init>()V

    invoke-virtual {v2, p2}, Lcom/b/a/aa$a;->a(Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v7

    sget-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryUploadService;->JSON:Lcom/b/a/w;

    sget-object v3, Lcom/b/a/a/i;->bII:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/b/a/w;->f:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/b/a/w;->f:Ljava/lang/String;

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    sget-object v3, Lcom/b/a/a/i;->bII:Ljava/nio/charset/Charset;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "; charset=utf-8"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/w;->dK(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v2

    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/b/a/ab;->a(Lcom/b/a/w;[B)Lcom/b/a/ab;

    move-result-object v2

    const-string v3, "POST"

    invoke-virtual {v7, v3, v2}, Lcom/b/a/aa$a;->a(Ljava/lang/String;Lcom/b/a/ab;)Lcom/b/a/aa$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/b/a/x;->e(Lcom/b/a/aa;)Lcom/b/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/h;->xb()Lcom/b/a/ac;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    iget-object v2, v3, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-virtual {v2}, Lcom/b/a/b;->f()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    invoke-virtual {p1}, Lcom/layer/sdk/internal/telemetry/g;->wI()Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/b/a/ac;->d()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/layer/sdk/internal/telemetry/g;->wI()Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v1

    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "LayerSDK:Tele"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Upload task successful, purging records older than: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    iget-object v4, v4, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v1, v1, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    iget-object v1, v1, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->b(Landroid/content/Context;J)V

    :goto_1
    return v0

    :cond_3
    move-object v3, v4

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_6

    iget v0, v3, Lcom/b/a/ac;->c:I

    const/16 v5, 0x1a6

    if-ne v0, v5, :cond_6

    invoke-static {v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "LayerSDK:Tele"

    const-string v2, "Upload task unsuccessful. HTTP 422. Data with invalid semantics. Clearing all records"

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->ax(Landroid/content/Context;)V

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    invoke-static {v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "LayerSDK:Tele"

    const-string v5, "Upload task unsuccessful, purging records older than a week"

    invoke-static {v0, v5}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_7

    const-string v0, "LayerSDK:Tele"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response - code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/b/a/ac;->c:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " body: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    iget-object v0, v4, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    iget-object v0, v0, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    invoke-static {p0, v2, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->b(Landroid/content/Context;J)V

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v3, v4

    :goto_2
    const/4 v5, 0x6

    :try_start_2
    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "LayerSDK:Tele"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    invoke-virtual {p1}, Lcom/layer/sdk/internal/telemetry/g;->wI()Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v2

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/b/a/ac;->d()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lcom/layer/sdk/internal/telemetry/g;->wI()Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v1

    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "LayerSDK:Tele"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Upload task successful, purging records older than: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    iget-object v4, v4, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    iget-object v1, v1, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    iget-object v1, v1, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->b(Landroid/content/Context;J)V

    goto/16 :goto_1

    :cond_a
    if-eqz v3, :cond_c

    iget v0, v3, Lcom/b/a/ac;->c:I

    const/16 v5, 0x1a6

    if-ne v0, v5, :cond_c

    invoke-static {v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "LayerSDK:Tele"

    const-string v2, "Upload task unsuccessful. HTTP 422. Data with invalid semantics. Clearing all records"

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->ax(Landroid/content/Context;)V

    :cond_b
    move v0, v1

    goto/16 :goto_1

    :cond_c
    invoke-static {v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "LayerSDK:Tele"

    const-string v5, "Upload task unsuccessful, purging records older than a week"

    invoke-static {v0, v5}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_d

    const-string v0, "LayerSDK:Tele"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response - code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/b/a/ac;->c:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " body: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    iget-object v0, v2, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    iget-object v0, v0, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    invoke-static {p0, v2, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->b(Landroid/content/Context;J)V

    move v0, v1

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    move-object v3, v4

    :goto_3
    invoke-virtual {p1}, Lcom/layer/sdk/internal/telemetry/g;->wI()Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v2

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/b/a/ac;->d()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {p1}, Lcom/layer/sdk/internal/telemetry/g;->wI()Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v1

    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "LayerSDK:Tele"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Upload task successful, purging records older than: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    iget-object v4, v4, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    iget-object v1, v1, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    iget-object v1, v1, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->b(Landroid/content/Context;J)V

    goto/16 :goto_1

    :cond_f
    if-eqz v3, :cond_11

    iget v0, v3, Lcom/b/a/ac;->c:I

    const/16 v5, 0x1a6

    if-ne v0, v5, :cond_11

    invoke-static {v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "LayerSDK:Tele"

    const-string v2, "Upload task unsuccessful. HTTP 422. Data with invalid semantics. Clearing all records"

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->ax(Landroid/content/Context;)V

    :cond_10
    move v0, v1

    goto/16 :goto_1

    :cond_11
    invoke-static {v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "LayerSDK:Tele"

    const-string v5, "Upload task unsuccessful, purging records older than a week"

    invoke-static {v0, v5}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_12

    const-string v0, "LayerSDK:Tele"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response - code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/b/a/ac;->c:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " body: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    iget-object v0, v2, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    iget-object v0, v0, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    invoke-static {p0, v2, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->b(Landroid/content/Context;J)V

    move v0, v1

    goto/16 :goto_1

    :cond_13
    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "LayerSDK:Tele"

    const-string v2, "Task scheduled with null or empty telemetry data"

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    move v0, v1

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    goto/16 :goto_3

    :catch_1
    move-exception v2

    goto/16 :goto_2
.end method


# virtual methods
.method public onRunJob(Lcom/firebase/jobdispatcher/r;)I
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LayerSDK:Tele"

    const-string v4, "Upload task started"

    invoke-static {v3, v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "KEY_EXTRA_ENDPOINT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "KEY_EXTRA_ENDPOINT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->aw(Landroid/content/Context;)Lcom/layer/sdk/internal/telemetry/g;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryUploadService;->uploadTelemetryDataAndPurgeOutdatedRecords(Landroid/content/Context;Lcom/layer/sdk/internal/telemetry/g;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "SDK_UPLOAD_ONE_SHOT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "LayerSDK:Tele"

    const-string v2, "Upload failing due to nonexistent endpoint. Not retrying."

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
