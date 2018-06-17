.class final Lcom/vent/FrgGroupsJoin$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgGroupsJoin;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ceA:Lcom/vent/FrgGroupsJoin;


# direct methods
.method constructor <init>(Lcom/vent/FrgGroupsJoin;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgGroupsJoin$1;->ceA:Lcom/vent/FrgGroupsJoin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vent/FrgGroupsJoin$1;->ceA:Lcom/vent/FrgGroupsJoin;

    invoke-virtual {v0}, Lcom/vent/FrgGroupsJoin;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Lcom/vent/ActGroupsJoin;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vent/ActGroupsJoin;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vent/ActGroupsJoin;->bWp:Z

    :cond_0
    return-void
.end method
