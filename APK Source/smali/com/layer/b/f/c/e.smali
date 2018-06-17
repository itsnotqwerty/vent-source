.class public final enum Lcom/layer/b/f/c/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/c/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bDA:Lcom/layer/b/f/c/e;

.field public static final enum bDB:Lcom/layer/b/f/c/e;

.field public static final enum bDC:Lcom/layer/b/f/c/e;

.field public static final enum bDD:Lcom/layer/b/f/c/e;

.field public static final enum bDE:Lcom/layer/b/f/c/e;

.field public static final enum bDF:Lcom/layer/b/f/c/e;

.field public static final enum bDG:Lcom/layer/b/f/c/e;

.field private static final synthetic bDH:[Lcom/layer/b/f/c/e;

.field public static final enum bDm:Lcom/layer/b/f/c/e;

.field public static final enum bDn:Lcom/layer/b/f/c/e;

.field public static final enum bDo:Lcom/layer/b/f/c/e;

.field public static final enum bDp:Lcom/layer/b/f/c/e;

.field public static final enum bDq:Lcom/layer/b/f/c/e;

.field public static final enum bDr:Lcom/layer/b/f/c/e;

.field public static final enum bDs:Lcom/layer/b/f/c/e;

.field public static final enum bDt:Lcom/layer/b/f/c/e;

.field public static final enum bDu:Lcom/layer/b/f/c/e;

.field public static final enum bDv:Lcom/layer/b/f/c/e;

.field public static final enum bDw:Lcom/layer/b/f/c/e;

.field public static final enum bDx:Lcom/layer/b/f/c/e;

.field public static final enum bDy:Lcom/layer/b/f/c/e;

.field public static final enum bDz:Lcom/layer/b/f/c/e;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "APPLICATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDm:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "EVENT_DELETED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v4, v2}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDn:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "MEMBER_ADDED"

    invoke-direct {v0, v1, v5, v5}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDo:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "MEMBER_REMOVED"

    invoke-direct {v0, v1, v6, v6}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDp:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1, v7, v7}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDq:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "MESSAGE_DELIVERED"

    invoke-direct {v0, v1, v8, v8}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDr:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "MESSAGE_READ"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDs:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "STREAM_DELETED"

    const/4 v2, 0x7

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDt:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "TOMBSTONE"

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDu:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "SYNC_MUTATION"

    const/16 v2, 0x9

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDv:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "TAGS_ADDED"

    const/16 v2, 0xa

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDw:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "TAGS_REMOVED"

    const/16 v2, 0xb

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDx:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "NAME_CHANGED"

    const/16 v2, 0xc

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDy:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "MARK_ALL_READ"

    const/16 v2, 0xd

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDz:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "IMPORT_COMPLETED"

    const/16 v2, 0xe

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDA:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "UNUSED__METADATA_ADDED"

    const/16 v2, 0xf

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDB:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "UNUSED__METADATA_REMOVED"

    const/16 v2, 0x10

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDC:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "PUSH_TOKEN_INVALID"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDD:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "RESERVED_EVENT_TYPE_1"

    const/16 v2, 0x12

    const/16 v3, 0x3e9

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDE:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "RESERVED_EVENT_TYPE_2"

    const/16 v2, 0x13

    const/16 v3, 0x3ea

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDF:Lcom/layer/b/f/c/e;

    new-instance v0, Lcom/layer/b/f/c/e;

    const-string v1, "RESERVED_EVENT_TYPE_3"

    const/16 v2, 0x14

    const/16 v3, 0x3eb

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/e;->bDG:Lcom/layer/b/f/c/e;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/layer/b/f/c/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/layer/b/f/c/e;->bDm:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    sget-object v1, Lcom/layer/b/f/c/e;->bDn:Lcom/layer/b/f/c/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/b/f/c/e;->bDo:Lcom/layer/b/f/c/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/b/f/c/e;->bDp:Lcom/layer/b/f/c/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/b/f/c/e;->bDq:Lcom/layer/b/f/c/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layer/b/f/c/e;->bDr:Lcom/layer/b/f/c/e;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/b/f/c/e;->bDs:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/b/f/c/e;->bDt:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/b/f/c/e;->bDu:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/b/f/c/e;->bDv:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/b/f/c/e;->bDw:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layer/b/f/c/e;->bDx:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/layer/b/f/c/e;->bDy:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/layer/b/f/c/e;->bDz:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/layer/b/f/c/e;->bDA:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/layer/b/f/c/e;->bDB:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/layer/b/f/c/e;->bDC:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/layer/b/f/c/e;->bDD:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/layer/b/f/c/e;->bDE:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/layer/b/f/c/e;->bDF:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/layer/b/f/c/e;->bDG:Lcom/layer/b/f/c/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/b/f/c/e;->bDH:[Lcom/layer/b/f/c/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/layer/b/f/c/e;->a:I

    return-void
.end method

.method public static dz(I)Lcom/layer/b/f/c/e;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/layer/b/f/c/e;->bDm:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/layer/b/f/c/e;->bDn:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/layer/b/f/c/e;->bDo:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/layer/b/f/c/e;->bDp:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/layer/b/f/c/e;->bDq:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lcom/layer/b/f/c/e;->bDr:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/layer/b/f/c/e;->bDs:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_7
    sget-object v0, Lcom/layer/b/f/c/e;->bDt:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/layer/b/f/c/e;->bDu:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_9
    sget-object v0, Lcom/layer/b/f/c/e;->bDv:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_a
    sget-object v0, Lcom/layer/b/f/c/e;->bDw:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_b
    sget-object v0, Lcom/layer/b/f/c/e;->bDx:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_c
    sget-object v0, Lcom/layer/b/f/c/e;->bDy:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_d
    sget-object v0, Lcom/layer/b/f/c/e;->bDz:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_e
    sget-object v0, Lcom/layer/b/f/c/e;->bDA:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_f
    sget-object v0, Lcom/layer/b/f/c/e;->bDB:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_10
    sget-object v0, Lcom/layer/b/f/c/e;->bDC:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_11
    sget-object v0, Lcom/layer/b/f/c/e;->bDD:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_12
    sget-object v0, Lcom/layer/b/f/c/e;->bDE:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_13
    sget-object v0, Lcom/layer/b/f/c/e;->bDF:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_14
    sget-object v0, Lcom/layer/b/f/c/e;->bDG:Lcom/layer/b/f/c/e;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_f
        0x8 -> :sswitch_10
        0x9 -> :sswitch_1
        0xa -> :sswitch_8
        0xb -> :sswitch_7
        0xc -> :sswitch_9
        0xd -> :sswitch_e
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x10 -> :sswitch_c
        0x11 -> :sswitch_11
        0x12 -> :sswitch_d
        0x3e9 -> :sswitch_12
        0x3ea -> :sswitch_13
        0x3eb -> :sswitch_14
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/c/e;
    .locals 1

    const-class v0, Lcom/layer/b/f/c/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/e;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/c/e;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/e;->bDH:[Lcom/layer/b/f/c/e;

    invoke-virtual {v0}, [Lcom/layer/b/f/c/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/c/e;

    return-object v0
.end method
