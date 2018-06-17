.class final Lcom/vent/ActMain$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vent/ba$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActMain;->BC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXa:Lcom/vent/ActMain;


# direct methods
.method constructor <init>(Lcom/vent/ActMain;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActMain$2;->bXa:Lcom/vent/ActMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final BX()V
    .locals 2

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain$2;->bXa:Lcom/vent/ActMain;

    invoke-static {v0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain$2;->bXa:Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/ActMain$2;->bXa:Lcom/vent/ActMain;

    invoke-virtual {v0, v1}, Lcom/vent/ba;->bv(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/vent/ActMain$2;->bXa:Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BQ()V

    return-void
.end method

.method public final BY()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActMain$2;->bXa:Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BQ()V

    return-void
.end method

.method public final BZ()V
    .locals 0

    return-void
.end method

.method public final Ca()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public final aZ(Z)V
    .locals 0

    return-void
.end method

.method public final done()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActMain$2;->bXa:Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BB()V

    return-void
.end method

.method public final en(I)V
    .locals 0

    return-void
.end method

.method public final eo(I)V
    .locals 0

    return-void
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    return-void
.end method
