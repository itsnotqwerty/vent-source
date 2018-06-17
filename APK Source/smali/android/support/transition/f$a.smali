.class final Landroid/support/transition/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field tD:I

.field tE:I

.field tF:I

.field tG:I

.field tH:I

.field tI:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/transition/f$a;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method final cn()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/transition/f$a;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/f$a;->tD:I

    iget v2, p0, Landroid/support/transition/f$a;->tE:I

    iget v3, p0, Landroid/support/transition/f$a;->tF:I

    iget v4, p0, Landroid/support/transition/f$a;->tG:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/transition/al;->b(Landroid/view/View;IIII)V

    iput v5, p0, Landroid/support/transition/f$a;->tH:I

    iput v5, p0, Landroid/support/transition/f$a;->tI:I

    return-void
.end method
