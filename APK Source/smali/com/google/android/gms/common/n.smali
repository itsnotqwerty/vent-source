.class final Lcom/google/android/gms/common/n;
.super Ljava/lang/Object;


# static fields
.field private static volatile aJM:Lcom/google/android/gms/common/internal/y;

.field private static final aJN:Ljava/lang/Object;

.field private static aJO:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/n;->aJN:Ljava/lang/Object;

    return-void
.end method

.method static declared-synchronized N(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/google/android/gms/common/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/n;->aJO:Landroid/content/Context;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/n;->aJO:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    const-string v0, "GoogleCertificates"

    const-string v2, "GoogleCertificates has been initialized already"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)Lcom/google/android/gms/common/w;
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/n;->aJM:Lcom/google/android/gms/common/internal/y;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/common/n;->aJO:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/common/n;->aJN:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$c; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/google/android/gms/common/n;->aJM:Lcom/google/android/gms/common/internal/y;

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/gms/common/n;->aJO:Landroid/content/Context;

    sget-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->aKv:Lcom/google/android/gms/dynamite/DynamiteModule$d;

    const-string v4, "com.google.android.gms.googlecertificates"

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$d;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v2

    const-string v3, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->bn(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/z;->g(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/y;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/common/n;->aJM:Lcom/google/android/gms/common/internal/y;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/common/n;->aJO:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/common/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/common/u;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)V

    :try_start_2
    sget-object v2, Lcom/google/android/gms/common/n;->aJM:Lcom/google/android/gms/common/internal/y;

    sget-object v3, Lcom/google/android/gms/common/n;->aJO:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/a/c;->Q(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/common/internal/y;->a(Lcom/google/android/gms/common/u;Lcom/google/android/gms/a/a;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/w;->oP()Lcom/google/android/gms/common/w;

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$c; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "module init"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/w;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/w;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "GoogleCertificates"

    const-string v2, "Failed to get Google certificates from remote"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "module call"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/w;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/w;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/n;->a(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)Lcom/google/android/gms/common/w;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/common/w;->aJY:Z

    if-eqz v1, :cond_3

    :goto_1
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/w;->a(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)Lcom/google/android/gms/common/w;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
