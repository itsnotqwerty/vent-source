.class public final enum Lcom/layer/sdk/messaging/Message$Property;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/layer/sdk/query/Queryable$Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/messaging/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/messaging/Message$Property;",
        ">;",
        "Lcom/layer/sdk/query/Queryable$Property;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum CONVERSATION:Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum ID:Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum IS_SENT:Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum IS_UNREAD:Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum PART_ALL_TRANSFERS_COMPLETE:Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum PART_ANY_TRANSFERS_COMPLETE:Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum PART_IS_TRANSFERRING:Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum PART_IS_TRANSFER_PENDING:Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum PART_MIME_TYPE:Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum PART_SIZE:Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum POSITION:Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum RECEIVED_AT:Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum SENDER_NAME:Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum SENDER_USER_ID:Lcom/layer/sdk/messaging/Message$Property;

.field public static final enum SENT_AT:Lcom/layer/sdk/messaging/Message$Property;


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x7

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "ID"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->ID:Lcom/layer/sdk/messaging/Message$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "POSITION"

    invoke-direct {v0, v1, v3, v3, v6}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->POSITION:Lcom/layer/sdk/messaging/Message$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "CONVERSATION"

    invoke-direct {v0, v1, v7, v4, v5}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->CONVERSATION:Lcom/layer/sdk/messaging/Message$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "IS_SENT"

    invoke-direct {v0, v1, v5, v3, v3}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->IS_SENT:Lcom/layer/sdk/messaging/Message$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "SENT_AT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->SENT_AT:Lcom/layer/sdk/messaging/Message$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "RECEIVED_AT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->RECEIVED_AT:Lcom/layer/sdk/messaging/Message$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "SENDER_USER_ID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->SENDER_USER_ID:Lcom/layer/sdk/messaging/Message$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "SENDER_NAME"

    invoke-direct {v0, v1, v6, v4, v5}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->SENDER_NAME:Lcom/layer/sdk/messaging/Message$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "IS_UNREAD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->IS_UNREAD:Lcom/layer/sdk/messaging/Message$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "PART_MIME_TYPE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->PART_MIME_TYPE:Lcom/layer/sdk/messaging/Message$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "PART_SIZE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->PART_SIZE:Lcom/layer/sdk/messaging/Message$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "PART_IS_TRANSFER_PENDING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->PART_IS_TRANSFER_PENDING:Lcom/layer/sdk/messaging/Message$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "PART_IS_TRANSFERRING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->PART_IS_TRANSFERRING:Lcom/layer/sdk/messaging/Message$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "PART_ANY_TRANSFERS_COMPLETE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->PART_ANY_TRANSFERS_COMPLETE:Lcom/layer/sdk/messaging/Message$Property;

    new-instance v0, Lcom/layer/sdk/messaging/Message$Property;

    const-string v1, "PART_ALL_TRANSFERS_COMPLETE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/layer/sdk/messaging/Message$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->PART_ALL_TRANSFERS_COMPLETE:Lcom/layer/sdk/messaging/Message$Property;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/layer/sdk/messaging/Message$Property;

    sget-object v1, Lcom/layer/sdk/messaging/Message$Property;->ID:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/messaging/Message$Property;->POSITION:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/messaging/Message$Property;->CONVERSATION:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layer/sdk/messaging/Message$Property;->IS_SENT:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v1, v0, v5

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/sdk/messaging/Message$Property;->SENT_AT:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/messaging/Message$Property;->RECEIVED_AT:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/sdk/messaging/Message$Property;->SENDER_USER_ID:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v2, v0, v1

    sget-object v1, Lcom/layer/sdk/messaging/Message$Property;->SENDER_NAME:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v1, v0, v6

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/sdk/messaging/Message$Property;->IS_UNREAD:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/sdk/messaging/Message$Property;->PART_MIME_TYPE:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/sdk/messaging/Message$Property;->PART_SIZE:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layer/sdk/messaging/Message$Property;->PART_IS_TRANSFER_PENDING:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/layer/sdk/messaging/Message$Property;->PART_IS_TRANSFERRING:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/layer/sdk/messaging/Message$Property;->PART_ANY_TRANSFERS_COMPLETE:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/layer/sdk/messaging/Message$Property;->PART_ALL_TRANSFERS_COMPLETE:Lcom/layer/sdk/messaging/Message$Property;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/messaging/Message$Property;->$VALUES:[Lcom/layer/sdk/messaging/Message$Property;

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

    iput-boolean p3, p0, Lcom/layer/sdk/messaging/Message$Property;->a:Z

    iput p4, p0, Lcom/layer/sdk/messaging/Message$Property;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/messaging/Message$Property;
    .locals 1

    const-class v0, Lcom/layer/sdk/messaging/Message$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Message$Property;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/messaging/Message$Property;
    .locals 1

    sget-object v0, Lcom/layer/sdk/messaging/Message$Property;->$VALUES:[Lcom/layer/sdk/messaging/Message$Property;

    invoke-virtual {v0}, [Lcom/layer/sdk/messaging/Message$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/messaging/Message$Property;

    return-object v0
.end method


# virtual methods
.method public final isEqualityQueryable()Z
    .locals 1

    iget v0, p0, Lcom/layer/sdk/messaging/Message$Property;->b:I

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

    iget v0, p0, Lcom/layer/sdk/messaging/Message$Property;->b:I

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

    iget v0, p0, Lcom/layer/sdk/messaging/Message$Property;->b:I

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

    iget-boolean v0, p0, Lcom/layer/sdk/messaging/Message$Property;->a:Z

    return v0
.end method
