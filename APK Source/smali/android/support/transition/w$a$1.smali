.class final Landroid/support/transition/w$a$1;
.super Landroid/support/transition/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/w$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uT:Landroid/support/v4/g/a;

.field final synthetic uU:Landroid/support/transition/w$a;


# direct methods
.method constructor <init>(Landroid/support/transition/w$a;Landroid/support/v4/g/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/transition/w$a$1;->uU:Landroid/support/transition/w$a;

    iput-object p2, p0, Landroid/support/transition/w$a$1;->uT:Landroid/support/v4/g/a;

    invoke-direct {p0}, Landroid/support/transition/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/transition/u;)V
    .locals 2

    iget-object v0, p0, Landroid/support/transition/w$a$1;->uT:Landroid/support/v4/g/a;

    iget-object v1, p0, Landroid/support/transition/w$a$1;->uU:Landroid/support/transition/w$a;

    iget-object v1, v1, Landroid/support/transition/w$a;->ub:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
