.class public final Lcom/layer/atlas/b/e/a$a;
.super Lcom/layer/atlas/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/b/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field public final boV:Landroid/widget/ImageView;

.field final boW:Landroid/support/v4/widget/ContentLoadingProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/layer/atlas/b/a$a;-><init>()V

    sget v0, Lcom/layer/atlas/b$f;->cell_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/layer/atlas/b/e/a$a;->boV:Landroid/widget/ImageView;

    sget v0, Lcom/layer/atlas/b$f;->cell_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/ContentLoadingProgressBar;

    iput-object v0, p0, Lcom/layer/atlas/b/e/a$a;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    return-void
.end method
