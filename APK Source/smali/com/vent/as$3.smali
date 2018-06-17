.class final Lcom/vent/as$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/as;->f(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTp:Z

.field final synthetic bTq:Z

.field final synthetic ceL:Lcom/vent/as;


# direct methods
.method constructor <init>(Lcom/vent/as;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iput-boolean p2, p0, Lcom/vent/as$3;->bTp:Z

    iput-boolean p3, p0, Lcom/vent/as$3;->bTq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/vent/as$3;->bTp:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/vent/as;->ceK:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    iget-boolean v0, v0, Lcom/vent/n;->bZp:Z

    if-nez v0, :cond_4

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    invoke-virtual {v0}, Lcom/vent/as;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    if-eqz v0, :cond_1

    sput-boolean v2, Lcom/vent/ActMain;->bWN:Z

    check-cast v0, Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BO()V

    :cond_1
    iget-object v0, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    iget-boolean v0, v0, Lcom/vent/n;->bZp:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/vent/bb;->cje:Z

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    invoke-virtual {v0}, Lcom/vent/n;->CH()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    sput-boolean v3, Lcom/vent/as;->ceK:Z

    iget-object v0, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    iput-boolean v2, v0, Lcom/vent/n;->bZp:Z

    iget-object v0, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    iput-boolean v2, v0, Lcom/vent/n;->cbc:Z

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    invoke-virtual {v0, v2}, Lcom/vent/n;->bb(Z)V

    iget-object v0, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    invoke-virtual {v0}, Lcom/vent/n;->CB()V

    :cond_6
    iget-object v0, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    iget-boolean v2, p0, Lcom/vent/as$3;->bTq:Z

    invoke-virtual {v0, v1, v2}, Lcom/vent/n;->g(ZZ)V

    const-string v2, "api/v1/my/notifications.json?per_page=10"

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    if-nez v0, :cond_8

    :cond_7
    const/4 v0, 0x0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&from%5border%5d=desc&from%5bfield%5d=last_activity_at&from%5bvalue%5d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_9

    const-string v0, "9999-01-01T00:00:00.000Z"

    :goto_3
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/vent/as$3$1;

    iget-object v3, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    invoke-virtual {v3}, Lcom/vent/as;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/vent/as$3$1;-><init>(Lcom/vent/as$3;Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    invoke-virtual {v0}, Lcom/vent/n;->CP()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/s;

    goto :goto_2

    :cond_9
    iget-object v0, v0, Lcom/vent/a/s;->ckF:Ljava/util/Date;

    invoke-static {v0}, Lcom/vent/d/c;->k(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
