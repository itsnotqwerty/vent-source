.class public final Lcom/google/android/gms/ads/b/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public azA:Lcom/google/android/gms/ads/j;

.field public azw:Z

.field public azx:I

.field public azy:Z

.field public azz:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/ads/b/d$a;->azw:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/b/d$a;->azx:I

    iput-boolean v1, p0, Lcom/google/android/gms/ads/b/d$a;->azy:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/b/d$a;->azz:I

    return-void
.end method
