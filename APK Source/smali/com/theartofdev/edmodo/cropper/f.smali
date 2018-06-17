.class public final Lcom/theartofdev/edmodo/cropper/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/theartofdev/edmodo/cropper/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bQA:I

.field public bQB:I

.field public bQC:I

.field public bQD:I

.field public bQE:I

.field public bQF:I

.field public bQG:Ljava/lang/CharSequence;

.field public bQH:I

.field public bQI:Landroid/net/Uri;

.field public bQJ:Landroid/graphics/Bitmap$CompressFormat;

.field public bQK:I

.field public bQL:I

.field public bQM:I

.field public bQN:I

.field public bQO:Z

.field public bQP:Landroid/graphics/Rect;

.field public bQQ:I

.field public bQR:Z

.field public bQS:Z

.field public bQT:Z

.field public bQU:I

.field public bQV:Z

.field public bQW:Z

.field public bQX:Ljava/lang/CharSequence;

.field public bQY:I

.field public bQe:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

.field public bQf:F

.field public bQg:F

.field public bQh:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

.field public bQi:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

.field public bQj:Z

.field public bQk:Z

.field public bQl:Z

.field public bQm:Z

.field public bQn:I

.field public bQo:F

.field public bQp:Z

.field public bQq:I

.field public bQr:I

.field public bQs:F

.field public bQt:I

.field public bQu:F

.field public bQv:F

.field public bQw:F

.field public bQx:I

.field public bQy:F

.field public bQz:I

.field public backgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/theartofdev/edmodo/cropper/f$1;

    invoke-direct {v0}, Lcom/theartofdev/edmodo/cropper/f$1;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/high16 v6, 0x42280000    # 42.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/16 v4, 0xff

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->bRN:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQe:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    invoke-static {v2, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQf:F

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQg:F

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->bRR:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQh:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->bSa:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQi:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    iput-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/f;->bQj:Z

    iput-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/f;->bQk:Z

    iput-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/f;->bQl:Z

    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/f;->bQm:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQn:I

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQo:F

    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/f;->bQp:Z

    iput v2, p0, Lcom/theartofdev/edmodo/cropper/f;->bQq:I

    iput v2, p0, Lcom/theartofdev/edmodo/cropper/f;->bQr:I

    invoke-static {v2, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQs:F

    const/16 v1, 0xaa

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQt:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQu:F

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQv:F

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQw:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQx:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQy:F

    const/16 v1, 0xaa

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQz:I

    const/16 v1, 0x77

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->backgroundColor:I

    invoke-static {v2, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQA:I

    invoke-static {v2, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQB:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQC:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQD:I

    const v0, 0x1869f

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQE:I

    const v0, 0x1869f

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQF:I

    const-string v0, ""

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQG:Ljava/lang/CharSequence;

    iput v3, p0, Lcom/theartofdev/edmodo/cropper/f;->bQH:I

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQI:Landroid/net/Uri;

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQJ:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQK:I

    iput v3, p0, Lcom/theartofdev/edmodo/cropper/f;->bQL:I

    iput v3, p0, Lcom/theartofdev/edmodo/cropper/f;->bQM:I

    sget v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRU:I

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQN:I

    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/f;->bQO:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQP:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQQ:I

    iput-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/f;->bQR:Z

    iput-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/f;->bQS:Z

    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/f;->bQT:Z

    const/16 v0, 0x5a

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQU:I

    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/f;->bQV:Z

    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/f;->bQW:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQX:Ljava/lang/CharSequence;

    iput v3, p0, Lcom/theartofdev/edmodo/cropper/f;->bQY:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQe:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQf:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQg:F

    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQh:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQi:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQj:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQk:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQl:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQm:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQo:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQs:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQt:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQu:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQv:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQw:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQx:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQy:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQz:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->backgroundColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQA:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQB:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQC:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQD:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQE:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQF:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQG:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQH:I

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQJ:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQK:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQL:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQM:I

    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->AM()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget v0, v0, v3

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQN:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQO:Z

    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQP:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQQ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQR:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQS:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQT:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQU:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQV:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    :goto_a
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQW:Z

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQX:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQY:I

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v2

    goto :goto_9

    :cond_a
    move v1, v2

    goto :goto_a
.end method


# virtual methods
.method public final ak()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQn:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max zoom to a number < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQg:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set touch radius value to a number <= 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQo:F

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQo:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set initial crop window padding value to a number < 0 or >= 0.5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQq:I

    if-gtz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQr:I

    if-gtz v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQs:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set line thickness value to a number less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQu:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set corner thickness value to a number less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQy:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set guidelines thickness value to a number less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQB:I

    if-gez v0, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop window height value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQC:I

    if-gez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop result width value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQD:I

    if-gez v0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop result height value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQE:I

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQC:I

    if-ge v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max crop result width to smaller value than min crop result width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQF:I

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/f;->bQD:I

    if-ge v0, v1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max crop result height to smaller value than min crop result height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQL:I

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set request width value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQM:I

    if-gez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set request height value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQU:I

    if-ltz v0, :cond_10

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQU:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_11

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set rotation degrees value to a number < 0 or > 360"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQe:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQf:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQg:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQh:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQi:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQj:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQk:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQl:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQm:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQo:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQp:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQs:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQu:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQv:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQA:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQD:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQE:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQG:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQI:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQJ:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQK:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQL:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQM:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQN:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQO:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQP:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQQ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQR:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQS:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQT:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQU:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQV:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQW:Z

    if-eqz v0, :cond_a

    :goto_a
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQX:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->bQY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v2

    goto :goto_9

    :cond_a
    move v1, v2

    goto :goto_a
.end method
