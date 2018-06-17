.class public Lcom/layer/atlas/b/d/a;
.super Lcom/layer/atlas/b/a;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/atlas/b/d/a$b;,
        Lcom/layer/atlas/b/d/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/atlas/b/a",
        "<",
        "Lcom/layer/atlas/b/d/a$a;",
        "Lcom/layer/atlas/b/d/a$b;",
        ">;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/layer/atlas/b/a;-><init>()V

    return-void
.end method

.method public static d(Lcom/layer/sdk/messaging/Message;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lcom/layer/sdk/messaging/Message;->getMessageParts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static f(Lcom/layer/sdk/messaging/Message;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/layer/sdk/messaging/Message;->getMessageParts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->isContentReady()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getData()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;ZLandroid/view/LayoutInflater;)Lcom/layer/atlas/b/a$a;
    .locals 4

    sget v0, Lcom/layer/atlas/b$g;->atlas_message_item_cell_text:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    if-eqz p2, :cond_0

    sget v0, Lcom/layer/atlas/b$e;->atlas_message_item_cell_me:I

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/layer/atlas/b/d/a;->bno:Lcom/layer/atlas/b/d;

    iget v1, v1, Lcom/layer/atlas/b/d;->bow:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget v0, Lcom/layer/atlas/b$f;->cell_text:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/layer/atlas/b/d/a;->bno:Lcom/layer/atlas/b/d;

    iget v1, v1, Lcom/layer/atlas/b/d;->boz:F

    :goto_2
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/layer/atlas/b/d/a;->bno:Lcom/layer/atlas/b/d;

    iget v1, v1, Lcom/layer/atlas/b/d;->box:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/layer/atlas/b/d/a;->bno:Lcom/layer/atlas/b/d;

    iget v1, v1, Lcom/layer/atlas/b/d;->box:I

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/layer/atlas/b/d/a;->bno:Lcom/layer/atlas/b/d;

    iget-object v1, v1, Lcom/layer/atlas/b/d;->boA:Landroid/graphics/Typeface;

    move-object v2, v1

    :goto_5
    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/layer/atlas/b/d/a;->bno:Lcom/layer/atlas/b/d;

    iget v1, v1, Lcom/layer/atlas/b/d;->boy:I

    :goto_6
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v0, Lcom/layer/atlas/b/d/a$a;

    invoke-direct {v0, v3}, Lcom/layer/atlas/b/d/a$a;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    sget v0, Lcom/layer/atlas/b$e;->atlas_message_item_cell_them:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/layer/atlas/b/d/a;->bno:Lcom/layer/atlas/b/d;

    iget v1, v1, Lcom/layer/atlas/b/d;->boB:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/layer/atlas/b/d/a;->bno:Lcom/layer/atlas/b/d;

    iget v1, v1, Lcom/layer/atlas/b/d;->boE:F

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/layer/atlas/b/d/a;->bno:Lcom/layer/atlas/b/d;

    iget v1, v1, Lcom/layer/atlas/b/d;->boC:I

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/layer/atlas/b/d/a;->bno:Lcom/layer/atlas/b/d;

    iget v1, v1, Lcom/layer/atlas/b/d;->boC:I

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/layer/atlas/b/d/a;->bno:Lcom/layer/atlas/b/d;

    iget-object v1, v1, Lcom/layer/atlas/b/d;->boF:Landroid/graphics/Typeface;

    move-object v2, v1

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/layer/atlas/b/d/a;->bno:Lcom/layer/atlas/b/d;

    iget v1, v1, Lcom/layer/atlas/b/d;->boD:I

    goto :goto_6
.end method

.method public bridge synthetic a(Lcom/layer/atlas/b/a$a;Lcom/layer/atlas/b/a$c;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
    .locals 0

    check-cast p1, Lcom/layer/atlas/b/d/a$a;

    check-cast p2, Lcom/layer/atlas/b/d/a$b;

    invoke-virtual {p0, p1, p2}, Lcom/layer/atlas/b/d/a;->a(Lcom/layer/atlas/b/d/a$a;Lcom/layer/atlas/b/d/a$b;)V

    return-void
.end method

.method public a(Lcom/layer/atlas/b/d/a$a;Lcom/layer/atlas/b/d/a$b;)V
    .locals 2

    iget-object v0, p1, Lcom/layer/atlas/b/d/a$a;->pg:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/layer/atlas/b/d/a$b;->boO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/layer/atlas/b/d/a$a;->pg:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/layer/atlas/b/d/a$a;->pg:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final a(Lcom/layer/sdk/messaging/Message;)Z
    .locals 1

    invoke-static {p1}, Lcom/layer/atlas/b/d/a;->d(Lcom/layer/sdk/messaging/Message;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lcom/layer/sdk/messaging/Message;)Lcom/layer/atlas/b/a$c;
    .locals 3

    invoke-interface {p1}, Lcom/layer/sdk/messaging/Message;->getMessageParts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->isContentReady()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getData()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    :goto_0
    invoke-interface {p1}, Lcom/layer/sdk/messaging/Message;->getSender()Lcom/layer/sdk/messaging/Identity;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/layer/atlas/util/c;->b(Lcom/layer/sdk/messaging/Identity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Lcom/layer/atlas/b/d/a$b;

    invoke-direct {v2, v0, v1}, Lcom/layer/atlas/b/d/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/b/d/a$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/layer/atlas/b/d/a$b;->bpe:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/layer/atlas/b/d/a$b;->boO:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/layer/atlas/b$i;->atlas_text_cell_factory_clipboard_description:I

    invoke-static {v1, v2, v0}, Lcom/layer/atlas/util/c;->c(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/layer/atlas/b$i;->atlas_text_cell_factory_copied_to_clipboard:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    return v0
.end method
