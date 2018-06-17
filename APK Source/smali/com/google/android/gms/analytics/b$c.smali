.class public final Lcom/google/android/gms/analytics/b$c;
.super Lcom/google/android/gms/analytics/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/b$b",
        "<",
        "Lcom/google/android/gms/analytics/b$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/b$b;-><init>()V

    const-string v0, "&t"

    const-string v1, "screenview"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/b$b;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/b$b;

    return-void
.end method
