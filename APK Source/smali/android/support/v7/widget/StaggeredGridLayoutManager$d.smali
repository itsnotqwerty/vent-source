.class public final Landroid/support/v7/widget/StaggeredGridLayoutManager$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
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
            "Landroid/support/v7/widget/StaggeredGridLayoutManager$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field acB:Z

.field acd:Z

.field acz:I

.field aiC:I

.field aiD:I

.field aiE:[I

.field aiF:I

.field aiG:[I

.field aim:Z

.field aiy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d$1;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$d$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acz:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiC:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiE:[I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiE:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiF:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiF:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiF:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiG:[I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiG:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acB:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_2
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aim:Z

    const-class v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiy:Ljava/util/List;

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    iget v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acz:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acz:I

    iget v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiC:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiC:I

    iget-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiE:[I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiE:[I

    iget v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiF:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiF:I

    iget-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiG:[I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiG:[I

    iget-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acd:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acd:Z

    iget-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acB:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acB:Z

    iget-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aim:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aim:Z

    iget-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiy:Ljava/util/List;

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiy:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiE:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiF:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiG:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acd:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acB:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aim:Z

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiy:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method
