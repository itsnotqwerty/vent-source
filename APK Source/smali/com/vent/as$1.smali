.class final Lcom/vent/as$1;
.super Lcom/vent/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/as;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ceL:Lcom/vent/as;


# direct methods
.method constructor <init>(Lcom/vent/as;Lcom/vent/a;Lcom/vent/am;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/as$1;->ceL:Lcom/vent/as;

    invoke-direct {p0, p2, p3}, Lcom/vent/n;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    return-void
.end method


# virtual methods
.method protected final AZ()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/as$1;->ceL:Lcom/vent/as;

    invoke-virtual {v0, v1, v1}, Lcom/vent/as;->f(ZZ)V

    return-void
.end method
