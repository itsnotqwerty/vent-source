.class public final Lcom/google/android/gms/internal/gp;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/gp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final aRH:Lcom/google/android/gms/internal/gm;

.field public final aRS:J

.field public final aRb:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/gp;J)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    iput-object v0, p0, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    iget-object v0, p1, Lcom/google/android/gms/internal/gp;->aRb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gp;->aRb:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/gp;->aRS:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/gm;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    iput-object p3, p0, Lcom/google/android/gms/internal/gp;->aRb:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/gp;->aRS:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->aRb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "origin="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/gp;->aRH:Lcom/google/android/gms/internal/gm;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/gp;->aRb:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/gp;->aRS:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void
.end method
