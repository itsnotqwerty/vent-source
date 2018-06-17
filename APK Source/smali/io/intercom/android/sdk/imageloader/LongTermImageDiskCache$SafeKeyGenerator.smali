.class Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafeKeyGenerator"
.end annotation


# instance fields
.field private final loadIdToSafeHash:Lio/intercom/a/a/a/i/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/i/e",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/i/e;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v2, v3}, Lio/intercom/a/a/a/i/e;-><init>(J)V

    iput-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;->loadIdToSafeHash:Lio/intercom/a/a/a/i/e;

    return-void
.end method


# virtual methods
.method public getSafeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;->loadIdToSafeHash:Lio/intercom/a/a/a/i/e;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;->loadIdToSafeHash:Lio/intercom/a/a/a/i/e;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/i/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lio/intercom/a/a/a/i/i;->D([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;->loadIdToSafeHash:Lio/intercom/a/a/a/i/e;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;->loadIdToSafeHash:Lio/intercom/a/a/a/i/e;

    invoke-virtual {v2, p1, v0}, Lio/intercom/a/a/a/i/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
