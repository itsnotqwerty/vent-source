.class public final Lio/branch/referral/d;
.super Ljava/lang/Object;

# interfaces
.implements Lio/branch/referral/InstallListener$a;
.implements Lio/branch/referral/ag$a;
.implements Lio/branch/referral/l$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/referral/d$h;,
        Lio/branch/referral/d$d;,
        Lio/branch/referral/d$l;,
        Lio/branch/referral/d$j;,
        Lio/branch/referral/d$c;,
        Lio/branch/referral/d$b;,
        Lio/branch/referral/d$f;,
        Lio/branch/referral/d$e;,
        Lio/branch/referral/d$a;,
        Lio/branch/referral/d$g;,
        Lio/branch/referral/d$i;,
        Lio/branch/referral/d$k;
    }
.end annotation


# static fields
.field private static cvN:Z

.field private static cvP:Z

.field private static cvQ:Z

.field static cvR:Z

.field private static cvS:J

.field public static cvT:Lio/branch/referral/d;

.field private static cwd:Z

.field private static cwe:Z

.field private static cwk:I

.field private static cwr:Ljava/lang/String;

.field private static cws:I

.field private static final cwt:[Ljava/lang/String;


# instance fields
.field private cvM:Lorg/json/JSONObject;

.field private cvO:Z

.field private cvU:Lio/branch/referral/a/a;

.field private cvV:Lio/branch/referral/q;

.field private final cvW:Lio/branch/referral/ag;

.field public cvX:Landroid/content/Context;

.field private cvY:Ljava/util/concurrent/Semaphore;

.field private cvZ:Lio/branch/referral/z;

.field private cwa:I

.field private cwb:Z

.field cwc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lio/branch/referral/g;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cwf:I

.field private cwg:Z

.field private cwh:I

.field private cwi:Lio/branch/referral/af;

.field cwj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private cwl:Z

.field private final cwm:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cwn:Z

.field private cwo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cwp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field cwq:Ljava/lang/String;

.field private cwu:Ljava/util/concurrent/CountDownLatch;

.field private cwv:Ljava/util/concurrent/CountDownLatch;

.field private cww:Z

.field final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lio/branch/referral/d;->cvQ:Z

    sput-boolean v3, Lio/branch/referral/d;->cvR:Z

    const-wide/16 v0, 0x5dc

    sput-wide v0, Lio/branch/referral/d;->cvS:J

    sput-boolean v2, Lio/branch/referral/d;->cwd:Z

    sput-boolean v2, Lio/branch/referral/d;->cwe:Z

    sget v0, Lio/branch/referral/d$g;->cwA:I

    sput v0, Lio/branch/referral/d;->cwk:I

    const-string v0, "app.link"

    sput-object v0, Lio/branch/referral/d;->cwr:Ljava/lang/String;

    const/16 v0, 0x9c4

    sput v0, Lio/branch/referral/d;->cws:I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "extra_launch_uri"

    aput-object v1, v0, v2

    sput-object v0, Lio/branch/referral/d;->cwt:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lio/branch/referral/d;->cvO:Z

    sget v0, Lio/branch/referral/d$i;->cwE:I

    iput v0, p0, Lio/branch/referral/d;->cwf:I

    iput-boolean v2, p0, Lio/branch/referral/d;->cwg:Z

    sget v0, Lio/branch/referral/d$k;->cwJ:I

    iput v0, p0, Lio/branch/referral/d;->cwh:I

    iput-boolean v2, p0, Lio/branch/referral/d;->cwl:Z

    iput-boolean v2, p0, Lio/branch/referral/d;->cwn:Z

    iput-object v3, p0, Lio/branch/referral/d;->cwu:Ljava/util/concurrent/CountDownLatch;

    iput-object v3, p0, Lio/branch/referral/d;->cwv:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v2, p0, Lio/branch/referral/d;->cww:Z

    invoke-static {p1}, Lio/branch/referral/q;->bT(Landroid/content/Context;)Lio/branch/referral/q;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/d;->cvV:Lio/branch/referral/q;

    new-instance v0, Lio/branch/referral/a/b;

    invoke-direct {v0, p1}, Lio/branch/referral/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/branch/referral/d;->cvU:Lio/branch/referral/a/a;

    new-instance v0, Lio/branch/referral/ag;

    invoke-direct {v0, p1}, Lio/branch/referral/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/branch/referral/d;->cvW:Lio/branch/referral/ag;

    invoke-static {p1}, Lio/branch/referral/z;->bW(Landroid/content/Context;)Lio/branch/referral/z;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lio/branch/referral/d;->cvY:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/branch/referral/d;->lock:Ljava/lang/Object;

    iput v2, p0, Lio/branch/referral/d;->cwa:I

    iput-boolean v1, p0, Lio/branch/referral/d;->cwb:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/referral/d;->cwc:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/branch/referral/d;->cwm:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lio/branch/referral/d;->cvW:Lio/branch/referral/ag;

    iget-object v3, v0, Lio/branch/referral/ag;->cBF:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lio/branch/referral/ag$b;

    invoke-direct {v3, v0, p0}, Lio/branch/referral/ag$b;-><init>(Lio/branch/referral/ag;Lio/branch/referral/ag$a;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lio/branch/referral/ag$b;->e([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lio/branch/referral/d;->cwn:Z

    invoke-static {p0}, Lio/branch/referral/InstallListener;->a(Lio/branch/referral/InstallListener$a;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v0, v3, :cond_0

    iput-boolean v1, p0, Lio/branch/referral/d;->cwg:Z

    sget v0, Lio/branch/referral/d$i;->cwE:I

    iput v0, p0, Lio/branch/referral/d;->cwf:I

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/referral/d;->cwo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/referral/d;->cwp:Ljava/util/List;

    return-void

    :cond_0
    iput-boolean v2, p0, Lio/branch/referral/d;->cwg:Z

    sget v0, Lio/branch/referral/d$i;->cwF:I

    iput v0, p0, Lio/branch/referral/d;->cwf:I

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private static GA()Z
    .locals 2

    const-string v0, "bnc_session_id"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static GB()Z
    .locals 2

    const-string v0, "bnc_identity_id"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private GC()V
    .locals 14

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lio/branch/referral/q;->Ha()Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lio/branch/referral/d;->cvP:Z

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    iget-object v3, p0, Lio/branch/referral/d;->cvW:Lio/branch/referral/ag;

    sget-boolean v4, Lio/branch/referral/d;->cvN:Z

    invoke-static {v0, v3, v4}, Lio/branch/referral/o;->a(ZLio/branch/referral/ag;Z)Lio/branch/referral/o;

    move-result-object v3

    iget-object v0, p0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v8, v0

    :goto_2
    if-eqz v8, :cond_5

    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    iget-object v1, v0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/referral/r;

    if-eqz v0, :cond_1

    instance-of v5, v0, Lio/branch/referral/x;

    if-eqz v5, :cond_1

    sget-object v5, Lio/branch/referral/r$a;->cBh:Lio/branch/referral/r$a;

    invoke-virtual {v0, v5}, Lio/branch/referral/r;->a(Lio/branch/referral/r$a;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move-object v8, v1

    goto :goto_2

    :cond_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lio/branch/referral/i;->GK()Lio/branch/referral/i;

    move-result-object v1

    sget-object v0, Lio/branch/referral/d;->cwr:Ljava/lang/String;

    iget-object v6, p0, Lio/branch/referral/d;->cvV:Lio/branch/referral/q;

    iget-object v4, p0, Lio/branch/referral/d;->cvW:Lio/branch/referral/ag;

    new-instance v7, Lio/branch/referral/d$2;

    invoke-direct {v7, p0}, Lio/branch/referral/d$2;-><init>(Lio/branch/referral/d;)V

    iput-boolean v2, v1, Lio/branch/referral/i;->cwZ:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v2, "bnc_branch_strong_match_time"

    invoke-static {v2}, Lio/branch/referral/q;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide v12, 0x9a7ec800L

    cmp-long v2, v10, v12

    if-gez v2, :cond_6

    iget-boolean v0, v1, Lio/branch/referral/i;->cwZ:Z

    invoke-virtual {v1, v7, v0}, Lio/branch/referral/i;->a(Lio/branch/referral/i$b;Z)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    iget-boolean v2, v1, Lio/branch/referral/i;->cwY:Z

    if-nez v2, :cond_7

    iget-boolean v0, v1, Lio/branch/referral/i;->cwZ:Z

    invoke-virtual {v1, v7, v0}, Lio/branch/referral/i;->a(Lio/branch/referral/i$b;Z)V

    goto :goto_4

    :cond_7
    :try_start_2
    invoke-virtual {v3}, Lio/branch/referral/o;->GO()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v0, v3, v4, v8}, Lio/branch/referral/i;->a(Ljava/lang/String;Lio/branch/referral/o;Lio/branch/referral/ag;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v0, v1, Lio/branch/referral/i;->cwW:Landroid/os/Handler;

    new-instance v2, Lio/branch/referral/i$1;

    invoke-direct {v2, v1, v7}, Lio/branch/referral/i$1;-><init>(Lio/branch/referral/i;Lio/branch/referral/i$b;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v0, v2, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, v1, Lio/branch/referral/i;->cxa:Ljava/lang/Class;

    const-string v2, "bindCustomTabsService"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v3, v5

    const/4 v5, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v3, v5

    const/4 v5, 0x2

    iget-object v9, v1, Lio/branch/referral/i;->cxb:Ljava/lang/Class;

    aput-object v9, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    iget-object v0, v1, Lio/branch/referral/i;->cxa:Ljava/lang/Class;

    const-string v2, "warmup"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v0, v1, Lio/branch/referral/i;->cxa:Ljava/lang/Class;

    const-string v3, "newSession"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v9, 0x0

    iget-object v10, v1, Lio/branch/referral/i;->cxc:Ljava/lang/Class;

    aput-object v10, v5, v9

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v0, v1, Lio/branch/referral/i;->cxd:Ljava/lang/Class;

    const-string v5, "mayLaunchUrl"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/net/Uri;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/os/Bundle;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/util/List;

    aput-object v11, v9, v10

    invoke-virtual {v0, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.chrome"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Lio/branch/referral/i$2;

    invoke-direct/range {v0 .. v7}, Lio/branch/referral/i$2;-><init>(Lio/branch/referral/i;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Landroid/net/Uri;Ljava/lang/reflect/Method;Lio/branch/referral/q;Lio/branch/referral/i$b;)V

    const/16 v2, 0x21

    invoke-virtual {v8, v9, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    iget-boolean v0, v1, Lio/branch/referral/i;->cwZ:Z

    invoke-virtual {v1, v7, v0}, Lio/branch/referral/i;->a(Lio/branch/referral/i$b;Z)V

    goto/16 :goto_4

    :cond_8
    :try_start_3
    iget-boolean v0, v1, Lio/branch/referral/i;->cwZ:Z

    invoke-virtual {v1, v7, v0}, Lio/branch/referral/i;->a(Lio/branch/referral/i$b;Z)V

    goto/16 :goto_4

    :cond_9
    iget-boolean v0, v1, Lio/branch/referral/i;->cwZ:Z

    invoke-virtual {v1, v7, v0}, Lio/branch/referral/i;->a(Lio/branch/referral/i$b;Z)V

    const-string v0, "BranchSDK"

    const-string v2, "Cannot use cookie-based matching since device id is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private GD()V
    .locals 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Lio/branch/referral/d;->Gy()Lorg/json/JSONObject;

    move-result-object v4

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lio/branch/referral/n$a;->cyZ:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lio/branch/referral/n$a;->cyZ:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lio/branch/referral/d;->cvX:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lio/branch/referral/d;->cvX:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x80

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "io.branch.sdk.auto_link_disable"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lio/branch/referral/d;->cvX:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lio/branch/referral/d;->cvX:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x81

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_a

    array-length v6, v5

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_a

    aget-object v7, v5, v3

    if-eqz v7, :cond_7

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "io.branch.sdk.auto_link_keys"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "io.branch.sdk.auto_link_path"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "io.branch.sdk.auto_link_keys"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "io.branch.sdk.auto_link_keys"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v2, v1

    :goto_2
    if-ge v2, v9, :cond_6

    aget-object v10, v8, v2

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_4

    invoke-static {v4, v7}, Lio/branch/referral/d;->a(Lorg/json/JSONObject;Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "io.branch.sdk.auto_link_request_code"

    const/16 v3, 0x5dd

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    move v3, v1

    move-object v2, v0

    :goto_4
    if-eqz v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_9

    new-instance v5, Landroid/content/Intent;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "io.branch.sdk.auto_linked"

    const-string v6, "true"

    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lio/branch/referral/n$a;->cyw:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v0, "BranchSDK"

    const-string v1, "Branch Warning: Please make sure Activity names set for auto deep link are correct!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    :cond_8
    :try_start_2
    invoke-virtual {v0, v5, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_6
    const-string v1, "BranchSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Branch Warning: Please make sure Activity names set for auto deep link are correct! Error while looking for activity "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    :try_start_3
    const-string v0, "BranchSDK"

    const-string v1, "No activity reference to launch deep linked activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto :goto_6

    :cond_a
    move v3, v1

    move-object v2, v0

    goto/16 :goto_4
.end method

.method public static GE()Z
    .locals 1

    sget-boolean v0, Lio/branch/referral/d;->cvQ:Z

    return v0
.end method

.method static synthetic GF()Lio/branch/referral/d;
    .locals 1

    sget-object v0, Lio/branch/referral/d;->cvT:Lio/branch/referral/d;

    return-object v0
.end method

.method public static Gt()Lio/branch/referral/d;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget-object v0, Lio/branch/referral/d;->cvT:Lio/branch/referral/d;

    if-nez v0, :cond_1

    const-string v0, "BranchSDK"

    const-string v1, "Branch instance is not created yet. Make sure you have initialised Branch. [Consider Calling getInstance(Context ctx) if you still have issue.]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object v0, Lio/branch/referral/d;->cvT:Lio/branch/referral/d;

    return-object v0

    :cond_1
    sget-boolean v0, Lio/branch/referral/d;->cwd:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lio/branch/referral/d;->cwe:Z

    if-nez v0, :cond_0

    const-string v0, "BranchSDK"

    const-string v1, "Branch instance is not properly initialised. Make sure your Application class is extending BranchApp class. If you are not extending BranchApp class make sure you are initialising Branch in your Applications onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static Gu()Z
    .locals 1

    sget-boolean v0, Lio/branch/referral/d;->cvN:Z

    return v0
.end method

.method private Gz()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/branch/referral/d;->cvY:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget v2, p0, Lio/branch/referral/d;->cwa:I

    if-nez v2, :cond_7

    iget-object v2, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v2}, Lio/branch/referral/z;->getSize()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x1

    iput v2, p0, Lio/branch/referral/d;->cwa:I

    iget-object v2, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v2}, Lio/branch/referral/z;->Ho()Lio/branch/referral/r;

    move-result-object v3

    iget-object v2, p0, Lio/branch/referral/d;->cvY:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    if-eqz v3, :cond_6

    iget-object v2, v3, Lio/branch/referral/r;->cBb:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_5

    instance-of v2, v3, Lio/branch/referral/ac;

    if-nez v2, :cond_1

    invoke-static {}, Lio/branch/referral/d;->GB()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "BranchSDK"

    const-string v1, "Branch Error: User session has not been initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lio/branch/referral/d;->cwa:I

    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v0}, Lio/branch/referral/z;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, -0x65

    invoke-direct {p0, v0, v1}, Lio/branch/referral/d;->aK(II)V

    :goto_1
    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    instance-of v2, v3, Lio/branch/referral/x;

    if-nez v2, :cond_4

    invoke-static {}, Lio/branch/referral/d;->GA()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "bnc_device_fingerprint_id"

    invoke-static {v2}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "bnc_no_value"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    if-nez v0, :cond_4

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lio/branch/referral/d;->cwa:I

    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v0}, Lio/branch/referral/z;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, -0x65

    invoke-direct {p0, v0, v1}, Lio/branch/referral/d;->aK(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :try_start_1
    new-instance v0, Lio/branch/referral/d$d;

    invoke-direct {v0, p0, v3}, Lio/branch/referral/d$d;-><init>(Lio/branch/referral/d;Lio/branch/referral/r;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lio/branch/referral/d$d;->e([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lio/branch/referral/d;->cwa:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/branch/referral/z;->b(Lio/branch/referral/r;)Z

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lio/branch/referral/d;->cvY:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lio/branch/referral/d;I)I
    .locals 0

    iput p1, p0, Lio/branch/referral/d;->cwf:I

    return p1
.end method

.method static synthetic a(Lio/branch/referral/d;)Lio/branch/referral/q;
    .locals 1

    iget-object v0, p0, Lio/branch/referral/d;->cvV:Lio/branch/referral/q;

    return-object v0
.end method

.method private a(Lio/branch/referral/d$e;Landroid/app/Activity;Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    :cond_0
    invoke-static {}, Lio/branch/referral/d;->GB()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lio/branch/referral/d;->GA()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lio/branch/referral/d;->cwh:I

    sget v1, Lio/branch/referral/d$k;->cwH:I

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_1

    sget-boolean v0, Lio/branch/referral/d;->cwd:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lio/branch/referral/d;->cwl:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lio/branch/referral/d;->Gy()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lio/branch/referral/d$e;->a(Lorg/json/JSONObject;Lio/branch/referral/f;)V

    iput-boolean v2, p0, Lio/branch/referral/d;->cwl:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v0, v3}, Lio/branch/referral/d$e;->a(Lorg/json/JSONObject;Lio/branch/referral/f;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v0, v3}, Lio/branch/referral/d$e;->a(Lorg/json/JSONObject;Lio/branch/referral/f;)V

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    const-string v0, "bnc_is_referrable"

    invoke-static {v0, v2}, Lio/branch/referral/q;->setInteger(Ljava/lang/String;I)V

    :goto_1
    iget v0, p0, Lio/branch/referral/d;->cwh:I

    sget v1, Lio/branch/referral/d$k;->cwI:I

    if-ne v0, v1, :cond_6

    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v0, p1}, Lio/branch/referral/z;->a(Lio/branch/referral/d$e;)V

    goto :goto_0

    :cond_5
    const-string v0, "bnc_is_referrable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/branch/referral/q;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    sget v0, Lio/branch/referral/d$k;->cwI:I

    iput v0, p0, Lio/branch/referral/d;->cwh:I

    invoke-static {}, Lio/branch/referral/q;->GU()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lio/branch/referral/q;->GU()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    sget v0, Lio/branch/referral/d$k;->cwJ:I

    iput v0, p0, Lio/branch/referral/d;->cwh:I

    if-eqz p1, :cond_8

    new-instance v0, Lio/branch/referral/f;

    const-string v1, "Trouble initializing Branch."

    const/16 v2, -0x72

    invoke-direct {v0, v1, v2}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v3, v0}, Lio/branch/referral/d$e;->a(Lorg/json/JSONObject;Lio/branch/referral/f;)V

    :cond_8
    const-string v0, "BranchSDK"

    const-string v1, "Branch Warning: Please enter your branch_key in your project\'s res/values/strings.xml!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    invoke-static {}, Lio/branch/referral/q;->GU()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lio/branch/referral/q;->GU()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_test_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "BranchSDK"

    const-string v1, "Branch Warning: You are using your test app\'s Branch Key. Remember to change it to live Branch Key during deployment."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v0, "bnc_external_intent_uri"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lio/branch/referral/d;->cvO:Z

    if-nez v0, :cond_c

    :cond_b
    invoke-direct {p0, p1, v3}, Lio/branch/referral/d;->a(Lio/branch/referral/d$e;Lio/branch/referral/r$a;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lio/branch/referral/d;->cvX:Landroid/content/Context;

    new-instance v1, Lio/branch/referral/d$1;

    invoke-direct {v1, p0}, Lio/branch/referral/d$1;-><init>(Lio/branch/referral/d;)V

    invoke-static {v0, v1}, Lio/branch/referral/m;->a(Landroid/content/Context;Lio/branch/referral/m$a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lio/branch/referral/r$a;->cBe:Lio/branch/referral/r$a;

    invoke-direct {p0, p1, v0}, Lio/branch/referral/d;->a(Lio/branch/referral/d$e;Lio/branch/referral/r$a;)V

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, p1, v3}, Lio/branch/referral/d;->a(Lio/branch/referral/d$e;Lio/branch/referral/r$a;)V

    goto/16 :goto_0
.end method

.method private a(Lio/branch/referral/d$e;Lio/branch/referral/r$a;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lio/branch/referral/d;->GB()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lio/branch/referral/ad;

    iget-object v1, p0, Lio/branch/referral/d;->cvX:Landroid/content/Context;

    iget-object v2, p0, Lio/branch/referral/d;->cvW:Lio/branch/referral/ag;

    invoke-direct {v0, v1, p1, v2}, Lio/branch/referral/ad;-><init>(Landroid/content/Context;Lio/branch/referral/d$e;Lio/branch/referral/ag;)V

    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p2}, Lio/branch/referral/r;->a(Lio/branch/referral/r$a;)V

    iget-boolean v0, p0, Lio/branch/referral/d;->cwn:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/branch/referral/r$a;->cBf:Lio/branch/referral/r$a;

    invoke-virtual {v1, v0}, Lio/branch/referral/r;->a(Lio/branch/referral/r$a;)V

    :cond_0
    iget v0, p0, Lio/branch/referral/d;->cwf:I

    sget v2, Lio/branch/referral/d$i;->cwF:I

    if-eq v0, v2, :cond_1

    sget-object v0, Lio/branch/referral/r$a;->cBg:Lio/branch/referral/r$a;

    invoke-virtual {v1, v0}, Lio/branch/referral/r;->a(Lio/branch/referral/r$a;)V

    :cond_1
    sget-boolean v0, Lio/branch/referral/d;->cvR:Z

    if-eqz v0, :cond_2

    instance-of v0, v1, Lio/branch/referral/ac;

    if-eqz v0, :cond_2

    sget-object v0, Lio/branch/referral/r$a;->cBi:Lio/branch/referral/r$a;

    invoke-virtual {v1, v0}, Lio/branch/referral/r;->a(Lio/branch/referral/r$a;)V

    sget-wide v2, Lio/branch/referral/d;->cvS:J

    invoke-static {v2, v3}, Lio/branch/referral/InstallListener;->T(J)V

    :cond_2
    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v0}, Lio/branch/referral/z;->Hq()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lio/branch/referral/d;->cwa:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v0, v1, v7}, Lio/branch/referral/z;->a(Lio/branch/referral/r;I)V

    :goto_1
    invoke-direct {p0}, Lio/branch/referral/d;->Gz()V

    return-void

    :cond_3
    new-instance v0, Lio/branch/referral/ac;

    iget-object v1, p0, Lio/branch/referral/d;->cvX:Landroid/content/Context;

    iget-object v2, p0, Lio/branch/referral/d;->cvW:Lio/branch/referral/ag;

    invoke-static {}, Lio/branch/referral/InstallListener;->GP()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lio/branch/referral/ac;-><init>(Landroid/content/Context;Lio/branch/referral/d$e;Lio/branch/referral/ag;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v0, v1, v8}, Lio/branch/referral/z;->a(Lio/branch/referral/r;I)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v0, p1}, Lio/branch/referral/z;->a(Lio/branch/referral/d$e;)V

    :cond_6
    iget-object v2, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    iget v3, p0, Lio/branch/referral/d;->cwa:I

    iget-object v4, v2, Lio/branch/referral/z;->cBx:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v0, v2, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/referral/r;

    if-eqz v0, :cond_7

    instance-of v6, v0, Lio/branch/referral/ac;

    if-nez v6, :cond_8

    instance-of v0, v0, Lio/branch/referral/ad;

    if-eqz v0, :cond_7

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    :cond_9
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_a

    invoke-virtual {v2, v1, v7}, Lio/branch/referral/z;->a(Lio/branch/referral/r;I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    invoke-virtual {v2, v1, v8}, Lio/branch/referral/z;->a(Lio/branch/referral/r;I)V

    goto :goto_1
.end method

.method static synthetic a(Lio/branch/referral/d;Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/d;->a(Landroid/net/Uri;Landroid/app/Activity;)Z

    invoke-virtual {p0, v1, p1}, Lio/branch/referral/d;->a(Lio/branch/referral/d$e;Landroid/app/Activity;)Z

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lio/branch/referral/d;Landroid/app/Activity;Z)V
    .locals 2

    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    sget-object v1, Lio/branch/referral/r$a;->cBg:Lio/branch/referral/r$a;

    invoke-virtual {v0, v1}, Lio/branch/referral/z;->b(Lio/branch/referral/r$a;)V

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/branch/referral/d;->a(Landroid/net/Uri;Landroid/app/Activity;)Z

    sget-object v0, Lio/branch/referral/d;->cwr:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lio/branch/referral/q;->GU()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/branch/referral/q;->GU()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/branch/referral/d;->cwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/branch/referral/d;->cww:Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lio/branch/referral/d;->GC()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lio/branch/referral/d;->Gz()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lio/branch/referral/d;->Gz()V

    goto :goto_0
.end method

.method static synthetic a(Lio/branch/referral/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/branch/referral/d;->cwb:Z

    return p1
.end method

.method private static a(Lorg/json/JSONObject;Landroid/content/pm/ActivityInfo;)Z
    .locals 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lio/branch/referral/n$a;->czb:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lio/branch/referral/n$a;->czb:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "io.branch.sdk.auto_link_path"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "io.branch.sdk.auto_link_path"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_5

    aget-object v1, v5, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v7, "\\?"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v1, v7

    array-length v9, v8

    if-eq v1, v9, :cond_2

    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    :goto_3
    return v3

    :cond_1
    :try_start_1
    sget-object v1, Lio/branch/referral/n$a;->czc:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lio/branch/referral/n$a;->czc:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_4
    array-length v9, v7

    if-ge v1, v9, :cond_6

    array-length v9, v8

    if-ge v1, v9, :cond_6

    aget-object v9, v7, v1

    aget-object v10, v8, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_2
.end method

.method private aK(II)V
    .locals 2

    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v0}, Lio/branch/referral/z;->getSize()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    iget-object v1, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v1}, Lio/branch/referral/z;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/branch/referral/z;->fc(I)Lio/branch/referral/r;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lio/branch/referral/r;->i(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v0, p1}, Lio/branch/referral/z;->fc(I)Lio/branch/referral/r;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lio/branch/referral/d;I)I
    .locals 0

    iput p1, p0, Lio/branch/referral/d;->cwh:I

    return p1
.end method

.method static synthetic b(Lio/branch/referral/d;)Lio/branch/referral/z;
    .locals 1

    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    return-object v0
.end method

.method static synthetic b(Lio/branch/referral/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/branch/referral/d;->cwl:Z

    return p1
.end method

.method public static bQ(Landroid/content/Context;)Lio/branch/referral/d;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/branch/referral/d;->h(Landroid/content/Context;Z)Lio/branch/referral/d;

    move-result-object v0

    return-object v0
.end method

.method public static bR(Landroid/content/Context;)Lio/branch/referral/d;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lio/branch/referral/d;->cwd:Z

    sget v1, Lio/branch/referral/d$g;->cwA:I

    sput v1, Lio/branch/referral/d;->cwk:I

    invoke-static {p0}, Lio/branch/referral/k;->bS(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-static {p0, v0}, Lio/branch/referral/d;->h(Landroid/content/Context;Z)Lio/branch/referral/d;

    sget-object v0, Lio/branch/referral/d;->cvT:Lio/branch/referral/d;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lio/branch/referral/d;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/referral/d;->Gz()V

    return-void
.end method

.method static synthetic c(Lio/branch/referral/d;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/branch/referral/d;->aK(II)V

    return-void
.end method

.method static synthetic d(Lio/branch/referral/d;)Z
    .locals 1

    iget-boolean v0, p0, Lio/branch/referral/d;->cwg:Z

    return v0
.end method

.method static synthetic e(Lio/branch/referral/d;)I
    .locals 1

    iget v0, p0, Lio/branch/referral/d;->cwh:I

    return v0
.end method

.method private static ez(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "bnc_no_value"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/c;->z([B)[B

    move-result-object v1

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method static synthetic f(Lio/branch/referral/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lio/branch/referral/d;->cvX:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lio/branch/referral/d;)Lio/branch/referral/af;
    .locals 1

    iget-object v0, p0, Lio/branch/referral/d;->cwi:Lio/branch/referral/af;

    return-object v0
.end method

.method private g(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/d;->cvM:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/branch/referral/d;->cvM:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "BranchSDK"

    const-string v1, "You\'re currently in deep link debug mode. Please comment out \'setDeepLinkDebugMode\' to receive the deep link parameters from a real Branch link"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lio/branch/referral/d;->cvM:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lio/branch/referral/d;->cvM:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-object p1
.end method

.method private static h(Landroid/content/Context;Z)Lio/branch/referral/d;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lio/branch/referral/d;->cvT:Lio/branch/referral/d;

    if-nez v0, :cond_2

    new-instance v0, Lio/branch/referral/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/branch/referral/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/branch/referral/d;->cvT:Lio/branch/referral/d;

    iget-object v0, v0, Lio/branch/referral/d;->cvV:Lio/branch/referral/q;

    invoke-virtual {v0, p1}, Lio/branch/referral/q;->bq(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "io.branch.apiKey"

    const-string v3, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "BranchSDK"

    const-string v1, "Branch Warning: Please enter your branch_key in your project\'s Manifest file!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lio/branch/referral/d;->cvT:Lio/branch/referral/d;

    iget-object v0, v0, Lio/branch/referral/d;->cvV:Lio/branch/referral/q;

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Lio/branch/referral/q;->eK(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_1

    sget-object v0, Lio/branch/referral/d;->cvT:Lio/branch/referral/d;

    iget-object v0, v0, Lio/branch/referral/d;->cwc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lio/branch/referral/d;->cvT:Lio/branch/referral/d;

    iget-object v0, v0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v0}, Lio/branch/referral/z;->clear()V

    :cond_1
    sget-object v0, Lio/branch/referral/d;->cvT:Lio/branch/referral/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lio/branch/referral/d;->cvX:Landroid/content/Context;

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_2

    sput-boolean v6, Lio/branch/referral/d;->cwd:Z

    sget-object v0, Lio/branch/referral/d;->cvT:Lio/branch/referral/d;

    check-cast p0, Landroid/app/Application;

    :try_start_1
    new-instance v1, Lio/branch/referral/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/branch/referral/d$a;-><init>(Lio/branch/referral/d;B)V

    invoke-virtual {p0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    sput-boolean v0, Lio/branch/referral/d;->cwe:Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    sget-object v0, Lio/branch/referral/d;->cvT:Lio/branch/referral/d;

    return-object v0

    :cond_3
    sget-object v1, Lio/branch/referral/d;->cvT:Lio/branch/referral/d;

    iget-object v1, v1, Lio/branch/referral/d;->cvV:Lio/branch/referral/q;

    invoke-virtual {v1, v0}, Lio/branch/referral/q;->eK(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    sput-boolean v5, Lio/branch/referral/d;->cwe:Z

    sput-boolean v5, Lio/branch/referral/d;->cwd:Z

    const-string v0, "BranchSDK"

    new-instance v1, Lio/branch/referral/f;

    const-string v2, ""

    const/16 v3, -0x6c

    invoke-direct {v1, v2, v3}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    iget-object v1, v1, Lio/branch/referral/f;->cwL:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic h(Lio/branch/referral/d;)V
    .locals 2

    iget v0, p0, Lio/branch/referral/d;->cwh:I

    sget v1, Lio/branch/referral/d$k;->cwJ:I

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lio/branch/referral/d;->cwb:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v0}, Lio/branch/referral/z;->Ho()Lio/branch/referral/r;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lio/branch/referral/ac;

    if-nez v1, :cond_1

    :cond_0
    instance-of v0, v0, Lio/branch/referral/ad;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v0}, Lio/branch/referral/z;->Hn()Lio/branch/referral/r;

    :cond_2
    :goto_0
    sget v0, Lio/branch/referral/d$k;->cwJ:I

    iput v0, p0, Lio/branch/referral/d;->cwh:I

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/referral/d;->cwq:Ljava/lang/String;

    return-void

    :cond_4
    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v0}, Lio/branch/referral/z;->Hp()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lio/branch/referral/ab;

    iget-object v1, p0, Lio/branch/referral/d;->cvX:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/branch/referral/ab;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/branch/referral/d;->a(Lio/branch/referral/r;)V

    goto :goto_0
.end method

.method static synthetic h(Landroid/content/Intent;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    sget-object v0, Lio/branch/referral/n$a;->czg:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Lio/branch/referral/n$a;->czg:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic i(Lio/branch/referral/d;)Lio/branch/referral/a/a;
    .locals 1

    iget-object v0, p0, Lio/branch/referral/d;->cvU:Lio/branch/referral/a/a;

    return-object v0
.end method

.method static synthetic j(Lio/branch/referral/d;)Lio/branch/referral/ag;
    .locals 1

    iget-object v0, p0, Lio/branch/referral/d;->cvW:Lio/branch/referral/ag;

    return-object v0
.end method

.method static synthetic k(Lio/branch/referral/d;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lio/branch/referral/d;->cwm:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic l(Lio/branch/referral/d;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/branch/referral/d;->cwa:I

    return v0
.end method

.method static synthetic m(Lio/branch/referral/d;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lio/branch/referral/d;->cwc:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic n(Lio/branch/referral/d;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v1}, Lio/branch/referral/z;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    invoke-virtual {v1, v0}, Lio/branch/referral/z;->fc(I)Lio/branch/referral/r;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    sget-object v3, Lio/branch/referral/n$a;->cxU:Lio/branch/referral/n$a;

    iget-object v3, v3, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    sget-object v4, Lio/branch/referral/n$a;->cxU:Lio/branch/referral/n$a;

    iget-object v4, v4, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v5, "bnc_session_id"

    invoke-static {v5}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    sget-object v3, Lio/branch/referral/n$a;->cxR:Lio/branch/referral/n$a;

    iget-object v3, v3, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    sget-object v4, Lio/branch/referral/n$a;->cxR:Lio/branch/referral/n$a;

    iget-object v4, v4, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v5, "bnc_identity_id"

    invoke-static {v5}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    sget-object v3, Lio/branch/referral/n$a;->cxT:Lio/branch/referral/n$a;

    iget-object v3, v3, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    sget-object v2, Lio/branch/referral/n$a;->cxT:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v3, "bnc_device_fingerprint_id"

    invoke-static {v3}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    return-void
.end method

.method static synthetic o(Lio/branch/referral/d;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/referral/d;->GD()V

    return-void
.end method

.method static synthetic p(Lio/branch/referral/d;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lio/branch/referral/d;->cwv:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic q(Lio/branch/referral/d;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lio/branch/referral/d;->cwu:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic r(Lio/branch/referral/d;)Z
    .locals 1

    iget-boolean v0, p0, Lio/branch/referral/d;->cwb:Z

    return v0
.end method


# virtual methods
.method public final Gv()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/branch/referral/d;->cwn:Z

    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    sget-object v1, Lio/branch/referral/r$a;->cBf:Lio/branch/referral/r$a;

    invoke-virtual {v0, v1}, Lio/branch/referral/z;->b(Lio/branch/referral/r$a;)V

    iget-boolean v0, p0, Lio/branch/referral/d;->cww:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/branch/referral/d;->GC()V

    iput-boolean v2, p0, Lio/branch/referral/d;->cww:Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lio/branch/referral/d;->Gz()V

    goto :goto_0
.end method

.method public final Gw()V
    .locals 2

    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    sget-object v1, Lio/branch/referral/r$a;->cBi:Lio/branch/referral/r$a;

    invoke-virtual {v0, v1}, Lio/branch/referral/z;->b(Lio/branch/referral/r$a;)V

    invoke-direct {p0}, Lio/branch/referral/d;->Gz()V

    return-void
.end method

.method public final Gx()Lorg/json/JSONObject;
    .locals 1

    const-string v0, "bnc_install_params"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/d;->ez(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/branch/referral/d;->g(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final Gy()Lorg/json/JSONObject;
    .locals 1

    const-string v0, "bnc_session_params"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/d;->ez(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/branch/referral/d;->g(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final T(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/branch/referral/d;->cwm:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final a(Lio/branch/referral/t;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lio/branch/referral/d;->cwh:I

    sget v2, Lio/branch/referral/d$k;->cwH:I

    if-ne v0, v2, :cond_2

    :try_start_0
    invoke-static {}, Lio/branch/referral/q;->getTimeout()I

    move-result v0

    add-int/lit16 v0, v0, 0x7d0

    new-instance v2, Lio/branch/referral/d$l;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/branch/referral/d$l;-><init>(Lio/branch/referral/d;B)V

    const/4 v3, 0x1

    new-array v3, v3, [Lio/branch/referral/r;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lio/branch/referral/d$l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/referral/ae;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    iget-boolean v2, p1, Lio/branch/referral/t;->cxv:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lio/branch/referral/t;->Hh()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_3

    iget v2, v0, Lio/branch/referral/ae;->cBA:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :try_start_2
    iget-object v1, p1, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/branch/referral/d;->cwc:Ljava/util/Map;

    iget-object v2, p1, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v1

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string v0, "BranchSDK"

    const-string v2, "Branch Warning: User session has not been initialized"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Lio/branch/referral/r;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lio/branch/referral/d;->cwh:I

    sget v2, Lio/branch/referral/d$k;->cwH:I

    if-eq v0, v2, :cond_2

    instance-of v0, p1, Lio/branch/referral/x;

    if-nez v0, :cond_2

    instance-of v0, p1, Lio/branch/referral/y;

    if-eqz v0, :cond_0

    const/16 v0, -0x65

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lio/branch/referral/r;->i(ILjava/lang/String;)V

    const-string v0, "BranchSDK"

    const-string v1, "Branch is not initialized, cannot logout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lio/branch/referral/ab;

    if-eqz v0, :cond_1

    const-string v0, "BranchSDK"

    const-string v1, "Branch is not initialized, cannot close session"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_1
    sget v2, Lio/branch/referral/d;->cwk:I

    sget v4, Lio/branch/referral/d$g;->cwA:I

    if-ne v2, v4, :cond_4

    invoke-direct {p0, v1, v0, v3}, Lio/branch/referral/d;->a(Lio/branch/referral/d$e;Landroid/app/Activity;Z)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lio/branch/referral/d;->cvZ:Lio/branch/referral/z;

    iget-object v1, v0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lio/branch/referral/z;->getSize()I

    move-result v1

    const/16 v2, 0x19

    if-lt v1, v2, :cond_3

    iget-object v1, v0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0}, Lio/branch/referral/z;->Hm()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lio/branch/referral/r;->cAY:J

    invoke-direct {p0}, Lio/branch/referral/d;->Gz()V

    goto :goto_0

    :cond_4
    sget v2, Lio/branch/referral/d;->cwk:I

    sget v4, Lio/branch/referral/d$g;->cwB:I

    if-ne v2, v4, :cond_5

    move v2, v3

    :goto_3
    invoke-direct {p0, v1, v0, v2}, Lio/branch/referral/d;->a(Lio/branch/referral/d$e;Landroid/app/Activity;Z)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Landroid/net/Uri;Landroid/app/Activity;)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lio/branch/referral/d;->cwf:I

    sget v3, Lio/branch/referral/d$i;->cwF:I

    if-ne v0, v3, :cond_9

    if-eqz p1, :cond_4

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/d;->cwo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lio/branch/referral/d;->cwo:Ljava/util/List;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lio/branch/referral/d;->cwp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lio/branch/referral/d;->cwp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/d;->cwq:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "bnc_external_intent_uri"

    invoke-static {v3, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    sget-object v6, Lio/branch/referral/d;->cwt:[Ljava/lang/String;

    array-length v7, v6

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_3

    aget-object v8, v6, v0

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "bnc_external_intent_extra"

    invoke-static {v3, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_4
    :goto_3
    if-eqz p2, :cond_5

    :try_start_1
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v3, Lio/branch/referral/n$a;->cxZ:Lio/branch/referral/n$a;

    iget-object v3, v3, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v3, Lio/branch/referral/n$a;->cze:Lio/branch/referral/n$a;

    iget-object v3, v3, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    const-string v3, "bnc_push_identifier"

    invoke-static {v3, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v3, Lio/branch/referral/n$a;->cxZ:Lio/branch/referral/n$a;

    iget-object v3, v3, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    :goto_4
    return v0

    :catch_0
    move-exception v0

    :cond_5
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    :try_start_2
    sget-object v0, Lio/branch/referral/n$a;->cxV:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v0, Lio/branch/referral/n$a;->cxV:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "bnc_link_click_identifier"

    invoke-static {v3, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "link_click_id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lio/branch/referral/n$a;->cxV:Lio/branch/referral/n$a;

    iget-object v3, v3, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_5
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v0, v5, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "\\?"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    if-eqz v3, :cond_8

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_7
    move v0, v2

    goto :goto_4

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v0, v5, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "&"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_8
    const-string v0, "BranchSDK"

    const-string v3, "Branch Warning. URI for the launcher activity is null. Please make sure that intent data is not set to null before calling Branch#InitSession "

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_1
    move-exception v0

    :cond_9
    move v0, v1

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-nez v3, :cond_9

    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "https"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_b
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    sget-object v0, Lio/branch/referral/n$a;->cxZ:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "bnc_app_link"

    invoke-static {v3, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lio/branch/referral/n$a;->cxZ:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    goto/16 :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :cond_c
    move-object v3, v0

    goto/16 :goto_5

    :cond_d
    move v0, v1

    goto/16 :goto_1
.end method

.method public final a(Lio/branch/referral/d$e;Landroid/app/Activity;)Z
    .locals 3

    const/4 v1, 0x1

    sget v0, Lio/branch/referral/d;->cwk:I

    sget v2, Lio/branch/referral/d$g;->cwA:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1, p2, v1}, Lio/branch/referral/d;->a(Lio/branch/referral/d$e;Landroid/app/Activity;Z)V

    :goto_0
    return v1

    :cond_0
    sget v0, Lio/branch/referral/d;->cwk:I

    sget v2, Lio/branch/referral/d$g;->cwB:I

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lio/branch/referral/d;->a(Lio/branch/referral/d$e;Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final eA(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lio/branch/referral/x;->eQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/branch/referral/d;->GD()V

    :cond_0
    return-void
.end method

.method public final eB(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lio/branch/referral/x;->eQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/branch/referral/d;->GD()V

    :cond_0
    return-void
.end method

.method public final eC(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lio/branch/referral/x;->eQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/branch/referral/d;->GD()V

    :cond_0
    return-void
.end method
