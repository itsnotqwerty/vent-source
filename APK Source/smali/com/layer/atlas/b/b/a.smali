.class public Lcom/layer/atlas/b/b/a;
.super Lcom/layer/atlas/b/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/atlas/b/b/a$a;,
        Lcom/layer/atlas/b/b/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/atlas/b/a",
        "<",
        "Lcom/layer/atlas/b/b/a$a;",
        "Lcom/layer/atlas/b/b/a$b;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final boP:Ljava/lang/String;

.field private static final boQ:I

.field private static final boR:D


# instance fields
.field private final bmA:Lcom/c/a/t;

.field private final boS:Lcom/c/a/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/layer/atlas/b/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layer/atlas/b/b/a;->boP:Ljava/lang/String;

    sget v0, Lcom/layer/atlas/b$e;->atlas_message_item_cell_placeholder:I

    sput v0, Lcom/layer/atlas/b/b/a;->boQ:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    sput-wide v0, Lcom/layer/atlas/b/b/a;->boR:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/c/a/t;)V
    .locals 2

    invoke-direct {p0}, Lcom/layer/atlas/b/a;-><init>()V

    iput-object p2, p0, Lcom/layer/atlas/b/b/a;->bmA:Lcom/c/a/t;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/layer/atlas/b$d;->atlas_message_item_cell_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    new-instance v1, Lcom/layer/atlas/util/b/b/a;

    invoke-direct {v1, v0}, Lcom/layer/atlas/util/b/b/a;-><init>(F)V

    iput-object v1, p0, Lcom/layer/atlas/b/b/a;->boS:Lcom/c/a/ae;

    return-void
.end method

.method public static at(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/layer/atlas/b$i;->atlas_message_preview_location:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    const-string v1, "location/coordinate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static e(Lcom/layer/sdk/messaging/Message;)Lcom/layer/atlas/b/b/a$b;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-interface {p0}, Lcom/layer/sdk/messaging/Message;->getMessageParts()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getData()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/layer/atlas/b/b/a$b;

    invoke-direct {v0}, Lcom/layer/atlas/b/b/a$b;-><init>()V

    const-string v3, "lat"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/layer/atlas/b/b/a$b;->boX:D

    const-string v3, "lon"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/layer/atlas/b/b/a$b;->boY:D

    const-string v3, "label"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/layer/atlas/b/b/a$b;->boZ:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/layer/atlas/util/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;ZLandroid/view/LayoutInflater;)Lcom/layer/atlas/b/a$a;
    .locals 3

    new-instance v0, Lcom/layer/atlas/b/b/a$a;

    sget v1, Lcom/layer/atlas/b$g;->atlas_message_item_cell_image:I

    const/4 v2, 0x1

    invoke-virtual {p3, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layer/atlas/b/b/a$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/layer/atlas/b/a$a;Lcom/layer/atlas/b/a$c;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
    .locals 0

    check-cast p1, Lcom/layer/atlas/b/b/a$a;

    check-cast p2, Lcom/layer/atlas/b/b/a$b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/layer/atlas/b/b/a;->a(Lcom/layer/atlas/b/b/a$a;Lcom/layer/atlas/b/b/a$b;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V

    return-void
.end method

.method public a(Lcom/layer/atlas/b/b/a$a;Lcom/layer/atlas/b/b/a$b;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p1, Lcom/layer/atlas/b/b/a$a;->boV:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/layer/atlas/b/b/a$a;->boV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x280

    iget v1, p4, Lcom/layer/atlas/b/a$b;->maxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v2, v0

    sget-wide v4, Lcom/layer/atlas/b/b/a;->boR:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    iget v2, p4, Lcom/layer/atlas/b/a$b;->maxWidth:I

    iget v3, p4, Lcom/layer/atlas/b/a$b;->maxWidth:I

    int-to-double v4, v3

    sget-wide v6, Lcom/layer/atlas/b/b/a;->boR:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    iget v4, p4, Lcom/layer/atlas/b/a$b;->maxWidth:I

    iget v5, p4, Lcom/layer/atlas/b/a$b;->maxHeight:I

    invoke-static {v2, v3, v4, v5}, Lcom/layer/atlas/util/c;->i(IIII)[I

    move-result-object v2

    iget-object v3, p1, Lcom/layer/atlas/b/b/a$a;->boV:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    aget v4, v2, v8

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    aget v4, v2, v9

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p1, Lcom/layer/atlas/b/b/a$a;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v3}, Landroid/support/v4/widget/ContentLoadingProgressBar;->show()V

    iget-object v3, p0, Lcom/layer/atlas/b/b/a;->bmA:Lcom/c/a/t;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://maps.googleapis.com/maps/api/staticmap?zoom=16&maptype=roadmap&scale=2&center="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p2, Lcom/layer/atlas/b/b/a$b;->boX:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p2, Lcom/layer/atlas/b/b/a$b;->boY:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&markers=color:red%7C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p2, Lcom/layer/atlas/b/b/a$b;->boX:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p2, Lcom/layer/atlas/b/b/a$b;->boY:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/c/a/t;->dO(Ljava/lang/String;)Lcom/c/a/x;

    move-result-object v0

    sget-object v1, Lcom/layer/atlas/b/b/a;->boP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/c/a/x;->al(Ljava/lang/Object;)Lcom/c/a/x;

    move-result-object v0

    sget v1, Lcom/layer/atlas/b/b/a;->boQ:I

    invoke-virtual {v0, v1}, Lcom/c/a/x;->ee(I)Lcom/c/a/x;

    move-result-object v0

    aget v1, v2, v8

    aget v2, v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/c/a/x;->aE(II)Lcom/c/a/x;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/atlas/b/b/a;->boS:Lcom/c/a/ae;

    invoke-virtual {v0, v1}, Lcom/c/a/x;->a(Lcom/c/a/ae;)Lcom/c/a/x;

    move-result-object v0

    iget-object v1, p1, Lcom/layer/atlas/b/b/a$a;->boV:Landroid/widget/ImageView;

    new-instance v2, Lcom/layer/atlas/b/b/a$1;

    invoke-direct {v2, p0, p1}, Lcom/layer/atlas/b/b/a$1;-><init>(Lcom/layer/atlas/b/b/a;Lcom/layer/atlas/b/b/a$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/c/a/x;->a(Landroid/widget/ImageView;Lcom/c/a/e;)V

    return-void
.end method

.method public final a(Lcom/layer/sdk/messaging/Message;)Z
    .locals 1

    invoke-static {p1}, Lcom/layer/atlas/b/b/a;->d(Lcom/layer/sdk/messaging/Message;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lcom/layer/sdk/messaging/Message;)Lcom/layer/atlas/b/a$c;
    .locals 1

    invoke-static {p1}, Lcom/layer/atlas/b/b/a;->e(Lcom/layer/sdk/messaging/Message;)Lcom/layer/atlas/b/b/a$b;

    move-result-object v0

    return-object v0
.end method

.method public final bJ(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/layer/atlas/b/b/a;->bmA:Lcom/c/a/t;

    sget-object v1, Lcom/layer/atlas/b/b/a;->boP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/c/a/t;->ai(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/layer/atlas/b/b/a;->bmA:Lcom/c/a/t;

    sget-object v1, Lcom/layer/atlas/b/b/a;->boP:Ljava/lang/String;

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
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/b/b/a$b;

    iget-object v1, v0, Lcom/layer/atlas/b/b/a$b;->boZ:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "Shared Marker"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "geo:0,0?q="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/layer/atlas/b/b/a$b;->boX:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/layer/atlas/b/b/a$b;->boY:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")&z=16"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/layer/atlas/b/b/a$b;->boZ:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
