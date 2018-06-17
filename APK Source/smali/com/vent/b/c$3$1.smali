.class final Lcom/vent/b/c$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/b/c$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cma:Ljava/util/List;

.field final synthetic cmb:Lcom/vent/b/c$3;


# direct methods
.method constructor <init>(Lcom/vent/b/c$3;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b/c$3$1;->cmb:Lcom/vent/b/c$3;

    iput-object p2, p0, Lcom/vent/b/c$3$1;->cma:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/b/c$3$1;->cmb:Lcom/vent/b/c$3;

    iget-object v1, v0, Lcom/vent/b/c$3;->clY:Lcom/vent/b/c$b;

    iget-object v0, p0, Lcom/vent/b/c$3$1;->cmb:Lcom/vent/b/c$3;

    iget-object v0, v0, Lcom/vent/b/c$3;->clX:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/b/c$3$1;->cma:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/b/d;

    invoke-interface {v1, v0}, Lcom/vent/b/c$b;->a(Lcom/vent/b/d;)V

    return-void
.end method
