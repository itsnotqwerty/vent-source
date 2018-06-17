.class public Lcom/google/android/gms/ads/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/b$a;
    }
.end annotation


# instance fields
.field private final ayW:Lcom/google/android/gms/internal/nt;

.field public final ayX:Lcom/google/android/gms/internal/oo;

.field public final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/oo;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/nt;->baR:Lcom/google/android/gms/internal/nt;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/oo;Lcom/google/android/gms/internal/nt;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/oo;Lcom/google/android/gms/internal/nt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/b;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/b;->ayX:Lcom/google/android/gms/internal/oo;

    iput-object p3, p0, Lcom/google/android/gms/ads/b;->ayW:Lcom/google/android/gms/internal/nt;

    return-void
.end method
