.class public final enum Lcom/layer/sdk/messaging/MessagePart$Property;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/layer/sdk/query/Queryable$Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/messaging/MessagePart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/messaging/MessagePart$Property;",
        ">;",
        "Lcom/layer/sdk/query/Queryable$Property;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/messaging/MessagePart$Property;

.field public static final enum ID:Lcom/layer/sdk/messaging/MessagePart$Property;

.field public static final enum INDEX:Lcom/layer/sdk/messaging/MessagePart$Property;

.field public static final enum MESSAGE:Lcom/layer/sdk/messaging/MessagePart$Property;

.field public static final enum MIME_TYPE:Lcom/layer/sdk/messaging/MessagePart$Property;

.field public static final enum SIZE:Lcom/layer/sdk/messaging/MessagePart$Property;

.field public static final enum TRANSFER_STATUS:Lcom/layer/sdk/messaging/MessagePart$Property;


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x7

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/layer/sdk/messaging/MessagePart$Property;

    const-string v1, "ID"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/layer/sdk/messaging/MessagePart$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/MessagePart$Property;->ID:Lcom/layer/sdk/messaging/MessagePart$Property;

    new-instance v0, Lcom/layer/sdk/messaging/MessagePart$Property;

    const-string v1, "INDEX"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/layer/sdk/messaging/MessagePart$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/MessagePart$Property;->INDEX:Lcom/layer/sdk/messaging/MessagePart$Property;

    new-instance v0, Lcom/layer/sdk/messaging/MessagePart$Property;

    const-string v1, "TRANSFER_STATUS"

    invoke-direct {v0, v1, v7, v4, v6}, Lcom/layer/sdk/messaging/MessagePart$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/MessagePart$Property;->TRANSFER_STATUS:Lcom/layer/sdk/messaging/MessagePart$Property;

    new-instance v0, Lcom/layer/sdk/messaging/MessagePart$Property;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1, v5, v3, v5}, Lcom/layer/sdk/messaging/MessagePart$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/MessagePart$Property;->MESSAGE:Lcom/layer/sdk/messaging/MessagePart$Property;

    new-instance v0, Lcom/layer/sdk/messaging/MessagePart$Property;

    const-string v1, "MIME_TYPE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/layer/sdk/messaging/MessagePart$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/MessagePart$Property;->MIME_TYPE:Lcom/layer/sdk/messaging/MessagePart$Property;

    new-instance v0, Lcom/layer/sdk/messaging/MessagePart$Property;

    const-string v1, "SIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/layer/sdk/messaging/MessagePart$Property;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/layer/sdk/messaging/MessagePart$Property;->SIZE:Lcom/layer/sdk/messaging/MessagePart$Property;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/layer/sdk/messaging/MessagePart$Property;

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$Property;->ID:Lcom/layer/sdk/messaging/MessagePart$Property;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$Property;->INDEX:Lcom/layer/sdk/messaging/MessagePart$Property;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$Property;->TRANSFER_STATUS:Lcom/layer/sdk/messaging/MessagePart$Property;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$Property;->MESSAGE:Lcom/layer/sdk/messaging/MessagePart$Property;

    aput-object v1, v0, v5

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/sdk/messaging/MessagePart$Property;->MIME_TYPE:Lcom/layer/sdk/messaging/MessagePart$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/messaging/MessagePart$Property;->SIZE:Lcom/layer/sdk/messaging/MessagePart$Property;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/messaging/MessagePart$Property;->$VALUES:[Lcom/layer/sdk/messaging/MessagePart$Property;

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

    iput-boolean p3, p0, Lcom/layer/sdk/messaging/MessagePart$Property;->a:Z

    iput p4, p0, Lcom/layer/sdk/messaging/MessagePart$Property;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/messaging/MessagePart$Property;
    .locals 1

    const-class v0, Lcom/layer/sdk/messaging/MessagePart$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart$Property;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/messaging/MessagePart$Property;
    .locals 1

    sget-object v0, Lcom/layer/sdk/messaging/MessagePart$Property;->$VALUES:[Lcom/layer/sdk/messaging/MessagePart$Property;

    invoke-virtual {v0}, [Lcom/layer/sdk/messaging/MessagePart$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/messaging/MessagePart$Property;

    return-object v0
.end method


# virtual methods
.method public final isEqualityQueryable()Z
    .locals 1

    iget v0, p0, Lcom/layer/sdk/messaging/MessagePart$Property;->b:I

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

    iget v0, p0, Lcom/layer/sdk/messaging/MessagePart$Property;->b:I

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

    iget v0, p0, Lcom/layer/sdk/messaging/MessagePart$Property;->b:I

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

    iget-boolean v0, p0, Lcom/layer/sdk/messaging/MessagePart$Property;->a:Z

    return v0
.end method
