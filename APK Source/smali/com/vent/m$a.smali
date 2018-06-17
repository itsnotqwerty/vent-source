.class Lcom/vent/m$a;
.super Lcom/vent/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/l",
        "<TT;>.a;"
    }
.end annotation


# instance fields
.field final synthetic cbh:Lcom/vent/m;


# direct methods
.method constructor <init>(Lcom/vent/m;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/m$a;->cbh:Lcom/vent/m;

    invoke-direct {p0, p1, p2}, Lcom/vent/l$a;-><init>(Lcom/vent/l;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method final CQ()Lcom/vent/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/vent/m$a;->CO()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vent/m$a;->cbh:Lcom/vent/m;

    invoke-virtual {v1}, Lcom/vent/m;->Cw()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/vent/m$a;->cbh:Lcom/vent/m;

    iget-object v1, v1, Lcom/vent/m;->cbg:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/m$a;->cbh:Lcom/vent/m;

    iget-object v1, v1, Lcom/vent/m;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/b;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
