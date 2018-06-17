.class final Lcom/google/android/gms/internal/ji;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVD:Ljava/lang/String;

.field private synthetic aVJ:Ljava/lang/String;

.field private synthetic aVW:Lcom/google/android/gms/internal/ja;

.field private synthetic aWb:J

.field private synthetic aWc:Landroid/os/Bundle;

.field private synthetic aWd:Z

.field private synthetic aWe:Z

.field private synthetic aWf:Z

.field private synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ja;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZ)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ji;->aVW:Lcom/google/android/gms/internal/ja;

    iput-object p2, p0, Lcom/google/android/gms/internal/ji;->aVJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ji;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ji;->aWb:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ji;->aWc:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ji;->aWd:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ji;->aWe:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ji;->aWf:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ji;->aVD:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v1, p0, Lcom/google/android/gms/internal/ji;->aVW:Lcom/google/android/gms/internal/ja;

    iget-object v2, p0, Lcom/google/android/gms/internal/ji;->aVJ:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ji;->val$name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ji;->aWb:J

    iget-object v6, p0, Lcom/google/android/gms/internal/ji;->aWc:Landroid/os/Bundle;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ji;->aWd:Z

    iget-boolean v8, p0, Lcom/google/android/gms/internal/ji;->aWe:Z

    iget-boolean v9, p0, Lcom/google/android/gms/internal/ji;->aWf:Z

    iget-object v10, p0, Lcom/google/android/gms/internal/ji;->aVD:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ja;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
