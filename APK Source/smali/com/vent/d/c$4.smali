.class final Lcom/vent/d/c$4;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/d/c;->a(Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;Lcom/vent/d/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bXe:Landroid/app/Activity;

.field ccW:Landroid/support/v7/app/c;

.field final synthetic cln:Lcom/vent/d/c$b;

.field cmN:Z

.field final synthetic cmO:Ljava/lang/String;

.field final synthetic cmP:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/support/design/widget/TextInputLayout;Lcom/vent/d/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/d/c$4;->bXe:Landroid/app/Activity;

    iput-object p2, p0, Lcom/vent/d/c$4;->cmO:Ljava/lang/String;

    iput-object p3, p0, Lcom/vent/d/c$4;->cmP:Landroid/support/design/widget/TextInputLayout;

    iput-object p4, p0, Lcom/vent/d/c$4;->cln:Lcom/vent/d/c$b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs Bq()Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/d/c$4;->bXe:Landroid/app/Activity;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/vent/d/c$4;->bXe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "bad_domains"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v6, p0, Lcom/vent/d/c$4;->cmO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/d/c$4;->cmN:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v8

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/vent/d/c$4;->cmO:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    move v3, v0

    :goto_3
    if-nez v3, :cond_8

    :try_start_2
    sget-object v0, La/a/a/d/a;->ctg:La/a/a/d/a;

    iget-object v4, p0, Lcom/vent/d/c$4;->cmO:Ljava/lang/String;

    const-class v5, La/a/a/g/i;

    invoke-static {v4}, La/a/a/e;->ey(Ljava/lang/String;)La/a/a/e;

    move-result-object v4

    invoke-static {v5}, La/a/a/k$b;->w(Ljava/lang/Class;)La/a/a/k$b;

    move-result-object v5

    new-instance v6, La/a/a/j;

    invoke-direct {v6, v4, v5}, La/a/a/j;-><init>(La/a/a/e;La/a/a/k$b;)V

    iget-object v0, v0, La/a/a/d/a;->cth:La/a/a/a;

    invoke-virtual {v0, v6}, La/a/a/a;->a(La/a/a/j;)La/a/a/d$a;

    move-result-object v4

    invoke-virtual {v0, v4}, La/a/a/a;->a(La/a/a/d$a;)La/a/a/d;

    move-result-object v0

    new-instance v4, La/a/a/d/b;

    invoke-direct {v4, v6, v0}, La/a/a/d/b;-><init>(La/a/a/j;La/a/a/d;)V

    iget-object v0, v4, La/a/a/d/b;->cpd:La/a/a/d$c;

    sget-object v4, La/a/a/d$c;->cpJ:La/a/a/d$c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v0, v4, :cond_7

    move v0, v1

    :goto_4
    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    if-nez v3, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    iput-boolean v2, p0, Lcom/vent/d/c$4;->cmN:Z

    goto :goto_1

    :catch_1
    move-exception v0

    move v3, v2

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4

    :catch_2
    move-exception v0

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/vent/d/c$4;->Bq()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/d/c$4;->ccW:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    iput-object v1, p0, Lcom/vent/d/c$4;->ccW:Landroid/support/v7/app/c;

    iget-boolean v0, p0, Lcom/vent/d/c$4;->cmN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/d/c$4;->cmP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/vent/d/c$4;->cln:Lcom/vent/d/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/d/c$4;->cln:Lcom/vent/d/c$b;

    iget-boolean v1, p0, Lcom/vent/d/c$4;->cmN:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/d/c$b;->cmT:Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/d/c$4;->cln:Lcom/vent/d/c$b;

    invoke-virtual {v0}, Lcom/vent/d/c$b;->run()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/d/c$4;->cmP:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/d/c$4;->cmP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0091

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/vent/d/c$4;->bXe:Landroid/app/Activity;

    const v1, 0x7f0f00e1

    invoke-static {v0, v1}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/d/c$4;->ccW:Landroid/support/v7/app/c;

    return-void
.end method
