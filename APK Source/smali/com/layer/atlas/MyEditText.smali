.class public final Lcom/layer/atlas/MyEditText;
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
.method public final onTextContextMenuItem(I)Z
    .locals 12

    const/4 v3, 0x1

    const/4 v5, 0x0

    const v1, 0x1020022

    if-ne p1, v1, :cond_0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    const p1, 0x1020031

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/s;->onTextContextMenuItem(I)Z

    move-result v3

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/layer/atlas/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/layer/atlas/MyEditText;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/layer/atlas/MyEditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/layer/atlas/MyEditText;->getSelectionEnd()I

    move-result v6

    const/4 v4, 0x0

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v7, 0x0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    move v8, v4

    :goto_1
    invoke-virtual {p0}, Lcom/layer/atlas/MyEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "clipboard"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v9

    if-eqz v9, :cond_1

    move v6, v5

    move v4, v5

    :goto_2
    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v6, v1, :cond_1

    invoke-virtual {v9, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {p0}, Lcom/layer/atlas/MyEditText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v5, v1, Landroid/text/Spanned;

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    :goto_3
    if-eqz v5, :cond_5

    if-nez v4, :cond_4

    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    move-object v1, v0

    invoke-static {v1, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move-object v0, v2

    check-cast v0, Landroid/text/Editable;

    move-object v1, v0

    invoke-interface {v1, v8, v7, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move v1, v3

    :goto_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v4, v1

    goto :goto_2

    :cond_3
    move-object v5, v1

    goto :goto_3

    :cond_4
    move-object v0, v2

    check-cast v0, Landroid/text/Editable;

    move-object v1, v0

    invoke-virtual {p0}, Lcom/layer/atlas/MyEditText;->getSelectionEnd()I

    move-result v10

    const-string v11, "\n"

    invoke-interface {v1, v10, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-object v0, v2

    check-cast v0, Landroid/text/Editable;

    move-object v1, v0

    invoke-virtual {p0}, Lcom/layer/atlas/MyEditText;->getSelectionEnd()I

    move-result v10

    invoke-interface {v1, v10, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move v1, v4

    goto :goto_4

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_6
    move v7, v1

    move v8, v5

    goto :goto_1
.end method
