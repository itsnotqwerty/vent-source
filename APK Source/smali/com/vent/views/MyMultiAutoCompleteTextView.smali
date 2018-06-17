.class public final Lcom/vent/views/MyMultiAutoCompleteTextView;
.super Landroid/support/v7/widget/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/s;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method final FG()V
    .locals 12

    const/16 v11, 0x2710

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "clipboard"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v8

    if-eqz v8, :cond_3

    move v5, v4

    move v6, v4

    :goto_1
    invoke-virtual {v8}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v5, v0, :cond_3

    invoke-virtual {v8, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v7, v0, Landroid/text/Spanned;

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/vent/d/e;->v(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v11, :cond_4

    invoke-interface {v0, v4, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v7, v0

    :goto_2
    if-nez v6, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move-object v0, v1

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, v3, v2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v6, 0x1

    :cond_1
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v9

    const-string v10, "\n"

    invoke-interface {v0, v9, v10}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-object v0, v1

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v9

    invoke-interface {v0, v9, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    move-object v7, v0

    goto :goto_2

    :cond_5
    move v2, v0

    move v3, v4

    goto :goto_0
.end method

.method public final onTextContextMenuItem(I)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v0, 0x1020022

    if-eq p1, v0, :cond_0

    const v0, 0x1020031

    if-ne p1, v0, :cond_5

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/vent/bb;->cif:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "clipboard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_3

    move v0, v2

    move v3, v2

    :goto_0
    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-virtual {v4, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v3, v5

    const/16 v5, 0x3e8

    if-le v3, v5, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->FG()V

    :goto_2
    move v0, v1

    :goto_3
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-virtual {p0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f00dc

    invoke-virtual {v0, v2}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/vent/views/MyMultiAutoCompleteTextView$1;

    invoke-direct {v3, p0}, Lcom/vent/views/MyMultiAutoCompleteTextView$1;-><init>(Lcom/vent/views/MyMultiAutoCompleteTextView;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->show()Landroid/support/v7/app/c;

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_3

    :cond_5
    invoke-super {p0, p1}, Landroid/support/v7/widget/s;->onTextContextMenuItem(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_3
.end method
