.class final Lcom/vent/ActChat$3$5;
.super Lcom/layer/atlas/b/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActChat$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUn:Lcom/vent/ActChat$3;


# direct methods
.method constructor <init>(Lcom/vent/ActChat$3;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActChat$3$5;->bUn:Lcom/vent/ActChat$3;

    invoke-direct {p0}, Lcom/layer/atlas/b/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/layer/atlas/b/a$a;Lcom/layer/atlas/b/a$c;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
    .locals 0

    check-cast p1, Lcom/layer/atlas/b/d/a$a;

    check-cast p2, Lcom/layer/atlas/b/d/a$b;

    invoke-virtual {p0, p1, p2}, Lcom/vent/ActChat$3$5;->a(Lcom/layer/atlas/b/d/a$a;Lcom/layer/atlas/b/d/a$b;)V

    return-void
.end method

.method public final a(Lcom/layer/atlas/b/d/a$a;Lcom/layer/atlas/b/d/a$b;)V
    .locals 3

    iget-object v0, p1, Lcom/layer/atlas/b/d/a$a;->pg:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/layer/atlas/b/d/a$b;->boO:Ljava/lang/String;

    invoke-static {v1}, Lcom/vent/d/e;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/e;->t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/layer/atlas/b/d/a$a;->pg:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/layer/atlas/b/d/a$a;->pg:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/vent/ActChat$3$5;->bUn:Lcom/vent/ActChat$3;

    iget-object v1, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v0, p1, Lcom/layer/atlas/b/d/a$a;->pg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f090043

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/AtlasAvatar;

    invoke-virtual {v1, v0}, Lcom/vent/ActChat;->a(Lcom/layer/atlas/AtlasAvatar;)V

    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    const v2, 0x19000

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/b/d/a$b;

    iget-object v0, v0, Lcom/layer/atlas/b/d/a$b;->boO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f01bc

    invoke-static {v1, v2, v0}, Lcom/layer/atlas/util/c;->c(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f01bd

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    return v0
.end method
