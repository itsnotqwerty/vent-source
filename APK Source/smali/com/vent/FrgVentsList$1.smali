.class final Lcom/vent/FrgVentsList$1;
.super Lcom/vent/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgVentsList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfH:Lcom/vent/FrgVentsList;


# direct methods
.method constructor <init>(Lcom/vent/FrgVentsList;Lcom/vent/a;Lcom/vent/am;Lcom/vent/a/m;Lcom/vent/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgVentsList$1;->cfH:Lcom/vent/FrgVentsList;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/vent/s;-><init>(Lcom/vent/a;Lcom/vent/am;Lcom/vent/a/m;Lcom/vent/a/m;)V

    return-void
.end method


# virtual methods
.method protected final AZ()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/FrgVentsList$1;->cfH:Lcom/vent/FrgVentsList;

    invoke-virtual {v0, v1, v1}, Lcom/vent/FrgVentsList;->f(ZZ)V

    return-void
.end method
