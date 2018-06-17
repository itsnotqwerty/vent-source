.class public final Lcom/layer/atlas/AtlasAvatar;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/atlas/AtlasAvatar$a;,
        Lcom/layer/atlas/AtlasAvatar$b;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final bmt:Lcom/c/a/ae;

.field private static final bmu:Lcom/c/a/ae;

.field private static final bmv:Landroid/graphics/Paint;

.field private static final bmw:Landroid/graphics/Paint;


# instance fields
.field public bmA:Lcom/c/a/t;

.field private bmB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;"
        }
    .end annotation
.end field

.field private final bmC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            "Lcom/layer/atlas/AtlasAvatar$b;",
            ">;"
        }
    .end annotation
.end field

.field private final bmD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bmE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layer/atlas/AtlasAvatar$b;",
            ">;"
        }
    .end annotation
.end field

.field private bmF:F

.field private bmG:F

.field private bmH:F

.field private bmI:F

.field private bmJ:F

.field private bmK:F

.field private bmL:F

.field private final bmM:Landroid/graphics/RectF;

.field public final bmx:Landroid/graphics/Paint;

.field public final bmy:Landroid/graphics/Paint;

.field public final bmz:Landroid/graphics/Paint;

.field private final jU:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    const-class v0, Lcom/layer/atlas/AtlasAvatar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layer/atlas/AtlasAvatar;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/layer/atlas/util/b/b/a;

    invoke-direct {v0, v1}, Lcom/layer/atlas/util/b/b/a;-><init>(F)V

    sput-object v0, Lcom/layer/atlas/AtlasAvatar;->bmt:Lcom/c/a/ae;

    new-instance v0, Lcom/layer/atlas/util/b/b/a;

    invoke-direct {v0, v1}, Lcom/layer/atlas/util/b/b/a;-><init>(F)V

    sput-object v0, Lcom/layer/atlas/AtlasAvatar;->bmu:Lcom/c/a/ae;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/layer/atlas/AtlasAvatar;->bmv:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/layer/atlas/AtlasAvatar;->bmw:Landroid/graphics/Paint;

    sget-object v0, Lcom/layer/atlas/AtlasAvatar;->bmv:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    sget-object v0, Lcom/layer/atlas/AtlasAvatar;->bmv:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/layer/atlas/AtlasAvatar;->bmw:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    sget-object v0, Lcom/layer/atlas/AtlasAvatar;->bmw:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmx:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmy:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmz:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmB:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmC:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmD:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmE:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->jU:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmM:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmx:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmy:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmz:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmB:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmC:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmD:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmE:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->jU:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmM:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmx:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmy:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmz:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmB:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmC:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmD:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmE:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->jU:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmM:Landroid/graphics/RectF;

    return-void
.end method

.method private static a(Ljava/util/Set;Ljava/util/Set;)Lcom/layer/atlas/AtlasAvatar$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;)",
            "Lcom/layer/atlas/AtlasAvatar$a;"
        }
    .end annotation

    new-instance v1, Lcom/layer/atlas/AtlasAvatar$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/layer/atlas/AtlasAvatar$a;-><init>(B)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/layer/atlas/AtlasAvatar$a;->bmN:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/layer/atlas/AtlasAvatar$a;->bmP:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/layer/atlas/AtlasAvatar$a;->bmO:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private update()V
    .locals 8

    const/4 v7, 0x3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmB:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v7, :cond_4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmB:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getAvatarImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmB:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_3

    iget-object v5, p0, Lcom/layer/atlas/AtlasAvatar;->bmB:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v0, v2

    :goto_2
    if-ge v0, v3, :cond_4

    iget-object v4, p0, Lcom/layer/atlas/AtlasAvatar;->bmB:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmD:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/atlas/AtlasAvatar;->bmB:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/layer/atlas/AtlasAvatar;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/layer/atlas/AtlasAvatar$a;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v3, Lcom/layer/atlas/AtlasAvatar$a;->bmP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    iget-object v6, p0, Lcom/layer/atlas/AtlasAvatar;->bmD:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/layer/atlas/AtlasAvatar;->bmC:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/AtlasAvatar$b;

    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/layer/atlas/AtlasAvatar;->bmA:Lcom/c/a/t;

    invoke-virtual {v6, v0}, Lcom/c/a/t;->ak(Ljava/lang/Object;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v0, v3, Lcom/layer/atlas/AtlasAvatar$a;->bmO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    if-nez v0, :cond_7

    :goto_5
    return-void

    :cond_7
    iget-object v1, p0, Lcom/layer/atlas/AtlasAvatar;->bmD:Ljava/util/Map;

    invoke-static {v0}, Lcom/layer/atlas/util/c;->a(Lcom/layer/sdk/messaging/Identity;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/layer/atlas/AtlasAvatar$b;

    invoke-direct {v1, p0}, Lcom/layer/atlas/AtlasAvatar$b;-><init>(Lcom/layer/atlas/AtlasAvatar;)V

    :goto_6
    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getAvatarImageUrl()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/layer/atlas/AtlasAvatar$b;->bmS:Ljava/lang/String;

    iget-object v7, p0, Lcom/layer/atlas/AtlasAvatar;->bmC:Ljava/util/Map;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/atlas/AtlasAvatar$b;

    goto :goto_6

    :cond_9
    iget-object v0, v3, Lcom/layer/atlas/AtlasAvatar$a;->bmN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/layer/atlas/AtlasAvatar;->bmD:Ljava/util/Map;

    invoke-static {v0}, Lcom/layer/atlas/util/c;->a(Lcom/layer/sdk/messaging/Identity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/layer/atlas/AtlasAvatar;->bmC:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/AtlasAvatar$b;

    iget-object v2, p0, Lcom/layer/atlas/AtlasAvatar;->bmA:Lcom/c/a/t;

    invoke-virtual {v2, v0}, Lcom/c/a/t;->ak(Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/AtlasAvatar$b;

    iget-object v2, p0, Lcom/layer/atlas/AtlasAvatar;->bmA:Lcom/c/a/t;

    invoke-virtual {v2, v0}, Lcom/c/a/t;->ak(Ljava/lang/Object;)V

    goto :goto_8

    :cond_c
    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmE:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/layer/atlas/AtlasAvatar;->wb()Z

    goto :goto_5
.end method

.method private wb()Z
    .locals 15

    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmD:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/layer/atlas/AtlasAvatar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eq v10, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/layer/atlas/AtlasAvatar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/layer/atlas/AtlasAvatar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/layer/atlas/AtlasAvatar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/layer/atlas/AtlasAvatar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v3, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/layer/atlas/AtlasAvatar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x1

    if-le v10, v1, :cond_4

    const v1, 0x3f266666    # 0.65f

    :goto_2
    mul-float v6, v1, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iput v6, p0, Lcom/layer/atlas/AtlasAvatar;->bmF:F

    iget v6, p0, Lcom/layer/atlas/AtlasAvatar;->bmF:F

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v5, v7

    sub-float v5, v6, v5

    iput v5, p0, Lcom/layer/atlas/AtlasAvatar;->bmG:F

    iget v5, p0, Lcom/layer/atlas/AtlasAvatar;->bmG:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    iput v5, p0, Lcom/layer/atlas/AtlasAvatar;->bmL:F

    invoke-virtual {p0}, Lcom/layer/atlas/AtlasAvatar;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/layer/atlas/AtlasAvatar;->bmF:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/layer/atlas/AtlasAvatar;->bmH:F

    invoke-virtual {p0}, Lcom/layer/atlas/AtlasAvatar;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/layer/atlas/AtlasAvatar;->bmF:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/layer/atlas/AtlasAvatar;->bmI:F

    mul-float/2addr v1, v4

    int-to-float v2, v2

    sub-float/2addr v2, v1

    add-int/lit8 v4, v10, -0x1

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, p0, Lcom/layer/atlas/AtlasAvatar;->bmJ:F

    int-to-float v2, v3

    sub-float v1, v2, v1

    add-int/lit8 v2, v10, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/layer/atlas/AtlasAvatar;->bmK:F

    iget-object v11, p0, Lcom/layer/atlas/AtlasAvatar;->bmE:Ljava/util/List;

    monitor-enter v11

    :try_start_0
    iget-object v1, p0, Lcom/layer/atlas/AtlasAvatar;->bmE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmG:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layer/atlas/AtlasAvatar$b;

    iget-object v0, v2, Lcom/layer/atlas/AtlasAvatar$b;->bmS:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v1, p0, Lcom/layer/atlas/AtlasAvatar;->bmA:Lcom/c/a/t;

    invoke-virtual {v1, v0}, Lcom/c/a/t;->dO(Ljava/lang/String;)Lcom/c/a/x;

    move-result-object v0

    sget-object v1, Lcom/layer/atlas/AtlasAvatar;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/c/a/x;->al(Ljava/lang/Object;)Lcom/c/a/x;

    move-result-object v0

    iget v1, v0, Lcom/c/a/x;->bOU:I

    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder resource already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_5
    :try_start_1
    iget v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmF:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/c/a/x;->bOV:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/c/a/x;->bOT:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/c/a/x;->bMI:Z

    iget-object v1, v0, Lcom/c/a/x;->bOR:Lcom/c/a/w$a;

    iget-boolean v3, v1, Lcom/c/a/w$a;->bOJ:Z

    if-eqz v3, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop can not be used after calling centerInside"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/c/a/w$a;->bOI:Z

    invoke-virtual {v0, v12, v12}, Lcom/c/a/x;->aE(II)Lcom/c/a/x;

    move-result-object v1

    const/4 v0, 0x1

    if-le v10, v0, :cond_9

    sget-object v0, Lcom/layer/atlas/AtlasAvatar;->bmu:Lcom/c/a/ae;

    :goto_5
    invoke-virtual {v1, v0}, Lcom/c/a/x;->a(Lcom/c/a/ae;)Lcom/c/a/x;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {}, Lcom/c/a/ag;->AC()V

    if-nez v2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    sget-object v0, Lcom/layer/atlas/AtlasAvatar;->bmt:Lcom/c/a/ae;

    goto :goto_5

    :cond_a
    iget-boolean v3, v14, Lcom/c/a/x;->bOS:Z

    if-eqz v3, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with a Target."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v3, v14, Lcom/c/a/x;->bOR:Lcom/c/a/w$a;

    invoke-virtual {v3}, Lcom/c/a/w$a;->Az()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v0, v14, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    invoke-virtual {v0, v2}, Lcom/c/a/t;->ak(Ljava/lang/Object;)V

    iget-boolean v0, v14, Lcom/c/a/x;->bOT:Z

    if-eqz v0, :cond_c

    invoke-virtual {v14}, Lcom/c/a/x;->AA()Landroid/graphics/drawable/Drawable;

    :cond_c
    invoke-interface {v2}, Lcom/c/a/ac;->wd()V

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v14, v0, v1}, Lcom/c/a/x;->R(J)Lcom/c/a/w;

    move-result-object v3

    invoke-static {v3}, Lcom/c/a/ag;->e(Lcom/c/a/w;)Ljava/lang/String;

    move-result-object v7

    iget v0, v14, Lcom/c/a/x;->bMJ:I

    invoke-static {v0}, Lcom/c/a/p;->dY(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v14, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    invoke-virtual {v0, v7}, Lcom/c/a/t;->dP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v14, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    invoke-virtual {v1, v2}, Lcom/c/a/t;->ak(Ljava/lang/Object;)V

    sget-object v1, Lcom/c/a/t$d;->bOn:Lcom/c/a/t$d;

    invoke-interface {v2, v0}, Lcom/c/a/ac;->b(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_e
    iget-boolean v0, v14, Lcom/c/a/x;->bOT:Z

    if-eqz v0, :cond_f

    invoke-virtual {v14}, Lcom/c/a/x;->AA()Landroid/graphics/drawable/Drawable;

    :cond_f
    invoke-interface {v2}, Lcom/c/a/ac;->wd()V

    new-instance v0, Lcom/c/a/ad;

    iget-object v1, v14, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    iget v4, v14, Lcom/c/a/x;->bMJ:I

    iget v5, v14, Lcom/c/a/x;->bMK:I

    iget-object v6, v14, Lcom/c/a/x;->bMM:Landroid/graphics/drawable/Drawable;

    iget-object v8, v14, Lcom/c/a/x;->tag:Ljava/lang/Object;

    iget v9, v14, Lcom/c/a/x;->bML:I

    invoke-direct/range {v0 .. v9}, Lcom/c/a/ad;-><init>(Lcom/c/a/t;Lcom/c/a/ac;Lcom/c/a/w;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object v1, v14, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    invoke-virtual {v1, v0}, Lcom/c/a/t;->c(Lcom/c/a/a;)V

    goto/16 :goto_4

    :cond_10
    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_11
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public final varargs a([Lcom/layer/sdk/messaging/Identity;)Lcom/layer/atlas/AtlasAvatar;
    .locals 2

    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmB:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmB:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/layer/atlas/AtlasAvatar;->update()V

    return-object p0
.end method

.method public final e(Ljava/util/Set;)Lcom/layer/atlas/AtlasAvatar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;)",
            "Lcom/layer/atlas/AtlasAvatar;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmB:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmB:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/layer/atlas/AtlasAvatar;->update()V

    return-object p0
.end method

.method public final getParticipants()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/layer/atlas/AtlasAvatar;->bmB:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmD:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lcom/layer/atlas/AtlasAvatar;->bmv:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eq v8, v6, :cond_3

    move v5, v6

    :goto_0
    if-eqz v5, :cond_4

    iget v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmG:F

    move v2, v0

    :goto_1
    iget v1, p0, Lcom/layer/atlas/AtlasAvatar;->bmH:F

    iget v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmI:F

    iget-object v3, p0, Lcom/layer/atlas/AtlasAvatar;->bmM:Landroid/graphics/RectF;

    sub-float v4, v1, v2

    sub-float v6, v0, v2

    add-float v8, v1, v2

    add-float v9, v0, v2

    invoke-virtual {v3, v4, v6, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lcom/layer/atlas/AtlasAvatar;->bmD:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v0

    move v4, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v5, :cond_2

    iget v1, p0, Lcom/layer/atlas/AtlasAvatar;->bmF:F

    iget-object v8, p0, Lcom/layer/atlas/AtlasAvatar;->bmy:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v1, p0, Lcom/layer/atlas/AtlasAvatar;->bmC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/atlas/AtlasAvatar$b;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/layer/atlas/AtlasAvatar;->bmx:Landroid/graphics/Paint;

    iget v8, p0, Lcom/layer/atlas/AtlasAvatar;->bmL:F

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/layer/atlas/AtlasAvatar;->bmx:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Lcom/layer/atlas/AtlasAvatar;->jU:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v7, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/layer/atlas/AtlasAvatar;->bmz:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/layer/atlas/AtlasAvatar;->jU:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v4, v1

    iget-object v8, p0, Lcom/layer/atlas/AtlasAvatar;->jU:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v3, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/layer/atlas/AtlasAvatar;->bmx:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    iget v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmJ:F

    add-float v1, v4, v0

    iget v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmK:F

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/layer/atlas/AtlasAvatar;->bmM:Landroid/graphics/RectF;

    iget v4, p0, Lcom/layer/atlas/AtlasAvatar;->bmJ:F

    iget v8, p0, Lcom/layer/atlas/AtlasAvatar;->bmK:F

    invoke-virtual {v3, v4, v8}, Landroid/graphics/RectF;->offset(FF)V

    move v3, v0

    move v4, v1

    goto :goto_2

    :cond_3
    move v5, v7

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmF:F

    move v2, v0

    goto/16 :goto_1

    :cond_5
    iget-object v1, v1, Lcom/layer/atlas/AtlasAvatar$b;->bmT:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar;->bmM:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/layer/atlas/AtlasAvatar;->bmM:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sget-object v9, Lcom/layer/atlas/AtlasAvatar;->bmw:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/layer/atlas/AtlasAvatar;->wb()Z

    goto :goto_0
.end method
