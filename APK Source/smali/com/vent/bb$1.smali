.class final Lcom/vent/bb$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/bb;
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
.field private bYq:[[Ljava/lang/String;

.field final synthetic cht:Z

.field private cjl:Ljava/lang/String;

.field private cjm:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vent/bb$1;->cht:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vent/bb$1;->cjl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DELETE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vent/bb$1;->cjm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "api/v1/my/devices/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/bb$1;->cjl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/bb$1;->bYq:[[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vent/az;->a(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Lorg/json/JSONObject;)Lcom/vent/az$a;

    :cond_0
    iget-boolean v0, p0, Lcom/vent/bb$1;->cht:Z

    if-nez v0, :cond_1

    const-string v0, "DELETE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vent/bb$1;->cjm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "api/v1/sign_out.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/bb$1;->bYq:[[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vent/az;->a(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Lorg/json/JSONObject;)Lcom/vent/az$a;

    :cond_1
    return-object v3
.end method

.method protected final onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    sget-object v0, Lcom/vent/bb;->ciH:Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/bb$1;->cjl:Ljava/lang/String;

    sget-object v0, Lcom/vent/bb;->bYq:[[Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/d/c;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/bb$1;->bYq:[[Ljava/lang/String;

    invoke-static {}, Lcom/vent/bb;->Er()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/bb$1;->cjm:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/bb$1;->username:Ljava/lang/String;

    return-void
.end method
