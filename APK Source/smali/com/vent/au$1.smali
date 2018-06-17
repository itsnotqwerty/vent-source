.class final Lcom/vent/au$1;
.super Lcom/vent/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/au;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfD:Lcom/vent/au;


# direct methods
.method constructor <init>(Lcom/vent/au;Lcom/vent/a;Lcom/vent/am;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/au$1;->cfD:Lcom/vent/au;

    invoke-direct {p0, p2, p3}, Lcom/vent/o;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    return-void
.end method


# virtual methods
.method protected final AZ()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/au$1;->cfD:Lcom/vent/au;

    invoke-virtual {v0, v1, v1, v1}, Lcom/vent/aq;->c(ZZZ)V

    return-void
.end method
