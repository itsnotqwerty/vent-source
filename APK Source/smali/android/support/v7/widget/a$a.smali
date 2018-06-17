.class public final Landroid/support/v7/widget/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic Ti:Landroid/support/v7/widget/a;

.field private tB:Z

.field vQ:I


# direct methods
.method protected constructor <init>(Landroid/support/v7/widget/a;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/a$a;->Ti:Landroid/support/v7/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/a$a;->tB:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/v;I)Landroid/support/v7/widget/a$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/a$a;->Ti:Landroid/support/v7/widget/a;

    iput-object p1, v0, Landroid/support/v7/widget/a;->Th:Landroid/support/v4/view/v;

    iput p2, p0, Landroid/support/v7/widget/a$a;->vQ:I

    return-object p0
.end method

.method public final ao(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/a$a;->Ti:Landroid/support/v7/widget/a;

    invoke-static {v0}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/a$a;->tB:Z

    return-void
.end method

.method public final ap(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/a$a;->tB:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a$a;->Ti:Landroid/support/v7/widget/a;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/a;->Th:Landroid/support/v4/view/v;

    iget-object v0, p0, Landroid/support/v7/widget/a$a;->Ti:Landroid/support/v7/widget/a;

    iget v1, p0, Landroid/support/v7/widget/a$a;->vQ:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a;I)V

    goto :goto_0
.end method

.method public final aq(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/a$a;->tB:Z

    return-void
.end method
