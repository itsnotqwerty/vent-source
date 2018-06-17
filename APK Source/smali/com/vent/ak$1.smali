.class final Lcom/vent/ak$1;
.super Lcom/vent/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ak;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cey:Lcom/vent/ak;


# direct methods
.method constructor <init>(Lcom/vent/ak;Lcom/vent/a;Lcom/vent/am;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ak$1;->cey:Lcom/vent/ak;

    invoke-direct {p0, p2, p3}, Lcom/vent/i;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    return-void
.end method


# virtual methods
.method protected final AZ()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ak$1;->cey:Lcom/vent/ak;

    invoke-virtual {v0, v1, v1, v1}, Lcom/vent/aq;->c(ZZZ)V

    return-void
.end method
