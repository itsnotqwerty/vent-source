.class final Landroid/support/v7/widget/RecyclerView$o$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final afw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field afx:I

.field afy:J

.field afz:J


# direct methods
.method constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$o$a;->afw:Ljava/util/ArrayList;

    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$o$a;->afx:I

    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$o$a;->afy:J

    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$o$a;->afz:J

    return-void
.end method
