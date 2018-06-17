.class public abstract Landroid/support/v7/widget/RecyclerView$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$f$b;,
        Landroid/support/v7/widget/RecyclerView$f$a;
    }
.end annotation


# instance fields
.field aeV:Landroid/support/v7/widget/RecyclerView$f$a;

.field private aeW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field aeX:J

.field public aeY:J

.field public aeZ:J

.field afa:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->aeV:Landroid/support/v7/widget/RecyclerView$f$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->aeW:Ljava/util/ArrayList;

    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$f;->aeX:J

    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$f;->aeY:J

    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$f;->aeZ:J

    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$f;->afa:J

    return-void
.end method

.method static j(Landroid/support/v7/widget/RecyclerView$x;)I
    .locals 4

    const/4 v3, -0x1

    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView$x;->access$1600(Landroid/support/v7/widget/RecyclerView$x;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$x;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$x;->getOldPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$x;->getAdapterPosition()I

    move-result v2

    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)Z
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$x;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$x;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$f;->l(Landroid/support/v7/widget/RecyclerView$x;)Z

    move-result v0

    return v0
.end method

.method public abstract c(Landroid/support/v7/widget/RecyclerView$x;)V
.end method

.method public abstract d(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)Z
.end method

.method public abstract e(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)Z
.end method

.method public abstract f(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)Z
.end method

.method public abstract gB()V
.end method

.method public abstract gD()V
.end method

.method public final ih()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->aeW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$f;->aeW:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->aeW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public abstract isRunning()Z
.end method

.method public final k(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->aeV:Landroid/support/v7/widget/RecyclerView$f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->aeV:Landroid/support/v7/widget/RecyclerView$f$a;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$f$a;->m(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_0
    return-void
.end method

.method public l(Landroid/support/v7/widget/RecyclerView$x;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
