.class public final enum Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkd/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;",
        ">;",
        "Lcom/layer/sdk/internal/lsdkd/e;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

.field public static final enum b:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

.field public static final enum c:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

.field public static final enum d:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

.field public static final enum e:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

.field public static final enum f:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

.field public static final enum g:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

.field public static final enum h:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

.field private static final synthetic l:[Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;


# instance fields
.field final bri:Lcom/layer/sdk/internal/lsdkd/a;

.field final brj:Z

.field final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    const-string v1, "ID"

    const-string v3, "id"

    new-instance v4, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v4}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    const-string v4, "TRANSFER_STATUS"

    const-string v6, "transferStatus"

    new-instance v7, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v7}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v5, v10

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    const-string v4, "IS_PRUNED"

    const-string v6, "isPruned"

    new-instance v7, Lcom/layer/sdk/internal/lsdkd/a$d;

    invoke-direct {v7}, Lcom/layer/sdk/internal/lsdkd/a$d;-><init>()V

    move v5, v11

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    const-string v4, "LAST_ACCESSED_TIME"

    const-string v6, "lastAccessedTime"

    move v5, v12

    move-object v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    const-string v4, "URL"

    const/4 v5, 0x4

    const-string v6, "url"

    move-object v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    const-string v4, "URL_EXPIRATION"

    const/4 v5, 0x5

    const-string v6, "urlExpiration"

    move-object v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    const-string v4, "INLINE_DATA"

    const/4 v5, 0x6

    const-string v6, "inlineData"

    move-object v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->g:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    const-string v4, "FILE_DATA"

    const/4 v5, 0x7

    const-string v6, "fileData"

    move-object v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layer/sdk/internal/lsdkd/a;Z)V

    sput-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    aput-object v1, v0, v12

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->g:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->l:[Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

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

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->bri:Lcom/layer/sdk/internal/lsdkd/a;

    iput-boolean p5, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->brj:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->l:[Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/layer/sdk/internal/lsdkd/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->bri:Lcom/layer/sdk/internal/lsdkd/a;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->brj:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->i:Ljava/lang/String;

    return-object v0
.end method
