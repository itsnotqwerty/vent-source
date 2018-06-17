.class final Lcom/vent/ai$1;
.super Lcom/vent/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ai;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cem:Lcom/vent/ai;


# direct methods
.method constructor <init>(Lcom/vent/ai;Lcom/vent/a;Lcom/vent/am;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ai$1;->cem:Lcom/vent/ai;

    invoke-direct {p0, p2, p3}, Lcom/vent/f;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    return-void
.end method


# virtual methods
.method final CE()V
    .locals 3

    invoke-virtual {p0}, Lcom/vent/ai$1;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/ai$1;->cem:Lcom/vent/ai;

    invoke-virtual {v1}, Lcom/vent/ai;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vent/ba;->g(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
