.class public final Landroid/support/v7/widget/LinearLayoutManager$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v7/widget/LinearLayoutManager$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field acA:I

.field acB:Z

.field acz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$d$1;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$d$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/LinearLayoutManager$d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$d;->acz:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$d;->acA:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$d;->acB:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$d;->acz:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$d;->acz:I

    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$d;->acA:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$d;->acA:I

    iget-boolean v0, p1, Landroid/support/v7/widget/LinearLayoutManager$d;->acB:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$d;->acB:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final hu()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$d;->acz:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$d;->acz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$d;->acA:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$d;->acB:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method