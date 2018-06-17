.class public final Lcom/google/android/gms/internal/ng;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static baa:I

.field private static bab:I

.field private static bac:I

.field private static bad:I

.field public static final bae:[I

.field public static final baf:[J

.field public static final bag:[F

.field public static final bah:[D

.field public static final bai:[Z

.field public static final baj:[[B

.field public static final bak:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xb

    sput v0, Lcom/google/android/gms/internal/ng;->baa:I

    const/16 v0, 0xc

    sput v0, Lcom/google/android/gms/internal/ng;->bab:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/internal/ng;->bac:I

    const/16 v0, 0x1a

    sput v0, Lcom/google/android/gms/internal/ng;->bad:I

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/ng;->bae:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/ng;->baf:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/ng;->bag:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/ng;->bah:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/ng;->bai:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/ng;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/ng;->baj:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/ng;->bak:[B

    return-void
.end method

.method public static final b(Lcom/google/android/gms/internal/mu;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mu;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mu;->cU(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mu;->sI()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mu;->cU(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/mu;->av(II)V

    return v0
.end method
