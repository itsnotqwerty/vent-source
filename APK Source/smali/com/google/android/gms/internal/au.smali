.class public final Lcom/google/android/gms/internal/au;
.super Lcom/google/android/gms/internal/bb;


# static fields
.field private static aMd:Z


# instance fields
.field private aMe:Lcom/google/android/gms/ads/c/a$a;

.field private final aMf:Lcom/google/android/gms/internal/dh;

.field private aMg:Ljava/lang/String;

.field private aMh:Z

.field private final aMi:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bd;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bb;-><init>(Lcom/google/android/gms/internal/bd;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/au;->aMh:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/au;->aMi:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/dh;

    iget-object v1, p1, Lcom/google/android/gms/internal/bd;->aBm:Lcom/google/android/gms/common/util/e;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dh;-><init>(Lcom/google/android/gms/common/util/e;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/au;->aMf:Lcom/google/android/gms/internal/dh;

    return-void
.end method

.method private final a(Lcom/google/android/gms/ads/c/a$a;Lcom/google/android/gms/ads/c/a$a;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/ads/c/a$a;->azP:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/bd;->pm()Lcom/google/android/gms/internal/bv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/bv;->pG()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/au;->aMi:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, p0, Lcom/google/android/gms/internal/au;->aMh:Z

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/au;->oY()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/au;->aMg:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/au;->aMh:Z

    :cond_2
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Lcom/google/android/gms/internal/au;->bu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v0, 0x0

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/internal/au;->aMg:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez p1, :cond_4

    :goto_4
    if-nez v1, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/au;->bv(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v4

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/google/android/gms/ads/c/a$a;->azP:Ljava/lang/String;

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-static {v1}, Lcom/google/android/gms/internal/au;->bu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/au;->aMg:Ljava/lang/String;

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/google/android/gms/internal/au;->aMg:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    monitor-exit v4

    move v0, v2

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/au;->aMg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "Resetting the client id because Advertising Id changed."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bd;->pm()Lcom/google/android/gms/internal/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bv;->pH()Ljava/lang/String;

    move-result-object v1

    const-string v2, "New client Id"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/ba;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/au;->bv(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v4

    goto/16 :goto_1

    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :cond_c
    move-object v1, v3

    goto :goto_7
.end method

.method private static bu(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const-string v0, "MD5"

    invoke-static {v0}, Lcom/google/android/gms/internal/di;->bi(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%032X"

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-direct {v5, v7, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final bv(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/au;->bu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Storing hashed adid."

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v2, v2, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    const-string v3, "gaClientIdData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iput-object v1, p0, Lcom/google/android/gms/internal/au;->aMg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Error creating hash file"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final declared-synchronized oW()Lcom/google/android/gms/ads/c/a$a;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->aMf:Lcom/google/android/gms/internal/dh;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/dh;->o(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->aMf:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dh;->start()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/au;->oX()Lcom/google/android/gms/ads/c/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/au;->aMe:Lcom/google/android/gms/ads/c/a$a;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/ads/c/a$a;Lcom/google/android/gms/ads/c/a$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/au;->aMe:Lcom/google/android/gms/ads/c/a$a;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->aMe:Lcom/google/android/gms/ads/c/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "Failed to reset client id on adid change. Not using adid"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bA(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/c/a$a;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/c/a$a;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/au;->aMe:Lcom/google/android/gms/ads/c/a$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final oX()Lcom/google/android/gms/ads/c/a$a;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v1, v1, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/c/a;->r(Landroid/content/Context;)Lcom/google/android/gms/ads/c/a$a;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added \'<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />\' to your application manifest file. See http://goo.gl/naFqQk for details."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ba;->bz(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v2, Lcom/google/android/gms/internal/au;->aMd:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/gms/internal/au;->aMd:Z

    const-string v2, "Error getting advertiser id"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/ba;->g(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final oY()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v1, v1, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    const-string v2, "gaClientIdData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    const/16 v1, 0x80

    new-array v3, v1, [B

    const/4 v1, 0x0

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "Hash file seems corrupted, deleting it."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ba;->bz(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v1, v1, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    const-string v2, "gaClientIdData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :goto_0
    return-object v0

    :cond_0
    if-gtz v4, :cond_1

    const-string v1, "Hash file is empty."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    :goto_1
    const-string v1, "Error reading Hash file, deleting it"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ba;->g(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v1, v1, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    const-string v2, "gaClientIdData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v0, v1

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final mG()V
    .locals 0

    return-void
.end method

.method public final oU()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/au;->oW()Lcom/google/android/gms/ads/c/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/google/android/gms/ads/c/a$a;->azQ:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final oV()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/au;->oW()Lcom/google/android/gms/ads/c/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/ads/c/a$a;->azP:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
