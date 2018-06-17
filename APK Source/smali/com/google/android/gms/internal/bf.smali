.class public final Lcom/google/android/gms/internal/bf;
.super Ljava/lang/Object;


# instance fields
.field final aCq:Landroid/content/Context;

.field final aMH:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/bf;->aCq:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/bf;->aMH:Landroid/content/Context;

    return-void
.end method
