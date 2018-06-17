.class final Lcom/vent/bb$5;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/bb;->ef(Ljava/lang/String;)V
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
.field cjr:Ljava/lang/String;

.field cjs:Ljava/lang/String;

.field cjt:Ljava/lang/String;

.field final synthetic cju:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/bb$5;->cju:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs Bq()Ljava/lang/Void;
    .locals 1

    sget-boolean v0, Lcom/vent/MyApplication;->cgw:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->us()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->uv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/bb$5;->cjr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/vent/bb$5;->Bq()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vent/bb$5;->cjs:Ljava/lang/String;

    iget-object v1, p0, Lcom/vent/bb$5;->cjr:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/bb$5;->cjs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object v5, Lcom/vent/bb;->ciH:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciI:J

    sput-boolean v3, Lcom/vent/bb;->chP:Z

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vent/bb$5$1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/my/devices/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vent/bb$5;->cjs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DELETE"

    invoke-direct {v0, p0, v1, v2}, Lcom/vent/bb$5$1;-><init>(Lcom/vent/bb$5;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    :cond_0
    iget-object v0, p0, Lcom/vent/bb$5;->cjr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/bb$5;->cjr:Ljava/lang/String;

    sput-object v0, Lcom/vent/bb;->ciH:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vent/bb;->ciI:J

    sput-boolean v3, Lcom/vent/bb;->chP:Z

    iget-object v0, p0, Lcom/vent/bb$5;->cjr:Ljava/lang/String;

    new-instance v1, Lcom/vent/bb$5$2;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "api/v1/my/devices/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vent/bb$5;->cjr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PUT"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/vent/bb$5$2;-><init>(Lcom/vent/bb$5;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    :cond_1
    invoke-static {}, Lcom/vent/bb;->EA()V

    :cond_2
    sput-boolean v4, Lcom/vent/bb;->cji:Z

    sget-boolean v0, Lcom/vent/bb;->cjj:Z

    if-eqz v0, :cond_3

    sput-boolean v4, Lcom/vent/bb;->cjj:Z

    invoke-static {v5}, Lcom/vent/bb;->ef(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    sget-object v0, Lcom/vent/bb;->ciH:Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/bb$5;->cjs:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/bb$5;->cjt:Ljava/lang/String;

    return-void
.end method
