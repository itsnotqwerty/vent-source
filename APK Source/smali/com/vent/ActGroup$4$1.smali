.class final Lcom/vent/ActGroup$4$1;
.super Lcom/vent/d/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActGroup$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bWn:Lcom/vent/ActGroup$4;


# direct methods
.method constructor <init>(Lcom/vent/ActGroup$4;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActGroup$4$1;->bWn:Lcom/vent/ActGroup$4;

    invoke-direct {p0}, Lcom/vent/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActGroup$4$1;->cmT:Ljava/lang/Object;

    check-cast v0, Lcom/vent/a/k;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/ActGroup$4$1;->bWn:Lcom/vent/ActGroup$4;

    iget-object v1, v1, Lcom/vent/ActGroup$4;->bWk:Lcom/vent/ActGroup;

    invoke-virtual {v0}, Lcom/vent/a/k;->EO()Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/l;

    iput-object v0, v1, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    :cond_0
    iget-object v0, p0, Lcom/vent/ActGroup$4$1;->bWn:Lcom/vent/ActGroup$4;

    iget-object v0, v0, Lcom/vent/ActGroup$4;->bWk:Lcom/vent/ActGroup;

    invoke-virtual {v0}, Lcom/vent/ActGroup;->Bg()V

    return-void
.end method
