.class public Lcom/google/android/gms/internal/jp;
.super Ljava/lang/Object;


# instance fields
.field public aWh:Ljava/lang/String;

.field public aWi:Ljava/lang/String;

.field public aWj:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/jp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/jp;->aWh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/jp;->aWh:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/jp;->aWi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/jp;->aWi:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/android/gms/internal/jp;->aWj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/jp;->aWj:J

    return-void
.end method
