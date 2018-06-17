.class final Lcom/google/android/gms/internal/cf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/c;


# instance fields
.field private aNE:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/cf;->aNE:I

    return-void
.end method


# virtual methods
.method public final getLogLevel()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cf;->aNE:I

    return v0
.end method
