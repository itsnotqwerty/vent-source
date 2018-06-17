.class public final enum Lcom/layer/sdk/internal/lsdki/d$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdki/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdki/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdki/d$b;

.field public static final enum b:Lcom/layer/sdk/internal/lsdki/d$b;

.field public static final enum c:Lcom/layer/sdk/internal/lsdki/d$b;

.field public static final enum d:Lcom/layer/sdk/internal/lsdki/d$b;

.field public static final enum e:Lcom/layer/sdk/internal/lsdki/d$b;

.field public static final enum f:Lcom/layer/sdk/internal/lsdki/d$b;

.field public static final enum g:Lcom/layer/sdk/internal/lsdki/d$b;

.field public static final enum h:Lcom/layer/sdk/internal/lsdki/d$b;

.field public static final enum i:Lcom/layer/sdk/internal/lsdki/d$b;

.field public static final enum j:Lcom/layer/sdk/internal/lsdki/d$b;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/sdk/internal/lsdki/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic m:[Lcom/layer/sdk/internal/lsdki/d$b;


# instance fields
.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$b;

    const-string v1, "IDENTITY_DISPLAY_NAME"

    const-string v2, "display_name"

    invoke-direct {v0, v1, v4, v2}, Lcom/layer/sdk/internal/lsdki/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->a:Lcom/layer/sdk/internal/lsdki/d$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$b;

    const-string v1, "IDENTITY_FIRST_NAME"

    const-string v2, "first_name"

    invoke-direct {v0, v1, v5, v2}, Lcom/layer/sdk/internal/lsdki/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->b:Lcom/layer/sdk/internal/lsdki/d$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$b;

    const-string v1, "IDENTITY_LAST_NAME"

    const-string v2, "last_name"

    invoke-direct {v0, v1, v6, v2}, Lcom/layer/sdk/internal/lsdki/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->c:Lcom/layer/sdk/internal/lsdki/d$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$b;

    const-string v1, "IDENTITY_EMAIL_ADDRESS"

    const-string v2, "email_address"

    invoke-direct {v0, v1, v7, v2}, Lcom/layer/sdk/internal/lsdki/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->d:Lcom/layer/sdk/internal/lsdki/d$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$b;

    const-string v1, "IDENTITY_PHONE_NUMBER"

    const-string v2, "phone_number"

    invoke-direct {v0, v1, v8, v2}, Lcom/layer/sdk/internal/lsdki/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->e:Lcom/layer/sdk/internal/lsdki/d$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$b;

    const-string v1, "IDENTITY_AVATAR_IMAGE_URL"

    const/4 v2, 0x5

    const-string v3, "avatar_image_url"

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->f:Lcom/layer/sdk/internal/lsdki/d$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$b;

    const-string v1, "IDENTITY_PUBLIC_KEY"

    const/4 v2, 0x6

    const-string v3, "public_key"

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->g:Lcom/layer/sdk/internal/lsdki/d$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$b;

    const-string v1, "IDENTITY_FOLLOWED"

    const/4 v2, 0x7

    const-string v3, "followed"

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->h:Lcom/layer/sdk/internal/lsdki/d$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$b;

    const-string v1, "PRESENCE_STATUS"

    const/16 v2, 0x8

    const-string v3, "status"

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->i:Lcom/layer/sdk/internal/lsdki/d$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$b;

    const-string v1, "PRESENCE_LAST_SEEN_AT"

    const/16 v2, 0x9

    const-string v3, "last_seen_at"

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->j:Lcom/layer/sdk/internal/lsdki/d$b;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdki/d$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$b;->a:Lcom/layer/sdk/internal/lsdki/d$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$b;->b:Lcom/layer/sdk/internal/lsdki/d$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$b;->c:Lcom/layer/sdk/internal/lsdki/d$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$b;->d:Lcom/layer/sdk/internal/lsdki/d$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$b;->e:Lcom/layer/sdk/internal/lsdki/d$b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$b;->f:Lcom/layer/sdk/internal/lsdki/d$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$b;->g:Lcom/layer/sdk/internal/lsdki/d$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$b;->h:Lcom/layer/sdk/internal/lsdki/d$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$b;->i:Lcom/layer/sdk/internal/lsdki/d$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$b;->j:Lcom/layer/sdk/internal/lsdki/d$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->m:[Lcom/layer/sdk/internal/lsdki/d$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->l:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/d$b;->k:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdki/d$b;
    .locals 6

    sget-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/d$b;->values()[Lcom/layer/sdk/internal/lsdki/d$b;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/layer/sdk/internal/lsdki/d$b;->l:Ljava/util/Map;

    iget-object v5, v3, Lcom/layer/sdk/internal/lsdki/d$b;->k:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->l:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/d$b;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdki/d$b;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/d$b;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdki/d$b;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/d$b;->m:[Lcom/layer/sdk/internal/lsdki/d$b;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdki/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdki/d$b;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/d$b;->k:Ljava/lang/String;

    return-object v0
.end method
