.class public Lcom/google/android/gms/internal/hz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hz$a;
    }
.end annotation


# static fields
.field private static volatile aUL:Lcom/google/android/gms/internal/hz;


# instance fields
.field final aLd:Lcom/google/android/gms/common/util/e;

.field final aQZ:J

.field final aUM:Landroid/content/Context;

.field final aUN:Lcom/google/android/gms/internal/gc;

.field private final aUO:Lcom/google/android/gms/internal/hl;

.field final aUP:Lcom/google/android/gms/internal/hb;

.field final aUQ:Lcom/google/android/gms/internal/hu;

.field final aUR:Lcom/google/android/gms/internal/kt;

.field private final aUS:Lcom/google/android/gms/internal/ht;

.field public final aUT:Lcom/google/android/gms/measurement/AppMeasurement;

.field public final aUU:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final aUV:Lcom/google/android/gms/internal/le;

.field private final aUW:Lcom/google/android/gms/internal/gz;

.field private final aUX:Lcom/google/android/gms/internal/hf;

.field private final aUY:Lcom/google/android/gms/internal/jq;

.field private final aUZ:Lcom/google/android/gms/internal/ja;

.field private final aVa:Lcom/google/android/gms/internal/fs;

.field private aVb:Lcom/google/android/gms/internal/gd;

.field aVc:Lcom/google/android/gms/internal/gx;

.field private aVd:Lcom/google/android/gms/internal/ju;

.field private aVe:Lcom/google/android/gms/internal/gj;

.field private aVf:Lcom/google/android/gms/internal/gw;

.field private aVg:Lcom/google/android/gms/internal/hj;

.field private aVh:Lcom/google/android/gms/internal/kz;

.field private aVi:Lcom/google/android/gms/internal/fz;

.field private aVj:Z

.field private aVk:Ljava/lang/Boolean;

.field private aVl:J

.field private aVm:Ljava/nio/channels/FileLock;

.field private aVn:Ljava/nio/channels/FileChannel;

.field private aVo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field aVp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field aVq:I

.field private aVr:I

.field private aVs:J

.field private aVt:J

.field private aVu:Z

.field private aVv:Z

.field private aVw:Z

.field private initialized:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/iz;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/hz;->initialized:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/iz;->aUM:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/hz;->aVs:J

    invoke-static {}, Lcom/google/android/gms/common/util/f;->oG()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/hz;->aQZ:J

    new-instance v0, Lcom/google/android/gms/internal/gc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gc;-><init>(Lcom/google/android/gms/internal/hz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    new-instance v0, Lcom/google/android/gms/internal/hl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hl;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aUO:Lcom/google/android/gms/internal/hl;

    new-instance v0, Lcom/google/android/gms/internal/hb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hb;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aUP:Lcom/google/android/gms/internal/hb;

    new-instance v0, Lcom/google/android/gms/internal/le;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/le;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aUV:Lcom/google/android/gms/internal/le;

    new-instance v0, Lcom/google/android/gms/internal/gz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gz;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aUW:Lcom/google/android/gms/internal/gz;

    new-instance v0, Lcom/google/android/gms/internal/fs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fs;-><init>(Lcom/google/android/gms/internal/hz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aVa:Lcom/google/android/gms/internal/fs;

    new-instance v0, Lcom/google/android/gms/internal/hf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hf;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aUX:Lcom/google/android/gms/internal/hf;

    new-instance v0, Lcom/google/android/gms/internal/jq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jq;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aUY:Lcom/google/android/gms/internal/jq;

    new-instance v0, Lcom/google/android/gms/internal/ja;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ja;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aUZ:Lcom/google/android/gms/internal/ja;

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/internal/hz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aUT:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/hz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aUU:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance v0, Lcom/google/android/gms/internal/kt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kt;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aUR:Lcom/google/android/gms/internal/kt;

    new-instance v0, Lcom/google/android/gms/internal/ht;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ht;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aUS:Lcom/google/android/gms/internal/ht;

    new-instance v0, Lcom/google/android/gms/internal/hu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hu;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aUQ:Lcom/google/android/gms/internal/hu;

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qC()Lcom/google/android/gms/internal/ja;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v2, v1, Lcom/google/android/gms/internal/ja;->aVQ:Lcom/google/android/gms/internal/jo;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/jo;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/jo;-><init>(Lcom/google/android/gms/internal/ja;B)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ja;->aVQ:Lcom/google/android/gms/internal/jo;

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ja;->aVQ:Lcom/google/android/gms/internal/jo;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ja;->aVQ:Lcom/google/android/gms/internal/jo;

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUQ:Lcom/google/android/gms/internal/hu;

    new-instance v1, Lcom/google/android/gms/internal/ia;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ia;-><init>(Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/internal/iz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final D(J)Z
    .locals 29

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->beginTransaction()V

    :try_start_0
    new-instance v21, Lcom/google/android/gms/internal/hz$a;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/hz$a;-><init>(Lcom/google/android/gms/internal/hz;B)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v14

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/hz;->aVs:J

    move-wide/from16 v16, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/iy;->pf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v14}, Lcom/google/android/gms/internal/gd;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-wide/16 v6, -0x1

    cmp-long v5, v16, v6

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    :goto_0
    const-wide/16 v8, -0x1

    cmp-long v5, v16, v8

    if-eqz v5, :cond_4

    const-string v5, "rowid <= ? and "

    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x94

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_5

    if-eqz v4, :cond_0

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/hz$a;->aVz:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/hz$a;->aVz:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_1
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_4a

    const/16 v17, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/hz$a;->aVz:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/lr;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    const/4 v14, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gc;->bZ(Ljava/lang/String;)Z

    move-result v18

    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_4
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/hz$a;->aVz:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_25

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/hz$a;->aVz:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/lr;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v4, v4, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ht;->C(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v4, "Dropping blacklisted raw event. appId"

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v5, v5, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v4, v4, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/le;->cG(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v4, v4, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/le;->cH(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_2
    const/4 v3, 0x1

    :goto_5
    if-nez v3, :cond_52

    const-string v3, "_err"

    iget-object v4, v2, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v3

    const/16 v4, 0xb

    const-string v5, "_ev"

    iget-object v2, v2, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/google/android/gms/internal/le;->b(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v2, v12

    move v6, v14

    move/from16 v7, v17

    :goto_6
    add-int/lit8 v4, v16, 0x1

    move-wide v12, v2

    move/from16 v16, v4

    move v14, v6

    move/from16 v17, v7

    goto/16 :goto_4

    :cond_3
    const/4 v5, 0x1

    :try_start_3
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    goto/16 :goto_0

    :cond_4
    const-string v5, ""

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v5

    move-object v11, v3

    move-object v12, v4

    :goto_7
    :try_start_4
    const-string v3, "raw_events_metadata"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "metadata"

    aput-object v6, v4, v5

    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    const/4 v7, 0x1

    aput-object v13, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const-string v10, "2"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Raw event metadata record is missing. appId"

    invoke-static {v11}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v12, :cond_0

    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    throw v2

    :cond_6
    const-wide/16 v6, -0x1

    cmp-long v5, v16, v6

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    :try_start_6
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    :goto_8
    const-wide/16 v8, -0x1

    cmp-long v5, v16, v8

    if-eqz v5, :cond_8

    const-string v5, " and rowid <= ?"

    :goto_9
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x54

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " order by rowid limit 1;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v5

    if-nez v5, :cond_9

    if-eqz v4, :cond_0

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :cond_7
    const/4 v5, 0x1

    :try_start_8
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v6, v5

    goto :goto_8

    :cond_8
    const-string v5, ""

    goto :goto_9

    :cond_9
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v13, v5

    move-object v11, v3

    move-object v12, v4

    goto/16 :goto_7

    :cond_a
    const/4 v3, 0x0

    :try_start_9
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mu;->a([BI)Lcom/google/android/gms/internal/mu;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/lu;

    invoke-direct {v4}, Lcom/google/android/gms/internal/lu;-><init>()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/mu;)Lcom/google/android/gms/internal/nd;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v5, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v11}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/gf;->b(Lcom/google/android/gms/internal/lu;)V

    const-wide/16 v4, -0x1

    cmp-long v3, v16, v4

    if-eqz v3, :cond_c

    const-string v5, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v11, v6, v3

    const/4 v3, 0x1

    aput-object v13, v6, v3

    const/4 v3, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    :goto_a
    const-string v3, "raw_events"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "rowid"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "name"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "timestamp"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string v8, "data"

    aput-object v8, v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v4

    :try_start_c
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Raw event data disappeared while in transaction. appId"

    invoke-static {v11}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v4, :cond_0

    :try_start_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    :try_start_e
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v4, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v11}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v12, :cond_0

    :try_start_f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    :cond_c
    :try_start_10
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v11, v6, v3

    const/4 v3, 0x1

    aput-object v13, v6, v3
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_a

    :catch_1
    move-exception v2

    move-object v3, v11

    move-object v4, v12

    :goto_b
    :try_start_11
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v6, "Data loss. Error selecting raw event. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v6, v3, v2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v4, :cond_0

    :try_start_12
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x0

    :try_start_13
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    array-length v6, v5

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mu;->a([BI)Lcom/google/android/gms/internal/mu;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/lr;

    invoke-direct {v6}, Lcom/google/android/gms/internal/lr;-><init>()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/mu;)Lcom/google/android/gms/internal/nd;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    const/4 v5, 0x1

    :try_start_15
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v6, Lcom/google/android/gms/internal/lr;->aYi:Ljava/lang/Long;

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3, v6}, Lcom/google/android/gms/internal/gf;->a(JLcom/google/android/gms/internal/lr;)Z
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-result v2

    if-nez v2, :cond_e

    if-eqz v4, :cond_0

    :try_start_16
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_2

    :catch_2
    move-exception v2

    :try_start_17
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v5, "Data loss. Failed to merge raw event. appId"

    invoke-static {v11}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-result v2

    if-nez v2, :cond_d

    if-eqz v4, :cond_0

    :try_start_18
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    :goto_c
    if-eqz v4, :cond_f

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v2

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v4, v4, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ht;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    iget-object v3, v2, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/le;->cI(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_13
    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v3, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    if-nez v3, :cond_14

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/internal/ls;

    iput-object v3, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    :cond_14
    iget-object v7, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    array-length v8, v7

    const/4 v3, 0x0

    move v6, v3

    :goto_d
    if-ge v6, v8, :cond_16

    aget-object v3, v7, v6

    const-string v9, "_c"

    iget-object v10, v3, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/internal/ls;->aYl:Ljava/lang/Long;

    const/4 v5, 0x1

    move v3, v4

    :goto_e
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    goto :goto_d

    :cond_15
    const-string v9, "_r"

    iget-object v10, v3, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/ls;->aYl:Ljava/lang/Long;

    const/4 v3, 0x1

    goto :goto_e

    :cond_16
    if-nez v5, :cond_17

    if-eqz v19, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v5, "Marking event as conversion"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    iget-object v5, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/ls;

    new-instance v5, Lcom/google/android/gms/internal/ls;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ls;-><init>()V

    const-string v6, "_c"

    iput-object v6, v5, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/ls;->aYl:Ljava/lang/Long;

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aput-object v5, v3, v6

    iput-object v3, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    :cond_17
    if-nez v4, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "Marking event as real-time"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    iget-object v4, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/ls;

    new-instance v4, Lcom/google/android/gms/internal/ls;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ls;-><init>()V

    const-string v5, "_r"

    iput-object v5, v4, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/ls;->aYl:Ljava/lang/Long;

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aput-object v4, v3, v5

    iput-object v3, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    :cond_18
    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->sa()J

    move-result-wide v4

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v6, v6, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/internal/gd;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/ge;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/gms/internal/ge;->aRx:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v6, v6, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/gc;->bW(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_50

    const/4 v3, 0x0

    :goto_f
    iget-object v4, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    array-length v4, v4

    if-ge v3, v4, :cond_1b

    const-string v4, "_r"

    iget-object v5, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/ls;

    if-lez v3, :cond_19

    iget-object v5, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    array-length v5, v4

    if-ge v3, v5, :cond_1a

    iget-object v5, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    add-int/lit8 v6, v3, 0x1

    array-length v7, v4

    sub-int/2addr v7, v3

    invoke-static {v5, v6, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    iput-object v4, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    :cond_1b
    :goto_10
    iget-object v3, v2, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/le;->cw(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    if-eqz v19, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->sa()J

    move-result-wide v4

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v6, v6, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/internal/gd;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/ge;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/gms/internal/ge;->aRv:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v6, v6, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/gr;->aSr:Lcom/google/android/gms/internal/gs;

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/gc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/gs;)I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v4, "Too many conversions. Not logging as conversion. appId"

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v5, v5, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v7, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    array-length v8, v7

    const/4 v3, 0x0

    move v6, v3

    :goto_11
    if-ge v6, v8, :cond_1e

    aget-object v3, v7, v6

    const-string v9, "_c"

    iget-object v10, v3, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    :goto_12
    add-int/lit8 v6, v6, 0x1

    move-object v4, v3

    goto :goto_11

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    :cond_1d
    const-string v9, "_err"

    iget-object v3, v3, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    const/4 v5, 0x1

    move-object v3, v4

    goto :goto_12

    :cond_1e
    if-eqz v5, :cond_20

    if-eqz v4, :cond_20

    iget-object v3, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/gms/internal/ls;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Lcom/google/android/gms/common/util/c;->b([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/ls;

    iput-object v3, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    move/from16 v7, v17

    :goto_13
    if-eqz v18, :cond_4e

    const-string v3, "_e"

    iget-object v4, v2, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    if-eqz v3, :cond_1f

    iget-object v3, v2, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    array-length v3, v3

    if-nez v3, :cond_23

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v4, "Engagement event does not contain any parameters. appId"

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v5, v5, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v4, v12

    :goto_14
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    add-int/lit8 v6, v14, 0x1

    aput-object v2, v3, v14

    move-wide v2, v4

    goto/16 :goto_6

    :cond_20
    if-eqz v4, :cond_21

    const-string v3, "_err"

    iput-object v3, v4, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/ls;->aYl:Ljava/lang/Long;

    move/from16 v7, v17

    goto :goto_13

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v4, "Did not find conversion parameter. appId"

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v5, v5, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_22
    move/from16 v7, v17

    goto :goto_13

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    const-string v3, "_et"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/le;->b(Lcom/google/android/gms/internal/lr;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v4, "Engagement event does not include duration. appId"

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v5, v5, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v4, v12

    goto :goto_14

    :cond_24
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v12, v4

    move-wide v4, v12

    goto :goto_14

    :cond_25
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/hz$a;->aVz:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_26

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    invoke-static {v2, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/lr;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    :cond_26
    if-eqz v18, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    const-string v4, "_lte"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/gd;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ld;

    move-result-object v8

    if-eqz v8, :cond_27

    iget-object v2, v8, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    if-nez v2, :cond_2f

    :cond_27
    new-instance v2, Lcom/google/android/gms/internal/ld;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    const-string v4, "auto"

    const-string v5, "_lte"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ld;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v4, v2

    :goto_15
    new-instance v5, Lcom/google/android/gms/internal/lw;

    invoke-direct {v5}, Lcom/google/android/gms/internal/lw;-><init>()V

    const-string v2, "_lte"

    iput-object v2, v5, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/internal/lw;->aYS:Ljava/lang/Long;

    iget-object v2, v4, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    iput-object v2, v5, Lcom/google/android/gms/internal/lw;->aYl:Ljava/lang/Long;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    array-length v6, v6

    if-ge v3, v6, :cond_28

    const-string v6, "_lte"

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    aput-object v5, v2, v3

    const/4 v2, 0x1

    :cond_28
    if-nez v2, :cond_29

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/lw;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aput-object v5, v2, v3

    :cond_29
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/ld;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v3, "Updated lifetime engagement user property with value. Value"

    iget-object v4, v4, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2a
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/hz;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/lw;[Lcom/google/android/gms/internal/lr;)[Lcom/google/android/gms/internal/lq;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->aYH:[Lcom/google/android/gms/internal/lq;

    sget-object v2, Lcom/google/android/gms/internal/gr;->aSd:Lcom/google/android/gms/internal/gs;

    iget-object v2, v2, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v2

    const-string v5, "measurement.event_sampling_enabled"

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ht;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    array-length v2, v2

    new-array v0, v2, [Lcom/google/android/gms/internal/lr;

    move-object/from16 v24, v0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/le;->sr()Ljava/security/SecureRandom;

    move-result-object v25

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    const/4 v2, 0x0

    move/from16 v20, v2

    :goto_17
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_3c

    aget-object v28, v26, v20

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    const-string v3, "_ep"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    const-string v2, "_en"

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/le;->b(Lcom/google/android/gms/internal/lr;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gl;

    if-nez v3, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v4, v4, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/gd;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/gl;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    iget-object v2, v3, Lcom/google/android/gms/internal/gl;->aRM:Ljava/lang/Long;

    if-nez v2, :cond_3b

    iget-object v2, v3, Lcom/google/android/gms/internal/gl;->aRN:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-lez v2, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    const-string v4, "_sr"

    iget-object v5, v3, Lcom/google/android/gms/internal/gl;->aRN:Ljava/lang/Long;

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/le;->a([Lcom/google/android/gms/internal/ls;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/ls;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    :cond_2c
    iget-object v2, v3, Lcom/google/android/gms/internal/gl;->aRO:Ljava/lang/Boolean;

    if-eqz v2, :cond_2d

    iget-object v2, v3, Lcom/google/android/gms/internal/gl;->aRO:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    const-string v3, "_efs"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/le;->a([Lcom/google/android/gms/internal/ls;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/ls;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    :cond_2d
    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    :cond_2e
    :goto_18
    add-int/lit8 v3, v20, 0x1

    move/from16 v18, v2

    move/from16 v20, v3

    goto/16 :goto_17

    :cond_2f
    new-instance v2, Lcom/google/android/gms/internal/ld;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    const-string v4, "auto"

    const-string v5, "_lte"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v8, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ld;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v4, v2

    goto/16 :goto_15

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16

    :cond_31
    const/4 v2, 0x1

    const-string v3, "_dbg"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/lr;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ht;->E(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    :goto_19
    if-gtz v19, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Sample rate must be positive. event, rate"

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    goto :goto_18

    :cond_32
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gl;

    if-nez v2, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/gd;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/gl;

    move-result-object v3

    if-nez v3, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Event being bundled has no eventAggregate. appId, eventName"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v4, v4, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/gl;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v4, v2, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/lr;->aYi:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/gl;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :cond_33
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    const-string v2, "_eid"

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/le;->b(Lcom/google/android/gms/internal/lr;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_35

    const/4 v4, 0x1

    :goto_1b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_36

    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, v3, Lcom/google/android/gms/internal/gl;->aRM:Ljava/lang/Long;

    if-nez v4, :cond_34

    iget-object v4, v3, Lcom/google/android/gms/internal/gl;->aRN:Ljava/lang/Long;

    if-nez v4, :cond_34

    iget-object v4, v3, Lcom/google/android/gms/internal/gl;->aRO:Ljava/lang/Boolean;

    if-eqz v4, :cond_2e

    :cond_34
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/gl;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/gl;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_18

    :cond_35
    const/4 v4, 0x0

    goto :goto_1b

    :cond_36
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    const-string v5, "_sr"

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/le;->a([Lcom/google/android/gms/internal/ls;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/ls;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_37

    const/4 v4, 0x0

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/gl;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/gl;

    move-result-object v3

    :cond_37
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/lr;->aYi:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/gl;->C(J)Lcom/google/android/gms/internal/gl;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_18

    :cond_38
    iget-wide v6, v3, Lcom/google/android/gms/internal/gl;->aRL:J

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/lr;->aYi:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-ltz v5, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    const-string v5, "_efs"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/le;->a([Lcom/google/android/gms/internal/ls;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/ls;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    const-string v5, "_sr"

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/le;->a([Lcom/google/android/gms/internal/ls;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/ls;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v4, 0x0

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/gl;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/gl;

    move-result-object v3

    :cond_39
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/lr;->aYi:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/gl;->C(J)Lcom/google/android/gms/internal/gl;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_18

    :cond_3a
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3b

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Lcom/google/android/gms/internal/gl;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/gl;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    move/from16 v2, v18

    goto/16 :goto_18

    :cond_3c
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_3d

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/lr;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    :cond_3d
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gl;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/gl;)V

    goto :goto_1c

    :cond_3e
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->aYs:Ljava/lang/Long;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->aYt:Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_1d
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    array-length v3, v3

    if-ge v2, v3, :cond_41

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/lr;->aYi:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/google/android/gms/internal/lu;->aYs:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3f

    iget-object v4, v3, Lcom/google/android/gms/internal/lr;->aYi:Ljava/lang/Long;

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYs:Ljava/lang/Long;

    :cond_3f
    iget-object v4, v3, Lcom/google/android/gms/internal/lr;->aYi:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/google/android/gms/internal/lu;->aYt:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_40

    iget-object v3, v3, Lcom/google/android/gms/internal/lr;->aYi:Ljava/lang/Long;

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/google/android/gms/internal/lu;->aYt:Ljava/lang/Long;

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_41
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v6, v2, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/gd;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/fw;

    move-result-object v7

    if-nez v7, :cond_45

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Bundling raw events w/o app info. appId"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v4, v4, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_42
    :goto_1e
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    array-length v2, v2

    if-lez v2, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ht;->cr(Ljava/lang/String;)Lcom/google/android/gms/internal/lo;

    move-result-object v2

    if-eqz v2, :cond_43

    iget-object v3, v2, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    if-nez v3, :cond_49

    :cond_43
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->aQz:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->aYM:Ljava/lang/Long;

    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/lu;Z)Z

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/hz$a;->aVy:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gd;->t(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gd;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-result-object v2

    :try_start_19
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :goto_20
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    const/4 v2, 0x1

    :goto_21
    return v2

    :cond_45
    :try_start_1b
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    array-length v2, v2

    if-lez v2, :cond_42

    invoke-virtual {v7}, Lcom/google/android/gms/internal/fw;->qV()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_46

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_22
    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYv:Ljava/lang/Long;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/fw;->qU()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_4b

    :goto_23
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_47

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_24
    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->aYu:Ljava/lang/Long;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/fw;->re()V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/fw;->rb()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->aYF:Ljava/lang/Integer;

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/lu;->aYs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/fw;->r(J)V

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/lu;->aYt:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/fw;->s(J)V

    iget-object v2, v7, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v2, v7, Lcom/google/android/gms/internal/fw;->aQT:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/fw;->bV(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->aQX:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/fw;)V

    goto/16 :goto_1e

    :cond_46
    const/4 v4, 0x0

    goto :goto_22

    :cond_47
    const/4 v2, 0x0

    goto :goto_24

    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Did not find measurement config or missing version info. appId"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/hz$a;->aVx:Lcom/google/android/gms/internal/lu;

    iget-object v4, v4, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_49
    iget-object v2, v2, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->aYM:Ljava/lang/Long;

    goto/16 :goto_1f

    :catch_3
    move-exception v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v4, "Failed to remove unused event metadata. appId"

    invoke-static {v6}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_20

    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    const/4 v2, 0x0

    goto/16 :goto_21

    :catchall_2
    move-exception v2

    move-object v4, v12

    goto/16 :goto_c

    :catch_4
    move-exception v2

    goto/16 :goto_b

    :catch_5
    move-exception v2

    move-object v3, v11

    goto/16 :goto_b

    :cond_4b
    move-wide v2, v4

    goto/16 :goto_23

    :cond_4c
    move-object v3, v2

    goto/16 :goto_1a

    :cond_4d
    move/from16 v19, v2

    goto/16 :goto_19

    :cond_4e
    move-wide v4, v12

    goto/16 :goto_14

    :cond_4f
    move-object v3, v4

    goto/16 :goto_12

    :cond_50
    move/from16 v17, v15

    goto/16 :goto_10

    :cond_51
    move v3, v4

    goto/16 :goto_e

    :cond_52
    move-wide v2, v12

    move v6, v14

    move/from16 v7, v17

    goto/16 :goto_6
.end method

.method private final a(Ljava/nio/channels/FileChannel;)I
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->mN()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Bad channel to read from"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-eq v2, v4, :cond_3

    const/4 v1, -0x1

    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Unexpected data length. Bytes read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Failed to read from channel"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/fx;
    .locals 24

    const-string v9, "Unknown"

    const-string v6, "Unknown"

    const/high16 v2, -0x80000000

    const-string v3, "Unknown"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "PackageManager is null, can not log app install information"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_1
    if-nez v9, :cond_3

    const-string v9, "manual_install"

    :cond_1
    :goto_2
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ee;->ag(Landroid/content/Context;)Lcom/google/android/gms/internal/ed;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/internal/ed;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ee;->ag(Landroid/content/Context;)Lcom/google/android/gms/internal/ed;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ed;->bN(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_3
    :try_start_2
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v2, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/fx;

    int-to-long v7, v2

    const-wide/16 v10, 0x2fb3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/le;->o(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v12

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-string v17, ""

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v15, p4

    move/from16 v23, p5

    invoke-direct/range {v3 .. v23}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v5, "Error retrieving installer package name. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v4, "com.android.vending"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v9, ""

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v2, v3

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v4, "Error retrieving newly installed package info. appId, appName"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v3

    goto :goto_4

    :cond_4
    move-object v2, v3

    goto :goto_3
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hz;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    new-instance v0, Lcom/google/android/gms/internal/gj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gj;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aVe:Lcom/google/android/gms/internal/gj;

    new-instance v0, Lcom/google/android/gms/internal/gw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gw;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aVf:Lcom/google/android/gms/internal/gw;

    new-instance v1, Lcom/google/android/gms/internal/gd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gd;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/hz;->aVb:Lcom/google/android/gms/internal/gd;

    new-instance v1, Lcom/google/android/gms/internal/gx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gx;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/hz;->aVc:Lcom/google/android/gms/internal/gx;

    new-instance v1, Lcom/google/android/gms/internal/fz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fz;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/hz;->aVi:Lcom/google/android/gms/internal/fz;

    new-instance v1, Lcom/google/android/gms/internal/ju;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ju;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/hz;->aVd:Lcom/google/android/gms/internal/ju;

    new-instance v1, Lcom/google/android/gms/internal/kz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/kz;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iy;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/hz;->aVh:Lcom/google/android/gms/internal/kz;

    new-instance v1, Lcom/google/android/gms/internal/hj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/hj;-><init>(Lcom/google/android/gms/internal/hz;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/hz;->aVg:Lcom/google/android/gms/internal/hj;

    iget-object v1, p0, Lcom/google/android/gms/internal/hz;->aUV:Lcom/google/android/gms/internal/le;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iy;->si()V

    iget-object v1, p0, Lcom/google/android/gms/internal/hz;->aUO:Lcom/google/android/gms/internal/hl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iy;->si()V

    iget-object v1, p0, Lcom/google/android/gms/internal/hz;->aVf:Lcom/google/android/gms/internal/gw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iy;->si()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTg:Lcom/google/android/gms/internal/hd;

    const-string v2, "App measurement is starting up, version"

    const-wide/16 v4, 0x2fb3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTg:Lcom/google/android/gms/internal/hd;

    const-string v2, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gw;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/le;->cE(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/hb;->aTg:Lcom/google/android/gms/internal/hd;

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v1, "Debug-level message logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/hz;->aVq:I

    iget v1, p0, Lcom/google/android/gms/internal/hz;->aVr:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "Not all components initialized"

    iget v2, p0, Lcom/google/android/gms/internal/hz;->aVq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/hz;->aVr:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hz;->initialized:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTg:Lcom/google/android/gms/internal/hd;

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/ix;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static a(Lcom/google/android/gms/internal/iy;)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Component not initialized: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private final a(ILjava/nio/channels/FileChannel;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Bad channel to read from"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {p2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/lr;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, v4, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_2

    iget-object v1, v4, Lcom/google/android/gms/internal/ls;->aYl:Ljava/lang/Long;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v4, Lcom/google/android/gms/internal/ls;->aTr:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_0

    iget-object v1, v4, Lcom/google/android/gms/internal/ls;->aXk:Ljava/lang/Double;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/gp;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v9, 0x1

    const-wide v6, 0x412e848000000000L    # 1000000.0

    const/4 v8, 0x0

    iget-object v0, p2, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    const-string v1, "currency"

    iget-object v0, v0, Lcom/google/android/gms/internal/gm;->aRP:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ecommerce_purchase"

    iget-object v1, p2, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    const-string v1, "value"

    iget-object v0, v0, Lcom/google/android/gms/internal/gm;->aRP:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v6

    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-nez v3, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gm;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    mul-double/2addr v0, v6

    :cond_0
    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v3, v0, v4

    if-gtz v3, :cond_3

    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v3, v0, v4

    if-ltz v3, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    move-wide v6, v0

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Z]{3}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_ltv_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/gd;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ld;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Long;

    if-nez v1, :cond_6

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    sget-object v2, Lcom/google/android/gms/internal/gr;->aSI:Lcom/google/android/gms/internal/gs;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/gc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/gs;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iy;->pf()V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gd;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v10, 0x1

    aput-object p1, v5, v10

    const/4 v10, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ld;

    iget-object v2, p2, Lcom/google/android/gms/internal/gp;->aRb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ld;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/ld;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ld;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v12, v12, v8}, Lcom/google/android/gms/internal/le;->b(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    move v0, v9

    :goto_4
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v8

    goto :goto_4

    :cond_4
    iget-object v0, p2, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gm;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v6, v0

    goto/16 :goto_0

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Error pruning currencies. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-object v0, v0, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v0, Lcom/google/android/gms/internal/ld;

    iget-object v2, p2, Lcom/google/android/gms/internal/gp;->aRb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ld;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto/16 :goto_3
.end method

.method private final a(Ljava/lang/String;[Lcom/google/android/gms/internal/lw;[Lcom/google/android/gms/internal/lr;)[Lcom/google/android/gms/internal/lq;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qB()Lcom/google/android/gms/internal/fz;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/fz;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/lr;[Lcom/google/android/gms/internal/lw;)[Lcom/google/android/gms/internal/lq;

    move-result-object v0

    return-object v0
.end method

.method public static ai(Landroid/content/Context;)Lcom/google/android/gms/internal/hz;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/hz;->aUL:Lcom/google/android/gms/internal/hz;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/hz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/hz;->aUL:Lcom/google/android/gms/internal/hz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/iz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/iz;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/internal/hz;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/hz;-><init>(Lcom/google/android/gms/internal/iz;)V

    sput-object v2, Lcom/google/android/gms/internal/hz;->aUL:Lcom/google/android/gms/internal/hz;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/hz;->aUL:Lcom/google/android/gms/internal/hz;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final b(Lcom/google/android/gms/internal/fw;)V
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->getAppId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcc

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/hz;->b(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/gr;->aSi:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    sget-object v0, Lcom/google/android/gms/internal/gr;->aSj:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "config/app/"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "app_instance_id"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gmp_version"

    const-string v2, "12211"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ht;->cr(Ljava/lang/String;)Lcom/google/android/gms/internal/lo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ht;->aUu:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v3, Landroid/support/v4/g/a;

    invoke-direct {v3}, Landroid/support/v4/g/a;-><init>()V

    const-string v1, "If-Modified-Since"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hz;->aVu:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->rW()Lcom/google/android/gms/internal/hf;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->getAppId()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/id;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/id;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-static {v8}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v9

    new-instance v0, Lcom/google/android/gms/internal/hi;

    const/4 v4, 0x0

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/hi;-><init>(Lcom/google/android/gms/internal/hf;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/hg;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/hu;->j(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    move-object v5, v3

    goto :goto_2
.end method

.method private final c(Lcom/google/android/gms/internal/fw;)Ljava/lang/Boolean;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->qW()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ee;->ag(Landroid/content/Context;)Lcom/google/android/gms/internal/ed;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->getAppId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ed;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->qW()J

    move-result-wide v2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ee;->ag(Landroid/content/Context;)Lcom/google/android/gms/internal/ed;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->getAppId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ed;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->qq()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fw;->qq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private final c(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V
    .locals 28

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->pf()V

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/le;->d(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/fx;->aQK:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hz;->f(Lcom/google/android/gms/internal/fx;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/internal/ht;->C(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Dropping blacklisted event. appId"

    invoke-static {v6}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/le;->cG(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/le;->cH(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    const-string v3, "_err"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v3

    const/16 v4, 0xb

    const-string v5, "_ev"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v5, v7, v8}, Lcom/google/android/gms/internal/le;->b(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/gd;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/fw;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/fw;->rd()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/fw;->rc()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-object v2, Lcom/google/android/gms/internal/gr;->aSD:Lcom/google/android/gms/internal/gs;

    iget-object v2, v2, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/fw;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hb;->cQ(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Logging event"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/gz;->a(Lcom/google/android/gms/internal/gp;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->beginTransaction()V

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hz;->f(Lcom/google/android/gms/internal/fx;)V

    const-string v2, "_iap"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/google/android/gms/internal/hz;->a(Ljava/lang/String;Lcom/google/android/gms/internal/gp;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    goto/16 :goto_0

    :cond_9
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/le;->cw(Ljava/lang/String;)Z

    move-result v8

    const-string v2, "_err"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->sa()J

    move-result-wide v4

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/internal/gd;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/ge;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/gms/internal/ge;->aRu:J

    sget-object v2, Lcom/google/android/gms/internal/gr;->aSo:Lcom/google/android/gms/internal/gs;

    iget-object v2, v2, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v12, v2

    sub-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-lez v2, :cond_b

    const-wide/16 v8, 0x3e8

    rem-long/2addr v4, v8

    const-wide/16 v8, 0x1

    cmp-long v2, v4, v8

    if-nez v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v4, "Data loss. Too many events logged. appId, count"

    invoke-static {v6}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v3, Lcom/google/android/gms/internal/ge;->aRu:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    goto/16 :goto_0

    :cond_b
    if-eqz v8, :cond_d

    :try_start_2
    iget-wide v4, v3, Lcom/google/android/gms/internal/ge;->aRt:J

    sget-object v2, Lcom/google/android/gms/internal/gr;->aSq:Lcom/google/android/gms/internal/gs;

    iget-object v2, v2, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v12, v2

    sub-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-lez v2, :cond_d

    const-wide/16 v8, 0x3e8

    rem-long/2addr v4, v8

    const-wide/16 v8, 0x1

    cmp-long v2, v4, v8

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v6}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v3, Lcom/google/android/gms/internal/ge;->aRt:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v2

    const/16 v3, 0x10

    const-string v4, "_ev"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/le;->b(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    goto/16 :goto_0

    :cond_d
    if-eqz v10, :cond_f

    :try_start_3
    iget-wide v4, v3, Lcom/google/android/gms/internal/ge;->aRw:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/gr;->aSp:Lcom/google/android/gms/internal/gs;

    invoke-virtual {v2, v7, v9}, Lcom/google/android/gms/internal/gc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/gs;)I

    move-result v2

    const v7, 0xf4240

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v7, 0x0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v10, v2

    sub-long/2addr v4, v10

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-lez v2, :cond_f

    const-wide/16 v8, 0x1

    cmp-long v2, v4, v8

    if-nez v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v4, "Too many error events logged. appId, count"

    invoke-static {v6}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v3, Lcom/google/android/gms/internal/ge;->aRw:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    goto/16 :goto_0

    :cond_f
    :try_start_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gm;->rB()Landroid/os/Bundle;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v2

    const-string v3, "_o"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/gp;->aRb:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/internal/le;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/le;->cE(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v2

    const-string v3, "_dbg"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/internal/le;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v2

    const-string v3, "_r"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/internal/le;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/gd;->cc(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v5, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v6}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v7, v2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v9, Lcom/google/android/gms/internal/gk;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/gms/internal/gp;->aRb:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/google/android/gms/internal/gp;->aRS:J

    const-wide/16 v16, 0x0

    move-object/from16 v10, p0

    move-object v12, v6

    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/internal/gk;-><init>(Lcom/google/android/gms/internal/hz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    iget-object v3, v9, Lcom/google/android/gms/internal/gk;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/internal/gd;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/gl;

    move-result-object v2

    if-nez v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-static {v6}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const-wide/16 v10, 0x0

    invoke-virtual {v2, v3, v4, v10, v11}, Lcom/google/android/gms/internal/gd;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_12

    if-eqz v8, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v6}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v5

    iget-object v6, v9, Lcom/google/android/gms/internal/gk;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/le;->b(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    goto/16 :goto_0

    :cond_12
    :try_start_5
    new-instance v11, Lcom/google/android/gms/internal/gl;

    iget-object v13, v9, Lcom/google/android/gms/internal/gk;->name:Ljava/lang/String;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    iget-wide v0, v9, Lcom/google/android/gms/internal/gk;->timestamp:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v12, v6

    invoke-direct/range {v11 .. v24}, Lcom/google/android/gms/internal/gl;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v12, v9

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/gl;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->pf()V

    invoke-static {v12}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v12, Lcom/google/android/gms/internal/gk;->aQx:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/gk;->aQx:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->au(Z)V

    new-instance v4, Lcom/google/android/gms/internal/lu;

    invoke-direct {v4}, Lcom/google/android/gms/internal/lu;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYo:Ljava/lang/Integer;

    const-string v2, "android"

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYw:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/fx;->aQH:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aQH:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/fx;->aQF:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aQF:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/fx;->aQG:J

    const-wide/32 v6, -0x80000000

    cmp-long v2, v2, v6

    if-nez v2, :cond_17

    const/4 v2, 0x0

    :goto_3
    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYI:Ljava/lang/Integer;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/fx;->aQI:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYA:Ljava/lang/Long;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aQz:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/fx;->aQJ:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_18

    const/4 v2, 0x0

    :goto_4
    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYE:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hl;->cm(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/fx;->aQM:Z

    if-eqz v2, :cond_13

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYC:Ljava/lang/String;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYD:Ljava/lang/Boolean;

    :cond_13
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iy;->pf()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYy:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iy;->pf()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYx:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gj;->ry()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYz:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gj;->rz()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aRE:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYB:Ljava/lang/Long;

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYr:Ljava/lang/Long;

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYs:Ljava/lang/Long;

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYt:Ljava/lang/Long;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/fx;->aQL:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYN:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/google/android/gms/internal/gc;->rn()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYO:Ljava/lang/String;

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gd;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/fw;

    move-result-object v2

    if-nez v2, :cond_15

    new-instance v2, Lcom/google/android/gms/internal/fw;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/fw;-><init>(Lcom/google/android/gms/internal/hz;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gw;->rD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fw;->bP(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/fx;->aQB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fw;->bS(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fw;->bQ(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/hl;->cn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fw;->bR(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/fw;->w(J)V

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/fw;->r(J)V

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/fw;->s(J)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/fx;->aQF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fw;->bT(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/fx;->aQG:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/fw;->t(J)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/fx;->aQH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fw;->bU(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/fx;->aQI:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/fw;->u(J)V

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/fx;->aQJ:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/fw;->v(J)V

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/fx;->aQK:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fw;->setMeasurementEnabled(Z)V

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/fx;->aQL:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/fw;->z(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/fw;)V

    :cond_15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->getAppInstanceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/lu;->aQy:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qT()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aQB:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gd;->ca(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/lw;

    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1c

    new-instance v6, Lcom/google/android/gms/internal/lw;

    invoke-direct {v6}, Lcom/google/android/gms/internal/lw;-><init>()V

    iget-object v2, v4, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    aput-object v6, v2, v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ld;

    iget-object v2, v2, Lcom/google/android/gms/internal/ld;->name:Ljava/lang/String;

    iput-object v2, v6, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ld;

    iget-wide v8, v2, Lcom/google/android/gms/internal/ld;->aXh:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/lw;->aYS:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ld;

    iget-object v2, v2, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    invoke-virtual {v7, v6, v2}, Lcom/google/android/gms/internal/le;->a(Lcom/google/android/gms/internal/lw;Ljava/lang/Object;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_16
    iget-wide v10, v2, Lcom/google/android/gms/internal/gl;->aRK:J

    new-instance v3, Lcom/google/android/gms/internal/gk;

    iget-object v5, v9, Lcom/google/android/gms/internal/gk;->aRb:Ljava/lang/String;

    iget-object v6, v9, Lcom/google/android/gms/internal/gk;->aQx:Ljava/lang/String;

    iget-object v7, v9, Lcom/google/android/gms/internal/gk;->name:Ljava/lang/String;

    iget-wide v14, v9, Lcom/google/android/gms/internal/gk;->timestamp:J

    iget-object v12, v9, Lcom/google/android/gms/internal/gk;->aRH:Lcom/google/android/gms/internal/gm;

    move-object/from16 v4, p0

    move-wide v8, v14

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/gk;-><init>(Lcom/google/android/gms/internal/hz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/gm;)V

    iget-wide v4, v3, Lcom/google/android/gms/internal/gk;->timestamp:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/gl;->B(J)Lcom/google/android/gms/internal/gl;

    move-result-object v11

    move-object v12, v3

    goto/16 :goto_2

    :cond_17
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/fx;->aQG:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/fx;->aQJ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_4

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gj;->ah(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "null secure ID. appId"

    iget-object v5, v4, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "null"

    :cond_1a
    :goto_7
    iput-object v2, v4, Lcom/google/android/gms/internal/lu;->aYL:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    throw v2

    :cond_1b
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v5, "empty secure ID. appId"

    iget-object v6, v4, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :cond_1c
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/lu;)J
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v14

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v13

    iget-object v2, v12, Lcom/google/android/gms/internal/gk;->aRH:Lcom/google/android/gms/internal/gm;

    if-eqz v2, :cond_21

    iget-object v2, v12, Lcom/google/android/gms/internal/gk;->aRH:Lcom/google/android/gms/internal/gm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gm;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "_r"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v13, v12, v14, v15, v2}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/gk;JZ)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/hz;->aVt:J

    :cond_1e
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hb;->cQ(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Event recorded"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/gz;->a(Lcom/google/android/gms/internal/gk;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->sd()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Background event processing time, ms"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v26

    const-wide/32 v6, 0x7a120

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v4, v4, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4, v2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/gms/internal/gk;->aQx:Ljava/lang/String;

    iget-object v4, v12, Lcom/google/android/gms/internal/gk;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ht;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->sa()J

    move-result-wide v4

    iget-object v6, v12, Lcom/google/android/gms/internal/gk;->aQx:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/internal/gd;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/ge;

    move-result-object v3

    if-eqz v2, :cond_21

    iget-wide v2, v3, Lcom/google/android/gms/internal/ge;->aRx:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    iget-object v5, v12, Lcom/google/android/gms/internal/gk;->aQx:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/gc;->bW(Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_21

    const/4 v2, 0x1

    goto/16 :goto_8

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_8
.end method

.method private final cs(Ljava/lang/String;)Lcom/google/android/gms/internal/fx;
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gd;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/fw;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v3, "No app data available; dropping"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/hz;->c(Lcom/google/android/gms/internal/fw;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/fx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->getGmpAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qq()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qW()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qX()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qY()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qZ()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->ra()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qT()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->rg()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->rh()Z

    move-result v23

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v23}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    goto :goto_0
.end method

.method static qy()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final rX()Lcom/google/android/gms/internal/hj;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVg:Lcom/google/android/gms/internal/hj;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVg:Lcom/google/android/gms/internal/hj;

    return-object v0
.end method

.method private final rY()Lcom/google/android/gms/internal/kz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVh:Lcom/google/android/gms/internal/kz;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/iy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVh:Lcom/google/android/gms/internal/kz;

    return-object v0
.end method

.method private final rZ()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    const-string v0, "google_app_measurement.db"

    iget-object v1, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aVn:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVn:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aVm:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVm:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private final sa()J
    .locals 10

    const-wide/16 v8, 0x3c

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, v4, Lcom/google/android/gms/internal/hl;->aTL:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ix;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/le;->sr()Ljava/security/SecureRandom;

    move-result-object v0

    const v1, 0x5265c00

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-object v4, v4, Lcom/google/android/gms/internal/hl;->aTL:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/hn;->set(J)V

    :cond_0
    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v8

    div-long/2addr v0, v8

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final sc()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    const-string v3, "select count(1) > 0 from raw_events"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/gd;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->ro()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method private final sg()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hz;->aVj:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final sh()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hz;->aVu:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hz;->aVv:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hz;->aVw:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Not stopping services. fetch, network, upload"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hz;->aVu:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/hz;->aVv:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/hz;->aVw:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVp:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILjava/lang/Throwable;[B)V
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array p3, v0, [B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVo:Ljava/util/List;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/hz;->aVo:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0xc8

    if-eq p1, v3, :cond_1

    const/16 v3, 0xcc

    if-ne p1, v3, :cond_5

    :cond_1
    if-nez p2, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hl;->aTH:Lcom/google/android/gms/internal/hn;

    iget-object v4, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hn;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hl;->aTI:Lcom/google/android/gms/internal/hn;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hn;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->sd()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    array-length v6, p3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gd;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gd;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v6, "queue"

    const-string v7, "rowid=?"

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Failed to delete a bundle in a queue table"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/hz;->aVt:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v2, "Disable upload, time"

    iget-wide v4, p0, Lcom/google/android/gms/internal/hz;->aVt:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/hz;->aVv:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->sh()V

    return-void

    :cond_3
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->rW()Lcom/google/android/gms/internal/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hf;->qe()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->sc()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->sb()V

    :goto_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/hz;->aVt:J
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/hz;->aVv:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->sh()V

    throw v0

    :cond_4
    const-wide/16 v2, -0x1

    :try_start_9
    iput-wide v2, p0, Lcom/google/android/gms/internal/hz;->aVs:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->sd()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :cond_5
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->aTI:Lcom/google/android/gms/internal/hn;

    iget-object v3, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/hn;->set(J)V

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1ad

    if-ne p1, v0, :cond_8

    :cond_6
    move v0, v2

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->aTJ:Lcom/google/android/gms/internal/hn;

    iget-object v2, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/hn;->set(J)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->sd()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/internal/gp;Ljava/lang/String;)[B
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->pf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-static {}, Lcom/google/android/gms/internal/hz;->qy()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    new-instance v19, Lcom/google/android/gms/internal/lt;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/gms/internal/lt;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gd;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/gd;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/fw;

    move-result-object v22

    if-nez v22, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v5, "Log and bundle not available. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v4, v4, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    :goto_0
    return-object v4

    :cond_0
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->ra()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v5, "Log and bundle disabled. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v4, v4, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v4, "_iap"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/hz;->a(Ljava/lang/String;Lcom/google/android/gms/internal/gp;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v5, "Failed to handle purchase event at single event bundle creation. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/gc;->bZ(Ljava/lang/String;)Z

    move-result v11

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    if-eqz v11, :cond_5

    const-string v4, "_e"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    if-eqz v4, :cond_4

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    iget-object v4, v4, Lcom/google/android/gms/internal/gm;->aRP:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v4

    if-nez v4, :cond_a

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v5, "The engagement event does not contain any parameters. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    new-instance v23, Lcom/google/android/gms/internal/lu;

    invoke-direct/range {v23 .. v23}, Lcom/google/android/gms/internal/lu;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/lu;

    const/4 v5, 0x0

    aput-object v23, v4, v5

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/google/android/gms/internal/lt;->aYm:[Lcom/google/android/gms/internal/lu;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYo:Ljava/lang/Integer;

    const-string v4, "android"

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYw:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->qX()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aQH:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->qq()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aQF:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->qW()J

    move-result-wide v4

    const-wide/32 v6, -0x80000000

    cmp-long v6, v4, v6

    if-nez v6, :cond_c

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYI:Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->qY()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYA:Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aQz:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->qZ()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYE:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/gc;->rn()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/gc;->bY(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYO:Ljava/lang/String;

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/hl;->cm(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->rh()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYC:Ljava/lang/String;

    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYD:Ljava/lang/Boolean;

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iy;->pf()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYy:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iy;->pf()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYx:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gj;->ry()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYz:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gj;->rz()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aRE:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->getAppInstanceId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aQy:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->qT()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aQB:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/gd;->ca(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/lw;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    const/4 v12, 0x0

    if-eqz v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    const-string v6, "_lte"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/gd;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ld;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v5, v4, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    if-nez v5, :cond_d

    :cond_8
    new-instance v4, Lcom/google/android/gms/internal/ld;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    const-string v6, "auto"

    const-string v7, "_lte"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v8}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ld;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v12, v4

    :cond_9
    :goto_3
    const/4 v6, 0x0

    const/4 v4, 0x0

    move v7, v4

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_e

    new-instance v5, Lcom/google/android/gms/internal/lw;

    invoke-direct {v5}, Lcom/google/android/gms/internal/lw;-><init>()V

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    aput-object v5, v4, v7

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ld;

    iget-object v4, v4, Lcom/google/android/gms/internal/ld;->name:Ljava/lang/String;

    iput-object v4, v5, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ld;

    iget-wide v8, v4, Lcom/google/android/gms/internal/ld;->aXh:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v5, Lcom/google/android/gms/internal/lw;->aYS:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ld;

    iget-object v4, v4, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    invoke-virtual {v8, v5, v4}, Lcom/google/android/gms/internal/le;->a(Lcom/google/android/gms/internal/lw;Ljava/lang/Object;)V

    if-eqz v11, :cond_18

    const-string v4, "_lte"

    iget-object v8, v5, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v12, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    iput-object v4, v5, Lcom/google/android/gms/internal/lw;->aYl:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v5, Lcom/google/android/gms/internal/lw;->aYS:Ljava/lang/Long;

    move-object v4, v5

    :goto_5
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move-object v6, v4

    goto :goto_4

    :cond_a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    const-string v5, "_et"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/gm;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v5, "The engagement event does not include duration. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    throw v4

    :cond_b
    :try_start_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    const-string v5, "_et"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/gm;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    goto/16 :goto_1

    :cond_c
    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_19

    new-instance v12, Lcom/google/android/gms/internal/ld;

    move-object/from16 v0, v23

    iget-object v13, v0, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    const-string v14, "auto"

    const-string v15, "_lte"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v16

    iget-object v4, v4, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-direct/range {v12 .. v18}, Lcom/google/android/gms/internal/ld;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto/16 :goto_3

    :cond_e
    if-eqz v11, :cond_f

    if-nez v6, :cond_f

    new-instance v5, Lcom/google/android/gms/internal/lw;

    invoke-direct {v5}, Lcom/google/android/gms/internal/lw;-><init>()V

    const-string v4, "_lte"

    iput-object v4, v5, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v5, Lcom/google/android/gms/internal/lw;->aYS:Ljava/lang/Long;

    iget-object v4, v12, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    iput-object v4, v5, Lcom/google/android/gms/internal/lw;->aYl:Ljava/lang/Long;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/lw;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aput-object v5, v4, v6

    :cond_f
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/ld;)Z

    :cond_10
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gm;->rB()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "_iap"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "_c"

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v6, "Marking in-app purchase as real-time"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    const-string v5, "_r"

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_11
    const-string v5, "_o"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/gp;->aRb:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/le;->cE(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v5

    const-string v6, "_dbg"

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/gms/internal/le;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v5

    const-string v6, "_r"

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/gms/internal/le;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6}, Lcom/google/android/gms/internal/gd;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/gl;

    move-result-object v5

    if-nez v5, :cond_13

    const-wide/16 v20, 0x0

    new-instance v5, Lcom/google/android/gms/internal/gl;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/gms/internal/gp;->aRS:J

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v18}, Lcom/google/android/gms/internal/gl;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/gl;)V

    move-wide/from16 v12, v20

    :goto_6
    new-instance v5, Lcom/google/android/gms/internal/gk;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/gp;->aRb:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/gp;->aRS:J

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object v14, v4

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/internal/gk;-><init>(Lcom/google/android/gms/internal/hz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v8, Lcom/google/android/gms/internal/lr;

    invoke-direct {v8}, Lcom/google/android/gms/internal/lr;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/lr;

    const/4 v6, 0x0

    aput-object v8, v4, v6

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    iget-wide v6, v5, Lcom/google/android/gms/internal/gk;->timestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v8, Lcom/google/android/gms/internal/lr;->aYi:Ljava/lang/Long;

    iget-object v4, v5, Lcom/google/android/gms/internal/gk;->name:Ljava/lang/String;

    iput-object v4, v8, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    iget-wide v6, v5, Lcom/google/android/gms/internal/gk;->aRG:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v8, Lcom/google/android/gms/internal/lr;->aYj:Ljava/lang/Long;

    iget-object v4, v5, Lcom/google/android/gms/internal/gk;->aRH:Lcom/google/android/gms/internal/gm;

    iget-object v4, v4, Lcom/google/android/gms/internal/gm;->aRP:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/ls;

    iput-object v4, v8, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    const/4 v4, 0x0

    iget-object v6, v5, Lcom/google/android/gms/internal/gk;->aRH:Lcom/google/android/gms/internal/gm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/gm;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v4

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v10, Lcom/google/android/gms/internal/ls;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ls;-><init>()V

    iget-object v11, v8, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    add-int/lit8 v7, v6, 0x1

    aput-object v10, v11, v6

    iput-object v4, v10, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    iget-object v6, v5, Lcom/google/android/gms/internal/gk;->aRH:Lcom/google/android/gms/internal/gm;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/gm;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v6

    invoke-virtual {v6, v10, v4}, Lcom/google/android/gms/internal/le;->a(Lcom/google/android/gms/internal/ls;Ljava/lang/Object;)V

    move v6, v7

    goto :goto_7

    :cond_13
    iget-wide v12, v5, Lcom/google/android/gms/internal/gl;->aRK:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/gms/internal/gp;->aRS:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/gl;->B(J)Lcom/google/android/gms/internal/gl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gl;->rA()Lcom/google/android/gms/internal/gl;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/gl;)V

    goto/16 :goto_6

    :cond_14
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/gms/internal/lu;->aYq:[Lcom/google/android/gms/internal/lw;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/google/android/gms/internal/lu;->aYp:[Lcom/google/android/gms/internal/lr;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/google/android/gms/internal/hz;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/lw;[Lcom/google/android/gms/internal/lr;)[Lcom/google/android/gms/internal/lq;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYH:[Lcom/google/android/gms/internal/lq;

    iget-object v4, v8, Lcom/google/android/gms/internal/lr;->aYi:Ljava/lang/Long;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYs:Ljava/lang/Long;

    iget-object v4, v8, Lcom/google/android/gms/internal/lr;->aYi:Ljava/lang/Long;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYt:Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->qV()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_15

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_8
    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/google/android/gms/internal/lu;->aYv:Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->qU()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_17

    :goto_9
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_16

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_a
    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYu:Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->re()V

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/fw;->rb()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYF:Ljava/lang/Integer;

    const-wide/16 v4, 0x2fb3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYB:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYr:Ljava/lang/Long;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/lu;->aYG:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/internal/lu;->aYs:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/fw;->r(J)V

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/internal/lu;->aYt:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/fw;->s(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/fw;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    :try_start_4
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/nd;->sZ()I

    move-result v4

    new-array v4, v4, [B

    array-length v5, v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mv;->b([BI)Lcom/google/android/gms/internal/mv;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/mv;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mv;->sR()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/le;->n([B)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    goto/16 :goto_0

    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_a

    :catch_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v6, "Data loss. Failed to bundle and serialize. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_17
    move-wide v4, v6

    goto/16 :goto_9

    :cond_18
    move-object v4, v6

    goto/16 :goto_5

    :cond_19
    move-object v12, v4

    goto/16 :goto_3
.end method

.method final b(Lcom/google/android/gms/internal/ga;Lcom/google/android/gms/internal/fx;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v0, v0, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    iget-object v0, p2, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/fx;->aQK:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/hz;->f(Lcom/google/android/gms/internal/fx;)V

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/google/android/gms/internal/ga;

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/ga;-><init>(Lcom/google/android/gms/internal/ga;)V

    iput-boolean v6, v8, Lcom/google/android/gms/internal/ga;->aRe:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v1, v8, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v2, v2, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gd;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ga;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v0, v5, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    iget-object v1, v8, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v3, v3, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    iget-object v4, v5, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    if-eqz v5, :cond_4

    iget-boolean v0, v5, Lcom/google/android/gms/internal/ga;->aRe:Z

    if-eqz v0, :cond_4

    iget-object v0, v5, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    iput-object v0, v8, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    iget-wide v0, v5, Lcom/google/android/gms/internal/ga;->aRd:J

    iput-wide v0, v8, Lcom/google/android/gms/internal/ga;->aRd:J

    iget-wide v0, v5, Lcom/google/android/gms/internal/ga;->aRh:J

    iput-wide v0, v8, Lcom/google/android/gms/internal/ga;->aRh:J

    iget-object v0, v5, Lcom/google/android/gms/internal/ga;->aRf:Ljava/lang/String;

    iput-object v0, v8, Lcom/google/android/gms/internal/ga;->aRf:Ljava/lang/String;

    iget-object v0, v5, Lcom/google/android/gms/internal/ga;->aRi:Lcom/google/android/gms/internal/gp;

    iput-object v0, v8, Lcom/google/android/gms/internal/ga;->aRi:Lcom/google/android/gms/internal/gp;

    iget-boolean v0, v5, Lcom/google/android/gms/internal/ga;->aRe:Z

    iput-boolean v0, v8, Lcom/google/android/gms/internal/ga;->aRe:Z

    new-instance v0, Lcom/google/android/gms/internal/lb;

    iget-object v1, v8, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v1, v1, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    iget-object v2, v5, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-wide v2, v2, Lcom/google/android/gms/internal/lb;->aXh:J

    iget-object v4, v8, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/lb;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v5, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v5, v5, Lcom/google/android/gms/internal/lb;->aRb:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/lb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    move v7, v6

    :goto_1
    iget-boolean v0, v8, Lcom/google/android/gms/internal/ga;->aRe:Z

    if-eqz v0, :cond_3

    iget-object v6, v8, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    new-instance v0, Lcom/google/android/gms/internal/ld;

    iget-object v1, v8, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    iget-object v3, v6, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    iget-wide v4, v6, Lcom/google/android/gms/internal/lb;->aXh:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/lb;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ld;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/ld;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v2, "User property updated immediately"

    iget-object v3, v8, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ld;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-eqz v7, :cond_3

    iget-object v0, v8, Lcom/google/android/gms/internal/ga;->aRi:Lcom/google/android/gms/internal/gp;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/gp;

    iget-object v1, v8, Lcom/google/android/gms/internal/ga;->aRi:Lcom/google/android/gms/internal/gp;

    iget-wide v2, v8, Lcom/google/android/gms/internal/ga;->aRd:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gp;-><init>(Lcom/google/android/gms/internal/gp;J)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/hz;->c(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/ga;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v1, "Conditional property added"

    iget-object v2, v8, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v4, v4, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/lb;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ga;->aRf:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/lb;

    iget-object v1, v8, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v1, v1, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    iget-wide v2, v8, Lcom/google/android/gms/internal/ga;->aRd:J

    iget-object v4, v8, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/lb;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v8, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v5, v5, Lcom/google/android/gms/internal/lb;->aRb:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/lb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/google/android/gms/internal/ga;->aRe:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    throw v0

    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v8, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ld;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "Too many conditional properties, ignoring"

    iget-object v2, v8, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v4, v4, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/lb;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_7
    move v7, v6

    goto/16 :goto_1
.end method

.method final b(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V
    .locals 13

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    iget-object v5, p2, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/internal/gp;->aRS:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/le;->d(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p2, Lcom/google/android/gms/internal/fx;->aQK:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/hz;->f(Lcom/google/android/gms/internal/fx;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iy;->pf()V

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Invalid time querying timed out conditional properties"

    invoke-static {v5}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v8}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ga;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v8, "User property timed out"

    iget-object v9, v2, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v11, v11, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/lb;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/google/android/gms/internal/ga;->aRg:Lcom/google/android/gms/internal/gp;

    if-eqz v4, :cond_3

    new-instance v4, Lcom/google/android/gms/internal/gp;

    iget-object v8, v2, Lcom/google/android/gms/internal/ga;->aRg:Lcom/google/android/gms/internal/gp;

    invoke-direct {v4, v8, v6, v7}, Lcom/google/android/gms/internal/gp;-><init>(Lcom/google/android/gms/internal/gp;J)V

    invoke-direct {p0, v4, p2}, Lcom/google/android/gms/internal/hz;->c(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v4

    iget-object v2, v2, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v2, v2, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/gd;->x(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    throw v2

    :cond_4
    :try_start_1
    const-string v3, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/gd;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iy;->pf()V

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Invalid time querying expired conditional properties"

    invoke-static {v5}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v8}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ga;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v9, "User property expired"

    iget-object v10, v2, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v12, v12, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/lb;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v9, v9, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v8, v5, v9}, Lcom/google/android/gms/internal/gd;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/ga;->aRk:Lcom/google/android/gms/internal/gp;

    if-eqz v8, :cond_7

    iget-object v8, v2, Lcom/google/android/gms/internal/ga;->aRk:Lcom/google/android/gms/internal/gp;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v8

    iget-object v2, v2, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v2, v2, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v8, v5, v2}, Lcom/google/android/gms/internal/gd;->x(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    const-string v3, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/gd;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_9
    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v3, 0x0

    move v4, v3

    :goto_5
    if-ge v4, v8, :cond_a

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/internal/gp;

    new-instance v9, Lcom/google/android/gms/internal/gp;

    invoke-direct {v9, v3, v6, v7}, Lcom/google/android/gms/internal/gp;-><init>(Lcom/google/android/gms/internal/gp;J)V

    invoke-direct {p0, v9, p2}, Lcom/google/android/gms/internal/hz;->c(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iy;->pf()V

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v8, "Invalid time querying triggered conditional properties"

    invoke-static {v5}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v8, v5, v2, v3}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ga;

    move-object v9, v0

    if-eqz v9, :cond_b

    iget-object v8, v9, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    new-instance v2, Lcom/google/android/gms/internal/ld;

    iget-object v3, v9, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    iget-object v4, v9, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    iget-object v5, v8, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/lb;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ld;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/ld;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v4, "User property triggered"

    iget-object v5, v9, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/ld;->name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v8, v12}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    iget-object v3, v9, Lcom/google/android/gms/internal/ga;->aRi:Lcom/google/android/gms/internal/gp;

    if-eqz v3, :cond_c

    iget-object v3, v9, Lcom/google/android/gms/internal/ga;->aRi:Lcom/google/android/gms/internal/gp;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    new-instance v3, Lcom/google/android/gms/internal/lb;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/lb;-><init>(Lcom/google/android/gms/internal/ld;)V

    iput-object v3, v9, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/google/android/gms/internal/ga;->aRe:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/ga;)Z

    goto :goto_7

    :cond_d
    const-string v4, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v3, v8, v5

    const/4 v3, 0x2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-virtual {v2, v4, v8}, Lcom/google/android/gms/internal/gd;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_6

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v4, "Too many active user properties, ignoring"

    iget-object v5, v9, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/ld;->name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v8, v12}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hz;->c(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V

    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v5, :cond_10

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/internal/gp;

    new-instance v8, Lcom/google/android/gms/internal/gp;

    invoke-direct {v8, v3, v6, v7}, Lcom/google/android/gms/internal/gp;-><init>(Lcom/google/android/gms/internal/gp;J)V

    invoke-direct {p0, v8, p2}, Lcom/google/android/gms/internal/hz;->c(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V

    goto :goto_9

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    goto/16 :goto_0
.end method

.method final b(Lcom/google/android/gms/internal/gp;Ljava/lang/String;)V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gd;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/fw;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v3, "No app data available; dropping event"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/hz;->c(Lcom/google/android/gms/internal/fw;)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "_ui"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/fx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->getGmpAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qq()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qW()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qX()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qY()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qZ()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->ra()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qT()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->rg()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->rh()Z

    move-result v23

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v23}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final b(Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/fx;)V
    .locals 7

    const/16 v5, 0x18

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    iget-object v1, p2, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p2, Lcom/google/android/gms/internal/fx;->aQK:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/hz;->f(Lcom/google/android/gms/internal/fx;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/le;->cy(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    iget-object v2, p1, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-static {v2, v5, v4}, Lcom/google/android/gms/internal/le;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    const-string v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/google/android/gms/internal/le;->b(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lb;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/le;->l(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    iget-object v2, p1, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-static {v2, v5, v4}, Lcom/google/android/gms/internal/le;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lb;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_5

    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    :cond_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    const-string v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/google/android/gms/internal/le;->b(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    iget-object v0, p1, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lb;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/le;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ld;

    iget-object v1, p2, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/lb;->aRb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/internal/lb;->aXh:J

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ld;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v2, "Setting user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ld;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gd;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/hz;->f(Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/ld;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v2, "User property set"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ld;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Too many unique user properties are set. Ignoring user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ld;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/le;->b(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    throw v0
.end method

.method final b(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/16 v7, 0x130

    const/4 v0, 0x1

    const/16 v6, 0x194

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    if-nez p4, :cond_0

    const/4 v3, 0x0

    :try_start_0
    new-array p4, v3, [B

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "onConfigFetched. Response size"

    array-length v5, p4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gd;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/gd;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/fw;

    move-result-object v4

    const/16 v3, 0xc8

    if-eq p2, v3, :cond_1

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_1

    if-ne p2, v7, :cond_2

    :cond_1
    if-nez p3, :cond_2

    move v3, v0

    :goto_0
    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v2, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/hz;->aVu:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->sh()V

    return-void

    :cond_2
    move v3, v1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    if-ne p2, v6, :cond_c

    :cond_4
    if-eqz p5, :cond_7

    :try_start_3
    const-string v0, "Last-Modified"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_2
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_3
    if-eq p2, v6, :cond_5

    if-ne p2, v7, :cond_9

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ht;->cr(Ljava/lang/String;)Lcom/google/android/gms/internal/lo;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ht;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/fw;->x(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/fw;)V

    if-ne p2, v6, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTf:Lcom/google/android/gms/internal/hd;

    const-string v2, "Config not found. Using empty config. appId"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->rW()Lcom/google/android/gms/internal/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hf;->qe()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->sc()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->sb()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/hz;->aVu:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->sh()V

    throw v0

    :cond_7
    move-object v0, v2

    goto :goto_2

    :cond_8
    move-object v0, v2

    goto :goto_3

    :cond_9
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v2

    invoke-virtual {v2, p1, p4, v0}, Lcom/google/android/gms/internal/ht;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v2, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->sd()V

    goto/16 :goto_1

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/fw;->y(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/fw;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v2, v2, Lcom/google/android/gms/internal/ht;->aUu:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hl;->aTI:Lcom/google/android/gms/internal/hn;

    iget-object v3, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/hn;->set(J)V

    const/16 v2, 0x1f7

    if-eq p2, v2, :cond_d

    const/16 v2, 0x1ad

    if-ne p2, v2, :cond_f

    :cond_d
    :goto_6
    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->aTJ:Lcom/google/android/gms/internal/hn;

    iget-object v2, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/hn;->set(J)V

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->sd()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :cond_f
    move v0, v1

    goto :goto_6
.end method

.method final c(Lcom/google/android/gms/internal/ga;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hz;->cs(Ljava/lang/String;)Lcom/google/android/gms/internal/fx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/ga;Lcom/google/android/gms/internal/fx;)V

    :cond_0
    return-void
.end method

.method final c(Lcom/google/android/gms/internal/ga;Lcom/google/android/gms/internal/fx;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v0, v0, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    iget-object v0, p2, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/fx;->aQK:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/hz;->f(Lcom/google/android/gms/internal/fx;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/hz;->f(Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v2, v2, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gd;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ga;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v1, "Removing conditional user property"

    iget-object v2, p1, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v5, v5, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v2, v2, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gd;->x(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ga;->aRe:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v2, v2, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gd;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRk:Lcom/google/android/gms/internal/gp;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRk:Lcom/google/android/gms/internal/gp;

    iget-object v0, v0, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRk:Lcom/google/android/gms/internal/gp;

    iget-object v0, v0, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gm;->rB()Landroid/os/Bundle;

    move-result-object v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ga;->aRk:Lcom/google/android/gms/internal/gp;

    iget-object v1, v1, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/ga;->aRk:Lcom/google/android/gms/internal/gp;

    iget-wide v4, v4, Lcom/google/android/gms/internal/gp;->aRS:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/le;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;J)Lcom/google/android/gms/internal/gp;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/hz;->c(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "Conditional user property doesn\'t exist"

    iget-object v2, p1, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-object v4, v4, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    throw v0
.end method

.method final c(Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/fx;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    iget-object v0, p2, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/fx;->aQK:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/hz;->f(Lcom/google/android/gms/internal/fx;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v1, "Removing user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/hz;->f(Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gd;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v1, "User property removed"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/lb;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    throw v0
.end method

.method public final ct(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ib;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ib;-><init>(Lcom/google/android/gms/internal/hz;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v2, 0x7530

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Failed to get app instance id. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method final d(Lcom/google/android/gms/internal/fx;)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gd;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/fw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iy;->pf()V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gd;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v4, "apps"

    const-string v5, "app_id=?"

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    const-string v5, "events"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "user_attributes"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "conditional_properties"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "raw_events"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "raw_events_metadata"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "queue"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "audience_filter_values"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "main_event_params"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v4

    if-lez v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "Reset analytics data. app, records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v2, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/google/android/gms/internal/fx;->aQK:Z

    iget-boolean v5, p1, Lcom/google/android/gms/internal/fx;->aQM:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/fx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hz;->e(Lcom/google/android/gms/internal/fx;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-static {v2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final d(Lcom/google/android/gms/internal/ga;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hz;->cs(Ljava/lang/String;)Lcom/google/android/gms/internal/fx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/hz;->c(Lcom/google/android/gms/internal/ga;Lcom/google/android/gms/internal/fx;)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/fx;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gd;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/fw;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/fw;->x(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/fw;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ht;->aUs:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/fx;->aQK:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hz;->f(Lcom/google/android/gms/internal/fx;)V

    goto :goto_0

    :cond_2
    iget-wide v4, p1, Lcom/google/android/gms/internal/fx;->aQZ:J

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v4

    :cond_3
    iget v0, p1, Lcom/google/android/gms/internal/fx;->aRa:I

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v2, "Incorrect app type, assuming installed app. appId, appType"

    iget-object v3, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gd;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/fw;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v2, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gd;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v3, v7

    const-string v7, "events"

    const-string v8, "app_id=?"

    invoke-virtual {v0, v7, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    const-string v8, "user_attributes"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "conditional_properties"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "apps"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "raw_events"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "raw_events_metadata"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "event_filters"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "property_filters"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "audience_filter_values"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v7

    if-lez v0, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v7, "Deleted application data. app, records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v7, v2, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_2
    const/4 v0, 0x0

    :cond_5
    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->qW()J

    move-result-wide v2

    const-wide/32 v8, -0x80000000

    cmp-long v1, v2, v8

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->qW()J

    move-result-wide v2

    iget-wide v8, p1, Lcom/google/android/gms/internal/fx;->aQG:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_6

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->qq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/gp;

    const-string v1, "_au"

    new-instance v2, Lcom/google/android/gms/internal/gm;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gm;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/gm;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V

    :cond_6
    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hz;->f(Lcom/google/android/gms/internal/fx;)V

    const/4 v0, 0x0

    if-nez v6, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    const-string v2, "_f"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gd;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/gl;

    move-result-object v0

    :cond_7
    :goto_4
    if-nez v0, :cond_14

    const-wide/16 v0, 0x1

    const-wide/32 v2, 0x36ee80

    div-long v2, v4, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    if-nez v6, :cond_13

    new-instance v2, Lcom/google/android/gms/internal/lb;

    const-string v3, "_fot"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/lb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_c"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_r"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_uwa"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_pfo"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sys"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sysu"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v2, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->pf()V

    const-string v2, "first_open_count"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gd;->A(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_9

    const-string v2, "_pfo"

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/gp;

    const-string v1, "_f"

    new-instance v2, Lcom/google/android/gms/internal/gm;

    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/gm;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/gm;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V

    :cond_a
    :goto_6
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_et"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/gp;

    const-string v1, "_e"

    new-instance v2, Lcom/google/android/gms/internal/gm;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gm;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/gm;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V

    :cond_b
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Error deleting application data. appId, error"

    invoke-static {v2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gd;->endTransaction()V

    throw v0

    :cond_c
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->qq()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->qq()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/fx;->aQF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->qq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/gp;

    const-string v1, "_au"

    new-instance v2, Lcom/google/android/gms/internal/gm;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gm;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/gm;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V

    goto/16 :goto_3

    :cond_d
    const/4 v1, 0x1

    if-ne v6, v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    const-string v2, "_v"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gd;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/gl;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto/16 :goto_4

    :cond_e
    const/4 v1, 0x0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ee;->ag(Landroid/content/Context;)Lcom/google/android/gms/internal/ed;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ed;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    move-object v1, v0

    :goto_8
    if-eqz v1, :cond_f

    :try_start_6
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v6, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_11

    const-string v1, "_uwa"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_9
    new-instance v2, Lcom/google/android/gms/internal/lb;

    const-string v3, "_fi"

    if-eqz v0, :cond_12

    const-wide/16 v0, 0x1

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/lb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/fx;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_f
    const/4 v1, 0x0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ee;->ag(Landroid/content/Context;)Lcom/google/android/gms/internal/ed;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ed;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_8

    :try_start_8
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    const-string v1, "_sys"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_10
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const-string v0, "_sysu"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Package info is null, first open report might be inaccurate. appId"

    iget-object v6, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_11
    const/4 v0, 0x1

    goto :goto_9

    :cond_12
    const-wide/16 v0, 0x0

    goto :goto_a

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Application info is null, first open report might be inaccurate. appId"

    iget-object v6, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_b

    :cond_13
    const/4 v2, 0x1

    if-ne v6, v2, :cond_a

    new-instance v2, Lcom/google/android/gms/internal/lb;

    const-string v3, "_fvt"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/lb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_c"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_r"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/gp;

    const-string v1, "_v"

    new-instance v2, Lcom/google/android/gms/internal/gm;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gm;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/gm;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V

    goto/16 :goto_6

    :cond_14
    iget-boolean v0, p1, Lcom/google/android/gms/internal/fx;->aQY:Z

    if-eqz v0, :cond_b

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/gp;

    const-string v1, "_cd"

    new-instance v2, Lcom/google/android/gms/internal/gm;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gm;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/gm;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_7

    :cond_15
    move v6, v0

    goto/16 :goto_1
.end method

.method final f(Lcom/google/android/gms/internal/fx;)V
    .locals 8

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gd;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/fw;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v3, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/hl;->cn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v2, :cond_c

    new-instance v2, Lcom/google/android/gms/internal/fw;

    iget-object v0, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/fw;-><init>(Lcom/google/android/gms/internal/hz;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gw;->rD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/fw;->bP(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fw;->bR(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/fw;->bQ(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    iget-object v3, p1, Lcom/google/android/gms/internal/fx;->aQB:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/fx;->aQB:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qT()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/fx;->aQB:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/fw;->bS(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    iget-wide v4, p1, Lcom/google/android/gms/internal/fx;->aQI:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, p1, Lcom/google/android/gms/internal/fx;->aQI:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qY()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, p1, Lcom/google/android/gms/internal/fx;->aQI:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/fw;->u(J)V

    move v0, v1

    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/internal/fx;->aQF:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/internal/fx;->aQF:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/fx;->aQF:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/fw;->bT(Ljava/lang/String;)V

    move v0, v1

    :cond_4
    iget-wide v4, p1, Lcom/google/android/gms/internal/fx;->aQG:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qW()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    iget-wide v4, p1, Lcom/google/android/gms/internal/fx;->aQG:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/fw;->t(J)V

    move v0, v1

    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/internal/fx;->aQH:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/fx;->aQH:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qX()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/internal/fx;->aQH:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/fw;->bU(Ljava/lang/String;)V

    move v0, v1

    :cond_6
    iget-wide v4, p1, Lcom/google/android/gms/internal/fx;->aQJ:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qZ()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    iget-wide v4, p1, Lcom/google/android/gms/internal/fx;->aQJ:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/fw;->v(J)V

    move v0, v1

    :cond_7
    iget-boolean v3, p1, Lcom/google/android/gms/internal/fx;->aQK:Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->ra()Z

    move-result v4

    if-eq v3, v4, :cond_8

    iget-boolean v0, p1, Lcom/google/android/gms/internal/fx;->aQK:Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/fw;->setMeasurementEnabled(Z)V

    move v0, v1

    :cond_8
    iget-object v3, p1, Lcom/google/android/gms/internal/fx;->aQX:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p1, Lcom/google/android/gms/internal/fx;->aQX:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->rf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/internal/fx;->aQX:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/fw;->bV(Ljava/lang/String;)V

    move v0, v1

    :cond_9
    iget-wide v4, p1, Lcom/google/android/gms/internal/fx;->aQL:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->rg()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_a

    iget-wide v4, p1, Lcom/google/android/gms/internal/fx;->aQL:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/fw;->z(J)V

    move v0, v1

    :cond_a
    iget-boolean v3, p1, Lcom/google/android/gms/internal/fx;->aQM:Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->rh()Z

    move-result v4

    if-eq v3, v4, :cond_d

    iget-boolean v0, p1, Lcom/google/android/gms/internal/fx;->aQM:Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/fw;->av(Z)V

    :goto_1
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/fw;)V

    :cond_b
    return-void

    :cond_c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fw;->qS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fw;->bR(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gw;->rD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/fw;->bP(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_d
    move v1, v0

    goto :goto_1
.end method

.method public final isEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    iget-object v1, p0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gc;->rj()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gc;->bX(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/hl;->ax(Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/api/internal/au;->nO()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method final pf()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hz;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final qA()Lcom/google/android/gms/internal/fs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVa:Lcom/google/android/gms/internal/fs;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/ix;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVa:Lcom/google/android/gms/internal/fs;

    return-object v0
.end method

.method public final qB()Lcom/google/android/gms/internal/fz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVi:Lcom/google/android/gms/internal/fz;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/iy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVi:Lcom/google/android/gms/internal/fz;

    return-object v0
.end method

.method public final qC()Lcom/google/android/gms/internal/ja;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUZ:Lcom/google/android/gms/internal/ja;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/iy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUZ:Lcom/google/android/gms/internal/ja;

    return-object v0
.end method

.method public final qD()Lcom/google/android/gms/internal/gw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVf:Lcom/google/android/gms/internal/gw;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/iy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVf:Lcom/google/android/gms/internal/gw;

    return-object v0
.end method

.method public final qE()Lcom/google/android/gms/internal/gj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVe:Lcom/google/android/gms/internal/gj;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/iy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVe:Lcom/google/android/gms/internal/gj;

    return-object v0
.end method

.method public final qF()Lcom/google/android/gms/internal/ju;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVd:Lcom/google/android/gms/internal/ju;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/iy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVd:Lcom/google/android/gms/internal/ju;

    return-object v0
.end method

.method public final qG()Lcom/google/android/gms/internal/jq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUY:Lcom/google/android/gms/internal/jq;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/iy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUY:Lcom/google/android/gms/internal/jq;

    return-object v0
.end method

.method public final qJ()Lcom/google/android/gms/internal/gd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVb:Lcom/google/android/gms/internal/gd;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/iy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVb:Lcom/google/android/gms/internal/gd;

    return-object v0
.end method

.method public final qK()Lcom/google/android/gms/internal/gz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUW:Lcom/google/android/gms/internal/gz;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/ix;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUW:Lcom/google/android/gms/internal/gz;

    return-object v0
.end method

.method public final qL()Lcom/google/android/gms/internal/le;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUV:Lcom/google/android/gms/internal/le;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/ix;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUV:Lcom/google/android/gms/internal/le;

    return-object v0
.end method

.method public final qM()Lcom/google/android/gms/internal/ht;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUS:Lcom/google/android/gms/internal/ht;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/iy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUS:Lcom/google/android/gms/internal/ht;

    return-object v0
.end method

.method public final qO()Lcom/google/android/gms/internal/hu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUQ:Lcom/google/android/gms/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/iy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUQ:Lcom/google/android/gms/internal/hu;

    return-object v0
.end method

.method public final qP()Lcom/google/android/gms/internal/hb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUP:Lcom/google/android/gms/internal/hb;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/iy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUP:Lcom/google/android/gms/internal/hb;

    return-object v0
.end method

.method public final qQ()Lcom/google/android/gms/internal/hl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUO:Lcom/google/android/gms/internal/hl;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/ix;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUO:Lcom/google/android/gms/internal/hl;

    return-object v0
.end method

.method protected final rV()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVk:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/hz;->aVl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVk:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/hz;->aVl:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/hz;->aVl:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/le;->bE(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/le;->bE(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ee;->ag(Landroid/content/Context;)Lcom/google/android/gms/internal/ed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ed;->qw()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ko;->aj(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aVk:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gw;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/le;->cB(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hz;->aVk:Ljava/lang/Boolean;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final rW()Lcom/google/android/gms/internal/hf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUX:Lcom/google/android/gms/internal/hf;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/iy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUX:Lcom/google/android/gms/internal/hf;

    return-object v0
.end method

.method public final sb()V
    .locals 14

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/hz;->aVw:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qF()Lcom/google/android/gms/internal/ju;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ju;->aWB:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/hz;->aVw:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->sh()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Upload called in the client side when service should be used"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/hz;->aVw:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->sh()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/hz;->aVt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->sd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/hz;->aVw:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->sh()V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v2, p0, Lcom/google/android/gms/internal/hz;->aVo:Ljava/util/List;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Uploading requested multiple times"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/hz;->aVw:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->sh()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->rW()Lcom/google/android/gms/internal/hf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hf;->qe()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->sd()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/hz;->aVw:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->sh()V

    goto :goto_0

    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Lcom/google/android/gms/internal/gc;->rl()J

    move-result-wide v2

    sub-long v2, v10, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/hz;->D(J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hl;->aTH:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v5, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v2, v10, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->ro()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-wide v2, p0, Lcom/google/android/gms/internal/hz;->aVs:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->rq()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/hz;->aVs:J

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    sget-object v3, Lcom/google/android/gms/internal/gr;->aSk:Lcom/google/android/gms/internal/gs;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/gc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/gs;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/gms/internal/gr;->aSl:Lcom/google/android/gms/internal/gs;

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/gc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/gs;)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v5

    invoke-virtual {v5, v4, v2, v3}, Lcom/google/android/gms/internal/gd;->b(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/lu;

    iget-object v7, v2, Lcom/google/android/gms/internal/lu;->aYC:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->aYC:Ljava/lang/String;

    move-object v6, v2

    :goto_2
    if-eqz v6, :cond_13

    const/4 v2, 0x0

    move v5, v2

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_13

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/lu;

    iget-object v7, v2, Lcom/google/android/gms/internal/lu;->aYC:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->aYC:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    invoke-interface {v3, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    move-object v6, v2

    :goto_4
    new-instance v7, Lcom/google/android/gms/internal/lt;

    invoke-direct {v7}, Lcom/google/android/gms/internal/lt;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/lu;

    iput-object v2, v7, Lcom/google/android/gms/internal/lt;->aYm:[Lcom/google/android/gms/internal/lu;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/internal/gc;->rn()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/gc;->bY(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    move v3, v2

    :goto_5
    const/4 v2, 0x0

    move v5, v2

    :goto_6
    iget-object v2, v7, Lcom/google/android/gms/internal/lt;->aYm:[Lcom/google/android/gms/internal/lu;

    array-length v2, v2

    if-ge v5, v2, :cond_c

    iget-object v9, v7, Lcom/google/android/gms/internal/lt;->aYm:[Lcom/google/android/gms/internal/lu;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/lu;

    aput-object v2, v9, v5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v7, Lcom/google/android/gms/internal/lt;->aYm:[Lcom/google/android/gms/internal/lu;

    aget-object v2, v2, v5

    const-wide/16 v12, 0x2fb3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v2, Lcom/google/android/gms/internal/lu;->aYB:Ljava/lang/Long;

    iget-object v2, v7, Lcom/google/android/gms/internal/lt;->aYm:[Lcom/google/android/gms/internal/lu;

    aget-object v2, v2, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v2, Lcom/google/android/gms/internal/lu;->aYr:Ljava/lang/Long;

    iget-object v2, v7, Lcom/google/android/gms/internal/lt;->aYm:[Lcom/google/android/gms/internal/lu;

    aget-object v2, v2, v5

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v2, Lcom/google/android/gms/internal/lu;->aYG:Ljava/lang/Boolean;

    if-nez v3, :cond_9

    iget-object v2, v7, Lcom/google/android/gms/internal/lt;->aYm:[Lcom/google/android/gms/internal/lu;

    aget-object v2, v2, v5

    const/4 v9, 0x0

    iput-object v9, v2, Lcom/google/android/gms/internal/lu;->aYO:Ljava/lang/String;

    :cond_9
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_3

    :cond_b
    const/4 v2, 0x0

    move v3, v2

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/hb;->cQ(I)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/gz;->a(Lcom/google/android/gms/internal/lt;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/le;->b(Lcom/google/android/gms/internal/lt;)[B

    move-result-object v6

    sget-object v2, Lcom/google/android/gms/internal/gr;->aSu:Lcom/google/android/gms/internal/gs;

    iget-object v2, v2, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->au(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/hz;->aVo:Ljava/util/List;

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v8, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hl;->aTI:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/internal/hn;->set(J)V

    const-string v2, "?"

    iget-object v8, v7, Lcom/google/android/gms/internal/lt;->aYm:[Lcom/google/android/gms/internal/lu;

    array-length v8, v8

    if-lez v8, :cond_d

    iget-object v2, v7, Lcom/google/android/gms/internal/lt;->aYm:[Lcom/google/android/gms/internal/lu;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->aQx:Ljava/lang/String;

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v8, "Uploading data. app, uncompressed size, data"

    array-length v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v2, v10, v3}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/hz;->aVv:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->rW()Lcom/google/android/gms/internal/hf;

    move-result-object v3

    new-instance v8, Lcom/google/android/gms/internal/ic;

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/ic;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-static {v5}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v10

    new-instance v2, Lcom/google/android/gms/internal/hi;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/hi;-><init>(Lcom/google/android/gms/internal/hf;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/hg;)V

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/hu;->j(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_e
    :goto_a
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/hz;->aVw:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->sh()V

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    goto :goto_8

    :cond_10
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/hz;->aVo:Ljava/util/List;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    :catch_0
    move-exception v2

    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v4}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v9}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/gms/internal/hz;->aVw:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->sh()V

    throw v2

    :cond_11
    const-wide/16 v2, -0x1

    :try_start_9
    iput-wide v2, p0, Lcom/google/android/gms/internal/hz;->aVs:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/gc;->rl()J

    move-result-wide v4

    sub-long v4, v10, v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/gd;->A(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/gd;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/fw;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/fw;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_a

    :cond_12
    move-object v3, v2

    goto/16 :goto_7

    :cond_13
    move-object v6, v3

    goto/16 :goto_4

    :cond_14
    move-object v6, v5

    goto/16 :goto_2
.end method

.method final sd()V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->pf()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->sg()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/hz;->aVt:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/hz;->aVt:J

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v4, v6, v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v7, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->rX()Lcom/google/android/gms/internal/hj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/hj;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->rY()Lcom/google/android/gms/internal/kz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kz;->cancel()V

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/gms/internal/hz;->aVt:J

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->rV()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->sc()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v5, "Nothing to upload or uploading impossible"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->rX()Lcom/google/android/gms/internal/hj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/hj;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->rY()Lcom/google/android/gms/internal/kz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kz;->cancel()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    sget-object v4, Lcom/google/android/gms/internal/gr;->aSE:Lcom/google/android/gms/internal/gs;

    iget-object v4, v4, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v4

    const-string v5, "select count(1) > 0 from raw_events where realtime = 1"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/gd;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v4

    const-string v5, "select count(1) > 0 from queue where has_realtime = 1"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/gd;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_8

    :cond_5
    const/4 v4, 0x1

    move v8, v4

    :goto_3
    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/hz;->aUN:Lcom/google/android/gms/internal/gc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gc;->rm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, ".none."

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-wide/16 v12, 0x0

    sget-object v4, Lcom/google/android/gms/internal/gr;->aSz:Lcom/google/android/gms/internal/gs;

    iget-object v4, v4, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/hl;->aTH:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/hl;->aTI:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v9

    const-string v16, "select max(bundle_end_timestamp) from queue"

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/internal/gd;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v9

    const-string v18, "select max(timestamp) from raw_events"

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/internal/gd;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v9, v16, v18

    if-nez v9, :cond_b

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_5
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-nez v4, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v5, "Next upload time is 0"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->rX()Lcom/google/android/gms/internal/hj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/hj;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->rY()Lcom/google/android/gms/internal/kz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kz;->cancel()V

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v4, 0x0

    move v8, v4

    goto/16 :goto_3

    :cond_9
    const-wide/16 v12, 0x0

    sget-object v4, Lcom/google/android/gms/internal/gr;->aSy:Lcom/google/android/gms/internal/gs;

    iget-object v4, v4, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto/16 :goto_4

    :cond_a
    const-wide/16 v12, 0x0

    sget-object v4, Lcom/google/android/gms/internal/gr;->aSx:Lcom/google/android/gms/internal/gs;

    iget-object v4, v4, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto/16 :goto_4

    :cond_b
    sub-long v16, v16, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    sub-long v16, v6, v16

    sub-long/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long v12, v6, v12

    sub-long/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    sub-long v14, v6, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    add-long v6, v16, v10

    if-eqz v8, :cond_c

    const-wide/16 v8, 0x0

    cmp-long v8, v12, v8

    if-lez v8, :cond_c

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    add-long/2addr v6, v4

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v8

    invoke-virtual {v8, v12, v13, v4, v5}, Lcom/google/android/gms/internal/le;->c(JJ)Z

    move-result v8

    if-nez v8, :cond_15

    add-long/2addr v4, v12

    :goto_6
    const-wide/16 v6, 0x0

    cmp-long v6, v14, v6

    if-eqz v6, :cond_f

    cmp-long v6, v14, v16

    if-ltz v6, :cond_f

    const/4 v8, 0x0

    move-wide v6, v4

    :goto_7
    const/16 v5, 0x14

    const/4 v9, 0x0

    sget-object v4, Lcom/google/android/gms/internal/gr;->aSG:Lcom/google/android/gms/internal/gs;

    iget-object v4, v4, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v8, v4, :cond_e

    const/4 v4, 0x1

    shl-int/2addr v4, v8

    int-to-long v10, v4

    const-wide/16 v12, 0x0

    sget-object v4, Lcom/google/android/gms/internal/gr;->aSF:Lcom/google/android/gms/internal/gs;

    iget-object v4, v4, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    mul-long/2addr v4, v10

    add-long/2addr v4, v6

    cmp-long v6, v4, v14

    if-lez v6, :cond_d

    move-wide v6, v4

    goto/16 :goto_5

    :cond_d
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v4

    goto :goto_7

    :cond_e
    const-wide/16 v4, 0x0

    move-wide v6, v4

    goto/16 :goto_5

    :cond_f
    move-wide v6, v4

    goto/16 :goto_5

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->rW()Lcom/google/android/gms/internal/hf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/hf;->qe()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v5, "No network"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->rX()Lcom/google/android/gms/internal/hj;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/hz;->pf()V

    iget-object v5, v4, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v5, v4, Lcom/google/android/gms/internal/hj;->aTA:Z

    if-nez v5, :cond_11

    iget-object v5, v4, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    iget-object v5, v5, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, v4, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/hz;->rW()Lcom/google/android/gms/internal/hf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/hf;->qe()Z

    move-result v5

    iput-boolean v5, v4, Lcom/google/android/gms/internal/hj;->aTB:Z

    iget-object v5, v4, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v6, "Registering connectivity change receiver. Network connected"

    iget-boolean v7, v4, Lcom/google/android/gms/internal/hj;->aTB:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/internal/hj;->aTA:Z

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->rY()Lcom/google/android/gms/internal/kz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kz;->cancel()V

    goto/16 :goto_0

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hl;->aTJ:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    sget-object v4, Lcom/google/android/gms/internal/gr;->aSv:Lcom/google/android/gms/internal/gs;

    iget-object v4, v4, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v10

    invoke-virtual {v10, v8, v9, v4, v5}, Lcom/google/android/gms/internal/le;->c(JJ)Z

    move-result v10

    if-nez v10, :cond_14

    add-long/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->rX()Lcom/google/android/gms/internal/hj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/hj;->unregister()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_13

    const-wide/16 v6, 0x0

    sget-object v4, Lcom/google/android/gms/internal/gr;->aSA:Lcom/google/android/gms/internal/gs;

    iget-object v4, v4, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/hl;->aTH:Lcom/google/android/gms/internal/hn;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/hn;->set(J)V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v7, "Upload scheduled in approximately ms"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/hz;->rY()Lcom/google/android/gms/internal/kz;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/internal/kz;->n(J)V

    goto/16 :goto_0

    :cond_14
    move-wide v4, v6

    goto :goto_8

    :cond_15
    move-wide v4, v6

    goto/16 :goto_6
.end method

.method final se()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/hz;->aVr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/hz;->aVr:I

    return-void
.end method

.method final sf()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hz;->aVj:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTg:Lcom/google/android/gms/internal/hd;

    const-string v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->pf()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->sg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;->rZ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVn:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hz;->a(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gw;->rE()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hz;->aVj:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->sd()V

    :cond_1
    return-void

    :cond_2
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/hz;->aVn:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/hz;->a(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Storage version upgrade failed. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final start()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->rp()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->aTH:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->aTH:Lcom/google/android/gms/internal/hn;

    iget-object v1, p0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/hn;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->aTM:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Persisting first open"

    iget-wide v2, p0, Lcom/google/android/gms/internal/hz;->aQZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->aTM:Lcom/google/android/gms/internal/hn;

    iget-wide v2, p0, Lcom/google/android/gms/internal/hz;->aQZ:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/hn;->set(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->rV()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/le;->bE(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/le;->bE(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ee;->ag(Landroid/content/Context;)Lcom/google/android/gms/internal/ed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ed;->qw()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ko;->aj(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->sd()V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gw;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl;->rL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gw;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hl;->co(Ljava/lang/String;)V

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qC()Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hl;->aTN:Lcom/google/android/gms/internal/hp;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/hp;->aUb:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/internal/hp;->aUb:Z

    iget-object v2, v1, Lcom/google/android/gms/internal/hp;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-static {v2}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/hp;->key:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/hp;->value:Ljava/lang/String;

    :cond_9
    iget-object v1, v1, Lcom/google/android/gms/internal/hp;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ja;->cu(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gw;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qC()Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->pf()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ja;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->rV()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qF()Lcom/google/android/gms/internal/ju;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ju;->sm()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hl;->rP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iy;->pf()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_po"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v3, "_ou"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ja;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qF()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ju;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gw;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTg:Lcom/google/android/gms/internal/hd;

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl;->rO()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVd:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ju;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hz;->aVd:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ju;->py()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gw;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hl;->co(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->aTM:Lcom/google/android/gms/internal/hn;

    iget-wide v2, p0, Lcom/google/android/gms/internal/hz;->aQZ:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/hn;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->aTN:Lcom/google/android/gms/internal/hp;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/hp;->cp(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
