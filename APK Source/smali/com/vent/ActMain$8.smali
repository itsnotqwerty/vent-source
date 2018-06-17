.class final Lcom/vent/ActMain$8;
.super Ljava/lang/Object;

# interfaces
.implements Lio/branch/referral/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActMain;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUB:Landroid/support/v7/app/c;

.field final synthetic bXa:Lcom/vent/ActMain;


# direct methods
.method constructor <init>(Lcom/vent/ActMain;Landroid/support/v7/app/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iput-object p2, p0, Lcom/vent/ActMain$8;->bUB:Landroid/support/v7/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Lio/branch/referral/f;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActMain$8;->bUB:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iput-boolean v1, v0, Lcom/vent/ActMain;->bWI:Z

    iget-object v0, p0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iget-boolean v0, v0, Lcom/vent/ActMain;->bTz:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iget-boolean v0, v0, Lcom/vent/ActMain;->bWJ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iput-boolean v2, v0, Lcom/vent/ActMain;->bWJ:Z

    iget-object v0, p0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    invoke-static {v0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "inviteId"

    invoke-static {p1, v0}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iput-boolean v1, v0, Lcom/vent/ActMain;->bWI:Z

    iget-object v0, p0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iget-boolean v0, v0, Lcom/vent/ActMain;->bTz:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iget-boolean v0, v0, Lcom/vent/ActMain;->bWJ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iput-boolean v2, v0, Lcom/vent/ActMain;->bWJ:Z

    iget-object v0, p0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    invoke-static {v0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/vent/ActMain$8$1;

    iget-object v2, p0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "api/v1/invites/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActMain$8$1;-><init>(Lcom/vent/ActMain$8;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method
