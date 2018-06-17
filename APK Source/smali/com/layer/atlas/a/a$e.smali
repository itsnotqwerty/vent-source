.class final Lcom/layer/atlas/a/a$e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/atlas/a/a$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final bok:I

.field public static final bol:I

.field public static final bom:I

.field public static final bon:I

.field private static final synthetic boo:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/layer/atlas/a/a$e;->bok:I

    sput v4, Lcom/layer/atlas/a/a$e;->bol:I

    sput v5, Lcom/layer/atlas/a/a$e;->bom:I

    sput v0, Lcom/layer/atlas/a/a$e;->bon:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/layer/atlas/a/a$e;->bok:I

    aput v2, v0, v1

    sget v1, Lcom/layer/atlas/a/a$e;->bol:I

    aput v1, v0, v3

    sget v1, Lcom/layer/atlas/a/a$e;->bom:I

    aput v1, v0, v4

    sget v1, Lcom/layer/atlas/a/a$e;->bon:I

    aput v1, v0, v5

    sput-object v0, Lcom/layer/atlas/a/a$e;->boo:[I

    return-void
.end method

.method public static a(Lcom/layer/sdk/messaging/Message;Lcom/layer/sdk/messaging/Message;)I
    .locals 4

    invoke-interface {p0}, Lcom/layer/sdk/messaging/Message;->getSender()Lcom/layer/sdk/messaging/Identity;

    move-result-object v0

    invoke-interface {p1}, Lcom/layer/sdk/messaging/Message;->getSender()Lcom/layer/sdk/messaging/Identity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/layer/atlas/a/a$e;->bok:I

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lcom/layer/sdk/messaging/Message;->getReceivedAt()Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1}, Lcom/layer/sdk/messaging/Message;->getReceivedAt()Ljava/util/Date;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    sget v0, Lcom/layer/atlas/a/a$e;->bol:I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    sget v0, Lcom/layer/atlas/a/a$e;->bol:I

    goto :goto_0

    :cond_3
    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    sget v0, Lcom/layer/atlas/a/a$e;->bom:I

    goto :goto_0

    :cond_4
    sget v0, Lcom/layer/atlas/a/a$e;->bon:I

    goto :goto_0
.end method
