.class final Lcom/vent/FrgSearchBoth$1;
.super Lcom/vent/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgSearchBoth;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfy:Lcom/vent/FrgSearchBoth;


# direct methods
.method constructor <init>(Lcom/vent/FrgSearchBoth;Lcom/vent/a;Lcom/vent/am;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgSearchBoth$1;->cfy:Lcom/vent/FrgSearchBoth;

    invoke-direct {p0, p2, p3}, Lcom/vent/q;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    return-void
.end method


# virtual methods
.method protected final AZ()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$1;->cfy:Lcom/vent/FrgSearchBoth;

    invoke-virtual {v0, v1, v1, v1}, Lcom/vent/FrgSearchBoth;->c(ZZZ)V

    return-void
.end method
