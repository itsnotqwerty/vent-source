.class public final Lcom/google/android/gms/c/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/g$a;
    }
.end annotation


# static fields
.field public static final bdV:Ljava/util/concurrent/Executor;

.field static final bdW:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/g$a;

    invoke-direct {v0}, Lcom/google/android/gms/c/g$a;-><init>()V

    sput-object v0, Lcom/google/android/gms/c/g;->bdV:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/c/q;

    invoke-direct {v0}, Lcom/google/android/gms/c/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/c/g;->bdW:Ljava/util/concurrent/Executor;

    return-void
.end method
