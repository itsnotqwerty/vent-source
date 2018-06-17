.class final Lcom/vent/FrgInterests$1;
.super Lcom/vent/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgInterests;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ceC:Lcom/vent/FrgInterests;


# direct methods
.method constructor <init>(Lcom/vent/FrgInterests;Lcom/vent/a;Lcom/vent/am;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgInterests$1;->ceC:Lcom/vent/FrgInterests;

    invoke-direct {p0, p2, p3}, Lcom/vent/k;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    return-void
.end method


# virtual methods
.method protected final AZ()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/FrgInterests$1;->ceC:Lcom/vent/FrgInterests;

    invoke-virtual {v0, v1, v1}, Lcom/vent/FrgInterests;->f(ZZ)V

    return-void
.end method
