.class final Lcom/google/android/gms/internal/ic;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hg;


# instance fields
.field private synthetic aVB:Lcom/google/android/gms/internal/hz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ic;->aVB:Lcom/google/android/gms/internal/hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ic;->aVB:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/gms/internal/hz;->a(ILjava/lang/Throwable;[B)V

    return-void
.end method
