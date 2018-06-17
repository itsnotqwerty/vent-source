.class public final Lc/a/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static bxE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lc/a/a/c;",
            ">;",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Object;",
            "Lc/a/a/a/b;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final bKG:B

.field public final cUZ:Lc/a/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/a/a/a/b;->bxE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLc/a/a/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/a/a/b;->a:Ljava/lang/String;

    iput-byte p2, p0, Lc/a/a/a/b;->bKG:B

    iput-object p3, p0, Lc/a/a/a/b;->cUZ:Lc/a/a/a/c;

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc/a/a/c;",
            ">;",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Object;",
            "Lc/a/a/a/b;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lc/a/a/a/b;->bxE:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
