.class public final enum Lcom/layer/b/c/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/c/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum buB:Lcom/layer/b/c/b$a;

.field public static final enum buC:Lcom/layer/b/c/b$a;

.field public static final enum buD:Lcom/layer/b/c/b$a;

.field public static final enum buE:Lcom/layer/b/c/b$a;

.field public static final enum buF:Lcom/layer/b/c/b$a;

.field private static final synthetic buG:[Lcom/layer/b/c/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/b/c/b$a;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/layer/b/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/b/c/b$a;->buB:Lcom/layer/b/c/b$a;

    new-instance v0, Lcom/layer/b/c/b$a;

    const-string v1, "PATCH"

    invoke-direct {v0, v1, v3}, Lcom/layer/b/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/b/c/b$a;->buC:Lcom/layer/b/c/b$a;

    new-instance v0, Lcom/layer/b/c/b$a;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/layer/b/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/b/c/b$a;->buD:Lcom/layer/b/c/b$a;

    new-instance v0, Lcom/layer/b/c/b$a;

    const-string v1, "POST"

    invoke-direct {v0, v1, v5}, Lcom/layer/b/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/b/c/b$a;->buE:Lcom/layer/b/c/b$a;

    new-instance v0, Lcom/layer/b/c/b$a;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lcom/layer/b/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/b/c/b$a;->buF:Lcom/layer/b/c/b$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/layer/b/c/b$a;

    sget-object v1, Lcom/layer/b/c/b$a;->buB:Lcom/layer/b/c/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/b/c/b$a;->buC:Lcom/layer/b/c/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/b/c/b$a;->buD:Lcom/layer/b/c/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/b/c/b$a;->buE:Lcom/layer/b/c/b$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/b/c/b$a;->buF:Lcom/layer/b/c/b$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/layer/b/c/b$a;->buG:[Lcom/layer/b/c/b$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/c/b$a;
    .locals 1

    const-class v0, Lcom/layer/b/c/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/c/b$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/c/b$a;
    .locals 1

    sget-object v0, Lcom/layer/b/c/b$a;->buG:[Lcom/layer/b/c/b$a;

    invoke-virtual {v0}, [Lcom/layer/b/c/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/c/b$a;

    return-object v0
.end method
