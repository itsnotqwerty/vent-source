.class final Lcom/google/android/gms/internal/de;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ck;


# instance fields
.field final synthetic aPn:Ljava/lang/Integer;

.field private synthetic aPo:Lcom/google/android/gms/internal/bd;

.field final synthetic aPp:Lcom/google/android/gms/internal/cw;

.field final synthetic aPq:Landroid/app/job/JobParameters;

.field final synthetic aPr:Lcom/google/android/gms/internal/dd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dd;Ljava/lang/Integer;Lcom/google/android/gms/internal/bd;Lcom/google/android/gms/internal/cw;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/de;->aPr:Lcom/google/android/gms/internal/dd;

    iput-object p2, p0, Lcom/google/android/gms/internal/de;->aPn:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/de;->aPo:Lcom/google/android/gms/internal/bd;

    iput-object p4, p0, Lcom/google/android/gms/internal/de;->aPp:Lcom/google/android/gms/internal/cw;

    iput-object p5, p0, Lcom/google/android/gms/internal/de;->aPq:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final pF()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/de;->aPr:Lcom/google/android/gms/internal/dd;

    iget-object v0, v0, Lcom/google/android/gms/internal/dd;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/df;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/df;-><init>(Lcom/google/android/gms/internal/de;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
