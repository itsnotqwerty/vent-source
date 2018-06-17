.class public final enum Lcom/layer/sdk/internal/lsdkd/m$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdkd/m$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdkd/m$a;

.field public static final enum b:Lcom/layer/sdk/internal/lsdkd/m$a;

.field public static final enum c:Lcom/layer/sdk/internal/lsdkd/m$a;

.field public static final enum d:Lcom/layer/sdk/internal/lsdkd/m$a;

.field public static final enum e:Lcom/layer/sdk/internal/lsdkd/m$a;

.field public static final enum f:Lcom/layer/sdk/internal/lsdkd/m$a;

.field public static final enum g:Lcom/layer/sdk/internal/lsdkd/m$a;

.field public static final enum h:Lcom/layer/sdk/internal/lsdkd/m$a;

.field public static final enum i:Lcom/layer/sdk/internal/lsdkd/m$a;

.field private static final synthetic m:[Lcom/layer/sdk/internal/lsdkd/m$a;


# instance fields
.field private final j:Ljava/lang/String;

.field private final k:Ljava/util/regex/Pattern;

.field private final l:Lcom/layer/sdk/messaging/LayerObject$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x2

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/m$a;

    const-string v1, "APP_PRODUCTION"

    const-string v3, "apps/production/*"

    const-string v4, "^layer:///apps/production/([0-9a-f]{8}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{12})$"

    invoke-static {v4, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/m$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Lcom/layer/sdk/messaging/LayerObject$Type;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/m$a;->a:Lcom/layer/sdk/internal/lsdkd/m$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/m$a;

    const-string v4, "APP_STAGING"

    const-string v6, "apps/staging/*"

    const-string v0, "^layer:///apps/staging/([0-9a-f]{8}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{12})$"

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v8, 0x0

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/m$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Lcom/layer/sdk/messaging/LayerObject$Type;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/m$a;->b:Lcom/layer/sdk/internal/lsdkd/m$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/m$a;

    const-string v4, "CONVERSATION"

    const-string v6, "conversations/*"

    const-string v0, "^layer:///conversations/([0-9a-f]{8}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{12})$"

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    sget-object v8, Lcom/layer/sdk/messaging/LayerObject$Type;->CONVERSATION:Lcom/layer/sdk/messaging/LayerObject$Type;

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/m$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Lcom/layer/sdk/messaging/LayerObject$Type;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/m$a;->c:Lcom/layer/sdk/internal/lsdkd/m$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/m$a;

    const-string v4, "MESSAGE"

    const-string v6, "messages/*"

    const-string v0, "^layer:///messages/([0-9a-f]{8}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{12})$"

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    sget-object v8, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE:Lcom/layer/sdk/messaging/LayerObject$Type;

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/m$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Lcom/layer/sdk/messaging/LayerObject$Type;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/m$a;->d:Lcom/layer/sdk/internal/lsdkd/m$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/m$a;

    const-string v4, "MESSAGE_PARTS"

    const-string v6, "messages/*/parts/#"

    const-string v0, "^layer:///messages/([0-9a-f]{8}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{12})/parts/([0-9]+)$"

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    sget-object v8, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE_PART:Lcom/layer/sdk/messaging/LayerObject$Type;

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/m$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Lcom/layer/sdk/messaging/LayerObject$Type;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/m$a;->e:Lcom/layer/sdk/internal/lsdkd/m$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/m$a;

    const-string v4, "ANNOUNCEMENT"

    const/4 v5, 0x5

    const-string v6, "announcements/*"

    const-string v0, "^layer:///announcements/([0-9a-f]{8}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{12})$"

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    sget-object v8, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE:Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/m$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Lcom/layer/sdk/messaging/LayerObject$Type;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/m$a;->f:Lcom/layer/sdk/internal/lsdkd/m$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/m$a;

    const-string v4, "ANNOUNCEMENT_PARTS"

    const/4 v5, 0x6

    const-string v6, "announcements/*/parts/#"

    const-string v0, "^layer:///announcements/([0-9a-f]{8}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{12})/parts/([0-9]+)$"

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    sget-object v8, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE_PART:Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/m$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Lcom/layer/sdk/messaging/LayerObject$Type;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/m$a;->g:Lcom/layer/sdk/internal/lsdkd/m$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/m$a;

    const-string v4, "IDENTITY"

    const/4 v5, 0x7

    const-string v6, "identities/*"

    const-string v0, "^layer:///identities/([0-9a-f]{8}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{12})$"

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    sget-object v8, Lcom/layer/sdk/messaging/LayerObject$Type;->IDENTITY:Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/m$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Lcom/layer/sdk/messaging/LayerObject$Type;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/m$a;->h:Lcom/layer/sdk/internal/lsdkd/m$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/m$a;

    const-string v4, "SERVER_MESSAGE"

    const/16 v5, 0x8

    const-string v6, "conversations/*/messages/#"

    const-string v0, "^layer:///conversations/([0-9a-f]{8}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{4}[-][0-9a-f]{12})/messages/([0-9]+)$"

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    sget-object v8, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE:Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/m$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Lcom/layer/sdk/messaging/LayerObject$Type;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/m$a;->i:Lcom/layer/sdk/internal/lsdkd/m$a;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkd/m$a;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/m$a;->a:Lcom/layer/sdk/internal/lsdkd/m$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/m$a;->b:Lcom/layer/sdk/internal/lsdkd/m$a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/m$a;->c:Lcom/layer/sdk/internal/lsdkd/m$a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/m$a;->d:Lcom/layer/sdk/internal/lsdkd/m$a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/m$a;->e:Lcom/layer/sdk/internal/lsdkd/m$a;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/m$a;->f:Lcom/layer/sdk/internal/lsdkd/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/m$a;->g:Lcom/layer/sdk/internal/lsdkd/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/m$a;->h:Lcom/layer/sdk/internal/lsdkd/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/m$a;->i:Lcom/layer/sdk/internal/lsdkd/m$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/m$a;->m:[Lcom/layer/sdk/internal/lsdkd/m$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Lcom/layer/sdk/messaging/LayerObject$Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Lcom/layer/sdk/messaging/LayerObject$Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkd/m$a;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkd/m$a;->k:Ljava/util/regex/Pattern;

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdkd/m$a;->l:Lcom/layer/sdk/messaging/LayerObject$Type;

    return-void
.end method

.method public static a(I)Lcom/layer/sdk/internal/lsdkd/m$a;
    .locals 2

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/m$a;->values()[Lcom/layer/sdk/internal/lsdkd/m$a;

    move-result-object v0

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/m$a;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkd/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/m$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdkd/m$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/m$a;->m:[Lcom/layer/sdk/internal/lsdkd/m$a;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdkd/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdkd/m$a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/m$a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/m$a;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final b()Lcom/layer/sdk/messaging/LayerObject$Type;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/m$a;->l:Lcom/layer/sdk/messaging/LayerObject$Type;

    return-object v0
.end method

.method public final c()I
    .locals 1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/m$a;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
