.class public final Lcom/google/android/gms/internal/hf;
.super Lcom/google/android/gms/internal/iy;


# instance fields
.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hz;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iy;-><init>(Lcom/google/android/gms/internal/hz;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/lf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lf;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/hf;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Ljava/net/HttpURLConnection;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mN()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->mN()V

    return-void
.end method

.method public final bridge synthetic qA()Lcom/google/android/gms/internal/fs;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qA()Lcom/google/android/gms/internal/fs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qB()Lcom/google/android/gms/internal/fz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qB()Lcom/google/android/gms/internal/fz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qC()Lcom/google/android/gms/internal/ja;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qC()Lcom/google/android/gms/internal/ja;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qD()Lcom/google/android/gms/internal/gw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qE()Lcom/google/android/gms/internal/gj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qF()Lcom/google/android/gms/internal/ju;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qF()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qG()Lcom/google/android/gms/internal/jq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qG()Lcom/google/android/gms/internal/jq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qH()Lcom/google/android/gms/common/util/e;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qI()Lcom/google/android/gms/internal/gx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qI()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qJ()Lcom/google/android/gms/internal/gd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qK()Lcom/google/android/gms/internal/gz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qL()Lcom/google/android/gms/internal/le;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qM()Lcom/google/android/gms/internal/ht;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qN()Lcom/google/android/gms/internal/kt;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qN()Lcom/google/android/gms/internal/kt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qO()Lcom/google/android/gms/internal/hu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qP()Lcom/google/android/gms/internal/hb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qQ()Lcom/google/android/gms/internal/hl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qR()Lcom/google/android/gms/internal/gc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qR()Lcom/google/android/gms/internal/gc;

    move-result-object v0

    return-object v0
.end method

.method public final qe()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final bridge synthetic qy()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qy()V

    return-void
.end method

.method public final bridge synthetic qz()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qz()V

    return-void
.end method

.method protected final ri()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
