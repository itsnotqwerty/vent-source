.class final Landroid/support/transition/aa;
.super Ljava/lang/Object;


# instance fields
.field final vd:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/z;",
            ">;"
        }
    .end annotation
.end field

.field final ve:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final vf:Landroid/support/v4/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/f",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final vg:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/transition/aa;->vd:Landroid/support/v4/g/a;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/transition/aa;->ve:Landroid/util/SparseArray;

    new-instance v0, Landroid/support/v4/g/f;

    invoke-direct {v0}, Landroid/support/v4/g/f;-><init>()V

    iput-object v0, p0, Landroid/support/transition/aa;->vf:Landroid/support/v4/g/f;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/transition/aa;->vg:Landroid/support/v4/g/a;

    return-void
.end method
