.class final Landroid/support/v4/app/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final wA:Z

.field final wI:[I

.field final wp:I

.field final wq:I

.field final wu:I

.field final wv:Ljava/lang/CharSequence;

.field final ww:I

.field final wx:Ljava/lang/CharSequence;

.field final wy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final wz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/app/d$1;

    invoke-direct {v0}, Landroid/support/v4/app/d$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/d;->wI:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/d;->wp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/d;->wq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/d;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/d;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/d;->wu:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/d;->wv:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/d;->ww:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/d;->wx:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/d;->wy:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/d;->wz:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/d;->wA:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/c;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v1, v3, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/app/d;->wI:[I

    iget-boolean v1, p1, Landroid/support/v4/app/c;->wr:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v0, p1, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    iget-object v4, p0, Landroid/support/v4/app/d;->wI:[I

    add-int/lit8 v5, v1, 0x1

    iget v6, v0, Landroid/support/v4/app/c$a;->wC:I

    aput v6, v4, v1

    iget-object v4, p0, Landroid/support/v4/app/d;->wI:[I

    add-int/lit8 v6, v5, 0x1

    iget-object v1, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    iget v1, v1, Landroid/support/v4/app/i;->mIndex:I

    :goto_1
    aput v1, v4, v5

    iget-object v1, p0, Landroid/support/v4/app/d;->wI:[I

    add-int/lit8 v4, v6, 0x1

    iget v5, v0, Landroid/support/v4/app/c$a;->wE:I

    aput v5, v1, v6

    iget-object v1, p0, Landroid/support/v4/app/d;->wI:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v0, Landroid/support/v4/app/c$a;->wF:I

    aput v6, v1, v4

    iget-object v1, p0, Landroid/support/v4/app/d;->wI:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v0, Landroid/support/v4/app/c$a;->wG:I

    aput v6, v1, v5

    iget-object v5, p0, Landroid/support/v4/app/d;->wI:[I

    add-int/lit8 v1, v4, 0x1

    iget v0, v0, Landroid/support/v4/app/c$a;->wH:I

    aput v0, v5, v4

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    iget v0, p1, Landroid/support/v4/app/c;->wp:I

    iput v0, p0, Landroid/support/v4/app/d;->wp:I

    iget v0, p1, Landroid/support/v4/app/c;->wq:I

    iput v0, p0, Landroid/support/v4/app/d;->wq:I

    iget-object v0, p1, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/d;->mName:Ljava/lang/String;

    iget v0, p1, Landroid/support/v4/app/c;->mIndex:I

    iput v0, p0, Landroid/support/v4/app/d;->mIndex:I

    iget v0, p1, Landroid/support/v4/app/c;->wu:I

    iput v0, p0, Landroid/support/v4/app/d;->wu:I

    iget-object v0, p1, Landroid/support/v4/app/c;->wv:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/d;->wv:Ljava/lang/CharSequence;

    iget v0, p1, Landroid/support/v4/app/c;->ww:I

    iput v0, p0, Landroid/support/v4/app/d;->ww:I

    iget-object v0, p1, Landroid/support/v4/app/c;->wx:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/d;->wx:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/support/v4/app/c;->wy:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/d;->wy:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/support/v4/app/c;->wz:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/d;->wz:Ljava/util/ArrayList;

    iget-boolean v0, p1, Landroid/support/v4/app/c;->wA:Z

    iput-boolean v0, p0, Landroid/support/v4/app/d;->wA:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/o;)Landroid/support/v4/app/c;
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    new-instance v3, Landroid/support/v4/app/c;

    invoke-direct {v3, p1}, Landroid/support/v4/app/c;-><init>(Landroid/support/v4/app/o;)V

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/d;->wI:[I

    array-length v0, v0

    if-ge v2, v0, :cond_2

    new-instance v4, Landroid/support/v4/app/c$a;

    invoke-direct {v4}, Landroid/support/v4/app/c$a;-><init>()V

    iget-object v0, p0, Landroid/support/v4/app/d;->wI:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v0, v2

    iput v0, v4, Landroid/support/v4/app/c$a;->wC:I

    sget-boolean v0, Landroid/support/v4/app/o;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Instantiate "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " op #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " base fragment #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Landroid/support/v4/app/d;->wI:[I

    aget v6, v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/d;->wI:[I

    add-int/lit8 v2, v5, 0x1

    aget v0, v0, v5

    if-ltz v0, :cond_1

    iget-object v5, p1, Landroid/support/v4/app/o;->xy:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/i;

    iput-object v0, v4, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/d;->wI:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v0, v2

    iput v0, v4, Landroid/support/v4/app/c$a;->wE:I

    iget-object v0, p0, Landroid/support/v4/app/d;->wI:[I

    add-int/lit8 v2, v5, 0x1

    aget v0, v0, v5

    iput v0, v4, Landroid/support/v4/app/c$a;->wF:I

    iget-object v0, p0, Landroid/support/v4/app/d;->wI:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v0, v2

    iput v0, v4, Landroid/support/v4/app/c$a;->wG:I

    iget-object v0, p0, Landroid/support/v4/app/d;->wI:[I

    add-int/lit8 v2, v5, 0x1

    aget v0, v0, v5

    iput v0, v4, Landroid/support/v4/app/c$a;->wH:I

    iget v0, v4, Landroid/support/v4/app/c$a;->wE:I

    iput v0, v3, Landroid/support/v4/app/c;->wl:I

    iget v0, v4, Landroid/support/v4/app/c$a;->wF:I

    iput v0, v3, Landroid/support/v4/app/c;->wm:I

    iget v0, v4, Landroid/support/v4/app/c$a;->wG:I

    iput v0, v3, Landroid/support/v4/app/c;->wn:I

    iget v0, v4, Landroid/support/v4/app/c$a;->wH:I

    iput v0, v3, Landroid/support/v4/app/c;->wo:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/c$a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, v4, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/support/v4/app/d;->wp:I

    iput v0, v3, Landroid/support/v4/app/c;->wp:I

    iget v0, p0, Landroid/support/v4/app/d;->wq:I

    iput v0, v3, Landroid/support/v4/app/c;->wq:I

    iget-object v0, p0, Landroid/support/v4/app/d;->mName:Ljava/lang/String;

    iput-object v0, v3, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    iget v0, p0, Landroid/support/v4/app/d;->mIndex:I

    iput v0, v3, Landroid/support/v4/app/c;->mIndex:I

    iput-boolean v7, v3, Landroid/support/v4/app/c;->wr:Z

    iget v0, p0, Landroid/support/v4/app/d;->wu:I

    iput v0, v3, Landroid/support/v4/app/c;->wu:I

    iget-object v0, p0, Landroid/support/v4/app/d;->wv:Ljava/lang/CharSequence;

    iput-object v0, v3, Landroid/support/v4/app/c;->wv:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/support/v4/app/d;->ww:I

    iput v0, v3, Landroid/support/v4/app/c;->ww:I

    iget-object v0, p0, Landroid/support/v4/app/d;->wx:Ljava/lang/CharSequence;

    iput-object v0, v3, Landroid/support/v4/app/c;->wx:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v4/app/d;->wy:Ljava/util/ArrayList;

    iput-object v0, v3, Landroid/support/v4/app/c;->wy:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v4/app/d;->wz:Ljava/util/ArrayList;

    iput-object v0, v3, Landroid/support/v4/app/c;->wz:Ljava/util/ArrayList;

    iget-boolean v0, p0, Landroid/support/v4/app/d;->wA:Z

    iput-boolean v0, v3, Landroid/support/v4/app/c;->wA:Z

    invoke-virtual {v3, v7}, Landroid/support/v4/app/c;->V(I)V

    return-object v3
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/d;->wI:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v1, p0, Landroid/support/v4/app/d;->wp:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/support/v4/app/d;->wq:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/support/v4/app/d;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/app/d;->mIndex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/support/v4/app/d;->wu:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/support/v4/app/d;->wv:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v1, p0, Landroid/support/v4/app/d;->ww:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/support/v4/app/d;->wx:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v1, p0, Landroid/support/v4/app/d;->wy:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v1, p0, Landroid/support/v4/app/d;->wz:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean v1, p0, Landroid/support/v4/app/d;->wA:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
