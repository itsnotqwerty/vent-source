.class public final Lcom/layer/atlas/a/a;
.super Landroid/support/v7/widget/RecyclerView$a;

# interfaces
.implements Lcom/layer/sdk/query/RecyclerViewController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/atlas/a/a$f;,
        Lcom/layer/atlas/a/a$b;,
        Lcom/layer/atlas/a/a$d;,
        Lcom/layer/atlas/a/a$e;,
        Lcom/layer/atlas/a/a$c;,
        Lcom/layer/atlas/a/a$g;,
        Lcom/layer/atlas/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/layer/atlas/a/a$g;",
        ">;",
        "Lcom/layer/sdk/query/RecyclerViewController$Callback;"
    }
.end annotation


# static fields
.field public static final bnN:I

.field public static final bnO:I


# instance fields
.field public YZ:Landroid/support/v7/widget/RecyclerView;

.field protected final bmA:Lcom/c/a/t;

.field protected final bmU:Lcom/layer/sdk/LayerClient;

.field protected final bnA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/layer/atlas/b/a;",
            ">;"
        }
    .end annotation
.end field

.field protected final bnB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/layer/atlas/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field protected final bnC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/atlas/b/a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final bnD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/atlas/b/a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final bnE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/layer/atlas/a/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private final bnF:Ljava/text/DateFormat;

.field private final bnG:Ljava/text/DateFormat;

.field public bnH:Landroid/view/View;

.field public bnI:I

.field private bnJ:Ljava/lang/Integer;

.field public bnK:Z

.field public bnL:Z

.field public bnM:Lcom/layer/atlas/a/a$a;

.field public bno:Lcom/layer/atlas/b/d;

.field public final bnu:Lcom/layer/sdk/query/RecyclerViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layer/sdk/query/RecyclerViewController",
            "<",
            "Lcom/layer/sdk/messaging/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected final bnv:Landroid/os/Handler;

.field protected bnw:Lcom/layer/atlas/a/a$f;

.field protected final bnx:Landroid/util/DisplayMetrics;

.field private final bny:Lcom/layer/atlas/util/a;

.field protected bnz:I

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/layer/atlas/b$g;->atlas_message_item_me:I

    sput v0, Lcom/layer/atlas/a/a;->bnN:I

    sget v0, Lcom/layer/atlas/b$g;->atlas_message_item_them:I

    sput v0, Lcom/layer/atlas/a/a;->bnO:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/layer/sdk/LayerClient;Lcom/c/a/t;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput v2, p0, Lcom/layer/atlas/a/a;->bnz:I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/a/a;->bnA:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/a/a;->bnB:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/a/a;->bnC:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/a/a;->bnD:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/a/a;->bnE:Ljava/util/Map;

    iput v2, p0, Lcom/layer/atlas/a/a;->bnI:I

    iput-object p2, p0, Lcom/layer/atlas/a/a;->bmU:Lcom/layer/sdk/LayerClient;

    iput-object p3, p0, Lcom/layer/atlas/a/a;->bmA:Lcom/c/a/t;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/atlas/a/a;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/layer/atlas/a/a;->bnv:Landroid/os/Handler;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/atlas/a/a;->bnF:Ljava/text/DateFormat;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/atlas/a/a;->bnG:Ljava/text/DateFormat;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/atlas/a/a;->bnx:Landroid/util/DisplayMetrics;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layer/atlas/a/a;->bnK:Z

    iput-boolean v2, p0, Lcom/layer/atlas/a/a;->bnL:Z

    invoke-virtual {p2, v3, v3, p0}, Lcom/layer/sdk/LayerClient;->newRecyclerViewController(Lcom/layer/sdk/query/Query;Ljava/util/Collection;Lcom/layer/sdk/query/RecyclerViewController$Callback;)Lcom/layer/sdk/query/RecyclerViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/atlas/a/a;->bnu:Lcom/layer/sdk/query/RecyclerViewController;

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnu:Lcom/layer/sdk/query/RecyclerViewController;

    new-instance v1, Lcom/layer/atlas/a/a$1;

    invoke-direct {v1, p0}, Lcom/layer/atlas/a/a$1;-><init>(Lcom/layer/atlas/a/a;)V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/query/RecyclerViewController;->setPreProcessCallback(Lcom/layer/sdk/query/ListViewController$PreProcessCallback;)Lcom/layer/sdk/query/ListViewController;

    invoke-virtual {p0, v2}, Lcom/layer/atlas/a/a;->setHasStableIds(Z)V

    new-instance v0, Lcom/layer/atlas/util/a;

    invoke-direct {v0, p0}, Lcom/layer/atlas/util/a;-><init>(Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object v0, p0, Lcom/layer/atlas/a/a;->bny:Lcom/layer/atlas/util/a;

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bmU:Lcom/layer/sdk/LayerClient;

    iget-object v1, p0, Lcom/layer/atlas/a/a;->bny:Lcom/layer/atlas/util/a;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/LayerClient;->registerEventListener(Lcom/layer/sdk/listeners/LayerChangeEventListener;)Lcom/layer/sdk/LayerClient;

    return-void
.end method

.method private a(Lcom/layer/atlas/a/a$c;ILcom/layer/sdk/messaging/Message;)V
    .locals 10

    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/layer/atlas/a/a;->bnK:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnJ:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnJ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_5

    invoke-interface {p3}, Lcom/layer/sdk/messaging/Message;->getRecipientStatus()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/messaging/Identity;

    iget-object v8, p0, Lcom/layer/atlas/a/a;->bmU:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v8}, Lcom/layer/sdk/LayerClient;->getAuthenticatedUser()Lcom/layer/sdk/messaging/Identity;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/layer/atlas/a/a$3;->bnS:[I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Message$RecipientStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :pswitch_1
    move v0, v5

    goto :goto_1

    :cond_1
    if-lez v4, :cond_3

    iget-object v0, p1, Lcom/layer/atlas/a/a$c;->bod:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    iget-object v0, p1, Lcom/layer/atlas/a/a$c;->bod:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/layer/atlas/b$h;->atlas_message_item_read_muliple_participants:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->bod:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_2
    iget-object v0, p1, Lcom/layer/atlas/a/a$c;->bod:Landroid/widget/TextView;

    sget v1, Lcom/layer/atlas/b$i;->atlas_message_item_read:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p1, Lcom/layer/atlas/a/a$c;->bod:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/layer/atlas/a/a$c;->bod:Landroid/widget/TextView;

    sget v1, Lcom/layer/atlas/b$i;->atlas_message_item_delivered:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p1, Lcom/layer/atlas/a/a$c;->bod:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p1, Lcom/layer/atlas/a/a$c;->bod:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/layer/sdk/messaging/Message;I)V
    .locals 2

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnv:Landroid/os/Handler;

    new-instance v1, Lcom/layer/atlas/a/a$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/layer/atlas/a/a$2;-><init>(Lcom/layer/atlas/a/a;Lcom/layer/sdk/messaging/Message;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static a(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private dl(I)Lcom/layer/sdk/messaging/Message;
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnH:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/layer/atlas/a/a;->bnI:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnu:Lcom/layer/sdk/query/RecyclerViewController;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/query/RecyclerViewController;->getItem(I)Lcom/layer/sdk/query/Queryable;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Message;

    goto :goto_0
.end method

.method private wk()V
    .locals 2

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnJ:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/layer/atlas/a/a;->bnu:Lcom/layer/sdk/query/RecyclerViewController;

    invoke-virtual {v1}, Lcom/layer/sdk/query/RecyclerViewController;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/layer/atlas/a/a;->bnJ:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/layer/atlas/a/a;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/layer/atlas/a/a$f;)Lcom/layer/atlas/a/a;
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/a/a;->bnw:Lcom/layer/atlas/a/a$f;

    return-object p0
.end method

.method public final varargs a([Lcom/layer/atlas/b/a;)Lcom/layer/atlas/a/a;
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/layer/atlas/a/a;->bno:Lcom/layer/atlas/b/d;

    invoke-virtual {v2, v3}, Lcom/layer/atlas/b/a;->a(Lcom/layer/atlas/b/d;)V

    iget-object v3, p0, Lcom/layer/atlas/a/a;->bnA:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/layer/atlas/a/a;->bnz:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/layer/atlas/a/a;->bnz:I

    new-instance v3, Lcom/layer/atlas/a/a$b;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Lcom/layer/atlas/a/a$b;-><init>(ZLcom/layer/atlas/b/a;)V

    iget-object v4, p0, Lcom/layer/atlas/a/a;->bnB:Ljava/util/Map;

    iget v5, p0, Lcom/layer/atlas/a/a;->bnz:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/layer/atlas/a/a;->bnC:Ljava/util/Map;

    iget v4, p0, Lcom/layer/atlas/a/a;->bnz:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/layer/atlas/a/a;->bnz:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/layer/atlas/a/a;->bnz:I

    new-instance v3, Lcom/layer/atlas/a/a$b;

    invoke-direct {v3, v1, v2}, Lcom/layer/atlas/a/a$b;-><init>(ZLcom/layer/atlas/b/a;)V

    iget-object v4, p0, Lcom/layer/atlas/a/a;->bnB:Ljava/util/Map;

    iget v5, p0, Lcom/layer/atlas/a/a;->bnz:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/layer/atlas/a/a;->bnD:Ljava/util/Map;

    iget v4, p0, Lcom/layer/atlas/a/a;->bnz:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnu:Lcom/layer/sdk/query/RecyclerViewController;

    invoke-virtual {v0}, Lcom/layer/sdk/query/RecyclerViewController;->getItemCount()I

    move-result v1

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnH:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/layer/atlas/a/a;->bnH:Landroid/view/View;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/layer/atlas/a/a;->bnI:I

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/layer/atlas/a/a;->dl(I)Lcom/layer/sdk/messaging/Message;

    move-result-object v2

    iget-object v1, p0, Lcom/layer/atlas/a/a;->bmU:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v1}, Lcom/layer/sdk/LayerClient;->getAuthenticatedUser()Lcom/layer/sdk/messaging/Identity;

    move-result-object v1

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v2}, Lcom/layer/sdk/messaging/Message;->getSender()Lcom/layer/sdk/messaging/Identity;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnA:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/b/a;

    invoke-virtual {v0, v2}, Lcom/layer/atlas/b/a;->a(Lcom/layer/sdk/messaging/Message;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/layer/atlas/a/a;->bnC:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/layer/atlas/a/a;->bnD:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 13

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/16 v12, 0x8

    const/4 v4, 0x0

    check-cast p1, Lcom/layer/atlas/a/a$g;

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnu:Lcom/layer/sdk/query/RecyclerViewController;

    invoke-virtual {v0, p2}, Lcom/layer/sdk/query/RecyclerViewController;->updateBoundPosition(I)V

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnH:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/layer/atlas/a/a;->bnI:I

    if-ne p2, v0, :cond_2

    iget-object v0, p1, Lcom/layer/atlas/a/a$g;->boq:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnH:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnH:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/layer/atlas/a/a;->bnH:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p1, Lcom/layer/atlas/a/a$g;->boq:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/layer/atlas/a/a;->bnH:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    check-cast p1, Lcom/layer/atlas/a/a$c;

    invoke-direct {p0, p2}, Lcom/layer/atlas/a/a;->dl(I)Lcom/layer/sdk/messaging/Message;

    move-result-object v8

    if-eqz v8, :cond_1

    iput-object v8, p1, Lcom/layer/atlas/a/a$c;->bnV:Lcom/layer/sdk/messaging/Message;

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnB:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/layer/atlas/a/a$c;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/a/a$b;

    invoke-interface {v8}, Lcom/layer/sdk/messaging/Message;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/Conversation;->getParticipants()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    move v2, v3

    :goto_1
    iget-object v1, p0, Lcom/layer/atlas/a/a;->bnE:Ljava/util/Map;

    invoke-interface {v8}, Lcom/layer/sdk/messaging/Message;->getId()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/atlas/a/a$d;

    if-nez v1, :cond_1e

    new-instance v1, Lcom/layer/atlas/a/a$d;

    invoke-direct {v1, v4}, Lcom/layer/atlas/a/a$d;-><init>(B)V

    iget-object v6, p0, Lcom/layer/atlas/a/a;->bnE:Ljava/util/Map;

    invoke-interface {v8}, Lcom/layer/sdk/messaging/Message;->getId()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v1

    :goto_2
    add-int/lit8 v9, p2, -0x1

    if-ltz v9, :cond_a

    invoke-direct {p0, v9}, Lcom/layer/atlas/a/a;->dl(I)Lcom/layer/sdk/messaging/Message;

    move-result-object v1

    move-object v6, v1

    :goto_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/layer/sdk/messaging/Message;->getReceivedAt()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v8}, Lcom/layer/sdk/messaging/Message;->getReceivedAt()Ljava/util/Date;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/layer/atlas/a/a;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    iput-boolean v1, v7, Lcom/layer/atlas/a/a$d;->bog:Z

    invoke-static {v6, v8}, Lcom/layer/atlas/a/a$e;->a(Lcom/layer/sdk/messaging/Message;Lcom/layer/sdk/messaging/Message;)I

    move-result v1

    iput v1, v7, Lcom/layer/atlas/a/a$d;->boh:I

    iget-object v1, p0, Lcom/layer/atlas/a/a;->bnE:Ljava/util/Map;

    invoke-interface {v6}, Lcom/layer/sdk/messaging/Message;->getId()Landroid/net/Uri;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/atlas/a/a$d;

    if-nez v1, :cond_b

    new-instance v1, Lcom/layer/atlas/a/a$d;

    invoke-direct {v1, v4}, Lcom/layer/atlas/a/a$d;-><init>(B)V

    iget-object v9, p0, Lcom/layer/atlas/a/a;->bnE:Ljava/util/Map;

    invoke-interface {v6}, Lcom/layer/sdk/messaging/Message;->getId()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v9, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_4
    iget v6, v7, Lcom/layer/atlas/a/a$d;->boh:I

    iput v6, v1, Lcom/layer/atlas/a/a$d;->boj:I

    iget-boolean v6, v7, Lcom/layer/atlas/a/a$d;->bog:Z

    iput-boolean v6, v1, Lcom/layer/atlas/a/a$d;->boi:Z

    :cond_4
    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p0}, Lcom/layer/atlas/a/a;->getItemCount()I

    move-result v1

    if-ge v6, v1, :cond_5

    invoke-direct {p0, v6}, Lcom/layer/atlas/a/a;->dl(I)Lcom/layer/sdk/messaging/Message;

    move-result-object v1

    move-object v5, v1

    :cond_5
    if-eqz v5, :cond_7

    invoke-interface {v8}, Lcom/layer/sdk/messaging/Message;->getReceivedAt()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v5}, Lcom/layer/sdk/messaging/Message;->getReceivedAt()Ljava/util/Date;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/layer/atlas/a/a;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    iput-boolean v1, v7, Lcom/layer/atlas/a/a$d;->boi:Z

    invoke-static {v8, v5}, Lcom/layer/atlas/a/a$e;->a(Lcom/layer/sdk/messaging/Message;Lcom/layer/sdk/messaging/Message;)I

    move-result v1

    iput v1, v7, Lcom/layer/atlas/a/a$d;->boj:I

    iget-object v1, p0, Lcom/layer/atlas/a/a;->bnE:Ljava/util/Map;

    invoke-interface {v5}, Lcom/layer/sdk/messaging/Message;->getId()Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/atlas/a/a$d;

    if-nez v1, :cond_d

    new-instance v1, Lcom/layer/atlas/a/a$d;

    invoke-direct {v1, v4}, Lcom/layer/atlas/a/a$d;-><init>(B)V

    iget-object v6, p0, Lcom/layer/atlas/a/a;->bnE:Ljava/util/Map;

    invoke-interface {v5}, Lcom/layer/sdk/messaging/Message;->getId()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_5
    iget v5, v7, Lcom/layer/atlas/a/a$d;->boj:I

    iput v5, v1, Lcom/layer/atlas/a/a$d;->boh:I

    iget-boolean v5, v7, Lcom/layer/atlas/a/a$d;->boi:Z

    iput-boolean v5, v1, Lcom/layer/atlas/a/a$d;->bog:Z

    :cond_7
    iget v1, v7, Lcom/layer/atlas/a/a$d;->boh:I

    if-nez v1, :cond_f

    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->boa:Landroid/widget/Space;

    invoke-virtual {v1, v12}, Landroid/widget/Space;->setVisibility(I)V

    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->bnX:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_6
    iget-boolean v1, v0, Lcom/layer/atlas/a/a$b;->bnT:Z

    if-eqz v1, :cond_16

    invoke-direct {p0, p1, p2, v8}, Lcom/layer/atlas/a/a;->a(Lcom/layer/atlas/a/a$c;ILcom/layer/sdk/messaging/Message;)V

    invoke-interface {v8}, Lcom/layer/sdk/messaging/Message;->isSent()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->boc:Landroid/view/ViewGroup;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_7
    iget-object v4, p1, Lcom/layer/atlas/a/a$c;->boe:Lcom/layer/atlas/b/a$a;

    iput-object v8, v4, Lcom/layer/atlas/b/a$a;->bnV:Lcom/layer/sdk/messaging/Message;

    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->boc:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/layer/atlas/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    iget-object v5, p1, Lcom/layer/atlas/a/a$c;->boq:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p1, Lcom/layer/atlas/a/a$c;->boq:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v5

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v1

    if-nez v2, :cond_1d

    iget-boolean v1, v0, Lcom/layer/atlas/a/a$b;->bnT:Z

    if-nez v1, :cond_1d

    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->bob:Lcom/layer/atlas/AtlasAvatar;

    invoke-virtual {v1}, Lcom/layer/atlas/AtlasAvatar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    sub-int v1, v3, v1

    :goto_8
    const-wide v2, 0x3fe999999999999aL    # 0.8

    iget-object v5, p0, Lcom/layer/atlas/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-double v6, v5

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p1, Lcom/layer/atlas/a/a$c;->bof:Lcom/layer/atlas/b/a$b;

    iget-boolean v5, v0, Lcom/layer/atlas/a/a$b;->bnT:Z

    iput-boolean v5, v3, Lcom/layer/atlas/b/a$b;->bot:Z

    iget-object v3, p1, Lcom/layer/atlas/a/a$c;->bof:Lcom/layer/atlas/b/a$b;

    iput p2, v3, Lcom/layer/atlas/b/a$b;->position:I

    iget-object v3, p1, Lcom/layer/atlas/a/a$c;->bof:Lcom/layer/atlas/b/a$b;

    iput v1, v3, Lcom/layer/atlas/b/a$b;->maxWidth:I

    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->bof:Lcom/layer/atlas/b/a$b;

    iput v2, v1, Lcom/layer/atlas/b/a$b;->maxHeight:I

    iget-object v1, v0, Lcom/layer/atlas/a/a$b;->bnU:Lcom/layer/atlas/b/a;

    iget-object v0, v0, Lcom/layer/atlas/a/a$b;->bnU:Lcom/layer/atlas/b/a;

    invoke-virtual {v0, v8}, Lcom/layer/atlas/b/a;->c(Lcom/layer/sdk/messaging/Message;)Lcom/layer/atlas/b/a$c;

    move-result-object v0

    iget-object v2, p1, Lcom/layer/atlas/a/a$c;->bof:Lcom/layer/atlas/b/a$b;

    invoke-virtual {v1, v4, v0, v8, v2}, Lcom/layer/atlas/b/a;->a(Lcom/layer/atlas/b/a$a;Lcom/layer/atlas/b/a$c;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V

    goto/16 :goto_0

    :cond_9
    move v2, v4

    goto/16 :goto_1

    :cond_a
    move-object v6, v5

    goto/16 :goto_3

    :cond_b
    iget v10, v1, Lcom/layer/atlas/a/a$d;->boj:I

    iget v11, v7, Lcom/layer/atlas/a/a$d;->boh:I

    if-ne v10, v11, :cond_c

    iget-boolean v10, v1, Lcom/layer/atlas/a/a$d;->boi:Z

    iget-boolean v11, v7, Lcom/layer/atlas/a/a$d;->bog:Z

    if-eq v10, v11, :cond_3

    :cond_c
    invoke-direct {p0, v6, v9}, Lcom/layer/atlas/a/a;->a(Lcom/layer/sdk/messaging/Message;I)V

    goto/16 :goto_4

    :cond_d
    iget v9, v1, Lcom/layer/atlas/a/a$d;->boh:I

    iget v10, v7, Lcom/layer/atlas/a/a$d;->boj:I

    if-ne v9, v10, :cond_e

    iget-boolean v9, v1, Lcom/layer/atlas/a/a$d;->bog:Z

    iget-boolean v10, v7, Lcom/layer/atlas/a/a$d;->boi:Z

    if-eq v9, v10, :cond_6

    :cond_e
    invoke-direct {p0, v5, v6}, Lcom/layer/atlas/a/a;->a(Lcom/layer/sdk/messaging/Message;I)V

    goto/16 :goto_5

    :cond_f
    iget-boolean v1, v7, Lcom/layer/atlas/a/a$d;->bog:Z

    if-nez v1, :cond_10

    iget v1, v7, Lcom/layer/atlas/a/a$d;->boh:I

    sget v5, Lcom/layer/atlas/a/a$e;->bon:I

    if-ne v1, v5, :cond_12

    :cond_10
    invoke-interface {v8}, Lcom/layer/sdk/messaging/Message;->getReceivedAt()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_11

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    :cond_11
    iget-object v5, p1, Lcom/layer/atlas/a/a$c;->boc:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/layer/atlas/util/c;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/layer/atlas/a/a$c;->bnY:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/layer/atlas/a/a;->bnG:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p1, Lcom/layer/atlas/a/a$c;->bnZ:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->bnX:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->boa:Landroid/widget/Space;

    invoke-virtual {v1, v12}, Landroid/widget/Space;->setVisibility(I)V

    goto/16 :goto_6

    :cond_12
    iget v1, v7, Lcom/layer/atlas/a/a$d;->boh:I

    sget v5, Lcom/layer/atlas/a/a$e;->bol:I

    if-ne v1, v5, :cond_13

    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->boa:Landroid/widget/Space;

    invoke-virtual {v1, v12}, Landroid/widget/Space;->setVisibility(I)V

    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->bnX:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_13
    iget v1, v7, Lcom/layer/atlas/a/a$d;->boh:I

    sget v5, Lcom/layer/atlas/a/a$e;->bok:I

    if-eq v1, v5, :cond_14

    iget v1, v7, Lcom/layer/atlas/a/a$d;->boh:I

    sget v5, Lcom/layer/atlas/a/a$e;->bom:I

    if-ne v1, v5, :cond_8

    :cond_14
    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->boa:Landroid/widget/Space;

    invoke-virtual {v1, v4}, Landroid/widget/Space;->setVisibility(I)V

    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->bnX:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_15
    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->boc:Landroid/view/ViewGroup;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_7

    :cond_16
    :try_start_0
    invoke-interface {v8}, Lcom/layer/sdk/messaging/Message;->markAsRead()V
    :try_end_0
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    if-nez v2, :cond_19

    iget v1, v7, Lcom/layer/atlas/a/a$d;->boh:I

    if-eqz v1, :cond_17

    iget v1, v7, Lcom/layer/atlas/a/a$d;->boh:I

    sget v5, Lcom/layer/atlas/a/a$e;->bok:I

    if-ne v1, v5, :cond_19

    :cond_17
    invoke-interface {v8}, Lcom/layer/sdk/messaging/Message;->getSender()Lcom/layer/sdk/messaging/Identity;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v5, p1, Lcom/layer/atlas/a/a$c;->bnW:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/layer/atlas/util/c;->b(Lcom/layer/sdk/messaging/Identity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    iget-object v5, p1, Lcom/layer/atlas/a/a$c;->bnW:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/layer/atlas/a/a;->bny:Lcom/layer/atlas/util/a;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v5, p2, v1}, Lcom/layer/atlas/util/a;->a(ILjava/util/Set;)V

    :goto_b
    if-eqz v2, :cond_1a

    iget-boolean v1, p0, Lcom/layer/atlas/a/a;->bnL:Z

    if-nez v1, :cond_1a

    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->bob:Lcom/layer/atlas/AtlasAvatar;

    invoke-virtual {v1, v12}, Lcom/layer/atlas/AtlasAvatar;->setVisibility(I)V

    goto/16 :goto_7

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/layer/sdk/exceptions/LayerException;->printStackTrace()V

    goto :goto_9

    :cond_18
    iget-object v5, p1, Lcom/layer/atlas/a/a$c;->bnW:Landroid/widget/TextView;

    sget v6, Lcom/layer/atlas/b$i;->atlas_message_item_unknown_user:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a

    :cond_19
    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->bnW:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    :cond_1a
    iget v1, v7, Lcom/layer/atlas/a/a$d;->boj:I

    if-eqz v1, :cond_1b

    iget v1, v7, Lcom/layer/atlas/a/a$d;->boj:I

    sget v5, Lcom/layer/atlas/a/a$e;->bol:I

    if-eq v1, v5, :cond_1c

    :cond_1b
    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->bob:Lcom/layer/atlas/AtlasAvatar;

    invoke-virtual {v1, v4}, Lcom/layer/atlas/AtlasAvatar;->setVisibility(I)V

    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->bob:Lcom/layer/atlas/AtlasAvatar;

    new-array v3, v3, [Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v8}, Lcom/layer/sdk/messaging/Message;->getSender()Lcom/layer/sdk/messaging/Identity;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/layer/atlas/AtlasAvatar;->a([Lcom/layer/sdk/messaging/Identity;)Lcom/layer/atlas/AtlasAvatar;

    iget-object v1, p0, Lcom/layer/atlas/a/a;->bny:Lcom/layer/atlas/util/a;

    invoke-interface {v8}, Lcom/layer/sdk/messaging/Message;->getSender()Lcom/layer/sdk/messaging/Identity;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Lcom/layer/atlas/util/a;->a(ILjava/util/Set;)V

    goto/16 :goto_7

    :cond_1c
    iget-object v1, p1, Lcom/layer/atlas/a/a$c;->bob:Lcom/layer/atlas/AtlasAvatar;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/layer/atlas/AtlasAvatar;->setVisibility(I)V

    goto/16 :goto_7

    :cond_1d
    move v1, v3

    goto/16 :goto_8

    :cond_1e
    move-object v7, v1

    goto/16 :goto_2
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    new-instance v0, Lcom/layer/atlas/a/a$g;

    iget-object v1, p0, Lcom/layer/atlas/a/a;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/layer/atlas/a/a$g;->bop:I

    invoke-virtual {v1, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layer/atlas/a/a$g;-><init>(Landroid/view/View;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnB:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/a/a$b;

    iget-boolean v1, v0, Lcom/layer/atlas/a/a$b;->bnT:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/layer/atlas/a/a;->bnN:I

    :goto_1
    new-instance v2, Lcom/layer/atlas/a/a$c;

    iget-object v3, p0, Lcom/layer/atlas/a/a;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/layer/atlas/a/a;->bmA:Lcom/c/a/t;

    invoke-direct {v2, p0, v1, v3}, Lcom/layer/atlas/a/a$c;-><init>(Lcom/layer/atlas/a/a;Landroid/view/View;Lcom/c/a/t;)V

    iget-object v1, v0, Lcom/layer/atlas/a/a$b;->bnU:Lcom/layer/atlas/b/a;

    iget-object v3, v2, Lcom/layer/atlas/a/a$c;->boc:Landroid/view/ViewGroup;

    iget-boolean v0, v0, Lcom/layer/atlas/a/a$b;->bnT:Z

    iget-object v4, p0, Lcom/layer/atlas/a/a;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, v0, v4}, Lcom/layer/atlas/b/a;->a(Landroid/view/ViewGroup;ZLandroid/view/LayoutInflater;)Lcom/layer/atlas/b/a$a;

    move-result-object v0

    iput-object v0, v2, Lcom/layer/atlas/a/a$c;->boe:Lcom/layer/atlas/b/a$a;

    new-instance v0, Lcom/layer/atlas/b/a$b;

    invoke-direct {v0}, Lcom/layer/atlas/b/a$b;-><init>()V

    iput-object v0, v2, Lcom/layer/atlas/a/a$c;->bof:Lcom/layer/atlas/b/a$b;

    move-object v0, v2

    goto :goto_0

    :cond_1
    sget v1, Lcom/layer/atlas/a/a;->bnO:I

    goto :goto_1
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bmU:Lcom/layer/sdk/LayerClient;

    iget-object v1, p0, Lcom/layer/atlas/a/a;->bny:Lcom/layer/atlas/util/a;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/LayerClient;->unregisterEventListener(Lcom/layer/sdk/listeners/LayerChangeEventListener;)Lcom/layer/sdk/LayerClient;

    return-void
.end method

.method public final onQueryDataSetChanged(Lcom/layer/sdk/query/RecyclerViewController;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnu:Lcom/layer/sdk/query/RecyclerViewController;

    invoke-virtual {v0}, Lcom/layer/sdk/query/RecyclerViewController;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/layer/atlas/a/a;->bnI:I

    invoke-direct {p0}, Lcom/layer/atlas/a/a;->wk()V

    invoke-virtual {p0}, Lcom/layer/atlas/a/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final onQueryItemChanged(Lcom/layer/sdk/query/RecyclerViewController;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/layer/atlas/a/a;->notifyItemChanged(I)V

    return-void
.end method

.method public final onQueryItemInserted(Lcom/layer/sdk/query/RecyclerViewController;I)V
    .locals 2

    iget v0, p0, Lcom/layer/atlas/a/a;->bnI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/layer/atlas/a/a;->bnI:I

    invoke-direct {p0}, Lcom/layer/atlas/a/a;->wk()V

    invoke-virtual {p0, p2}, Lcom/layer/atlas/a/a;->notifyItemInserted(I)V

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnw:Lcom/layer/atlas/a/a$f;

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lcom/layer/atlas/a/a;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnw:Lcom/layer/atlas/a/a$f;

    invoke-direct {p0, p2}, Lcom/layer/atlas/a/a;->dl(I)Lcom/layer/sdk/messaging/Message;

    invoke-interface {v0}, Lcom/layer/atlas/a/a$f;->wh()V

    :cond_0
    return-void
.end method

.method public final onQueryItemMoved(Lcom/layer/sdk/query/RecyclerViewController;II)V
    .locals 0

    invoke-direct {p0}, Lcom/layer/atlas/a/a;->wk()V

    invoke-virtual {p0, p2, p3}, Lcom/layer/atlas/a/a;->notifyItemMoved(II)V

    return-void
.end method

.method public final onQueryItemRangeChanged(Lcom/layer/sdk/query/RecyclerViewController;II)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/layer/atlas/a/a;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final onQueryItemRangeInserted(Lcom/layer/sdk/query/RecyclerViewController;II)V
    .locals 3

    iget v0, p0, Lcom/layer/atlas/a/a;->bnI:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/layer/atlas/a/a;->bnI:I

    invoke-direct {p0}, Lcom/layer/atlas/a/a;->wk()V

    invoke-virtual {p0, p2, p3}, Lcom/layer/atlas/a/a;->notifyItemRangeInserted(II)V

    add-int v0, p2, p3

    iget-object v1, p0, Lcom/layer/atlas/a/a;->bnw:Lcom/layer/atlas/a/a$f;

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Lcom/layer/atlas/a/a;->getItemCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/layer/atlas/a/a;->bnw:Lcom/layer/atlas/a/a$f;

    invoke-direct {p0, v0}, Lcom/layer/atlas/a/a;->dl(I)Lcom/layer/sdk/messaging/Message;

    invoke-interface {v1}, Lcom/layer/atlas/a/a$f;->wh()V

    :cond_0
    return-void
.end method

.method public final onQueryItemRangeRemoved(Lcom/layer/sdk/query/RecyclerViewController;II)V
    .locals 1

    iget v0, p0, Lcom/layer/atlas/a/a;->bnI:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/layer/atlas/a/a;->bnI:I

    invoke-direct {p0}, Lcom/layer/atlas/a/a;->wk()V

    invoke-virtual {p0, p2, p3}, Lcom/layer/atlas/a/a;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final onQueryItemRemoved(Lcom/layer/sdk/query/RecyclerViewController;I)V
    .locals 1

    iget v0, p0, Lcom/layer/atlas/a/a;->bnI:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/layer/atlas/a/a;->bnI:I

    invoke-direct {p0}, Lcom/layer/atlas/a/a;->wk()V

    invoke-virtual {p0, p2}, Lcom/layer/atlas/a/a;->notifyItemRemoved(I)V

    return-void
.end method

.method public final refresh()V
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnu:Lcom/layer/sdk/query/RecyclerViewController;

    invoke-virtual {v0}, Lcom/layer/sdk/query/RecyclerViewController;->execute()Lcom/layer/sdk/query/ListViewController;

    return-void
.end method

.method public final wj()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/atlas/b/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/atlas/a/a;->bnA:Ljava/util/Set;

    return-object v0
.end method
