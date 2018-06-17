.class public final enum Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkd/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;",
        ">;",
        "Lcom/layer/sdk/internal/lsdkd/e;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

.field public static final enum b:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

.field public static final enum c:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

.field public static final enum d:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

.field public static final enum e:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

.field public static final enum f:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

.field public static final enum g:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

.field public static final enum h:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

.field public static final enum i:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

.field public static final enum j:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

.field public static final enum k:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

.field public static final enum l:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

.field public static final enum m:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

.field private static final synthetic q:[Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;


# instance fields
.field final bqV:Lcom/layer/sdk/internal/lsdkd/a;

.field final bqW:Z

.field final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const-string v1, "ID"

    const-string v3, "id"

    new-instance v4, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v4}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const-string v4, "IS_DELETED"

    const-string v6, "isDeleted"

    new-instance v7, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v7}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v5, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const-string v4, "IS_DELETED_ALL_PARTICIPANTS"

    const-string v6, "isDeletedAllParticipants"

    move v5, v11

    move-object v7, v10

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const-string v4, "IS_DELETED_MY_DEVICES"

    const-string v6, "isDeletedMyDevices"

    move v5, v12

    move-object v7, v10

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const-string v4, "IS_DISTINCT"

    const/4 v5, 0x4

    const-string v6, "isDistinct"

    new-instance v7, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v7}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const-string v4, "LAST_MESSAGE"

    const/4 v5, 0x5

    const-string v6, "lastMessage"

    new-instance v7, Lcom/layer/sdk/internal/lsdkd/a$a;

    invoke-direct {v7}, Lcom/layer/sdk/internal/lsdkd/a$a;-><init>()V

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const-string v4, "METADATA"

    const/4 v5, 0x6

    const-string v6, "metadata"

    new-instance v7, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v7}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->g:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const-string v4, "PARTICIPANTS"

    const/4 v5, 0x7

    const-string v6, "participants"

    new-instance v7, Lcom/layer/sdk/internal/lsdkd/a$b;

    invoke-direct {v7}, Lcom/layer/sdk/internal/lsdkd/a$b;-><init>()V

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const-string v4, "STREAM_DB_ID"

    const/16 v5, 0x8

    const-string v6, "streamDbId"

    move-object v7, v10

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const-string v4, "STREAM_ID"

    const/16 v5, 0x9

    const-string v6, "streamId"

    move-object v7, v10

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->j:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const-string v4, "TOTAL_MESSAGE_COUNT"

    const/16 v5, 0xa

    const-string v6, "totalMessageCount"

    new-instance v7, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v7}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->k:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const-string v4, "TOTAL_UNREAD_MESSAGE_COUNT"

    const/16 v5, 0xb

    const-string v6, "totalUnreadMessageCount"

    new-instance v7, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v7}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->l:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const-string v4, "HISTORIC_SYNC_STATUS"

    const/16 v5, 0xc

    const-string v6, "historicSyncStatus"

    new-instance v7, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v7}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->m:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    aput-object v1, v0, v12

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->g:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->j:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->k:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->l:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->m:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->q:[Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

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

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->n:Ljava/lang/String;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->bqV:Lcom/layer/sdk/internal/lsdkd/a;

    iput-boolean p5, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->bqW:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->q:[Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/layer/sdk/internal/lsdkd/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->bqV:Lcom/layer/sdk/internal/lsdkd/a;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->bqW:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->n:Ljava/lang/String;

    return-object v0
.end method
