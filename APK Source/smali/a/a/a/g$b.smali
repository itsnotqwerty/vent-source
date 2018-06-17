.class public final enum La/a/a/g$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "La/a/a/g$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cqM:La/a/a/g$b;

.field public static final enum cqN:La/a/a/g$b;

.field private static final synthetic cqP:[La/a/a/g$b;

.field private static cqc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "La/a/a/g$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final axf:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "La/a/a/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public final cqO:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, La/a/a/g$b;

    const-string v2, "UNKNOWN"

    const/4 v3, -0x1

    const-class v4, La/a/a/c/c;

    invoke-direct {v1, v2, v0, v3, v4}, La/a/a/g$b;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v1, La/a/a/g$b;->cqM:La/a/a/g$b;

    new-instance v1, La/a/a/g$b;

    const-string v2, "NSID"

    const/4 v3, 0x3

    const-class v4, La/a/a/c/b;

    invoke-direct {v1, v2, v5, v3, v4}, La/a/a/g$b;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v1, La/a/a/g$b;->cqN:La/a/a/g$b;

    const/4 v1, 0x2

    new-array v1, v1, [La/a/a/g$b;

    sget-object v2, La/a/a/g$b;->cqM:La/a/a/g$b;

    aput-object v2, v1, v0

    sget-object v2, La/a/a/g$b;->cqN:La/a/a/g$b;

    aput-object v2, v1, v5

    sput-object v1, La/a/a/g$b;->cqP:[La/a/a/g$b;

    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, La/a/a/g$b;->values()[La/a/a/g$b;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, La/a/a/g$b;->cqc:Ljava/util/Map;

    invoke-static {}, La/a/a/g$b;->values()[La/a/a/g$b;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, La/a/a/g$b;->cqc:Ljava/util/Map;

    iget v5, v3, La/a/a/g$b;->cqO:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "La/a/a/c/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, La/a/a/g$b;->cqO:I

    iput-object p4, p0, La/a/a/g$b;->axf:Ljava/lang/Class;

    return-void
.end method

.method public static eY(I)La/a/a/g$b;
    .locals 2

    sget-object v0, La/a/a/g$b;->cqc:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/g$b;

    if-nez v0, :cond_0

    sget-object v0, La/a/a/g$b;->cqM:La/a/a/g$b;

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/g$b;
    .locals 1

    const-class v0, La/a/a/g$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a/a/g$b;

    return-object v0
.end method

.method public static values()[La/a/a/g$b;
    .locals 1

    sget-object v0, La/a/a/g$b;->cqP:[La/a/a/g$b;

    invoke-virtual {v0}, [La/a/a/g$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/g$b;

    return-object v0
.end method
