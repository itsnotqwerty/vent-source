.class final Lcom/vent/ActReport1$a$a;
.super Landroid/support/v7/widget/RecyclerView$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActReport1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final bXH:Landroid/widget/TextView;

.field final synthetic bXI:Lcom/vent/ActReport1$a;


# direct methods
.method constructor <init>(Lcom/vent/ActReport1$a;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/vent/ActReport1$a$a;->bXI:Lcom/vent/ActReport1$a;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/ActReport1$a$a;->bXH:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/ActReport1$a$a;->bXH:Landroid/widget/TextView;

    new-instance v1, Lcom/vent/ActReport1$a$a$1;

    invoke-direct {v1, p0, p1}, Lcom/vent/ActReport1$a$a$1;-><init>(Lcom/vent/ActReport1$a$a;Lcom/vent/ActReport1$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
