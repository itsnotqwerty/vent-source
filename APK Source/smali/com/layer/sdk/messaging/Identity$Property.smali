.class public final enum Lcom/layer/sdk/messaging/Identity$Property;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/layer/sdk/query/Queryable$Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/messaging/Identity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/messaging/Identity$Property;",
        ">;",
        "Lcom/layer/sdk/query/Queryable$Property;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/messaging/Identity$Property;

.field public static final enum AVATAR_IMAGE_URL:Lcom/layer/sdk/messaging/Identity$Property;

.field public static final enum DISPLAY_NAME:Lcom/layer/sdk/messaging/Identity$Property;

.field public static final enum EMAIL_ADDRESS:Lcom/layer/sdk/messaging/Identity$Property;

.field public static final enum FIRST_NAME:Lcom/layer/sdk/messaging/Identity$Property;

.field public static final enum FOLLOWED:Lcom/layer/sdk/messaging/Identity$Property;

.field public static final enum ID:Lcom/layer/sdk/messaging/Identity$Property;

.field public static final enum LAST_NAME:Lcom/layer/sdk/messaging/Identity$Property;

.field public static final enum LAST_SEEN_AT:Lcom/layer/sdk/messaging/Identity$Property;

.field public static final enum METADATA:Lcom/layer/sdk/messaging/Identity$Property;

.field public static final enum PHONE_NUMBER:Lcom/layer/sdk/messaging/Identity$Property;

.field public static final enum PRESENCE_STATUS:Lcom/layer/sdk/messaging/Identity$Property;

.field public static final enum PUBLIC_KEY:Lcom/layer/sdk/messaging/Identity$Property;

.field public static final enum USER_ID:Lcom/layer/sdk/messaging/Identity$Property;


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x7

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    new-instance v0, Lcom/layer/sdk/messaging/Identity$Property;

    const-string v1, "ID"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/layer/sdk/messaging/Identity$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Identity$Property;->ID:Lcom/layer/sdk/messaging/Identity$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Identity$Property;

    const-string v1, "USER_ID"

    invoke-direct {v0, v1, v5, v3, v4}, Lcom/layer/sdk/messaging/Identity$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Identity$Property;->USER_ID:Lcom/layer/sdk/messaging/Identity$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Identity$Property;

    const-string v1, "DISPLAY_NAME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/layer/sdk/messaging/Identity$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Identity$Property;->DISPLAY_NAME:Lcom/layer/sdk/messaging/Identity$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Identity$Property;

    const-string v1, "FIRST_NAME"

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/layer/sdk/messaging/Identity$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Identity$Property;->FIRST_NAME:Lcom/layer/sdk/messaging/Identity$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Identity$Property;

    const-string v1, "LAST_NAME"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/layer/sdk/messaging/Identity$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Identity$Property;->LAST_NAME:Lcom/layer/sdk/messaging/Identity$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Identity$Property;

    const-string v1, "PHONE_NUMBER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/sdk/messaging/Identity$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Identity$Property;->PHONE_NUMBER:Lcom/layer/sdk/messaging/Identity$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Identity$Property;

    const-string v1, "EMAIL_ADDRESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/layer/sdk/messaging/Identity$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Identity$Property;->EMAIL_ADDRESS:Lcom/layer/sdk/messaging/Identity$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Identity$Property;

    const-string v1, "AVATAR_IMAGE_URL"

    invoke-direct {v0, v1, v7, v3, v4}, Lcom/layer/sdk/messaging/Identity$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Identity$Property;->AVATAR_IMAGE_URL:Lcom/layer/sdk/messaging/Identity$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Identity$Property;

    const-string v1, "PUBLIC_KEY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/sdk/messaging/Identity$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Identity$Property;->PUBLIC_KEY:Lcom/layer/sdk/messaging/Identity$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Identity$Property;

    const-string v1, "FOLLOWED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/layer/sdk/messaging/Identity$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Identity$Property;->FOLLOWED:Lcom/layer/sdk/messaging/Identity$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Identity$Property;

    const-string v1, "METADATA"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/sdk/messaging/Identity$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Identity$Property;->METADATA:Lcom/layer/sdk/messaging/Identity$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Identity$Property;

    const-string v1, "PRESENCE_STATUS"

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/layer/sdk/messaging/Identity$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Identity$Property;->PRESENCE_STATUS:Lcom/layer/sdk/messaging/Identity$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Identity$Property;

    const-string v1, "LAST_SEEN_AT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v5, v7}, Lcom/layer/sdk/messaging/Identity$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Identity$Property;->LAST_SEEN_AT:Lcom/layer/sdk/messaging/Identity$Property;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/layer/sdk/messaging/Identity$Property;

    sget-object v1, Lcom/layer/sdk/messaging/Identity$Property;->ID:Lcom/layer/sdk/messaging/Identity$Property;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/messaging/Identity$Property;->USER_ID:Lcom/layer/sdk/messaging/Identity$Property;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/sdk/messaging/Identity$Property;->DISPLAY_NAME:Lcom/layer/sdk/messaging/Identity$Property;

    aput-object v2, v0, v1

    sget-object v1, Lcom/layer/sdk/messaging/Identity$Property;->FIRST_NAME:Lcom/layer/sdk/messaging/Identity$Property;

    aput-object v1, v0, v4

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/sdk/messaging/Identity$Property;->LAST_NAME:Lcom/layer/sdk/messaging/Identity$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/messaging/Identity$Property;->PHONE_NUMBER:Lcom/layer/sdk/messaging/Identity$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/sdk/messaging/Identity$Property;->EMAIL_ADDRESS:Lcom/layer/sdk/messaging/Identity$Property;

    aput-object v2, v0, v1

    sget-object v1, Lcom/layer/sdk/messaging/Identity$Property;->AVATAR_IMAGE_URL:Lcom/layer/sdk/messaging/Identity$Property;

    aput-object v1, v0, v7

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/sdk/messaging/Identity$Property;->PUBLIC_KEY:Lcom/layer/sdk/messaging/Identity$Property;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/sdk/messaging/Identity$Property;->FOLLOWED:Lcom/layer/sdk/messaging/Identity$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/sdk/messaging/Identity$Property;->METADATA:Lcom/layer/sdk/messaging/Identity$Property;

    aput-object v2, v0, v1

    sget-object v1, Lcom/layer/sdk/messaging/Identity$Property;->PRESENCE_STATUS:Lcom/layer/sdk/messaging/Identity$Property;

    aput-object v1, v0, v6

    const/16 v1, 0xc

    sget-object v2, Lcom/layer/sdk/messaging/Identity$Property;->LAST_SEEN_AT:Lcom/layer/sdk/messaging/Identity$Property;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/messaging/Identity$Property;->$VALUES:[Lcom/layer/sdk/messaging/Identity$Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/layer/sdk/messaging/Identity$Property;->a:Z

    iput p4, p0, Lcom/layer/sdk/messaging/Identity$Property;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/messaging/Identity$Property;
    .locals 1

    const-class v0, Lcom/layer/sdk/messaging/Identity$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity$Property;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/messaging/Identity$Property;
    .locals 1

    sget-object v0, Lcom/layer/sdk/messaging/Identity$Property;->$VALUES:[Lcom/layer/sdk/messaging/Identity$Property;

    invoke-virtual {v0}, [Lcom/layer/sdk/messaging/Identity$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/messaging/Identity$Property;

    return-object v0
.end method


# virtual methods
.method public final isEqualityQueryable()Z
    .locals 1

    iget v0, p0, Lcom/layer/sdk/messaging/Identity$Property;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInclusionQueryable()Z
    .locals 1

    iget v0, p0, Lcom/layer/sdk/messaging/Identity$Property;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPatternQueryable()Z
    .locals 1

    iget v0, p0, Lcom/layer/sdk/messaging/Identity$Property;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRelativeQueryable()Z
    .locals 1

    iget v0, p0, Lcom/layer/sdk/messaging/Identity$Property;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSortable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/messaging/Identity$Property;->a:Z

    return v0
.end method
