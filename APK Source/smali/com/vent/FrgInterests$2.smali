.class final Lcom/vent/FrgInterests$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgInterests;->f(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTp:Z

.field final synthetic bTq:Z

.field final synthetic ceC:Lcom/vent/FrgInterests;


# direct methods
.method constructor <init>(Lcom/vent/FrgInterests;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iput-boolean p2, p0, Lcom/vent/FrgInterests$2;->bTp:Z

    iput-boolean p3, p0, Lcom/vent/FrgInterests$2;->bTq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/vent/FrgInterests$2;->bTp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget-boolean v0, v0, Lcom/vent/k;->bZp:Z

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget-boolean v0, v0, Lcom/vent/k;->bZp:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    invoke-virtual {v0}, Lcom/vent/k;->CH()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iput-boolean v2, v0, Lcom/vent/k;->cbc:Z

    iget-object v0, p0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iput-boolean v2, v0, Lcom/vent/k;->bZp:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    invoke-virtual {v0, v2}, Lcom/vent/k;->bb(Z)V

    iget-object v0, p0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    invoke-virtual {v0}, Lcom/vent/k;->CB()V

    :cond_4
    iget-object v0, p0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget-boolean v2, p0, Lcom/vent/FrgInterests$2;->bTq:Z

    invoke-virtual {v0, v1, v2}, Lcom/vent/k;->g(ZZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "api/v1/interests.json?per_page=25&from%5border%5d=asc&from%5bfield%5d=name&from%5bvalue%5d="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    invoke-virtual {v0}, Lcom/vent/k;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, ""

    :goto_2
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/vent/FrgInterests$2$1;

    iget-object v3, p0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    invoke-virtual {v3}, Lcom/vent/FrgInterests;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/vent/FrgInterests$2$1;-><init>(Lcom/vent/FrgInterests$2;Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    invoke-virtual {v0}, Lcom/vent/k;->CP()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/p;

    iget-object v0, v0, Lcom/vent/a/p;->name:Ljava/lang/String;

    goto :goto_2
.end method
