.class public final enum Lcom/layer/sdk/messaging/Conversation$Property;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/layer/sdk/query/Queryable$Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/messaging/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/messaging/Conversation$Property;",
        ">;",
        "Lcom/layer/sdk/query/Queryable$Property;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/messaging/Conversation$Property;

.field public static final enum CREATED_AT:Lcom/layer/sdk/messaging/Conversation$Property;

.field public static final enum HAS_UNREAD_MESSAGES:Lcom/layer/sdk/messaging/Conversation$Property;

.field public static final enum ID:Lcom/layer/sdk/messaging/Conversation$Property;

.field public static final enum IS_DISTINCT:Lcom/layer/sdk/messaging/Conversation$Property;

.field public static final enum LAST_MESSAGE:Lcom/layer/sdk/messaging/Conversation$Property;

.field public static final enum LAST_MESSAGE_RECEIVED_AT:Lcom/layer/sdk/messaging/Conversation$Property;

.field public static final enum LAST_MESSAGE_SENT_AT:Lcom/layer/sdk/messaging/Conversation$Property;

.field public static final enum METADATA:Lcom/layer/sdk/messaging/Conversation$Property;

.field public static final enum PARTICIPANTS:Lcom/layer/sdk/messaging/Conversation$Property;

.field public static final enum PARTICIPANT_COUNT:Lcom/layer/sdk/messaging/Conversation$Property;


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x7

    const/4 v4, 0x3

    const/4 v3, 0x1

    new-instance v0, Lcom/layer/sdk/messaging/Conversation$Property;

    const-string v1, "ID"

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/layer/sdk/messaging/Conversation$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$Property;->ID:Lcom/layer/sdk/messaging/Conversation$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Conversation$Property;

    const-string v1, "PARTICIPANTS"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/layer/sdk/messaging/Conversation$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$Property;->PARTICIPANTS:Lcom/layer/sdk/messaging/Conversation$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Conversation$Property;

    const-string v1, "PARTICIPANT_COUNT"

    invoke-direct {v0, v1, v7, v3, v5}, Lcom/layer/sdk/messaging/Conversation$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$Property;->PARTICIPANT_COUNT:Lcom/layer/sdk/messaging/Conversation$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Conversation$Property;

    const-string v1, "CREATED_AT"

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/layer/sdk/messaging/Conversation$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$Property;->CREATED_AT:Lcom/layer/sdk/messaging/Conversation$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Conversation$Property;

    const-string v1, "LAST_MESSAGE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v6, v4}, Lcom/layer/sdk/messaging/Conversation$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$Property;->LAST_MESSAGE:Lcom/layer/sdk/messaging/Conversation$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Conversation$Property;

    const-string v1, "HAS_UNREAD_MESSAGES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/layer/sdk/messaging/Conversation$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$Property;->HAS_UNREAD_MESSAGES:Lcom/layer/sdk/messaging/Conversation$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Conversation$Property;

    const-string v1, "LAST_MESSAGE_RECEIVED_AT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/layer/sdk/messaging/Conversation$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$Property;->LAST_MESSAGE_RECEIVED_AT:Lcom/layer/sdk/messaging/Conversation$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Conversation$Property;

    const-string v1, "LAST_MESSAGE_SENT_AT"

    invoke-direct {v0, v1, v5, v3, v5}, Lcom/layer/sdk/messaging/Conversation$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$Property;->LAST_MESSAGE_SENT_AT:Lcom/layer/sdk/messaging/Conversation$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Conversation$Property;

    const-string v1, "IS_DISTINCT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/layer/sdk/messaging/Conversation$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$Property;->IS_DISTINCT:Lcom/layer/sdk/messaging/Conversation$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Conversation$Property;

    const-string v1, "METADATA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v6, v4}, Lcom/layer/sdk/messaging/Conversation$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$Property;->METADATA:Lcom/layer/sdk/messaging/Conversation$Property;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/layer/sdk/messaging/Conversation$Property;

    sget-object v1, Lcom/layer/sdk/messaging/Conversation$Property;->ID:Lcom/layer/sdk/messaging/Conversation$Property;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/sdk/messaging/Conversation$Property;->PARTICIPANTS:Lcom/layer/sdk/messaging/Conversation$Property;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/messaging/Conversation$Property;->PARTICIPANT_COUNT:Lcom/layer/sdk/messaging/Conversation$Property;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layer/sdk/messaging/Conversation$Property;->CREATED_AT:Lcom/layer/sdk/messaging/Conversation$Property;

    aput-object v1, v0, v4

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/sdk/messaging/Conversation$Property;->LAST_MESSAGE:Lcom/layer/sdk/messaging/Conversation$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/messaging/Conversation$Property;->HAS_UNREAD_MESSAGES:Lcom/layer/sdk/messaging/Conversation$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/sdk/messaging/Conversation$Property;->LAST_MESSAGE_RECEIVED_AT:Lcom/layer/sdk/messaging/Conversation$Property;

    aput-object v2, v0, v1

    sget-object v1, Lcom/layer/sdk/messaging/Conversation$Property;->LAST_MESSAGE_SENT_AT:Lcom/layer/sdk/messaging/Conversation$Property;

    aput-object v1, v0, v5

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/sdk/messaging/Conversation$Property;->IS_DISTINCT:Lcom/layer/sdk/messaging/Conversation$Property;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/sdk/messaging/Conversation$Property;->METADATA:Lcom/layer/sdk/messaging/Conversation$Property;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$Property;->$VALUES:[Lcom/layer/sdk/messaging/Conversation$Property;

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

    iput-boolean p3, p0, Lcom/layer/sdk/messaging/Conversation$Property;->a:Z

    iput p4, p0, Lcom/layer/sdk/messaging/Conversation$Property;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/messaging/Conversation$Property;
    .locals 1

    const-class v0, Lcom/layer/sdk/messaging/Conversation$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Conversation$Property;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/messaging/Conversation$Property;
    .locals 1

    sget-object v0, Lcom/layer/sdk/messaging/Conversation$Property;->$VALUES:[Lcom/layer/sdk/messaging/Conversation$Property;

    invoke-virtual {v0}, [Lcom/layer/sdk/messaging/Conversation$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/messaging/Conversation$Property;

    return-object v0
.end method


# virtual methods
.method public final isEqualityQueryable()Z
    .locals 1

    iget v0, p0, Lcom/layer/sdk/messaging/Conversation$Property;->b:I

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

    iget v0, p0, Lcom/layer/sdk/messaging/Conversation$Property;->b:I

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

    const/4 v0, 0x0

    return v0
.end method

.method public final isRelativeQueryable()Z
    .locals 1

    iget v0, p0, Lcom/layer/sdk/messaging/Conversation$Property;->b:I

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

    iget-boolean v0, p0, Lcom/layer/sdk/messaging/Conversation$Property;->a:Z

    return v0
.end method
