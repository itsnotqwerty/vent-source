.class public final enum Lcom/layer/b/f/c/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/c/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/b/f/c/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum bAR:Lcom/layer/b/f/c/b$a;

.field public static final enum bAS:Lcom/layer/b/f/c/b$a;

.field public static final enum bAT:Lcom/layer/b/f/c/b$a;

.field private static final synthetic bAU:[Lcom/layer/b/f/c/b$a;


# instance fields
.field private final bxI:S

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/layer/b/f/c/b$a;

    const-string v1, "CODE"

    const-string v2, "code"

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/layer/b/f/c/b$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/b$a;->bAR:Lcom/layer/b/f/c/b$a;

    new-instance v0, Lcom/layer/b/f/c/b$a;

    const-string v1, "MESSAGE"

    const-string v2, "message"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/layer/b/f/c/b$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/b$a;->bAS:Lcom/layer/b/f/c/b$a;

    new-instance v0, Lcom/layer/b/f/c/b$a;

    const-string v1, "DETAILS"

    const-string v2, "details"

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/layer/b/f/c/b$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/b$a;->bAT:Lcom/layer/b/f/c/b$a;

    new-array v0, v6, [Lcom/layer/b/f/c/b$a;

    sget-object v1, Lcom/layer/b/f/c/b$a;->bAR:Lcom/layer/b/f/c/b$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/b/f/c/b$a;->bAS:Lcom/layer/b/f/c/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/b/f/c/b$a;->bAT:Lcom/layer/b/f/c/b$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/layer/b/f/c/b$a;->bAU:[Lcom/layer/b/f/c/b$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/c/b$a;->a:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/c/b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/b$a;

    sget-object v2, Lcom/layer/b/f/c/b$a;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/layer/b/f/c/b$a;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/layer/b/f/c/b$a;->bxI:S

    iput-object p4, p0, Lcom/layer/b/f/c/b$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/c/b$a;
    .locals 1

    const-class v0, Lcom/layer/b/f/c/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/b$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/c/b$a;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/b$a;->bAU:[Lcom/layer/b/f/c/b$a;

    invoke-virtual {v0}, [Lcom/layer/b/f/c/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/c/b$a;

    return-object v0
.end method
