.class final Lcom/google/android/gms/internal/ld;
.super Ljava/lang/Object;


# instance fields
.field final aQx:Ljava/lang/String;

.field final aRb:Ljava/lang/String;

.field final aXh:J

.field final name:Ljava/lang/String;

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ld;->aQx:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ld;->aRb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ld;->name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ld;->aXh:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ld;->value:Ljava/lang/Object;

    return-void
.end method
