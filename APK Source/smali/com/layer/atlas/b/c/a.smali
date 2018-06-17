.class public Lcom/layer/atlas/b/c/a;
.super Lcom/layer/atlas/b/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/atlas/b/c/a$b;,
        Lcom/layer/atlas/b/c/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/atlas/b/a",
        "<",
        "Lcom/layer/atlas/b/c/a$a;",
        "Lcom/layer/atlas/b/c/a$b;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final boP:Ljava/lang/String;

.field private static final boQ:I


# instance fields
.field private final bmA:Lcom/c/a/t;

.field private final bmU:Lcom/layer/sdk/LayerClient;

.field private final boS:Lcom/c/a/ae;

.field private final bpa:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/atlas/b/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layer/atlas/b/c/a;->boP:Ljava/lang/String;

    sget v0, Lcom/layer/atlas/b$e;->atlas_message_item_cell_placeholder:I

    sput v0, Lcom/layer/atlas/b/c/a;->boQ:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/layer/sdk/LayerClient;Lcom/c/a/t;)V
    .locals 2

    invoke-direct {p0}, Lcom/layer/atlas/b/a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/layer/atlas/b/c/a;->bpa:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/layer/atlas/b/c/a;->bmU:Lcom/layer/sdk/LayerClient;

    iput-object p3, p0, Lcom/layer/atlas/b/c/a;->bmA:Lcom/c/a/t;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/layer/atlas/b$d;->atlas_message_item_cell_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    new-instance v1, Lcom/layer/atlas/util/b/b/a;

    invoke-direct {v1, v0}, Lcom/layer/atlas/util/b/b/a;-><init>(F)V

    iput-object v1, p0, Lcom/layer/atlas/b/c/a;->boS:Lcom/c/a/ae;

    return-void
.end method

.method public static at(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/layer/atlas/b$i;->atlas_message_preview_image:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcom/layer/sdk/messaging/Message;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lcom/layer/sdk/messaging/Message;->getMessageParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "image/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;ZLandroid/view/LayoutInflater;)Lcom/layer/atlas/b/a$a;
    .locals 3

    new-instance v0, Lcom/layer/atlas/b/c/a$a;

    sget v1, Lcom/layer/atlas/b$g;->atlas_message_item_cell_image:I

    const/4 v2, 0x1

    invoke-virtual {p3, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layer/atlas/b/c/a$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/layer/atlas/b/a$a;Lcom/layer/atlas/b/a$c;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
    .locals 0

    check-cast p1, Lcom/layer/atlas/b/c/a$a;

    check-cast p2, Lcom/layer/atlas/b/c/a$b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/layer/atlas/b/c/a;->a(Lcom/layer/atlas/b/c/a$a;Lcom/layer/atlas/b/c/a$b;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V

    return-void
.end method

.method public a(Lcom/layer/atlas/b/c/a$a;Lcom/layer/atlas/b/c/a$b;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p1, Lcom/layer/atlas/b/c/a$a;->boV:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/layer/atlas/b/c/a$a;->boV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/layer/atlas/b/c/a$a;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->show()V

    iget-object v0, p0, Lcom/layer/atlas/b/c/a;->bmA:Lcom/c/a/t;

    iget-object v1, p2, Lcom/layer/atlas/b/c/a$b;->bpd:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/c/a/t;->k(Landroid/net/Uri;)Lcom/c/a/x;

    move-result-object v0

    sget-object v1, Lcom/layer/atlas/b/c/a;->boP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/c/a/x;->al(Ljava/lang/Object;)Lcom/c/a/x;

    move-result-object v0

    sget v1, Lcom/layer/atlas/b/c/a;->boQ:I

    invoke-virtual {v0, v1}, Lcom/c/a/x;->ee(I)Lcom/c/a/x;

    move-result-object v0

    iget-object v1, v0, Lcom/c/a/x;->bOR:Lcom/c/a/w$a;

    iget-boolean v2, v1, Lcom/c/a/w$a;->bOI:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center inside can not be used after calling centerCrop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v3, v1, Lcom/c/a/w$a;->bOJ:Z

    iget v1, p4, Lcom/layer/atlas/b/a$b;->maxWidth:I

    iget v2, p4, Lcom/layer/atlas/b/a$b;->maxHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/c/a/x;->aE(II)Lcom/c/a/x;

    move-result-object v0

    iget-object v1, v0, Lcom/c/a/x;->bOR:Lcom/c/a/w$a;

    iget v2, v1, Lcom/c/a/w$a;->bOH:I

    if-nez v2, :cond_1

    iget v2, v1, Lcom/c/a/w$a;->bOG:I

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onlyScaleDown can not be applied without resize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean v3, v1, Lcom/c/a/w$a;->bOK:Z

    iget-object v1, p0, Lcom/layer/atlas/b/c/a;->boS:Lcom/c/a/ae;

    invoke-virtual {v0, v1}, Lcom/c/a/x;->a(Lcom/c/a/ae;)Lcom/c/a/x;

    move-result-object v0

    iget-object v1, p1, Lcom/layer/atlas/b/c/a$a;->boV:Landroid/widget/ImageView;

    new-instance v2, Lcom/layer/atlas/b/c/a$1;

    invoke-direct {v2, p0, p1}, Lcom/layer/atlas/b/c/a$1;-><init>(Lcom/layer/atlas/b/c/a;Lcom/layer/atlas/b/c/a$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/c/a/x;->a(Landroid/widget/ImageView;Lcom/c/a/e;)V

    return-void
.end method

.method public final a(Lcom/layer/sdk/messaging/Message;)Z
    .locals 1

    invoke-static {p1}, Lcom/layer/atlas/b/c/a;->d(Lcom/layer/sdk/messaging/Message;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lcom/layer/sdk/messaging/Message;)Lcom/layer/atlas/b/a$c;
    .locals 4

    invoke-interface {p1}, Lcom/layer/sdk/messaging/Message;->getMessageParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/layer/atlas/b/c/a$b;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/layer/atlas/b/c/a$b;-><init>(Landroid/net/Uri;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bJ(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/layer/atlas/b/c/a;->bmA:Lcom/c/a/t;

    sget-object v1, Lcom/layer/atlas/b/c/a;->boP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/c/a/t;->ai(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/layer/atlas/b/c/a;->bmA:Lcom/c/a/t;

    sget-object v1, Lcom/layer/atlas/b/c/a;->boP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/c/a/t;->aj(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/layer/atlas/b/c/a;->bmU:Lcom/layer/sdk/LayerClient;

    invoke-static {v0}, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->b(Lcom/layer/sdk/LayerClient;)V

    iget-object v0, p0, Lcom/layer/atlas/b/c/a;->bpa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v1, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "fullId"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/atlas/b/c/a$b;

    iget-object v1, v1, Lcom/layer/atlas/b/c/a$b;->bpd:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const-string v1, "image"

    invoke-static {v0, p1, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
