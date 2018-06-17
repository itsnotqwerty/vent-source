.class public final Lcom/google/android/gms/common/f;
.super Lcom/google/android/gms/common/y;


# static fields
.field public static final aCp:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/gms/common/y;->aCp:I

    sput v0, Lcom/google/android/gms/common/f;->aCp:I

    return-void
.end method

.method public static x(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/y;->x(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
