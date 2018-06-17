.class public final La/a/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/f$a;,
        La/a/a/f$b;
    }
.end annotation


# static fields
.field private static final cqj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "La/a/a/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final cqk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "La/a/a/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/a/f;->cqj:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/a/f;->cqk:Ljava/util/Map;

    return-void
.end method

.method static synthetic FU()Ljava/util/Map;
    .locals 1

    sget-object v0, La/a/a/f;->cqj:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic FV()Ljava/util/Map;
    .locals 1

    sget-object v0, La/a/a/f;->cqk:Ljava/util/Map;

    return-object v0
.end method
