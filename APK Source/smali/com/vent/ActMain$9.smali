.class final Lcom/vent/ActMain$9;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXa:Lcom/vent/ActMain;


# direct methods
.method constructor <init>(Lcom/vent/ActMain;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActMain$9;->bXa:Lcom/vent/ActMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vent/ActMain;->bWV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain$9;->bXa:Lcom/vent/ActMain;

    const/4 v1, 0x3

    sget v2, Lcom/vent/bb;->ciF:I

    invoke-virtual {v0, v1, v2}, Lcom/vent/ActMain;->aG(II)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/ActMain;->bWN:Z

    iget-object v0, p0, Lcom/vent/ActMain$9;->bXa:Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BO()V

    iget-object v0, p0, Lcom/vent/ActMain$9;->bXa:Lcom/vent/ActMain;

    const-string v1, "notifications"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vent/ActMain;->i(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
