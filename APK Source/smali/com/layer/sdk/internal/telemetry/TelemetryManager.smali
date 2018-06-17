.class public Lcom/layer/sdk/internal/telemetry/TelemetryManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;
    }
.end annotation


# static fields
.field private static final HOURS_48_IN_SECONDS:I

.field private static final HOURS_72_IN_SECONDS:I

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_LAYER_APP_ID:Ljava/lang/String; = "layer_app_id"

.field private static final ONE_WEEK_IN_MILLIS:J

.field private static final TAG:Ljava/lang/String; = "LayerSDK:Tele"

.field private static final TELEMETRY_VERSION:Ljava/lang/String; = "+1"

.field static btQ:Lcom/layer/sdk/internal/telemetry/g;

.field private static sContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static sGson:Lcom/google/a/f;

.field private static sInitComplete:Z

.field private static sIsEnabled:Z

.field private static sLayerMessengerVersion:Ljava/lang/String;

.field private static sSharedPreferences:Landroid/content/SharedPreferences;

.field private static sUiSdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x30

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->HOURS_48_IN_SECONDS:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x48

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->HOURS_72_IN_SECONDS:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->ONE_WEEK_IN_MILLIS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static aw(Landroid/content/Context;)Lcom/layer/sdk/internal/telemetry/g;
    .locals 6

    invoke-static {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->getSavedDataOrClearIfInvalid(Landroid/content/Context;)Lcom/layer/sdk/internal/telemetry/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/telemetry/g;->wJ()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/telemetry/g;->wI()Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v1

    iget-object v2, v1, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    iget-object v2, v2, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, v0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static declared-synchronized ax(Landroid/content/Context;)V
    .locals 2

    const-class v1, Lcom/layer/sdk/internal/telemetry/TelemetryManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->clearPersistedRecords(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sInitComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized b(Landroid/content/Context;J)V
    .locals 7

    const-class v1, Lcom/layer/sdk/internal/telemetry/TelemetryManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->getSavedDataOrClearIfInvalid(Landroid/content/Context;)Lcom/layer/sdk/internal/telemetry/g;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    :cond_0
    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    iget-object v2, v0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/telemetry/f;

    iget-object v0, v0, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    iget-object v0, v0, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-gtz v0, :cond_1

    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->persist(Landroid/content/SharedPreferences;Lcom/layer/sdk/internal/telemetry/g;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    monitor-exit v1

    return-void
.end method

.method private static cancelTelemetryUploadJob(Lcom/firebase/jobdispatcher/e;)V
    .locals 6

    const-string v0, "SDK_UPLOAD"

    iget-object v1, p0, Lcom/firebase/jobdispatcher/e;->axm:Lcom/firebase/jobdispatcher/c;

    invoke-interface {v1, v0}, Lcom/firebase/jobdispatcher/c;->aK(Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CANCEL_RESULT_SUCCESS"

    const-string v1, "LayerSDK:Tele"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Regular telemetry job cancelling result = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static declared-synchronized clearPersistedRecords(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/layer/sdk/internal/telemetry/TelemetryManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "LAYER_TELEMETRY"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static fetchCurrentRecord(Landroid/content/Context;)Lcom/layer/sdk/internal/telemetry/f;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->fetchCurrentRecord(Landroid/content/Context;J)Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized fetchCurrentRecord(Landroid/content/Context;J)Lcom/layer/sdk/internal/telemetry/f;
    .locals 5

    const-class v1, Lcom/layer/sdk/internal/telemetry/TelemetryManager;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    if-eqz v2, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/telemetry/g;->wI()Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/telemetry/g;->wI()Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v0

    iget-object v2, v0, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    iget-object v2, v2, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->getNewRecord(Landroid/content/Context;J)Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v0

    sget-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    invoke-virtual {v2, v0}, Lcom/layer/sdk/internal/telemetry/g;->a(Lcom/layer/sdk/internal/telemetry/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getGson()Lcom/google/a/f;
    .locals 2

    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sGson:Lcom/google/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/g;

    invoke-direct {v0}, Lcom/google/a/g;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/a/g;->bgR:Z

    invoke-virtual {v0}, Lcom/google/a/g;->vc()Lcom/google/a/f;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sGson:Lcom/google/a/f;

    :cond_0
    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sGson:Lcom/google/a/f;

    return-object v0
.end method

.method private static getNewRecord(Landroid/content/Context;J)Lcom/layer/sdk/internal/telemetry/f;
    .locals 9

    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x2

    const/4 v3, 0x0

    new-instance v2, Ljava/util/GregorianCalendar;

    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v1, "UTC"

    invoke-direct {v0, v4, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, v7, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->set(II)V

    new-instance v3, Ljava/util/GregorianCalendar;

    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v1, "UTC"

    invoke-direct {v0, v4, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v0, 0x17

    invoke-virtual {v3, v5, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0x3b

    invoke-virtual {v3, v6, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0x3b

    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    const/16 v1, 0x3e7

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    new-instance v0, Lcom/layer/sdk/internal/telemetry/f;

    invoke-static {}, Lcom/layer/sdk/LayerClient;->getVersion()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sUiSdkVersion:Ljava/lang/String;

    sget-object v6, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sLayerMessengerVersion:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/layer/sdk/internal/telemetry/f;-><init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static declared-synchronized getSavedDataOrClearIfInvalid(Landroid/content/Context;)Lcom/layer/sdk/internal/telemetry/g;
    .locals 9

    const/4 v1, 0x0

    const-class v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "id"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "layer_app_id"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    const-string v5, "records"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->isRecordJsonSemanticallyValid(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LayerSDK:Tele"

    const-string v4, "Invalid serialized record in SharedPreference"

    invoke-static {v3, v4}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "LayerSDK:Tele"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid serialized record: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->ax(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    return-object v1

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->getGson()Lcom/google/a/f;

    move-result-object v7

    const-class v8, Lcom/layer/sdk/internal/telemetry/f;

    invoke-virtual {v7, v0, v8}, Lcom/google/a/f;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/telemetry/f;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/telemetry/f;->isValid()Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "LayerSDK:Tele"

    const-string v4, "Invalid record in SharedPreference"

    invoke-static {v3, v4}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "LayerSDK:Tele"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid record: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    invoke-static {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->ax(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    :try_start_2
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/layer/sdk/internal/telemetry/g;

    invoke-direct {v0, v3, v4, v5}, Lcom/layer/sdk/internal/telemetry/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, v0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, v0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    new-instance v4, Lcom/layer/sdk/internal/telemetry/f$b;

    invoke-direct {v4}, Lcom/layer/sdk/internal/telemetry/f$b;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v1

    :goto_2
    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "LAYER_TELEMETRY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static init(Lcom/layer/sdk/internal/a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LayerSDK:Tele"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Telemetry init :  appId:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/a;->getAppId()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " isEnabled: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " telemetryUrl : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " uiSdkVersion: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " layerMessengerVersion"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " initTimeinMillis : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/a;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Lcom/firebase/jobdispatcher/e;

    new-instance v0, Lcom/firebase/jobdispatcher/g;

    invoke-direct {v0, v1}, Lcom/firebase/jobdispatcher/g;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v0}, Lcom/firebase/jobdispatcher/e;-><init>(Lcom/firebase/jobdispatcher/c;)V

    sput-boolean p1, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sIsEnabled:Z

    if-nez p1, :cond_2

    invoke-static {v4}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->cancelTelemetryUploadJob(Lcom/firebase/jobdispatcher/e;)V

    const-string v0, "LAYER_TELEMETRY"

    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sInitComplete:Z

    if-eqz v0, :cond_3

    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LayerSDK:Tele"

    const-string v1, "Init already completed"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sContextWeakReference:Ljava/lang/ref/WeakReference;

    sput-object p3, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sUiSdkVersion:Ljava/lang/String;

    sput-object p4, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sLayerMessengerVersion:Ljava/lang/String;

    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_4

    const-string v0, "LAYER_TELEMETRY"

    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    :cond_4
    invoke-static {v1}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->getSavedDataOrClearIfInvalid(Landroid/content/Context;)Lcom/layer/sdk/internal/telemetry/g;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/layer/sdk/internal/a;->getAppId()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/layer/sdk/internal/a;->getAppId()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_7

    new-instance v6, Lcom/layer/sdk/internal/telemetry/g;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v6, v5, v0, v7}, Lcom/layer/sdk/internal/telemetry/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sput-object v6, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    invoke-static {v1, v2, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->getNewRecord(Landroid/content/Context;J)Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v0

    sget-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    invoke-virtual {v2, v0}, Lcom/layer/sdk/internal/telemetry/g;->a(Lcom/layer/sdk/internal/telemetry/f;)V

    invoke-static {v1}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->persist(Landroid/content/SharedPreferences;Lcom/layer/sdk/internal/telemetry/g;)V

    :cond_5
    :goto_2
    invoke-static {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->registerSyncListener(Lcom/layer/sdk/LayerClient;)V

    sget v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->HOURS_48_IN_SECONDS:I

    sget v1, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->HOURS_72_IN_SECONDS:I

    invoke-static {v0, v1}, Lcom/firebase/jobdispatcher/z;->at(II)Lcom/firebase/jobdispatcher/u$b;

    move-result-object v0

    invoke-static {v4, v0, v10, p2}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->scheduleTelemetryUploadJob(Lcom/firebase/jobdispatcher/e;Lcom/firebase/jobdispatcher/u;ZLjava/lang/String;)V

    sput-boolean v10, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sInitComplete:Z

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    invoke-static {v4}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->cancelTelemetryUploadJob(Lcom/firebase/jobdispatcher/e;)V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "LayerSDK:Tele"

    const-string v1, "Cannot init Telemetry with a null app id"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot init Telemetry with a null app id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/telemetry/g;->wH()Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/telemetry/g;->wH()Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v0

    iget-object v0, v0, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    iget-object v0, v0, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->ONE_WEEK_IN_MILLIS:J

    sub-long/2addr v6, v8

    cmp-long v0, v2, v6

    if-gtz v0, :cond_5

    invoke-static {v4, p2}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->scheduleOneShotUpload(Lcom/firebase/jobdispatcher/e;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    sget-wide v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->ONE_WEEK_IN_MILLIS:J

    invoke-static {v1, v2, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->b(Landroid/content/Context;J)V

    goto :goto_2
.end method

.method private static init(Lcom/layer/sdk/internal/a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 13

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LayerSDK:Tele"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Telemetry init :  appId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/a;->getAppId()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " telemetryUrl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uiSdkVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " layerMessengerVersion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " initTimeinMillis : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/a;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/firebase/jobdispatcher/e;

    new-instance v2, Lcom/firebase/jobdispatcher/g;

    invoke-direct {v2, v3}, Lcom/firebase/jobdispatcher/g;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v2}, Lcom/firebase/jobdispatcher/e;-><init>(Lcom/firebase/jobdispatcher/c;)V

    sput-boolean p1, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sIsEnabled:Z

    if-nez p1, :cond_2

    invoke-static {v4}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->cancelTelemetryUploadJob(Lcom/firebase/jobdispatcher/e;)V

    const-string v2, "LAYER_TELEMETRY"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sInitComplete:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LayerSDK:Tele"

    const-string v3, "Init already completed"

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sContextWeakReference:Ljava/lang/ref/WeakReference;

    sput-object p3, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sUiSdkVersion:Ljava/lang/String;

    sput-object p4, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sLayerMessengerVersion:Ljava/lang/String;

    sget-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_4

    const-string v2, "LAYER_TELEMETRY"

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    :cond_4
    invoke-static {v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->getSavedDataOrClearIfInvalid(Landroid/content/Context;)Lcom/layer/sdk/internal/telemetry/g;

    move-result-object v2

    sput-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    if-nez v2, :cond_9

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/layer/sdk/internal/a;->getAppId()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/layer/sdk/internal/a;->getAppId()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_7

    new-instance v6, Lcom/layer/sdk/internal/telemetry/g;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v6, v5, v2, v7}, Lcom/layer/sdk/internal/telemetry/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sput-object v6, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    move-wide/from16 v0, p5

    invoke-static {v3, v0, v1}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->getNewRecord(Landroid/content/Context;J)Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v2

    sget-object v5, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    invoke-virtual {v5, v2}, Lcom/layer/sdk/internal/telemetry/g;->a(Lcom/layer/sdk/internal/telemetry/f;)V

    invoke-static {v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->persist(Landroid/content/SharedPreferences;Lcom/layer/sdk/internal/telemetry/g;)V

    :cond_5
    :goto_2
    invoke-static {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->registerSyncListener(Lcom/layer/sdk/LayerClient;)V

    sget v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->HOURS_48_IN_SECONDS:I

    sget v3, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->HOURS_72_IN_SECONDS:I

    invoke-static {v2, v3}, Lcom/firebase/jobdispatcher/z;->at(II)Lcom/firebase/jobdispatcher/u$b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v4, v2, v3, p2}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->scheduleTelemetryUploadJob(Lcom/firebase/jobdispatcher/e;Lcom/firebase/jobdispatcher/u;ZLjava/lang/String;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sInitComplete:Z

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    invoke-static {v4}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->cancelTelemetryUploadJob(Lcom/firebase/jobdispatcher/e;)V

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "LayerSDK:Tele"

    const-string v3, "Cannot init Telemetry with a null app id"

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot init Telemetry with a null app id"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    sget-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/telemetry/g;->wH()Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/telemetry/g;->wH()Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v2

    iget-object v2, v2, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    iget-object v2, v2, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->ONE_WEEK_IN_MILLIS:J

    sub-long/2addr v8, v10

    cmp-long v2, v6, v8

    if-gtz v2, :cond_5

    invoke-static {v4, p2}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->scheduleOneShotUpload(Lcom/firebase/jobdispatcher/e;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    sget-wide v6, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->ONE_WEEK_IN_MILLIS:J

    invoke-static {v3, v6, v7}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->b(Landroid/content/Context;J)V

    goto :goto_2
.end method

.method private static isRecordJsonSemanticallyValid(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "period"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "environment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "device"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "performance"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "usage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized persist(Landroid/content/SharedPreferences;Lcom/layer/sdk/internal/telemetry/g;)V
    .locals 7

    const-class v1, Lcom/layer/sdk/internal/telemetry/TelemetryManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1, v2, v0}, Lcom/layer/sdk/internal/telemetry/g;->b(Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "id"

    sget-object v5, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    iget-object v5, v5, Lcom/layer/sdk/internal/telemetry/g;->btN:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "layer_app_id"

    sget-object v5, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    iget-object v5, v5, Lcom/layer/sdk/internal/telemetry/g;->btO:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "records"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "LayerSDK:Tele"

    const-string v5, "Attempting to persist invalid record"

    invoke-static {v4, v5}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "LayerSDK:Tele"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid record: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    monitor-exit v1

    return-void
.end method

.method public static record(Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;J)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->record(Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;JJ)V

    return-void
.end method

.method public static declared-synchronized record(Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;JJ)V
    .locals 7

    const-class v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sIsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sInitComplete:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LayerSDK:Tele"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s : %s = %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Init not complete. Cannot record: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    const/4 v1, 0x0

    :try_start_2
    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_5

    sget-object v3, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    if-eqz v3, :cond_5

    invoke-static {v0, p3, p4}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->fetchCurrentRecord(Landroid/content/Context;J)Lcom/layer/sdk/internal/telemetry/f;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/layer/sdk/internal/telemetry/TelemetryManager$2;->btS:[I

    invoke-virtual {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    :goto_1
    sget-object v1, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->btQ:Lcom/layer/sdk/internal/telemetry/g;

    invoke-static {v1, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->persist(Landroid/content/SharedPreferences;Lcom/layer/sdk/internal/telemetry/g;)V

    :cond_3
    :goto_2
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LayerSDK:Tele"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s : %s = %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    const-string v0, "RECORDED"

    :goto_3
    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, v0, Lcom/layer/sdk/internal/telemetry/f;->btJ:Lcom/layer/sdk/internal/telemetry/e;

    iget-object v1, v1, Lcom/layer/sdk/internal/telemetry/e;->btC:Lcom/layer/sdk/internal/telemetry/d;

    invoke-virtual {v1, p1, p2}, Lcom/layer/sdk/internal/telemetry/d;->J(J)V

    goto :goto_1

    :pswitch_1
    iget-object v1, v0, Lcom/layer/sdk/internal/telemetry/f;->btJ:Lcom/layer/sdk/internal/telemetry/e;

    iget-object v1, v1, Lcom/layer/sdk/internal/telemetry/e;->btD:Lcom/layer/sdk/internal/telemetry/d;

    invoke-virtual {v1, p1, p2}, Lcom/layer/sdk/internal/telemetry/d;->J(J)V

    goto :goto_1

    :pswitch_2
    iget-object v1, v0, Lcom/layer/sdk/internal/telemetry/f;->btJ:Lcom/layer/sdk/internal/telemetry/e;

    iget-object v1, v1, Lcom/layer/sdk/internal/telemetry/e;->btE:Lcom/layer/sdk/internal/telemetry/d;

    invoke-virtual {v1, p1, p2}, Lcom/layer/sdk/internal/telemetry/d;->J(J)V

    goto :goto_1

    :pswitch_3
    iget-object v1, v0, Lcom/layer/sdk/internal/telemetry/f;->btJ:Lcom/layer/sdk/internal/telemetry/e;

    iget-object v1, v1, Lcom/layer/sdk/internal/telemetry/e;->btB:Lcom/layer/sdk/internal/telemetry/d;

    invoke-virtual {v1, p1, p2}, Lcom/layer/sdk/internal/telemetry/d;->J(J)V

    goto :goto_1

    :pswitch_4
    iget-object v1, v0, Lcom/layer/sdk/internal/telemetry/f;->btJ:Lcom/layer/sdk/internal/telemetry/e;

    iget-object v1, v1, Lcom/layer/sdk/internal/telemetry/e;->btF:Lcom/layer/sdk/internal/telemetry/d;

    invoke-virtual {v1, p1, p2}, Lcom/layer/sdk/internal/telemetry/d;->J(J)V

    goto :goto_1

    :pswitch_5
    iget-object v1, v0, Lcom/layer/sdk/internal/telemetry/f;->btK:Lcom/layer/sdk/internal/telemetry/h;

    iget-wide v4, v1, Lcom/layer/sdk/internal/telemetry/h;->btT:J

    add-long/2addr v4, p1

    iput-wide v4, v1, Lcom/layer/sdk/internal/telemetry/h;->btT:J

    goto :goto_1

    :pswitch_6
    iget-object v1, v0, Lcom/layer/sdk/internal/telemetry/f;->btK:Lcom/layer/sdk/internal/telemetry/h;

    iget-wide v4, v1, Lcom/layer/sdk/internal/telemetry/h;->btU:J

    add-long/2addr v4, p1

    iput-wide v4, v1, Lcom/layer/sdk/internal/telemetry/h;->btU:J

    goto :goto_1

    :cond_4
    const-string v0, "NOT RECORDED"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static registerSyncListener(Lcom/layer/sdk/LayerClient;)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$1;

    invoke-direct {v0}, Lcom/layer/sdk/internal/telemetry/TelemetryManager$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/LayerClient;->registerSyncListener(Lcom/layer/sdk/listeners/LayerSyncListener;)Lcom/layer/sdk/LayerClient;

    return-void
.end method

.method private static scheduleOneShotUpload(Lcom/firebase/jobdispatcher/e;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_EXTRA_ENDPOINT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/firebase/jobdispatcher/e;->kE()Lcom/firebase/jobdispatcher/n$a;

    move-result-object v1

    const-class v2, Lcom/layer/sdk/internal/telemetry/TelemetryUploadService;

    invoke-virtual {v1, v2}, Lcom/firebase/jobdispatcher/n$a;->g(Ljava/lang/Class;)Lcom/firebase/jobdispatcher/n$a;

    move-result-object v1

    const-string v2, "SDK_UPLOAD_ONE_SHOT+1"

    iput-object v2, v1, Lcom/firebase/jobdispatcher/n$a;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v6, v2}, Lcom/firebase/jobdispatcher/z;->at(II)Lcom/firebase/jobdispatcher/u$b;

    move-result-object v2

    iput-object v2, v1, Lcom/firebase/jobdispatcher/n$a;->axG:Lcom/firebase/jobdispatcher/u;

    iput-object v0, v1, Lcom/firebase/jobdispatcher/n$a;->extras:Landroid/os/Bundle;

    iput-boolean v6, v1, Lcom/firebase/jobdispatcher/n$a;->axJ:Z

    const/4 v0, 0x2

    iput v0, v1, Lcom/firebase/jobdispatcher/n$a;->axI:I

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/firebase/jobdispatcher/n$a;->axL:Z

    invoke-virtual {v1}, Lcom/firebase/jobdispatcher/n$a;->kS()Lcom/firebase/jobdispatcher/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/firebase/jobdispatcher/e;->a(Lcom/firebase/jobdispatcher/n;)I

    move-result v0

    return v0
.end method

.method private static scheduleTelemetryUploadJob(Lcom/firebase/jobdispatcher/e;Lcom/firebase/jobdispatcher/u;ZLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_EXTRA_ENDPOINT"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/firebase/jobdispatcher/e;->kE()Lcom/firebase/jobdispatcher/n$a;

    move-result-object v1

    const-class v2, Lcom/layer/sdk/internal/telemetry/TelemetryUploadService;

    invoke-virtual {v1, v2}, Lcom/firebase/jobdispatcher/n$a;->g(Ljava/lang/Class;)Lcom/firebase/jobdispatcher/n$a;

    move-result-object v1

    const-string v2, "SDK_UPLOAD+1"

    iput-object v2, v1, Lcom/firebase/jobdispatcher/n$a;->tag:Ljava/lang/String;

    iput-object p1, v1, Lcom/firebase/jobdispatcher/n$a;->axG:Lcom/firebase/jobdispatcher/u;

    iput-object v0, v1, Lcom/firebase/jobdispatcher/n$a;->extras:Landroid/os/Bundle;

    iput-boolean p2, v1, Lcom/firebase/jobdispatcher/n$a;->axJ:Z

    iput v3, v1, Lcom/firebase/jobdispatcher/n$a;->axI:I

    sget-object v0, Lcom/firebase/jobdispatcher/x;->ayb:Lcom/firebase/jobdispatcher/x;

    iput-object v0, v1, Lcom/firebase/jobdispatcher/n$a;->axH:Lcom/firebase/jobdispatcher/x;

    iput-boolean v5, v1, Lcom/firebase/jobdispatcher/n$a;->axL:Z

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, v1, Lcom/firebase/jobdispatcher/n$a;->axK:[I

    invoke-virtual {v1}, Lcom/firebase/jobdispatcher/n$a;->kS()Lcom/firebase/jobdispatcher/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/firebase/jobdispatcher/e;->a(Lcom/firebase/jobdispatcher/n;)I

    move-result v0

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "SCHEDULE_RESULT_UNKNOWN_ERROR"

    :goto_0
    const-string v1, "LayerSDK:Tele"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Regular telemetry job scheduling result = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_1
    const-string v0, "SCHEDULE_RESULT_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "SCHEDULE_RESULT_NO_DRIVER_AVAILABLE"

    goto :goto_0

    :pswitch_3
    const-string v0, "SCHEDULE_RESULT_UNSUPPORTED_TRIGGER"

    goto :goto_0

    :pswitch_4
    const-string v0, "SCHEDULE_RESULT_UNSUPPORTED_TRIGGER"

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x4
        0x1
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
