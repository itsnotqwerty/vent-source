.class final Lcom/layer/atlas/a/a$c;
.super Lcom/layer/atlas/a/a$g;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic bnP:Lcom/layer/atlas/a/a;

.field protected bnV:Lcom/layer/sdk/messaging/Message;

.field protected final bnW:Landroid/widget/TextView;

.field protected final bnX:Landroid/view/View;

.field protected final bnY:Landroid/widget/TextView;

.field protected final bnZ:Landroid/widget/TextView;

.field protected final boa:Landroid/widget/Space;

.field protected final bob:Lcom/layer/atlas/AtlasAvatar;

.field protected final boc:Landroid/view/ViewGroup;

.field protected final bod:Landroid/widget/TextView;

.field protected boe:Lcom/layer/atlas/b/a$a;

.field protected bof:Lcom/layer/atlas/b/a$b;


# direct methods
.method public constructor <init>(Lcom/layer/atlas/a/a;Landroid/view/View;Lcom/c/a/t;)V
    .locals 4

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/layer/atlas/a/a$c;->bnP:Lcom/layer/atlas/a/a;

    invoke-direct {p0, p2}, Lcom/layer/atlas/a/a$g;-><init>(Landroid/view/View;)V

    sget v0, Lcom/layer/atlas/b$f;->sender:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/layer/atlas/a/a$c;->bnW:Landroid/widget/TextView;

    sget v0, Lcom/layer/atlas/b$f;->time_group:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/atlas/a/a$c;->bnX:Landroid/view/View;

    sget v0, Lcom/layer/atlas/b$f;->time_group_day:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/layer/atlas/a/a$c;->bnY:Landroid/widget/TextView;

    sget v0, Lcom/layer/atlas/b$f;->time_group_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/layer/atlas/a/a$c;->bnZ:Landroid/widget/TextView;

    sget v0, Lcom/layer/atlas/b$f;->cluster_space:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/layer/atlas/a/a$c;->boa:Landroid/widget/Space;

    sget v0, Lcom/layer/atlas/b$f;->cell:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/layer/atlas/a/a$c;->boc:Landroid/view/ViewGroup;

    sget v0, Lcom/layer/atlas/b$f;->receipt:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/layer/atlas/a/a$c;->bod:Landroid/widget/TextView;

    sget v0, Lcom/layer/atlas/b$f;->avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/AtlasAvatar;

    iput-object v0, p0, Lcom/layer/atlas/a/a$c;->bob:Lcom/layer/atlas/AtlasAvatar;

    iget-object v0, p0, Lcom/layer/atlas/a/a$c;->bob:Lcom/layer/atlas/AtlasAvatar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/a/a$c;->bob:Lcom/layer/atlas/AtlasAvatar;

    iput-object p3, v0, Lcom/layer/atlas/AtlasAvatar;->bmA:Lcom/c/a/t;

    iget-object v1, v0, Lcom/layer/atlas/AtlasAvatar;->bmx:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, v0, Lcom/layer/atlas/AtlasAvatar;->bmx:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    iget-object v1, v0, Lcom/layer/atlas/AtlasAvatar;->bmy:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, v0, Lcom/layer/atlas/AtlasAvatar;->bmz:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, v0, Lcom/layer/atlas/AtlasAvatar;->bmz:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/layer/atlas/AtlasAvatar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/layer/atlas/b$c;->atlas_avatar_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/layer/atlas/AtlasAvatar;->bmy:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/layer/atlas/AtlasAvatar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/layer/atlas/b$c;->atlas_avatar_border:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/layer/atlas/AtlasAvatar;->bmx:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/layer/atlas/AtlasAvatar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/layer/atlas/b$c;->atlas_avatar_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/layer/atlas/a/a$c;->bob:Lcom/layer/atlas/AtlasAvatar;

    invoke-virtual {v0, p0}, Lcom/layer/atlas/AtlasAvatar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/layer/atlas/b$f;->avatar:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/a/a$c;->bnP:Lcom/layer/atlas/a/a;

    iget-object v0, v0, Lcom/layer/atlas/a/a;->bnM:Lcom/layer/atlas/a/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/a/a$c;->bnP:Lcom/layer/atlas/a/a;

    iget-object v0, v0, Lcom/layer/atlas/a/a;->bnM:Lcom/layer/atlas/a/a$a;

    invoke-interface {v0}, Lcom/layer/atlas/a/a$a;->wl()V

    :cond_0
    return-void
.end method
