.class Lcom/vent/o$a;
.super Lcom/vent/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic cbs:Lcom/vent/o;


# direct methods
.method public constructor <init>(Lcom/vent/o;Landroid/view/View;)V
    .locals 2

    const/16 v1, 0x8

    iput-object p1, p0, Lcom/vent/o$a;->cbs:Lcom/vent/o;

    sget v0, Lcom/vent/MyApplication;->cgk:I

    invoke-direct {p0, p1, p2, v0}, Lcom/vent/o$b;-><init>(Lcom/vent/o;Landroid/view/View;I)V

    const v0, 0x7f0902aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0900b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090252

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090297

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090123

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
