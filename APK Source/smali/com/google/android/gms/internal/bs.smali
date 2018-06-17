.class final Lcom/google/android/gms/internal/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aNm:Lcom/google/android/gms/internal/bp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bs;->aNm:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bs;->aNm:Lcom/google/android/gms/internal/bp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bp;->px()V

    return-void
.end method
