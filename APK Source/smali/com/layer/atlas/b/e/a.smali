.class public Lcom/layer/atlas/b/e/a;
.super Lcom/layer/atlas/b/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/atlas/b/e/a$a;,
        Lcom/layer/atlas/b/e/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/atlas/b/a",
        "<",
        "Lcom/layer/atlas/b/e/a$a;",
        "Lcom/layer/atlas/b/e/a$b;",
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

    const-class v0, Lcom/layer/atlas/b/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layer/atlas/b/e/a;->boP:Ljava/lang/String;

    sget v0, Lcom/layer/atlas/b$e;->atlas_message_item_cell_placeholder:I

    sput v0, Lcom/layer/atlas/b/e/a;->boQ:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/layer/sdk/LayerClient;Lcom/c/a/t;)V
    .locals 2

    invoke-direct {p0}, Lcom/layer/atlas/b/a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/layer/atlas/b/e/a;->bpa:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/layer/atlas/b/e/a;->bmU:Lcom/layer/sdk/LayerClient;

    iput-object p3, p0, Lcom/layer/atlas/b/e/a;->bmA:Lcom/c/a/t;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/layer/atlas/b$d;->atlas_message_item_cell_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    new-instance v1, Lcom/layer/atlas/util/b/b/a;

    invoke-direct {v1, v0}, Lcom/layer/atlas/util/b/b/a;-><init>(F)V

    iput-object v1, p0, Lcom/layer/atlas/b/e/a;->boS:Lcom/c/a/ae;

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
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lcom/layer/sdk/messaging/Message;->getMessageParts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "image/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "image/jpeg+preview"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "application/json+imageSize"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static g(Lcom/layer/sdk/messaging/Message;)Lcom/layer/atlas/b/e/a$b;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/layer/atlas/b/e/a$b;

    invoke-direct {v0}, Lcom/layer/atlas/b/e/a$b;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lcom/layer/atlas/b/e/b;->h(Lcom/layer/sdk/messaging/Message;)Lcom/layer/sdk/messaging/MessagePart;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/messaging/MessagePart;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/layer/atlas/b/e/a$b;->orientation:I

    const-string v2, "width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/layer/atlas/b/e/a$b;->width:I

    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/layer/atlas/b/e/a$b;->height:I

    invoke-static {p0}, Lcom/layer/atlas/b/e/b;->i(Lcom/layer/sdk/messaging/Message;)Lcom/layer/sdk/messaging/MessagePart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/MessagePart;->getId()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/layer/atlas/b/e/a$b;->bpj:Landroid/net/Uri;

    invoke-static {p0}, Lcom/layer/atlas/b/e/b;->j(Lcom/layer/sdk/messaging/Message;)Lcom/layer/sdk/messaging/MessagePart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/MessagePart;->getId()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/layer/atlas/b/e/a$b;->bpi:Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/layer/atlas/util/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;ZLandroid/view/LayoutInflater;)Lcom/layer/atlas/b/a$a;
    .locals 3

    new-instance v0, Lcom/layer/atlas/b/e/a$a;

    sget v1, Lcom/layer/atlas/b$g;->atlas_message_item_cell_image:I

    const/4 v2, 0x1

    invoke-virtual {p3, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layer/atlas/b/e/a$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/layer/atlas/b/a$a;Lcom/layer/atlas/b/a$c;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
    .locals 0

    check-cast p1, Lcom/layer/atlas/b/e/a$a;

    check-cast p2, Lcom/layer/atlas/b/e/a$b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/layer/atlas/b/e/a;->a(Lcom/layer/atlas/b/e/a$a;Lcom/layer/atlas/b/e/a$b;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V

    return-void
.end method

.method public a(Lcom/layer/atlas/b/e/a$a;Lcom/layer/atlas/b/e/a$b;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/layer/atlas/b/e/a$a;->boV:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/layer/atlas/b/e/a$a;->boV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p3}, Lcom/layer/atlas/b/e/b;->i(Lcom/layer/sdk/messaging/Message;)Lcom/layer/sdk/messaging/MessagePart;

    move-result-object v0

    iget v1, p2, Lcom/layer/atlas/b/e/a$b;->width:I

    iget v2, p2, Lcom/layer/atlas/b/e/a$b;->height:I

    iget v3, p4, Lcom/layer/atlas/b/a$b;->maxWidth:I

    iget v4, p4, Lcom/layer/atlas/b/a$b;->maxHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/layer/atlas/util/c;->i(IIII)[I

    move-result-object v1

    iget-object v2, p1, Lcom/layer/atlas/b/e/a$a;->boV:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    aget v3, v1, v5

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    aget v3, v1, v6

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p1, Lcom/layer/atlas/b/e/a$a;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v2}, Landroid/support/v4/widget/ContentLoadingProgressBar;->show()V

    iget-object v2, p0, Lcom/layer/atlas/b/e/a;->bmA:Lcom/c/a/t;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/c/a/t;->k(Landroid/net/Uri;)Lcom/c/a/x;

    move-result-object v0

    sget-object v2, Lcom/layer/atlas/b/e/a;->boP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/c/a/x;->al(Ljava/lang/Object;)Lcom/c/a/x;

    move-result-object v0

    sget v2, Lcom/layer/atlas/b/e/a;->boQ:I

    invoke-virtual {v0, v2}, Lcom/c/a/x;->ee(I)Lcom/c/a/x;

    move-result-object v0

    iget v2, p2, Lcom/layer/atlas/b/e/a$b;->orientation:I

    packed-switch v2, :pswitch_data_0

    aget v2, v1, v6

    aget v1, v1, v5

    invoke-virtual {v0, v2, v1}, Lcom/c/a/x;->aE(II)Lcom/c/a/x;

    move-result-object v1

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Lcom/c/a/x;->B(F)Lcom/c/a/x;

    :goto_0
    iget-object v1, p0, Lcom/layer/atlas/b/e/a;->boS:Lcom/c/a/ae;

    invoke-virtual {v0, v1}, Lcom/c/a/x;->a(Lcom/c/a/ae;)Lcom/c/a/x;

    move-result-object v0

    iget-object v1, p1, Lcom/layer/atlas/b/e/a$a;->boV:Landroid/widget/ImageView;

    new-instance v2, Lcom/layer/atlas/b/e/a$1;

    invoke-direct {v2, p0, p1}, Lcom/layer/atlas/b/e/a$1;-><init>(Lcom/layer/atlas/b/e/a;Lcom/layer/atlas/b/e/a$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/c/a/x;->a(Landroid/widget/ImageView;Lcom/c/a/e;)V

    iget-object v0, p1, Lcom/layer/atlas/b/e/a$a;->boV:Landroid/widget/ImageView;

    new-instance v1, Lcom/layer/atlas/b/e/a$2;

    invoke-direct {v1, p0, p3}, Lcom/layer/atlas/b/e/a$2;-><init>(Lcom/layer/atlas/b/e/a;Lcom/layer/sdk/messaging/Message;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :pswitch_0
    aget v2, v1, v5

    aget v1, v1, v6

    invoke-virtual {v0, v2, v1}, Lcom/c/a/x;->aE(II)Lcom/c/a/x;

    goto :goto_0

    :pswitch_1
    aget v2, v1, v6

    aget v1, v1, v5

    invoke-virtual {v0, v2, v1}, Lcom/c/a/x;->aE(II)Lcom/c/a/x;

    move-result-object v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v2}, Lcom/c/a/x;->B(F)Lcom/c/a/x;

    goto :goto_0

    :pswitch_2
    aget v2, v1, v5

    aget v1, v1, v6

    invoke-virtual {v0, v2, v1}, Lcom/c/a/x;->aE(II)Lcom/c/a/x;

    move-result-object v1

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Lcom/c/a/x;->B(F)Lcom/c/a/x;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/layer/sdk/messaging/Message;)Z
    .locals 1

    invoke-static {p1}, Lcom/layer/atlas/b/e/a;->d(Lcom/layer/sdk/messaging/Message;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lcom/layer/sdk/messaging/Message;)Lcom/layer/atlas/b/a$c;
    .locals 1

    invoke-static {p1}, Lcom/layer/atlas/b/e/a;->g(Lcom/layer/sdk/messaging/Message;)Lcom/layer/atlas/b/e/a$b;

    move-result-object v0

    return-object v0
.end method

.method public final bJ(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/layer/atlas/b/e/a;->bmA:Lcom/c/a/t;

    sget-object v1, Lcom/layer/atlas/b/e/a;->boP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/c/a/t;->ai(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/layer/atlas/b/e/a;->bmA:Lcom/c/a/t;

    sget-object v1, Lcom/layer/atlas/b/e/a;->boP:Ljava/lang/String;

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
    .locals 5

    iget-object v0, p0, Lcom/layer/atlas/b/e/a;->bmU:Lcom/layer/sdk/LayerClient;

    invoke-static {v0}, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->b(Lcom/layer/sdk/LayerClient;)V

    iget-object v0, p0, Lcom/layer/atlas/b/e/a;->bpa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/atlas/b/e/a$b;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "previewId"

    iget-object v4, v1, Lcom/layer/atlas/b/e/a$b;->bpj:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "fullId"

    iget-object v4, v1, Lcom/layer/atlas/b/e/a$b;->bpi:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "info"

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
