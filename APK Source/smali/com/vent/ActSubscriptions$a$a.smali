.class final Lcom/vent/ActSubscriptions$a$a;
.super Landroid/support/v7/widget/RecyclerView$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActSubscriptions$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final bYH:Landroid/support/v7/widget/SwitchCompat;

.field final synthetic bYI:Lcom/vent/ActSubscriptions$a;


# direct methods
.method constructor <init>(Lcom/vent/ActSubscriptions$a;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/vent/ActSubscriptions$a$a;->bYI:Lcom/vent/ActSubscriptions$a;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/SwitchCompat;

    iput-object p2, p0, Lcom/vent/ActSubscriptions$a$a;->bYH:Landroid/support/v7/widget/SwitchCompat;

    iget-object v0, p0, Lcom/vent/ActSubscriptions$a$a;->bYH:Landroid/support/v7/widget/SwitchCompat;

    new-instance v1, Lcom/vent/ActSubscriptions$a$a$1;

    invoke-direct {v1, p0, p1}, Lcom/vent/ActSubscriptions$a$a$1;-><init>(Lcom/vent/ActSubscriptions$a$a;Lcom/vent/ActSubscriptions$a;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
