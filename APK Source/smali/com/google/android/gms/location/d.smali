.class public final Lcom/google/android/gms/location/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/d$a;
    }
.end annotation


# static fields
.field private static final aYT:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g",
            "<",
            "Lcom/google/android/gms/internal/fl;",
            ">;"
        }
    .end annotation
.end field

.field private static final aYV:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/internal/fl;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final aYZ:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final bdA:Lcom/google/android/gms/location/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final bdB:Lcom/google/android/gms/location/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final bdC:Lcom/google/android/gms/location/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/d;->aYT:Lcom/google/android/gms/common/api/a$g;

    new-instance v0, Lcom/google/android/gms/location/i;

    invoke-direct {v0}, Lcom/google/android/gms/location/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/d;->aYV:Lcom/google/android/gms/common/api/a$b;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "LocationServices.API"

    sget-object v2, Lcom/google/android/gms/location/d;->aYV:Lcom/google/android/gms/common/api/a$b;

    sget-object v3, Lcom/google/android/gms/location/d;->aYT:Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/android/gms/location/d;->aYZ:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/er;

    invoke-direct {v0}, Lcom/google/android/gms/internal/er;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/d;->bdA:Lcom/google/android/gms/location/a;

    new-instance v0, Lcom/google/android/gms/internal/ey;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ey;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/d;->bdB:Lcom/google/android/gms/location/b;

    new-instance v0, Lcom/google/android/gms/internal/fr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fr;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/d;->bdC:Lcom/google/android/gms/location/e;

    return-void
.end method

.method public static b(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/internal/fl;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/ae;->b(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/location/d;->aYT:Lcom/google/android/gms/common/api/a$g;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fl;

    if-eqz v0, :cond_1

    :goto_1
    const-string v2, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ae;->a(ZLjava/lang/Object;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
