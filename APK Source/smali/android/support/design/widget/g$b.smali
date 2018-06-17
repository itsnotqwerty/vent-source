.class final Landroid/support/design/widget/g$b;
.super Landroid/support/design/widget/g$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic mT:Landroid/support/design/widget/g;


# direct methods
.method constructor <init>(Landroid/support/design/widget/g;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/g$b;->mT:Landroid/support/design/widget/g;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/g$e;-><init>(Landroid/support/design/widget/g;B)V

    return-void
.end method


# virtual methods
.method protected final bL()F
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/g$b;->mT:Landroid/support/design/widget/g;

    iget v0, v0, Landroid/support/design/widget/g;->mK:F

    iget-object v1, p0, Landroid/support/design/widget/g$b;->mT:Landroid/support/design/widget/g;

    iget v1, v1, Landroid/support/design/widget/g;->mL:F

    add-float/2addr v0, v1

    return v0
.end method
