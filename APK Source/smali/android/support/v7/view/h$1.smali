.class final Landroid/support/v7/view/h$1;
.super Landroid/support/v4/view/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private Qq:Z

.field private Qr:I

.field final synthetic Qs:Landroid/support/v7/view/h;


# direct methods
.method constructor <init>(Landroid/support/v7/view/h;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/support/v7/view/h$1;->Qs:Landroid/support/v7/view/h;

    invoke-direct {p0}, Landroid/support/v4/view/x;-><init>()V

    iput-boolean v0, p0, Landroid/support/v7/view/h$1;->Qq:Z

    iput v0, p0, Landroid/support/v7/view/h$1;->Qr:I

    return-void
.end method


# virtual methods
.method public final ao(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/view/h$1;->Qq:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/h$1;->Qq:Z

    iget-object v0, p0, Landroid/support/v7/view/h$1;->Qs:Landroid/support/v7/view/h;

    iget-object v0, v0, Landroid/support/v7/view/h;->Qo:Landroid/support/v4/view/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/h$1;->Qs:Landroid/support/v7/view/h;

    iget-object v0, v0, Landroid/support/v7/view/h;->Qo:Landroid/support/v4/view/w;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/w;->ao(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final ap(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v7/view/h$1;->Qr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/view/h$1;->Qr:I

    iget-object v1, p0, Landroid/support/v7/view/h$1;->Qs:Landroid/support/v7/view/h;

    iget-object v1, v1, Landroid/support/v7/view/h;->qG:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/h$1;->Qs:Landroid/support/v7/view/h;

    iget-object v0, v0, Landroid/support/v7/view/h;->Qo:Landroid/support/v4/view/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/h$1;->Qs:Landroid/support/v7/view/h;

    iget-object v0, v0, Landroid/support/v7/view/h;->Qo:Landroid/support/v4/view/w;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/w;->ap(Landroid/view/View;)V

    :cond_0
    iput v2, p0, Landroid/support/v7/view/h$1;->Qr:I

    iput-boolean v2, p0, Landroid/support/v7/view/h$1;->Qq:Z

    iget-object v0, p0, Landroid/support/v7/view/h$1;->Qs:Landroid/support/v7/view/h;

    iput-boolean v2, v0, Landroid/support/v7/view/h;->MO:Z

    :cond_1
    return-void
.end method
