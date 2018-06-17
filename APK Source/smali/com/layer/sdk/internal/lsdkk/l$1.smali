.class final Lcom/layer/sdk/internal/lsdkk/l$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkk/l;->a(Lcom/layer/sdk/LayerClient;ZLandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/layer/sdk/internal/lsdkk/l$a;",
        "Ljava/lang/Void;",
        "Lcom/layer/sdk/internal/lsdkk/l$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs a([Lcom/layer/sdk/internal/lsdkk/l$a;)Lcom/layer/sdk/internal/lsdkk/l$b;
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x0

    aget-object v4, p0, v9

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/l;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Preparing logs for email..."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v4, Lcom/layer/sdk/internal/lsdkk/l$a;->a:Lcom/layer/sdk/LayerClient;

    if-eqz v1, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/layer/sdk/internal/a;

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/layer/sdk/internal/a;->e()Landroid/content/Context;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/l;->au(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_2
    return-object v2

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".log"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v7, v4, Lcom/layer/sdk/internal/lsdkk/l$a;->c:I

    invoke-static {v5, v0, v7}, Lcom/layer/sdk/internal/lsdkk/l;->a(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-boolean v0, v4, Lcom/layer/sdk/internal/lsdkk/l$a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/layer/sdk/internal/lsdkk/l$a;->bsS:Landroid/app/Activity;

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".jpg"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v4, Lcom/layer/sdk/internal/lsdkk/l$a;->bsS:Landroid/app/Activity;

    iget v8, v4, Lcom/layer/sdk/internal/lsdkk/l$a;->d:I

    invoke-static {v5, v0, v7, v8}, Lcom/layer/sdk/internal/lsdkk/l;->a(Ljava/io/File;Ljava/lang/String;Landroid/app/Activity;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_4
    iget-boolean v0, v4, Lcom/layer/sdk/internal/lsdkk/l$a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcom/layer/sdk/internal/lsdkk/l$a;->bsS:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/layer/sdk/internal/a;->r()Lcom/layer/sdk/internal/b;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v3, v5, v2}, Lcom/layer/sdk/internal/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_5
    iget-boolean v0, v4, Lcom/layer/sdk/internal/lsdkk/l$a;->b:Z

    invoke-static {v1, v0}, Lcom/layer/sdk/internal/lsdkk/l;->a(Lcom/layer/sdk/LayerClient;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/l;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s\n\n\n%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v9

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/layer/sdk/internal/lsdkk/l$b;

    iget-object v1, v4, Lcom/layer/sdk/internal/lsdkk/l$a;->bsS:Landroid/app/Activity;

    invoke-direct {v2, v1, v6, v0, v9}, Lcom/layer/sdk/internal/lsdkk/l$b;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;B)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/l;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v7

    const-string v8, "Could not attach log file"

    invoke-static {v7, v8, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/l;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v7

    const-string v8, "Could not attach screenshot"

    invoke-static {v7, v8, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/l;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v2

    const-string v3, "Could not attach db file"

    invoke-static {v2, v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_3
    move-object v0, v2

    goto/16 :goto_1

    :cond_4
    move-object v3, v2

    goto/16 :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/layer/sdk/internal/lsdkk/l$a;

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkk/l$1;->a([Lcom/layer/sdk/internal/lsdkk/l$a;)Lcom/layer/sdk/internal/lsdkk/l$b;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/layer/sdk/internal/lsdkk/l$b;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "support@layer.com"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Layer Android SDK Logs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p1, Lcom/layer/sdk/internal/lsdkk/l$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p1, Lcom/layer/sdk/internal/lsdkk/l$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p1, Lcom/layer/sdk/internal/lsdkk/l$b;->bsT:Landroid/app/Activity;

    const-string v2, "Send Layer SDK log"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
