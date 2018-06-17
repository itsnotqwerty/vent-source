.class public final enum Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/lsdka/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

.field public static final enum b:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

.field public static final enum c:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

.field public static final enum d:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

.field public static final enum e:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

.field public static final enum f:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

.field public static final enum g:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

.field public static final enum h:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

.field public static final enum i:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

.field public static final enum j:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

.field private static final synthetic k:[Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    const-string v1, "AUTHENTICATING"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    const-string v1, "AUTHENTICATING_AWAITING_API_CONNECTION"

    invoke-direct {v0, v1, v4}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->b:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    const-string v1, "AUTHENTICATING_AWAITING_TASK_AUTH"

    invoke-direct {v0, v1, v5}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->c:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    const-string v1, "AUTHENTICATING_AWAITING_API_ANSWER"

    invoke-direct {v0, v1, v6}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->d:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    const-string v1, "AUTHENTICATING_AWAITING_TASK_ANSWER"

    invoke-direct {v0, v1, v7}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->e:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    const-string v1, "AUTHENTICATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->f:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    const-string v1, "DEAUTHENTICATING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->g:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    const-string v1, "DEAUTHENTICATING_AWAITING_API_CONNECTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->h:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    const-string v1, "DEAUTHENTICATING_AWAITING_TASK_DEAUTH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->i:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    const-string v1, "DEAUTHENTICATED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->j:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->b:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->c:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->d:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->e:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->f:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->g:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->h:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->i:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->j:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->k:[Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->k:[Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    return-object v0
.end method
