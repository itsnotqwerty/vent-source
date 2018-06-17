.class public final Lcom/google/android/gms/common/internal/m;
.super Ljava/lang/Object;


# instance fields
.field final aHF:Ljava/lang/String;

.field final aHG:Ljava/lang/String;

.field private final aHH:Z

.field final aHt:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/m;->aHG:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/m;->aHF:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/m;->aHH:Z

    const/16 v0, 0x81

    iput v0, p0, Lcom/google/android/gms/common/internal/m;->aHt:I

    return-void
.end method
