.class public final enum La/a/a/k$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "La/a/a/k$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cqZ:La/a/a/k$a;

.field public static final enum cra:La/a/a/k$a;

.field public static final enum crb:La/a/a/k$a;

.field public static final enum crd:La/a/a/k$a;

.field public static final enum cre:La/a/a/k$a;

.field private static final crf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "La/a/a/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic crg:[La/a/a/k$a;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v1, La/a/a/k$a;

    const-string v2, "IN"

    invoke-direct {v1, v2, v0, v4}, La/a/a/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, La/a/a/k$a;->cqZ:La/a/a/k$a;

    new-instance v1, La/a/a/k$a;

    const-string v2, "CH"

    invoke-direct {v1, v2, v4, v5}, La/a/a/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, La/a/a/k$a;->cra:La/a/a/k$a;

    new-instance v1, La/a/a/k$a;

    const-string v2, "HS"

    invoke-direct {v1, v2, v7, v6}, La/a/a/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, La/a/a/k$a;->crb:La/a/a/k$a;

    new-instance v1, La/a/a/k$a;

    const-string v2, "NONE"

    const/16 v3, 0xfe

    invoke-direct {v1, v2, v5, v3}, La/a/a/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, La/a/a/k$a;->crd:La/a/a/k$a;

    new-instance v1, La/a/a/k$a;

    const-string v2, "ANY"

    const/16 v3, 0xff

    invoke-direct {v1, v2, v6, v3}, La/a/a/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, La/a/a/k$a;->cre:La/a/a/k$a;

    const/4 v1, 0x5

    new-array v1, v1, [La/a/a/k$a;

    sget-object v2, La/a/a/k$a;->cqZ:La/a/a/k$a;

    aput-object v2, v1, v0

    sget-object v2, La/a/a/k$a;->cra:La/a/a/k$a;

    aput-object v2, v1, v4

    sget-object v2, La/a/a/k$a;->crb:La/a/a/k$a;

    aput-object v2, v1, v7

    sget-object v2, La/a/a/k$a;->crd:La/a/a/k$a;

    aput-object v2, v1, v5

    sget-object v2, La/a/a/k$a;->cre:La/a/a/k$a;

    aput-object v2, v1, v6

    sput-object v1, La/a/a/k$a;->crg:[La/a/a/k$a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, La/a/a/k$a;->crf:Ljava/util/HashMap;

    invoke-static {}, La/a/a/k$a;->values()[La/a/a/k$a;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, La/a/a/k$a;->crf:Ljava/util/HashMap;

    iget v5, v3, La/a/a/k$a;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    iput p3, p0, La/a/a/k$a;->value:I

    return-void
.end method

.method public static eZ(I)La/a/a/k$a;
    .locals 2

    sget-object v0, La/a/a/k$a;->crf:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k$a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/k$a;
    .locals 1

    const-class v0, La/a/a/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a/a/k$a;

    return-object v0
.end method

.method public static values()[La/a/a/k$a;
    .locals 1

    sget-object v0, La/a/a/k$a;->crg:[La/a/a/k$a;

    invoke-virtual {v0}, [La/a/a/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/k$a;

    return-object v0
.end method
