.class public final Lcom/google/android/gms/common/api/internal/cb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final aCA:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field public final aCz:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final aGt:Z

.field private final aGu:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/cb;->aGt:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/cb;->aCz:Lcom/google/android/gms/common/api/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/cb;->aCA:Lcom/google/android/gms/common/api/a$a;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/cb;->aGu:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/api/internal/cb;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/common/api/internal/cb;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/cb;->aGt:Z

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/google/android/gms/common/api/internal/cb;->aGt:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cb;->aCz:Lcom/google/android/gms/common/api/a;

    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/cb;->aCz:Lcom/google/android/gms/common/api/a;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cb;->aCA:Lcom/google/android/gms/common/api/a$a;

    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/cb;->aCA:Lcom/google/android/gms/common/api/a$a;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/cb;->aGu:I

    return v0
.end method
