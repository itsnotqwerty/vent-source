.class final Lcom/google/android/gms/internal/jj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVJ:Ljava/lang/String;

.field private synthetic aVW:Lcom/google/android/gms/internal/ja;

.field private synthetic aWb:J

.field private synthetic aWg:Ljava/lang/Object;

.field private synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ja;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/jj;->aVW:Lcom/google/android/gms/internal/ja;

    iput-object p2, p0, Lcom/google/android/gms/internal/jj;->aVJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/jj;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/jj;->aWg:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/google/android/gms/internal/jj;->aWb:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->aVW:Lcom/google/android/gms/internal/ja;

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->aVJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/jj;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/jj;->aWg:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/internal/jj;->aWb:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ja;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
