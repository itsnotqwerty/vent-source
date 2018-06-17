.class final Lcom/google/android/gms/internal/hh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final aTs:Lcom/google/android/gms/internal/hg;

.field private final aTt:Ljava/lang/Throwable;

.field private final aTu:[B

.field private final aTv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;

.field private final status:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/hg;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hg;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/hh;->aTs:Lcom/google/android/gms/internal/hg;

    iput p3, p0, Lcom/google/android/gms/internal/hh;->status:I

    iput-object p4, p0, Lcom/google/android/gms/internal/hh;->aTt:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/google/android/gms/internal/hh;->aTu:[B

    iput-object p1, p0, Lcom/google/android/gms/internal/hh;->packageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/hh;->aTv:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/hg;ILjava/lang/Throwable;[BLjava/util/Map;B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/hh;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/hg;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/hh;->aTs:Lcom/google/android/gms/internal/hg;

    iget-object v1, p0, Lcom/google/android/gms/internal/hh;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/hh;->status:I

    iget-object v3, p0, Lcom/google/android/gms/internal/hh;->aTt:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/android/gms/internal/hh;->aTu:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/hh;->aTv:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/hg;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
