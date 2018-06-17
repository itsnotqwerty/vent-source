.class final Lcom/google/android/gms/internal/df;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aPs:Lcom/google/android/gms/internal/de;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/de;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/df;->aPs:Lcom/google/android/gms/internal/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/df;->aPs:Lcom/google/android/gms/internal/de;

    iget-object v0, v0, Lcom/google/android/gms/internal/de;->aPn:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/df;->aPs:Lcom/google/android/gms/internal/de;

    iget-object v0, v0, Lcom/google/android/gms/internal/de;->aPr:Lcom/google/android/gms/internal/dd;

    iget-object v0, v0, Lcom/google/android/gms/internal/dd;->aPl:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/internal/dg;

    iget-object v1, p0, Lcom/google/android/gms/internal/df;->aPs:Lcom/google/android/gms/internal/de;

    iget-object v1, v1, Lcom/google/android/gms/internal/de;->aPn:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/dg;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/df;->aPs:Lcom/google/android/gms/internal/de;

    iget-object v0, v0, Lcom/google/android/gms/internal/de;->aPp:Lcom/google/android/gms/internal/cw;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/df;->aPs:Lcom/google/android/gms/internal/de;

    iget-object v0, v0, Lcom/google/android/gms/internal/de;->aPp:Lcom/google/android/gms/internal/cw;

    const-string v1, "AnalyticsJobService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/df;->aPs:Lcom/google/android/gms/internal/de;

    iget-object v0, v0, Lcom/google/android/gms/internal/de;->aPr:Lcom/google/android/gms/internal/dd;

    iget-object v0, v0, Lcom/google/android/gms/internal/dd;->aPl:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/internal/dg;

    iget-object v1, p0, Lcom/google/android/gms/internal/df;->aPs:Lcom/google/android/gms/internal/de;

    iget-object v1, v1, Lcom/google/android/gms/internal/de;->aPq:Landroid/app/job/JobParameters;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/dg;->a(Landroid/app/job/JobParameters;)V

    goto :goto_0
.end method
