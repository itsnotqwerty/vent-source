.class public final Lcom/layer/atlas/b/d/a$a;
.super Lcom/layer/atlas/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/b/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final pg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/layer/atlas/b/a$a;-><init>()V

    sget v0, Lcom/layer/atlas/b$f;->cell_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/layer/atlas/b/d/a$a;->pg:Landroid/widget/TextView;

    return-void
.end method
