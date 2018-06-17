.class final Landroid/support/v7/widget/StaggeredGridLayoutManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field EK:I

.field acq:Z

.field acr:Z

.field final synthetic ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

.field aiu:Z

.field aiv:[I

.field mPosition:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->reset()V

    return-void
.end method


# virtual methods
.method final reset()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->mPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acq:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->aiu:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acr:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->aiv:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->aiv:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method
