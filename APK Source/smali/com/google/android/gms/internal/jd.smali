.class final Lcom/google/android/gms/internal/jd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVW:Lcom/google/android/gms/internal/ja;

.field private synthetic aVX:Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ja;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jd;->aVW:Lcom/google/android/gms/internal/ja;

    iput-object p2, p0, Lcom/google/android/gms/internal/jd;->aVX:Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->aVW:Lcom/google/android/gms/internal/ja;

    iget-object v1, p0, Lcom/google/android/gms/internal/jd;->aVX:Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ja;->b(Lcom/google/android/gms/internal/ja;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method
