.class final Lcom/vent/aj$1;
.super Lcom/vent/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/aj;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ceo:Lcom/vent/aj;


# direct methods
.method constructor <init>(Lcom/vent/aj;Lcom/vent/a;Lcom/vent/am;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/aj$1;->ceo:Lcom/vent/aj;

    invoke-direct {p0, p2, p3}, Lcom/vent/r;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    return-void
.end method


# virtual methods
.method protected final AZ()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/aj$1;->ceo:Lcom/vent/aj;

    invoke-virtual {v0, v1, v1}, Lcom/vent/aj;->f(ZZ)V

    return-void
.end method
