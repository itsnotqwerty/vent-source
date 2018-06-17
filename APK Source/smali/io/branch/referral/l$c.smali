.class final Lio/branch/referral/l$c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic cxH:Lio/branch/referral/l;

.field private final cxN:Lio/branch/referral/l$a;

.field private final cxO:Lio/branch/referral/l$b;


# direct methods
.method public constructor <init>(Lio/branch/referral/l;Lio/branch/referral/l$a;Landroid/content/Context;Lio/branch/referral/l$b;)V
    .locals 0

    iput-object p1, p0, Lio/branch/referral/l$c;->cxH:Lio/branch/referral/l;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lio/branch/referral/l$c;->cxN:Lio/branch/referral/l$a;

    iput-object p3, p0, Lio/branch/referral/l$c;->context:Landroid/content/Context;

    iput-object p4, p0, Lio/branch/referral/l$c;->cxO:Lio/branch/referral/l$b;

    return-void
.end method

.method private varargs GM()Ljava/lang/Boolean;
    .locals 9

    const/16 v8, 0xc8

    const/4 v1, 0x0

    const/4 v3, -0x1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lio/branch/referral/l$c;->cxN:Lio/branch/referral/l$a;

    iget-object v2, v2, Lio/branch/referral/l$a;->cxL:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-ne v2, v8, :cond_0

    :try_start_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v3, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    :goto_1
    move v2, v0

    :cond_0
    :goto_2
    if-ne v2, v8, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v3, p0, Lio/branch/referral/l$c;->cxN:Lio/branch/referral/l$a;

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lio/branch/referral/l$a;->cxM:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lio/branch/referral/l$c;->GM()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/branch/referral/l$c;->cxH:Lio/branch/referral/l;

    iget-object v1, p0, Lio/branch/referral/l$c;->cxN:Lio/branch/referral/l$a;

    iget-object v2, p0, Lio/branch/referral/l$c;->context:Landroid/content/Context;

    iget-object v3, p0, Lio/branch/referral/l$c;->cxO:Lio/branch/referral/l$b;

    invoke-virtual {v0, v1, v2, v3}, Lio/branch/referral/l;->b(Lio/branch/referral/l$a;Landroid/content/Context;Lio/branch/referral/l$b;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/branch/referral/l$c;->cxH:Lio/branch/referral/l;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/branch/referral/l;->cxB:Z

    return-void

    :cond_1
    iget-object v0, p0, Lio/branch/referral/l$c;->cxO:Lio/branch/referral/l$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/referral/l$c;->cxO:Lio/branch/referral/l$b;

    iget-object v1, p0, Lio/branch/referral/l$c;->cxN:Lio/branch/referral/l$a;

    iget-object v1, v1, Lio/branch/referral/l$a;->cxJ:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/branch/referral/l$b;->eC(Ljava/lang/String;)V

    goto :goto_0
.end method
