.class final Lcom/vent/ActChat$3$4;
.super Lcom/layer/atlas/b/b/a;


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
.method constructor <init>(Lcom/vent/ActChat$3;Landroid/content/Context;Lcom/c/a/t;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActChat$3$4;->bUn:Lcom/vent/ActChat$3;

    invoke-direct {p0, p2, p3}, Lcom/layer/atlas/b/b/a;-><init>(Landroid/content/Context;Lcom/c/a/t;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/layer/atlas/b/a$a;Lcom/layer/atlas/b/a$c;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
    .locals 0

    check-cast p1, Lcom/layer/atlas/b/b/a$a;

    check-cast p2, Lcom/layer/atlas/b/b/a$b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vent/ActChat$3$4;->a(Lcom/layer/atlas/b/b/a$a;Lcom/layer/atlas/b/b/a$b;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V

    return-void
.end method

.method public final a(Lcom/layer/atlas/b/b/a$a;Lcom/layer/atlas/b/b/a$b;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/layer/atlas/b/b/a;->a(Lcom/layer/atlas/b/b/a$a;Lcom/layer/atlas/b/b/a$b;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V

    iget-object v0, p0, Lcom/vent/ActChat$3$4;->bUn:Lcom/vent/ActChat$3;

    iget-object v1, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v0, p1, Lcom/layer/atlas/b/b/a$a;->boV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

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
