.class public final enum Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkd/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;",
        ">;",
        "Lcom/layer/sdk/internal/lsdkd/e;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

.field public static final enum b:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

.field public static final enum c:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

.field public static final enum d:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

.field public static final enum e:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

.field public static final enum f:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

.field public static final enum g:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

.field public static final enum h:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

.field public static final enum i:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

.field public static final enum j:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

.field public static final enum k:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

.field private static final synthetic o:[Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;


# instance fields
.field final bqY:Lcom/layer/sdk/internal/lsdkd/a;

.field final bqZ:Z

.field final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    const-string v1, "EVENT_DB_ID"

    const-string v3, "eventDbId"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    new-instance v5, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    const-string v6, "ID"

    const-string v8, "id"

    new-instance v9, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v9}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v5, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    new-instance v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    const-string v9, "IS_DELETED"

    const-string v11, "isDeleted"

    new-instance v12, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v12}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v10, v14

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    new-instance v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    const-string v9, "IS_DELETED_ALL_PARTICIPANTS"

    const-string v11, "isDeletedAllParticipants"

    move v10, v15

    move-object v12, v4

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    new-instance v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    const-string v9, "IS_DELETED_MY_DEVICES"

    const/4 v10, 0x4

    const-string v11, "isDeletedMyDevices"

    move-object v12, v4

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    new-instance v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    const-string v9, "IS_SENT"

    const/4 v10, 0x5

    const-string v11, "isSent"

    new-instance v12, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v12}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v13, v2

    invoke-direct/range {v8 .. v13}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    new-instance v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    const-string v9, "POSITION"

    const/4 v10, 0x6

    const-string v11, "position"

    new-instance v12, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v12}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v13, v2

    invoke-direct/range {v8 .. v13}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->g:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    new-instance v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    const-string v9, "RECEIVED_AT"

    const/4 v10, 0x7

    const-string v11, "receivedAt"

    new-instance v12, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v12}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v13, v2

    invoke-direct/range {v8 .. v13}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    new-instance v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    const-string v9, "RECIPIENT_STATUS"

    const/16 v10, 0x8

    const-string v11, "recipientStatus"

    new-instance v12, Lcom/layer/sdk/internal/lsdkd/a$c;

    invoke-direct {v12}, Lcom/layer/sdk/internal/lsdkd/a$c;-><init>()V

    move v13, v2

    invoke-direct/range {v8 .. v13}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    new-instance v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    const-string v9, "SENT_AT"

    const/16 v10, 0x9

    const-string v11, "sentAt"

    new-instance v12, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v12}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v13, v2

    invoke-direct/range {v8 .. v13}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->j:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    new-instance v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    const-string v9, "SEQ"

    const/16 v10, 0xa

    const-string v11, "seq"

    move-object v12, v4

    move v13, v2

    invoke-direct/range {v8 .. v13}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v8, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->k:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    aput-object v1, v0, v14

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    aput-object v1, v0, v15

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->g:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->j:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->k:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->o:[Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/layer/sdk/internal/lsdkd/a;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->l:Ljava/lang/String;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->bqY:Lcom/layer/sdk/internal/lsdkd/a;

    iput-boolean p5, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->bqZ:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->o:[Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/layer/sdk/internal/lsdkd/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->bqY:Lcom/layer/sdk/internal/lsdkd/a;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->bqZ:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->l:Ljava/lang/String;

    return-object v0
.end method
