.class public Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/consent/ConsentInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConsentInfoUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final UPDATE_SUCCESS:Ljava/lang/String; = "Consent update successful."


# instance fields
.field private final consentInformation:Lcom/google/ads/consent/ConsentInformation;

.field private final listener:Lcom/google/ads/consent/ConsentInfoUpdateListener;

.field private final publisherIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/consent/ConsentInformation;Ljava/util/List;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/ads/consent/ConsentInformation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/consent/ConsentInfoUpdateListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->listener:Lcom/google/ads/consent/ConsentInfoUpdateListener;

    iput-object p3, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->publisherIds:Ljava/util/List;

    iput-object p2, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->consentInformation:Lcom/google/ads/consent/ConsentInformation;

    return-void
.end method

.method private aQ(Ljava/lang/String;)Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->l(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->consentInformation:Lcom/google/ads/consent/ConsentInformation;

    iget-object v2, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->publisherIds:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/ads/consent/ConsentInformation;->a(Lcom/google/ads/consent/ConsentInformation;Ljava/lang/String;Ljava/util/List;)V

    new-instance v0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;

    const/4 v1, 0x1

    const-string v2, "Consent update successful."

    invoke-direct {v0, v1, v2}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;-><init>(ZLjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;-><init>(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private static l(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "ConsentInformation"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "ConsentInformation"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "ConsentInformation"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "ConsentInformation"

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, ","

    iget-object v1, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->publisherIds:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->consentInformation:Lcom/google/ads/consent/ConsentInformation;

    invoke-virtual {v1}, Lcom/google/ads/consent/ConsentInformation;->lg()Lcom/google/ads/consent/ConsentData;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "pubs"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "es"

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "plat"

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "v"

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.0.3"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->consentInformation:Lcom/google/ads/consent/ConsentInformation;

    invoke-virtual {v1}, Lcom/google/ads/consent/ConsentInformation;->ld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->consentInformation:Lcom/google/ads/consent/ConsentInformation;

    iget-object v1, v1, Lcom/google/ads/consent/ConsentInformation;->debugGeography:Lcom/google/ads/consent/DebugGeography;

    sget-object v2, Lcom/google/ads/consent/DebugGeography;->DEBUG_GEOGRAPHY_DISABLED:Lcom/google/ads/consent/DebugGeography;

    if-eq v1, v2, :cond_0

    const-string v1, "debug_geo"

    iget-object v2, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->consentInformation:Lcom/google/ads/consent/ConsentInformation;

    iget-object v2, v2, Lcom/google/ads/consent/ConsentInformation;->debugGeography:Lcom/google/ads/consent/DebugGeography;

    iget v2, v2, Lcom/google/ads/consent/DebugGeography;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->aQ(Ljava/lang/String;)Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;

    iget-boolean v0, p1, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;->success:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->listener:Lcom/google/ads/consent/ConsentInfoUpdateListener;

    iget-object v1, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->consentInformation:Lcom/google/ads/consent/ConsentInformation;

    invoke-virtual {v1}, Lcom/google/ads/consent/ConsentInformation;->li()Lcom/google/ads/consent/ConsentStatus;

    invoke-interface {v0}, Lcom/google/ads/consent/ConsentInfoUpdateListener;->kZ()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->listener:Lcom/google/ads/consent/ConsentInfoUpdateListener;

    invoke-interface {v0}, Lcom/google/ads/consent/ConsentInfoUpdateListener;->la()V

    goto :goto_0
.end method
