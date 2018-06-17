.class final Landroid/support/v7/widget/z$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/z$b;-><init>(Landroid/support/v7/widget/z;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic WK:Landroid/support/v7/widget/z;

.field final synthetic WL:Landroid/support/v7/widget/z$b;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/z$b;Landroid/support/v7/widget/z;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/z$b$1;->WL:Landroid/support/v7/widget/z$b;

    iput-object p2, p0, Landroid/support/v7/widget/z$b$1;->WK:Landroid/support/v7/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/z$b$1;->WL:Landroid/support/v7/widget/z$b;

    iget-object v0, v0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/z;->setSelection(I)V

    iget-object v0, p0, Landroid/support/v7/widget/z$b$1;->WL:Landroid/support/v7/widget/z$b;

    iget-object v0, v0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/z$b$1;->WL:Landroid/support/v7/widget/z$b;

    iget-object v0, v0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    iget-object v1, p0, Landroid/support/v7/widget/z$b$1;->WL:Landroid/support/v7/widget/z$b;

    iget-object v1, v1, Landroid/support/v7/widget/z$b;->LE:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/support/v7/widget/z;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/z$b$1;->WL:Landroid/support/v7/widget/z$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/z$b;->dismiss()V

    return-void
.end method
