.class public Lcom/layer/atlas/b/a/a;
.super Lcom/layer/atlas/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/atlas/b/a/a$b;,
        Lcom/layer/atlas/b/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/atlas/b/a",
        "<",
        "Lcom/layer/atlas/b/a/a$a;",
        "Lcom/layer/atlas/b/a/a$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/layer/atlas/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;ZLandroid/view/LayoutInflater;)Lcom/layer/atlas/b/a$a;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v0, Lcom/layer/atlas/b$g;->atlas_message_item_cell_text:I

    const/4 v2, 0x1

    invoke-virtual {p3, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_0

    sget v0, Lcom/layer/atlas/b$e;->atlas_message_item_cell_me:I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sget v0, Lcom/layer/atlas/b$f;->cell_text:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p2, :cond_1

    sget v1, Lcom/layer/atlas/b$c;->atlas_text_white:I

    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Lcom/layer/atlas/b/a/a$a;

    invoke-direct {v0, p0, v2}, Lcom/layer/atlas/b/a/a$a;-><init>(Lcom/layer/atlas/b/a/a;Landroid/view/View;)V

    return-object v0

    :cond_0
    sget v0, Lcom/layer/atlas/b$e;->atlas_message_item_cell_them:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/layer/atlas/b$c;->atlas_text_black:I

    goto :goto_1
.end method

.method public bridge synthetic a(Lcom/layer/atlas/b/a$a;Lcom/layer/atlas/b/a$c;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
    .locals 0

    check-cast p1, Lcom/layer/atlas/b/a/a$a;

    check-cast p2, Lcom/layer/atlas/b/a/a$b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/layer/atlas/b/a/a;->a(Lcom/layer/atlas/b/a/a$a;Lcom/layer/atlas/b/a/a$b;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V

    return-void
.end method

.method public a(Lcom/layer/atlas/b/a/a$a;Lcom/layer/atlas/b/a/a$b;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
    .locals 2

    iget-object v0, p1, Lcom/layer/atlas/b/a/a$a;->pg:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/layer/atlas/b/a/a$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Lcom/layer/sdk/messaging/Message;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic b(Lcom/layer/sdk/messaging/Message;)Lcom/layer/atlas/b/a$c;
    .locals 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/layer/sdk/messaging/Message;->getMessageParts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    if-eqz v1, :cond_0

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-byte `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "`"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/layer/atlas/b/a/a$b;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layer/atlas/b/a/a$b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
