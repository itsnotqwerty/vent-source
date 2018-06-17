.class public final Landroid/support/constraint/a/a/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/a/a/m$a;
    }
.end annotation


# instance fields
.field db:I

.field dc:I

.field gC:I

.field gD:I

.field hY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/m$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/a/d;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/m;->hY:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getX()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/m;->gC:I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getY()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/m;->gD:I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/m;->db:I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/m;->dc:I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aJ()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/c;

    iget-object v4, p0, Landroid/support/constraint/a/a/m;->hY:Ljava/util/ArrayList;

    new-instance v5, Landroid/support/constraint/a/a/m$a;

    invoke-direct {v5, v0}, Landroid/support/constraint/a/a/m$a;-><init>(Landroid/support/constraint/a/a/c;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Landroid/support/constraint/a/a/d;)V
    .locals 9

    const/4 v6, 0x0

    iget v0, p0, Landroid/support/constraint/a/a/m;->gC:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/a/d;->setX(I)V

    iget v0, p0, Landroid/support/constraint/a/a/m;->gD:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/a/d;->setY(I)V

    iget v0, p0, Landroid/support/constraint/a/a/m;->db:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/a/d;->setWidth(I)V

    iget v0, p0, Landroid/support/constraint/a/a/m;->dc:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/a/d;->setHeight(I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->hY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->hY:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/support/constraint/a/a/m$a;

    iget-object v0, v3, Landroid/support/constraint/a/a/m$a;->hD:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v0

    iget-object v1, v3, Landroid/support/constraint/a/a/m$a;->fx:Landroid/support/constraint/a/a/c;

    iget v2, v3, Landroid/support/constraint/a/a/m$a;->fy:I

    iget v4, v3, Landroid/support/constraint/a/a/m$a;->hZ:I

    iget v5, v3, Landroid/support/constraint/a/a/m$a;->ia:I

    const/4 v3, -0x1

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/c;IIIIZ)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    return-void
.end method
