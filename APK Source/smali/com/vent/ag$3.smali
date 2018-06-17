.class final Lcom/vent/ag$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ag;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUB:Landroid/support/v7/app/c;

.field final synthetic cdX:Lcom/vent/ag;

.field final synthetic cdZ:Lcom/vent/ActMain;

.field final synthetic cea:Lcom/vent/FrgProfile;


# direct methods
.method constructor <init>(Lcom/vent/ag;Lcom/vent/ActMain;Landroid/support/v7/app/c;Lcom/vent/FrgProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ag$3;->cdX:Lcom/vent/ag;

    iput-object p2, p0, Lcom/vent/ag$3;->cdZ:Lcom/vent/ActMain;

    iput-object p3, p0, Lcom/vent/ag$3;->bUB:Landroid/support/v7/app/c;

    iput-object p4, p0, Lcom/vent/ag$3;->cea:Lcom/vent/FrgProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/vent/ag$3;->cdZ:Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->clearAll()V

    iget-object v0, p0, Lcom/vent/ag$3;->bUB:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    iget-object v0, p0, Lcom/vent/ag$3;->cea:Lcom/vent/FrgProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ag$3;->cea:Lcom/vent/FrgProfile;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v0, p0, Lcom/vent/ag$3;->cea:Lcom/vent/FrgProfile;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/vent/FrgProfile;->bZY:J

    iget-object v0, p0, Lcom/vent/ag$3;->cea:Lcom/vent/FrgProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vent/FrgProfile;->bf(Z)V

    :cond_0
    iget-object v0, p0, Lcom/vent/ag$3;->cdZ:Lcom/vent/ActMain;

    invoke-static {v0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    return-void
.end method
