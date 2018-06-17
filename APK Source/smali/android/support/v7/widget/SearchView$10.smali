.class final Landroid/support/v7/widget/SearchView$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahM:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SearchView$10;->ahM:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->ahM:Landroid/support/v7/widget/SearchView;

    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->ahn:Landroid/support/v7/widget/SearchView$d;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->ahn:Landroid/support/v7/widget/SearchView$d;

    invoke-interface {v1}, Landroid/support/v7/widget/SearchView$d;->iG()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v7/widget/SearchView;->ahr:Landroid/support/v4/widget/f;

    invoke-virtual {v2}, Landroid/support/v4/widget/f;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/support/v7/widget/SearchView;->ahr:Landroid/support/v4/widget/f;

    invoke-virtual {v3, v2}, Landroid/support/v4/widget/f;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
