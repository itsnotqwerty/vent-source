.class public final Lcom/vent/b/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic DA:Landroid/os/Handler;

.field final synthetic clP:Lcom/vent/b/c;

.field final synthetic clX:Ljava/util/List;

.field final synthetic clY:Lcom/vent/b/c$b;

.field final synthetic clZ:Lcom/vent/b/c$c;


# direct methods
.method public constructor <init>(Lcom/vent/b/c;Ljava/util/List;Lcom/vent/b/c$b;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/vent/b/c$3;->clP:Lcom/vent/b/c;

    iput-object p2, p0, Lcom/vent/b/c$3;->clX:Ljava/util/List;

    iput-object p3, p0, Lcom/vent/b/c$3;->clY:Lcom/vent/b/c$b;

    iput-object p4, p0, Lcom/vent/b/c$3;->DA:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/b/c$3;->clZ:Lcom/vent/b/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/vent/b/c$3;->clX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/b/f;

    :try_start_0
    iget-object v1, p0, Lcom/vent/b/c$3;->clP:Lcom/vent/b/c;

    invoke-virtual {v1}, Lcom/vent/b/c;->Fv()V

    const-string v4, "consume"

    invoke-virtual {v1, v4}, Lcom/vent/b/c;->em(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/vent/b/f;->cmg:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v1, Lcom/vent/b/b;

    const/16 v4, -0x3f2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Items of type \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vent/b/f;->cmg:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\' can\'t be consumed."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/vent/b/b;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/vent/b/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v0, v0, Lcom/vent/b/b;->clz:Lcom/vent/b/d;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v4, v0, Lcom/vent/b/f;->cmm:Ljava/lang/String;

    iget-object v5, v0, Lcom/vent/b/f;->cmi:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    new-instance v1, Lcom/vent/b/b;

    const/16 v4, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/vent/b/b;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/vent/b/b; {:try_start_1 .. :try_end_1} :catch_0

    :catch_1
    move-exception v1

    :try_start_2
    new-instance v4, Lcom/vent/b/b;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0, v1}, Lcom/vent/b/b;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catch Lcom/vent/b/b; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :try_start_3
    iget-object v6, v1, Lcom/vent/b/c;->clI:Lcom/android/a/a/a;

    const/4 v7, 0x3

    iget-object v1, v1, Lcom/vent/b/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v7, v1, v4}, Lcom/android/a/a/a;->b(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v4, Lcom/vent/b/b;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error consuming sku "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/vent/b/b;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/vent/b/b; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :try_start_4
    new-instance v1, Lcom/vent/b/d;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Successful consume of sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vent/b/f;->cmi:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/vent/b/b; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vent/b/c$3;->clP:Lcom/vent/b/c;

    invoke-virtual {v0}, Lcom/vent/b/c;->Fw()V

    iget-object v0, p0, Lcom/vent/b/c$3;->clP:Lcom/vent/b/c;

    iget-boolean v0, v0, Lcom/vent/b/c;->clB:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/vent/b/c$3;->clY:Lcom/vent/b/c$b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vent/b/c$3;->DA:Landroid/os/Handler;

    new-instance v1, Lcom/vent/b/c$3$1;

    invoke-direct {v1, p0, v2}, Lcom/vent/b/c$3$1;-><init>(Lcom/vent/b/c$3;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget-object v0, p0, Lcom/vent/b/c$3;->clP:Lcom/vent/b/c;

    iget-boolean v0, v0, Lcom/vent/b/c;->clB:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/vent/b/c$3;->clZ:Lcom/vent/b/c$c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vent/b/c$3;->DA:Landroid/os/Handler;

    new-instance v1, Lcom/vent/b/c$3$2;

    invoke-direct {v1, p0, v2}, Lcom/vent/b/c$3$2;-><init>(Lcom/vent/b/c$3;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method
