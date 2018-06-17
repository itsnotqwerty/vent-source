.class public final Lcom/vent/CachedImageView;
.super Landroid/support/v7/widget/r;

# interfaces
.implements Lcom/vent/ae$a;


# instance fields
.field public attachedToWindow:Z

.field public cdM:Ljava/lang/String;

.field private cdN:I

.field public cdO:Lcom/vent/ae$c;

.field public cdP:I

.field public cdQ:I

.field public cdR:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/r;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vent/CachedImageView;->cdM:Ljava/lang/String;

    iput v0, p0, Lcom/vent/CachedImageView;->cdN:I

    iput-object v1, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    iput v0, p0, Lcom/vent/CachedImageView;->cdP:I

    iput v0, p0, Lcom/vent/CachedImageView;->cdQ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/vent/CachedImageView;->cdM:Ljava/lang/String;

    iput v0, p0, Lcom/vent/CachedImageView;->cdN:I

    iput-object v1, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    iput v0, p0, Lcom/vent/CachedImageView;->cdP:I

    iput v0, p0, Lcom/vent/CachedImageView;->cdQ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/vent/CachedImageView;->cdM:Ljava/lang/String;

    iput v0, p0, Lcom/vent/CachedImageView;->cdN:I

    iput-object v1, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    iput v0, p0, Lcom/vent/CachedImageView;->cdP:I

    iput v0, p0, Lcom/vent/CachedImageView;->cdQ:I

    return-void
.end method

.method private Dn()V
    .locals 1

    iget v0, p0, Lcom/vent/CachedImageView;->cdN:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vent/CachedImageView;->cdN:I

    invoke-virtual {p0, v0}, Lcom/vent/CachedImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/vent/CachedImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private Do()V
    .locals 6

    invoke-direct {p0}, Lcom/vent/CachedImageView;->Dn()V

    iget-object v0, p0, Lcom/vent/CachedImageView;->cdM:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/CachedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/CachedImageView;->cdM:Ljava/lang/String;

    iget v2, p0, Lcom/vent/CachedImageView;->cdP:I

    iget v3, p0, Lcom/vent/CachedImageView;->cdQ:I

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/vent/ae;->a(Landroid/content/Context;Ljava/lang/String;IIZLcom/vent/ae$a;)I

    :cond_0
    return-void
.end method

.method private Dp()V
    .locals 1

    invoke-virtual {p0}, Lcom/vent/CachedImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/vent/CachedImageView;->Dn()V

    :cond_0
    iget-object v0, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    invoke-virtual {v0, p0}, Lcom/vent/ae$c;->b(Lcom/vent/ae$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    :cond_1
    return-void
.end method


# virtual methods
.method public final Di()V
    .locals 1

    iget-object v0, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    invoke-virtual {p0, v0}, Lcom/vent/CachedImageView;->setCachedImage(Lcom/vent/ae$c;)V

    return-void
.end method

.method public final aH(II)V
    .locals 2

    invoke-static {p1, p2}, Lcom/vent/d/c;->aJ(II)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/vent/CachedImageView;->cdP:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/vent/CachedImageView;->cdQ:I

    return-void
.end method

.method public final e(Lcom/vent/ae$c;)V
    .locals 1

    iget-object v0, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/vent/CachedImageView;->Dp()V

    :cond_0
    iput-object p1, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/r;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/CachedImageView;->attachedToWindow:Z

    invoke-virtual {p0}, Lcom/vent/CachedImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/vent/CachedImageView;->Do()V

    :cond_0
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-direct {p0}, Lcom/vent/CachedImageView;->Dp()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/CachedImageView;->attachedToWindow:Z

    invoke-super {p0}, Landroid/support/v7/widget/r;->onDetachedFromWindow()V

    return-void
.end method

.method public final setCachedImage(Lcom/vent/ae$c;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/vent/CachedImageView;->attachedToWindow:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/vent/CachedImageView;->Dp()V

    :cond_1
    if-nez p1, :cond_4

    iput-object v1, p0, Lcom/vent/CachedImageView;->cdM:Ljava/lang/String;

    :goto_0
    iget-boolean v0, p0, Lcom/vent/CachedImageView;->attachedToWindow:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_5

    iput-object v1, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    :cond_2
    invoke-direct {p0}, Lcom/vent/CachedImageView;->Dn()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p1, Lcom/vent/ae$c;->imageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/CachedImageView;->cdM:Ljava/lang/String;

    iget v0, p1, Lcom/vent/ae$c;->cdB:I

    iput v0, p0, Lcom/vent/CachedImageView;->cdP:I

    iget v0, p1, Lcom/vent/ae$c;->cdC:I

    iput v0, p0, Lcom/vent/CachedImageView;->cdQ:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    if-eq v0, p1, :cond_6

    iput-object p1, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    iget-object v0, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    invoke-virtual {v0, p0}, Lcom/vent/ae$c;->a(Lcom/vent/ae$a;)V

    :cond_6
    iget-object v0, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    invoke-virtual {v0}, Lcom/vent/ae$c;->Dl()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    iget-object v0, v0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/vent/CachedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public final setCachedImage(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/vent/CachedImageView;->attachedToWindow:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/vent/CachedImageView;->Dp()V

    iput-object p1, p0, Lcom/vent/CachedImageView;->cdM:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/vent/CachedImageView;->cdM:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/vent/CachedImageView;->Dn()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/vent/CachedImageView;->Dp()V

    iput-object p1, p0, Lcom/vent/CachedImageView;->cdM:Ljava/lang/String;

    invoke-direct {p0}, Lcom/vent/CachedImageView;->Do()V

    goto :goto_0
.end method

.method public final setDefaultImage(I)V
    .locals 1

    iget v0, p0, Lcom/vent/CachedImageView;->cdN:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/vent/CachedImageView;->cdN:I

    iget-object v0, p0, Lcom/vent/CachedImageView;->cdM:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/vent/CachedImageView;->Dn()V

    goto :goto_0
.end method
