.class final Lcom/vent/b/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/b/c;->a(ZLjava/util/List;Ljava/util/List;Lcom/vent/b/c$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic DA:Landroid/os/Handler;

.field final synthetic clP:Lcom/vent/b/c;

.field final synthetic clQ:Z

.field final synthetic clR:Ljava/util/List;

.field final synthetic clS:Ljava/util/List;

.field final synthetic clT:Lcom/vent/b/c$f;


# direct methods
.method constructor <init>(Lcom/vent/b/c;ZLjava/util/List;Ljava/util/List;Lcom/vent/b/c$f;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b/c$2;->clP:Lcom/vent/b/c;

    iput-boolean p2, p0, Lcom/vent/b/c$2;->clQ:Z

    iput-object p3, p0, Lcom/vent/b/c$2;->clR:Ljava/util/List;

    iput-object p4, p0, Lcom/vent/b/c$2;->clS:Ljava/util/List;

    iput-object p5, p0, Lcom/vent/b/c$2;->clT:Lcom/vent/b/c$f;

    iput-object p6, p0, Lcom/vent/b/c$2;->DA:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v1, Lcom/vent/b/d;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/vent/b/c$2;->clP:Lcom/vent/b/c;

    iget-boolean v3, p0, Lcom/vent/b/c$2;->clQ:Z

    iget-object v4, p0, Lcom/vent/b/c$2;->clR:Ljava/util/List;

    iget-object v5, p0, Lcom/vent/b/c$2;->clS:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5}, Lcom/vent/b/c;->a(ZLjava/util/List;Ljava/util/List;)Lcom/vent/b/e;
    :try_end_0
    .catch Lcom/vent/b/b; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/vent/b/c$2;->clP:Lcom/vent/b/c;

    invoke-virtual {v2}, Lcom/vent/b/c;->Fw()V

    iget-object v2, p0, Lcom/vent/b/c$2;->clP:Lcom/vent/b/c;

    iget-boolean v2, v2, Lcom/vent/b/c;->clB:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vent/b/c$2;->clT:Lcom/vent/b/c$f;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vent/b/c$2;->DA:Landroid/os/Handler;

    new-instance v3, Lcom/vent/b/c$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/vent/b/c$2$1;-><init>(Lcom/vent/b/c$2;Lcom/vent/b/d;Lcom/vent/b/e;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v1

    iget-object v1, v1, Lcom/vent/b/b;->clz:Lcom/vent/b/d;

    goto :goto_0
.end method
