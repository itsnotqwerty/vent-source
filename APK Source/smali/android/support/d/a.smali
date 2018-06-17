.class public final Landroid/support/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/d/a$a;,
        Landroid/support/d/a$c;,
        Landroid/support/d/a$b;,
        Landroid/support/d/a$d;
    }
.end annotation


# static fields
.field private static final rX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final rY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final rZ:[I

.field private static final sA:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sB:Ljava/nio/charset/Charset;

.field static final sC:[B

.field private static final sT:Ljava/util/regex/Pattern;

.field private static final sU:Ljava/util/regex/Pattern;

.field public static final sa:[I

.field public static final sb:[I

.field static final sc:[B

.field private static final sd:[B

.field private static final se:[B

.field private static sf:Ljava/text/SimpleDateFormat;

.field static final sg:[Ljava/lang/String;

.field static final sh:[I

.field private static final si:[B

.field private static final sj:[Landroid/support/d/a$c;

.field private static final sk:[Landroid/support/d/a$c;

.field private static final sl:[Landroid/support/d/a$c;

.field private static final sm:[Landroid/support/d/a$c;

.field private static final sn:[Landroid/support/d/a$c;

.field private static final so:Landroid/support/d/a$c;

.field private static final sp:[Landroid/support/d/a$c;

.field private static final sq:[Landroid/support/d/a$c;

.field private static final sr:[Landroid/support/d/a$c;

.field private static final ss:[Landroid/support/d/a$c;

.field static final st:[[Landroid/support/d/a$c;

.field private static final su:[Landroid/support/d/a$c;

.field private static final sv:Landroid/support/d/a$c;

.field private static final sw:Landroid/support/d/a$c;

.field private static final sx:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/support/d/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final sy:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/d/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final sz:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final sD:Ljava/lang/String;

.field private final sE:Landroid/content/res/AssetManager$AssetInputStream;

.field private sF:I

.field private final sG:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/d/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private sH:Ljava/nio/ByteOrder;

.field private sI:Z

.field private sJ:I

.field private sK:I

.field private sL:[B

.field private sM:I

.field private sN:I

.field private sO:I

.field private sP:I

.field private sQ:I

.field private sR:I

.field private sS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v1, 0x0

    new-array v0, v11, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v9

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/support/d/a;->rX:Ljava/util/List;

    new-array v0, v11, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/support/d/a;->rY:Ljava/util/List;

    new-array v0, v8, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/d/a;->rZ:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v11, v0, v1

    sput-object v0, Landroid/support/d/a;->sa:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v2, 0x8

    aput v2, v0, v1

    sput-object v0, Landroid/support/d/a;->sb:[I

    new-array v0, v8, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/d/a;->sc:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/support/d/a;->sd:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Landroid/support/d/a;->se:[B

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "BYTE"

    aput-object v3, v0, v2

    const-string v2, "STRING"

    aput-object v2, v0, v9

    const-string v2, "USHORT"

    aput-object v2, v0, v8

    const-string v2, "ULONG"

    aput-object v2, v0, v11

    const-string v2, "URATIONAL"

    aput-object v2, v0, v10

    const/4 v2, 0x6

    const-string v3, "SBYTE"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "UNDEFINED"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "SSHORT"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "SLONG"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "SRATIONAL"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "SINGLE"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "DOUBLE"

    aput-object v3, v0, v2

    sput-object v0, Landroid/support/d/a;->sg:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/support/d/a;->sh:[I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Landroid/support/d/a;->si:[B

    const/16 v0, 0x29

    new-array v0, v0, [Landroid/support/d/a$c;

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "NewSubfileType"

    const/16 v4, 0xfe

    invoke-direct {v2, v3, v4, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v1

    const/4 v2, 0x1

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SubfileType"

    const/16 v5, 0xff

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "ImageWidth"

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IB)V

    aput-object v2, v0, v9

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "ImageLength"

    const/16 v4, 0x101

    invoke-direct {v2, v3, v4, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IB)V

    aput-object v2, v0, v8

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "BitsPerSample"

    const/16 v4, 0x102

    invoke-direct {v2, v3, v4, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v11

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "Compression"

    const/16 v4, 0x103

    invoke-direct {v2, v3, v4, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v10

    const/4 v2, 0x6

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "PhotometricInterpretation"

    const/16 v5, 0x106

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/4 v2, 0x7

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ImageDescription"

    const/16 v5, 0x10e

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x8

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Make"

    const/16 v5, 0x10f

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x9

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Model"

    const/16 v5, 0x110

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xa

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "StripOffsets"

    const/16 v5, 0x111

    invoke-direct {v3, v4, v5, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IB)V

    aput-object v3, v0, v2

    const/16 v2, 0xb

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Orientation"

    const/16 v5, 0x112

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xc

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SamplesPerPixel"

    const/16 v5, 0x115

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xd

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "RowsPerStrip"

    const/16 v5, 0x116

    invoke-direct {v3, v4, v5, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IB)V

    aput-object v3, v0, v2

    const/16 v2, 0xe

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "StripByteCounts"

    const/16 v5, 0x117

    invoke-direct {v3, v4, v5, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IB)V

    aput-object v3, v0, v2

    const/16 v2, 0xf

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "XResolution"

    const/16 v5, 0x11a

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x10

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "YResolution"

    const/16 v5, 0x11b

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x11

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "PlanarConfiguration"

    const/16 v5, 0x11c

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x12

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ResolutionUnit"

    const/16 v5, 0x128

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x13

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "TransferFunction"

    const/16 v5, 0x12d

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x14

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Software"

    const/16 v5, 0x131

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x15

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "DateTime"

    const/16 v5, 0x132

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x16

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Artist"

    const/16 v5, 0x13b

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x17

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "WhitePoint"

    const/16 v5, 0x13e

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x18

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "PrimaryChromaticities"

    const/16 v5, 0x13f

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x19

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SubIFDPointer"

    const/16 v5, 0x14a

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "JPEGInterchangeFormat"

    const/16 v5, 0x201

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "JPEGInterchangeFormatLength"

    const/16 v5, 0x202

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "YCbCrCoefficients"

    const/16 v5, 0x211

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "YCbCrSubSampling"

    const/16 v5, 0x212

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "YCbCrPositioning"

    const/16 v5, 0x213

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ReferenceBlackWhite"

    const/16 v5, 0x214

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x20

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Copyright"

    const v5, 0x8298

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x21

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ExifIFDPointer"

    const v5, 0x8769

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x22

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSInfoIFDPointer"

    const v5, 0x8825

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x23

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SensorTopBorder"

    invoke-direct {v3, v4, v11, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x24

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SensorLeftBorder"

    invoke-direct {v3, v4, v10, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x25

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SensorBottomBorder"

    const/4 v5, 0x6

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x26

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SensorRightBorder"

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x27

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ISO"

    const/16 v5, 0x17

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x28

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "JpgFromRaw"

    const/16 v5, 0x2e

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    sput-object v0, Landroid/support/d/a;->sj:[Landroid/support/d/a$c;

    const/16 v0, 0x3b

    new-array v0, v0, [Landroid/support/d/a$c;

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "ExposureTime"

    const v4, 0x829a

    invoke-direct {v2, v3, v4, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v1

    const/4 v2, 0x1

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "FNumber"

    const v5, 0x829d

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "ExposureProgram"

    const v4, 0x8822

    invoke-direct {v2, v3, v4, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v9

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "SpectralSensitivity"

    const v4, 0x8824

    invoke-direct {v2, v3, v4, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v8

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "PhotographicSensitivity"

    const v4, 0x8827

    invoke-direct {v2, v3, v4, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v11

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "OECF"

    const v4, 0x8828

    const/4 v5, 0x7

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v10

    const/4 v2, 0x6

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ExifVersion"

    const v5, 0x9000

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/4 v2, 0x7

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "DateTimeOriginal"

    const v5, 0x9003

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x8

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "DateTimeDigitized"

    const v5, 0x9004

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x9

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ComponentsConfiguration"

    const v5, 0x9101

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xa

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "CompressedBitsPerPixel"

    const v5, 0x9102

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xb

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ShutterSpeedValue"

    const v5, 0x9201

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xc

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ApertureValue"

    const v5, 0x9202

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xd

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "BrightnessValue"

    const v5, 0x9203

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xe

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ExposureBiasValue"

    const v5, 0x9204

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xf

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "MaxApertureValue"

    const v5, 0x9205

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x10

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SubjectDistance"

    const v5, 0x9206

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x11

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "MeteringMode"

    const v5, 0x9207

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x12

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "LightSource"

    const v5, 0x9208

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x13

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Flash"

    const v5, 0x9209

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x14

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "FocalLength"

    const v5, 0x920a

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x15

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SubjectArea"

    const v5, 0x9214

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x16

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "MakerNote"

    const v5, 0x927c

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x17

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "UserComment"

    const v5, 0x9286

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x18

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SubSecTime"

    const v5, 0x9290

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x19

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SubSecTimeOriginal"

    const v5, 0x9291

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SubSecTimeDigitized"

    const v5, 0x9292

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "FlashpixVersion"

    const v5, 0xa000

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ColorSpace"

    const v5, 0xa001

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "PixelXDimension"

    const v5, 0xa002

    invoke-direct {v3, v4, v5, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "PixelYDimension"

    const v5, 0xa003

    invoke-direct {v3, v4, v5, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "RelatedSoundFile"

    const v5, 0xa004

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x20

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "InteroperabilityIFDPointer"

    const v5, 0xa005

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x21

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "FlashEnergy"

    const v5, 0xa20b

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x22

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SpatialFrequencyResponse"

    const v5, 0xa20c

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x23

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "FocalPlaneXResolution"

    const v5, 0xa20e

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x24

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "FocalPlaneYResolution"

    const v5, 0xa20f

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x25

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "FocalPlaneResolutionUnit"

    const v5, 0xa210

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x26

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SubjectLocation"

    const v5, 0xa214

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x27

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ExposureIndex"

    const v5, 0xa215

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x28

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SensingMethod"

    const v5, 0xa217

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x29

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "FileSource"

    const v5, 0xa300

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SceneType"

    const v5, 0xa301

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "CFAPattern"

    const v5, 0xa302

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "CustomRendered"

    const v5, 0xa401

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ExposureMode"

    const v5, 0xa402

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "WhiteBalance"

    const v5, 0xa403

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "DigitalZoomRatio"

    const v5, 0xa404

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x30

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "FocalLengthIn35mmFilm"

    const v5, 0xa405

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x31

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SceneCaptureType"

    const v5, 0xa406

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x32

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GainControl"

    const v5, 0xa407

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x33

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Contrast"

    const v5, 0xa408

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x34

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Saturation"

    const v5, 0xa409

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x35

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Sharpness"

    const v5, 0xa40a

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x36

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "DeviceSettingDescription"

    const v5, 0xa40b

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x37

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SubjectDistanceRange"

    const v5, 0xa40c

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x38

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ImageUniqueID"

    const v5, 0xa420

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x39

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "DNGVersion"

    const v5, 0xc612

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x3a

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "DefaultCropSize"

    const v5, 0xc620

    invoke-direct {v3, v4, v5, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IB)V

    aput-object v3, v0, v2

    sput-object v0, Landroid/support/d/a;->sk:[Landroid/support/d/a$c;

    const/16 v0, 0x1f

    new-array v0, v0, [Landroid/support/d/a$c;

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "GPSVersionID"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v1

    const/4 v2, 0x1

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSLatitudeRef"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "GPSLatitude"

    invoke-direct {v2, v3, v9, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v9

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "GPSLongitudeRef"

    invoke-direct {v2, v3, v8, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v8

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "GPSLongitude"

    invoke-direct {v2, v3, v11, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v11

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "GPSAltitudeRef"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v10, v4, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v10

    const/4 v2, 0x6

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSAltitude"

    const/4 v5, 0x6

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/4 v2, 0x7

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSTimeStamp"

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x8

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSSatellites"

    const/16 v5, 0x8

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x9

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSStatus"

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xa

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSMeasureMode"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xb

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSDOP"

    const/16 v5, 0xb

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xc

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSSpeedRef"

    const/16 v5, 0xc

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xd

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSSpeed"

    const/16 v5, 0xd

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xe

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSTrackRef"

    const/16 v5, 0xe

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xf

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSTrack"

    const/16 v5, 0xf

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x10

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSImgDirectionRef"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x11

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSImgDirection"

    const/16 v5, 0x11

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x12

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSMapDatum"

    const/16 v5, 0x12

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x13

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSDestLatitudeRef"

    const/16 v5, 0x13

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x14

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSDestLatitude"

    const/16 v5, 0x14

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x15

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSDestLongitudeRef"

    const/16 v5, 0x15

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x16

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSDestLongitude"

    const/16 v5, 0x16

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x17

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSDestBearingRef"

    const/16 v5, 0x17

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x18

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSDestBearing"

    const/16 v5, 0x18

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x19

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSDestDistanceRef"

    const/16 v5, 0x19

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSDestDistance"

    const/16 v5, 0x1a

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSProcessingMethod"

    const/16 v5, 0x1b

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSAreaInformation"

    const/16 v5, 0x1c

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSDateStamp"

    const/16 v5, 0x1d

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSDifferential"

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    sput-object v0, Landroid/support/d/a;->sl:[Landroid/support/d/a$c;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/d/a$c;

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "InteroperabilityIndex"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/d/a;->sm:[Landroid/support/d/a$c;

    const/16 v0, 0x25

    new-array v0, v0, [Landroid/support/d/a$c;

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "NewSubfileType"

    const/16 v4, 0xfe

    invoke-direct {v2, v3, v4, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v1

    const/4 v2, 0x1

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SubfileType"

    const/16 v5, 0xff

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "ThumbnailImageWidth"

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IB)V

    aput-object v2, v0, v9

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "ThumbnailImageLength"

    const/16 v4, 0x101

    invoke-direct {v2, v3, v4, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IB)V

    aput-object v2, v0, v8

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "BitsPerSample"

    const/16 v4, 0x102

    invoke-direct {v2, v3, v4, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v11

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "Compression"

    const/16 v4, 0x103

    invoke-direct {v2, v3, v4, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v10

    const/4 v2, 0x6

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "PhotometricInterpretation"

    const/16 v5, 0x106

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/4 v2, 0x7

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ImageDescription"

    const/16 v5, 0x10e

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x8

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Make"

    const/16 v5, 0x10f

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x9

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Model"

    const/16 v5, 0x110

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xa

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "StripOffsets"

    const/16 v5, 0x111

    invoke-direct {v3, v4, v5, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IB)V

    aput-object v3, v0, v2

    const/16 v2, 0xb

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Orientation"

    const/16 v5, 0x112

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xc

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SamplesPerPixel"

    const/16 v5, 0x115

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0xd

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "RowsPerStrip"

    const/16 v5, 0x116

    invoke-direct {v3, v4, v5, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IB)V

    aput-object v3, v0, v2

    const/16 v2, 0xe

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "StripByteCounts"

    const/16 v5, 0x117

    invoke-direct {v3, v4, v5, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IB)V

    aput-object v3, v0, v2

    const/16 v2, 0xf

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "XResolution"

    const/16 v5, 0x11a

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x10

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "YResolution"

    const/16 v5, 0x11b

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x11

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "PlanarConfiguration"

    const/16 v5, 0x11c

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x12

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ResolutionUnit"

    const/16 v5, 0x128

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x13

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "TransferFunction"

    const/16 v5, 0x12d

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x14

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Software"

    const/16 v5, 0x131

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x15

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "DateTime"

    const/16 v5, 0x132

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x16

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Artist"

    const/16 v5, 0x13b

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x17

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "WhitePoint"

    const/16 v5, 0x13e

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x18

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "PrimaryChromaticities"

    const/16 v5, 0x13f

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x19

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "SubIFDPointer"

    const/16 v5, 0x14a

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "JPEGInterchangeFormat"

    const/16 v5, 0x201

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "JPEGInterchangeFormatLength"

    const/16 v5, 0x202

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "YCbCrCoefficients"

    const/16 v5, 0x211

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "YCbCrSubSampling"

    const/16 v5, 0x212

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "YCbCrPositioning"

    const/16 v5, 0x213

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ReferenceBlackWhite"

    const/16 v5, 0x214

    invoke-direct {v3, v4, v5, v10, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x20

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "Copyright"

    const v5, 0x8298

    invoke-direct {v3, v4, v5, v9, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x21

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ExifIFDPointer"

    const v5, 0x8769

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x22

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "GPSInfoIFDPointer"

    const v5, 0x8825

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x23

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "DNGVersion"

    const v5, 0xc612

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    const/16 v2, 0x24

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "DefaultCropSize"

    const v5, 0xc620

    invoke-direct {v3, v4, v5, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IB)V

    aput-object v3, v0, v2

    sput-object v0, Landroid/support/d/a;->sn:[Landroid/support/d/a$c;

    new-instance v0, Landroid/support/d/a$c;

    const-string v2, "StripOffsets"

    const/16 v3, 0x111

    invoke-direct {v0, v2, v3, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    sput-object v0, Landroid/support/d/a;->so:Landroid/support/d/a$c;

    new-array v0, v8, [Landroid/support/d/a$c;

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "ThumbnailImage"

    const/16 v4, 0x100

    const/4 v5, 0x7

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v1

    const/4 v2, 0x1

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "CameraSettingsIFDPointer"

    const/16 v5, 0x2020

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v4, 0x2040

    invoke-direct {v2, v3, v4, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v9

    sput-object v0, Landroid/support/d/a;->sp:[Landroid/support/d/a$c;

    new-array v0, v9, [Landroid/support/d/a$c;

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "PreviewImageStart"

    const/16 v4, 0x101

    invoke-direct {v2, v3, v4, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v1

    const/4 v2, 0x1

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "PreviewImageLength"

    const/16 v5, 0x102

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    sput-object v0, Landroid/support/d/a;->sq:[Landroid/support/d/a$c;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/d/a$c;

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "AspectFrame"

    const/16 v4, 0x1113

    invoke-direct {v2, v3, v4, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/d/a;->sr:[Landroid/support/d/a$c;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/d/a$c;

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "ColorSpace"

    const/16 v4, 0x37

    invoke-direct {v2, v3, v4, v8, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/d/a;->ss:[Landroid/support/d/a$c;

    const/16 v0, 0xa

    new-array v0, v0, [[Landroid/support/d/a$c;

    sget-object v2, Landroid/support/d/a;->sj:[Landroid/support/d/a$c;

    aput-object v2, v0, v1

    const/4 v2, 0x1

    sget-object v3, Landroid/support/d/a;->sk:[Landroid/support/d/a$c;

    aput-object v3, v0, v2

    sget-object v2, Landroid/support/d/a;->sl:[Landroid/support/d/a$c;

    aput-object v2, v0, v9

    sget-object v2, Landroid/support/d/a;->sm:[Landroid/support/d/a$c;

    aput-object v2, v0, v8

    sget-object v2, Landroid/support/d/a;->sn:[Landroid/support/d/a$c;

    aput-object v2, v0, v11

    sget-object v2, Landroid/support/d/a;->sj:[Landroid/support/d/a$c;

    aput-object v2, v0, v10

    const/4 v2, 0x6

    sget-object v3, Landroid/support/d/a;->sp:[Landroid/support/d/a$c;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    sget-object v3, Landroid/support/d/a;->sq:[Landroid/support/d/a$c;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    sget-object v3, Landroid/support/d/a;->sr:[Landroid/support/d/a$c;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    sget-object v3, Landroid/support/d/a;->ss:[Landroid/support/d/a$c;

    aput-object v3, v0, v2

    sput-object v0, Landroid/support/d/a;->st:[[Landroid/support/d/a$c;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/support/d/a$c;

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "SubIFDPointer"

    const/16 v4, 0x14a

    invoke-direct {v2, v3, v4, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v1

    const/4 v2, 0x1

    new-instance v3, Landroid/support/d/a$c;

    const-string v4, "ExifIFDPointer"

    const v5, 0x8769

    invoke-direct {v3, v4, v5, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v3, v0, v2

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "GPSInfoIFDPointer"

    const v4, 0x8825

    invoke-direct {v2, v3, v4, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v9

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "InteroperabilityIFDPointer"

    const v4, 0xa005

    invoke-direct {v2, v3, v4, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v8

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "CameraSettingsIFDPointer"

    const/16 v4, 0x2020

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v11

    new-instance v2, Landroid/support/d/a$c;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v4, 0x2040

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    aput-object v2, v0, v10

    sput-object v0, Landroid/support/d/a;->su:[Landroid/support/d/a$c;

    new-instance v0, Landroid/support/d/a$c;

    const-string v2, "JPEGInterchangeFormat"

    const/16 v3, 0x201

    invoke-direct {v0, v2, v3, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    sput-object v0, Landroid/support/d/a;->sv:Landroid/support/d/a$c;

    new-instance v0, Landroid/support/d/a$c;

    const-string v2, "JPEGInterchangeFormatLength"

    const/16 v3, 0x202

    invoke-direct {v0, v2, v3, v11, v1}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;IIB)V

    sput-object v0, Landroid/support/d/a;->sw:Landroid/support/d/a$c;

    sget-object v0, Landroid/support/d/a;->st:[[Landroid/support/d/a$c;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/support/d/a;->sx:[Ljava/util/HashMap;

    sget-object v0, Landroid/support/d/a;->st:[[Landroid/support/d/a$c;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/support/d/a;->sy:[Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "FNumber"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    const-string v4, "DigitalZoomRatio"

    aput-object v4, v2, v3

    const-string v3, "ExposureTime"

    aput-object v3, v2, v9

    const-string v3, "SubjectDistance"

    aput-object v3, v2, v8

    const-string v3, "GPSTimeStamp"

    aput-object v3, v2, v11

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/support/d/a;->sz:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/d/a;->sA:Ljava/util/HashMap;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/support/d/a;->sB:Ljava/nio/charset/Charset;

    const-string v0, "Exif\u0000\u0000"

    sget-object v2, Landroid/support/d/a;->sB:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/support/d/a;->sC:[B

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/d/a;->sf:Ljava/text/SimpleDateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move v0, v1

    :goto_0
    sget-object v2, Landroid/support/d/a;->st:[[Landroid/support/d/a$c;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Landroid/support/d/a;->sx:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v0

    sget-object v2, Landroid/support/d/a;->sy:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v0

    sget-object v2, Landroid/support/d/a;->st:[[Landroid/support/d/a$c;

    aget-object v3, v2, v0

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    sget-object v6, Landroid/support/d/a;->sx:[Ljava/util/HashMap;

    aget-object v6, v6, v0

    iget v7, v5, Landroid/support/d/a$c;->number:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Landroid/support/d/a;->sy:[Ljava/util/HashMap;

    aget-object v6, v6, v0

    iget-object v7, v5, Landroid/support/d/a$c;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/support/d/a;->sA:Ljava/util/HashMap;

    sget-object v2, Landroid/support/d/a;->su:[Landroid/support/d/a$c;

    aget-object v1, v2, v1

    iget v1, v1, Landroid/support/d/a$c;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/d/a;->sA:Ljava/util/HashMap;

    sget-object v1, Landroid/support/d/a;->su:[Landroid/support/d/a$c;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Landroid/support/d/a$c;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/d/a;->sA:Ljava/util/HashMap;

    sget-object v1, Landroid/support/d/a;->su:[Landroid/support/d/a$c;

    aget-object v1, v1, v9

    iget v1, v1, Landroid/support/d/a$c;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/d/a;->sA:Ljava/util/HashMap;

    sget-object v1, Landroid/support/d/a;->su:[Landroid/support/d/a$c;

    aget-object v1, v1, v8

    iget v1, v1, Landroid/support/d/a$c;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/d/a;->sA:Ljava/util/HashMap;

    sget-object v1, Landroid/support/d/a;->su:[Landroid/support/d/a$c;

    aget-object v1, v1, v11

    iget v1, v1, Landroid/support/d/a$c;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/d/a;->sA:Ljava/util/HashMap;

    sget-object v1, Landroid/support/d/a;->su:[Landroid/support/d/a$c;

    aget-object v1, v1, v10

    iget v1, v1, Landroid/support/d/a$c;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/support/d/a;->sT:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/support/d/a;->sU:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_4
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_5
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/d/a;->st:[[Landroid/support/d/a$c;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, p0, Landroid/support/d/a;->sD:Ljava/lang/String;

    instance-of v0, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroid/support/d/a;->sE:Landroid/content/res/AssetManager$AssetInputStream;

    :goto_0
    invoke-direct {p0, p1}, Landroid/support/d/a;->c(Ljava/io/InputStream;)V

    return-void

    :cond_1
    iput-object v1, p0, Landroid/support/d/a;->sE:Landroid/content/res/AssetManager$AssetInputStream;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/d/a;->st:[[Landroid/support/d/a$c;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v2, p0, Landroid/support/d/a;->sE:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p1, p0, Landroid/support/d/a;->sD:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v1}, Landroid/support/d/a;->c(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Landroid/support/d/a;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Landroid/support/d/a;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/support/d/a$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x9

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/support/d/a$a;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/d/a;->a(Landroid/support/d/a$a;I)V

    invoke-direct {p0, p1, v4}, Landroid/support/d/a;->b(Landroid/support/d/a$a;I)V

    invoke-direct {p0, p1, v4}, Landroid/support/d/a;->d(Landroid/support/d/a$a;I)V

    invoke-direct {p0, p1, v6}, Landroid/support/d/a;->d(Landroid/support/d/a$a;I)V

    invoke-direct {p0, p1, v5}, Landroid/support/d/a;->d(Landroid/support/d/a$a;I)V

    invoke-direct {p0, v4, v6}, Landroid/support/d/a;->k(II)V

    invoke-direct {p0, v4, v5}, Landroid/support/d/a;->k(II)V

    invoke-direct {p0, v6, v5}, Landroid/support/d/a;->k(II)V

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, v7

    const-string v1, "PixelXDimension"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/a$b;

    iget-object v1, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v1, v1, v7

    const-string v2, "PixelYDimension"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/a$b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v2, v2, v4

    const-string v3, "ImageWidth"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, v4

    const-string v2, "ImageLength"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, v6

    invoke-direct {p0, v0}, Landroid/support/d/a;->c(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    iget-object v1, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v1, v1, v6

    aput-object v1, v0, v5

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    :cond_1
    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, v5

    invoke-direct {p0, v0}, Landroid/support/d/a;->c(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ExifInterface"

    const-string v1, "No image meets the size requirements of a thumbnail image."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v0, p0, Landroid/support/d/a;->sF:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, v7

    const-string v1, "MakerNote"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/a$b;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/support/d/a$a;

    iget-object v0, v0, Landroid/support/d/a$b;->sY:[B

    invoke-direct {v1, v0}, Landroid/support/d/a$a;-><init>([B)V

    iget-object v0, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    iput-object v0, v1, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    const-wide/16 v2, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/support/d/a$a;->seek(J)V

    invoke-direct {p0, v1, v8}, Landroid/support/d/a;->b(Landroid/support/d/a$a;I)V

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, v8

    const-string v1, "ColorSpace"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/a$b;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v1, v1, v7

    const-string v2, "ColorSpace"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private a(Landroid/support/d/a$a;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/support/d/a;->c(Landroid/support/d/a$a;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    iget-object v0, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    iput-object v0, p1, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    invoke-virtual {p1}, Landroid/support/d/a$a;->readUnsignedShort()I

    move-result v0

    iget v1, p0, Landroid/support/d/a;->sF:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/support/d/a;->sF:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid start code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Landroid/support/d/a$a;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    if-lt v0, p2, :cond_2

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid first Ifd offset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/d/a$a;->skipBytes(I)I

    move-result v1

    if-eq v1, v0, :cond_3

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t jump to first Ifd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method private a(Landroid/support/d/a$a;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x6

    const/4 v8, 0x1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p1, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Landroid/support/d/a$a;->seek(J)V

    invoke-virtual {p1}, Landroid/support/d/a$a;->readByte()B

    move-result v0

    if-eq v0, v10, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid marker: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/support/d/a$a;->readByte()B

    move-result v3

    const/16 v4, -0x28

    if-eq v3, v4, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid marker: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/support/d/a$a;->readByte()B

    move-result v2

    if-eq v2, v10, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid marker:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Landroid/support/d/a$a;->readByte()B

    move-result v3

    add-int/lit8 v2, v0, 0x1

    const/16 v0, -0x27

    if-eq v3, v0, :cond_c

    const/16 v0, -0x26

    if-eq v3, v0, :cond_c

    invoke-virtual {p1}, Landroid/support/d/a$a;->readUnsignedShort()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v2, v2, 0x2

    if-gez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_1
    if-gez v0, :cond_a

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    if-lt v0, v9, :cond_4

    new-array v3, v9, [B

    invoke-virtual {p1, v3}, Landroid/support/d/a$a;->read([B)I

    move-result v4

    if-eq v4, v9, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid exif"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v0, v0, -0x6

    sget-object v4, Landroid/support/d/a;->sC:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    if-gtz v0, :cond_6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid exif"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput v2, p0, Landroid/support/d/a;->sN:I

    new-array v3, v0, [B

    invoke-virtual {p1, v3}, Landroid/support/d/a$a;->read([B)I

    move-result v4

    if-eq v4, v0, :cond_7

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid exif"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    add-int/2addr v2, v0

    new-instance v0, Landroid/support/d/a$a;

    invoke-direct {v0, v3}, Landroid/support/d/a$a;-><init>([B)V

    array-length v3, v3

    invoke-direct {p0, v0, v3}, Landroid/support/d/a;->a(Landroid/support/d/a$a;I)V

    invoke-direct {p0, v0, p3}, Landroid/support/d/a;->b(Landroid/support/d/a$a;I)V

    move v0, v1

    goto :goto_1

    :sswitch_1
    new-array v3, v0, [B

    invoke-virtual {p1, v3}, Landroid/support/d/a$a;->read([B)I

    move-result v4

    if-eq v4, v0, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid exif"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v0, "UserComment"

    invoke-direct {p0, v0}, Landroid/support/d/a;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, v8

    const-string v4, "UserComment"

    new-instance v5, Ljava/lang/String;

    sget-object v6, Landroid/support/d/a;->sB:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v5}, Landroid/support/d/a$b;->t(Ljava/lang/String;)Landroid/support/d/a$b;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v8}, Landroid/support/d/a$a;->skipBytes(I)I

    move-result v3

    if-eq v3, v8, :cond_9

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid SOFx"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v3, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v3, v3, p3

    const-string v4, "ImageLength"

    invoke-virtual {p1}, Landroid/support/d/a$a;->readUnsignedShort()I

    move-result v5

    int-to-long v6, v5

    iget-object v5, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v5}, Landroid/support/d/a$b;->a(JLjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v3, v3, p3

    const-string v4, "ImageWidth"

    invoke-virtual {p1}, Landroid/support/d/a$a;->readUnsignedShort()I

    move-result v5

    int-to-long v6, v5

    iget-object v5, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v5}, Landroid/support/d/a$b;->a(JLjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x5

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1, v0}, Landroid/support/d/a$a;->skipBytes(I)I

    move-result v3

    if-eq v3, v0, :cond_b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid JPEG segment"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    add-int/2addr v0, v2

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    iput-object v0, p1, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    return-void

    :cond_d
    move v0, v1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x40 -> :sswitch_2
        -0x3f -> :sswitch_2
        -0x3e -> :sswitch_2
        -0x3d -> :sswitch_2
        -0x3b -> :sswitch_2
        -0x3a -> :sswitch_2
        -0x39 -> :sswitch_2
        -0x37 -> :sswitch_2
        -0x36 -> :sswitch_2
        -0x35 -> :sswitch_2
        -0x33 -> :sswitch_2
        -0x32 -> :sswitch_2
        -0x31 -> :sswitch_2
        -0x1f -> :sswitch_0
        -0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Landroid/support/d/a$a;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JPEGInterchangeFormat"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/a$b;

    const-string v1, "JPEGInterchangeFormatLength"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/a$b;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v1

    invoke-virtual {p1}, Landroid/support/d/a$a;->available()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Landroid/support/d/a;->sF:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/support/d/a;->sF:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/support/d/a;->sF:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    :cond_0
    iget v2, p0, Landroid/support/d/a;->sN:I

    add-int/2addr v0, v2

    :cond_1
    :goto_0
    if-lez v0, :cond_2

    if-lez v1, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/d/a;->sI:Z

    iput v0, p0, Landroid/support/d/a;->sJ:I

    iput v1, p0, Landroid/support/d/a;->sK:I

    iget-object v2, p0, Landroid/support/d/a;->sD:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/d/a;->sE:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v2, :cond_2

    new-array v1, v1, [B

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/support/d/a$a;->seek(J)V

    invoke-virtual {p1, v1}, Landroid/support/d/a$a;->readFully([B)V

    iput-object v1, p0, Landroid/support/d/a;->sL:[B

    :cond_2
    return-void

    :cond_3
    iget v2, p0, Landroid/support/d/a;->sF:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/support/d/a;->sO:I

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private b(Landroid/support/d/a$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/16 v0, 0x54

    invoke-virtual {p1, v0}, Landroid/support/d/a$a;->skipBytes(I)I

    new-array v0, v3, [B

    new-array v2, v3, [B

    invoke-virtual {p1, v0}, Landroid/support/d/a$a;->read([B)I

    invoke-virtual {p1, v3}, Landroid/support/d/a$a;->skipBytes(I)I

    invoke-virtual {p1, v2}, Landroid/support/d/a$a;->read([B)I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const/4 v3, 0x5

    invoke-direct {p0, p1, v0, v3}, Landroid/support/d/a;->a(Landroid/support/d/a$a;II)V

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Landroid/support/d/a$a;->seek(J)V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p1, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    invoke-virtual {p1}, Landroid/support/d/a$a;->readInt()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/support/d/a$a;->readUnsignedShort()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/d/a$a;->readUnsignedShort()I

    move-result v4

    sget-object v5, Landroid/support/d/a;->so:Landroid/support/d/a$c;

    iget v5, v5, Landroid/support/d/a$c;->number:I

    if-ne v3, v5, :cond_1

    invoke-virtual {p1}, Landroid/support/d/a$a;->readShort()S

    move-result v0

    invoke-virtual {p1}, Landroid/support/d/a$a;->readShort()S

    move-result v2

    iget-object v3, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v0, v3}, Landroid/support/d/a$b;->a(ILjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v0

    iget-object v3, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v2, v3}, Landroid/support/d/a$b;->a(ILjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v2

    iget-object v3, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    const-string v4, "ImageLength"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v1, "ImageWidth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v4}, Landroid/support/d/a$a;->skipBytes(I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/support/d/a$a;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/support/d/a$a;->d(Landroid/support/d/a$a;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static/range {p1 .. p1}, Landroid/support/d/a$a;->e(Landroid/support/d/a$a;)I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/support/d/a$a;->readShort()S

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/support/d/a$a;->d(Landroid/support/d/a$a;)I

    move-result v2

    mul-int/lit8 v3, v10, 0xc

    add-int/2addr v2, v3

    invoke-static/range {p1 .. p1}, Landroid/support/d/a$a;->e(Landroid/support/d/a$a;)I

    move-result v3

    if-gt v2, v3, :cond_0

    const/4 v2, 0x0

    move v9, v2

    :goto_1
    if-ge v9, v10, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/support/d/a$a;->readUnsignedShort()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/support/d/a$a;->readUnsignedShort()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/support/d/a$a;->readInt()I

    move-result v12

    move-object/from16 v0, p1

    iget v2, v0, Landroid/support/d/a$a;->mPosition:I

    int-to-long v4, v2

    const-wide/16 v6, 0x4

    add-long v14, v4, v6

    sget-object v2, Landroid/support/d/a;->sx:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/a$c;

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_3

    const-string v5, "ExifInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "Skip the tag entry since tag number is not defined: "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v3

    :goto_2
    if-nez v4, :cond_14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/support/d/a$a;->seek(J)V

    :cond_2
    :goto_3
    add-int/lit8 v2, v9, 0x1

    int-to-short v2, v2

    move v9, v2

    goto :goto_1

    :cond_3
    if-lez v3, :cond_4

    sget-object v5, Landroid/support/d/a;->sh:[I

    array-length v5, v5

    if-lt v3, v5, :cond_5

    :cond_4
    const-string v5, "ExifInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "Skip the tag entry since data format is invalid: "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v3

    goto :goto_2

    :cond_5
    iget v5, v2, Landroid/support/d/a$c;->sZ:I

    const/4 v8, 0x7

    if-eq v5, v8, :cond_6

    const/4 v5, 0x7

    if-ne v3, v5, :cond_7

    :cond_6
    const/4 v5, 0x1

    :goto_4
    if-nez v5, :cond_10

    const-string v5, "ExifInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "Skip the tag entry since data format ("

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Landroid/support/d/a;->sg:[Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ") is unexpected for tag: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v13, v2, Landroid/support/d/a$c;->name:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v3

    goto :goto_2

    :cond_7
    iget v5, v2, Landroid/support/d/a$c;->sZ:I

    if-eq v5, v3, :cond_8

    iget v5, v2, Landroid/support/d/a$c;->ta:I

    if-ne v5, v3, :cond_9

    :cond_8
    const/4 v5, 0x1

    goto :goto_4

    :cond_9
    iget v5, v2, Landroid/support/d/a$c;->sZ:I

    const/4 v8, 0x4

    if-eq v5, v8, :cond_a

    iget v5, v2, Landroid/support/d/a$c;->ta:I

    const/4 v8, 0x4

    if-ne v5, v8, :cond_b

    :cond_a
    const/4 v5, 0x3

    if-ne v3, v5, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    iget v5, v2, Landroid/support/d/a$c;->sZ:I

    const/16 v8, 0x9

    if-eq v5, v8, :cond_c

    iget v5, v2, Landroid/support/d/a$c;->ta:I

    const/16 v8, 0x9

    if-ne v5, v8, :cond_d

    :cond_c
    const/16 v5, 0x8

    if-ne v3, v5, :cond_d

    const/4 v5, 0x1

    goto :goto_4

    :cond_d
    iget v5, v2, Landroid/support/d/a$c;->sZ:I

    const/16 v8, 0xc

    if-eq v5, v8, :cond_e

    iget v5, v2, Landroid/support/d/a$c;->ta:I

    const/16 v8, 0xc

    if-ne v5, v8, :cond_f

    :cond_e
    const/16 v5, 0xb

    if-ne v3, v5, :cond_f

    const/4 v5, 0x1

    goto :goto_4

    :cond_f
    const/4 v5, 0x0

    goto :goto_4

    :cond_10
    const/4 v5, 0x7

    if-ne v3, v5, :cond_11

    iget v3, v2, Landroid/support/d/a$c;->sZ:I

    :cond_11
    int-to-long v6, v12

    sget-object v5, Landroid/support/d/a;->sh:[I

    aget v5, v5, v3

    int-to-long v0, v5

    move-wide/from16 v16, v0

    mul-long v6, v6, v16

    const-wide/16 v16, 0x0

    cmp-long v5, v6, v16

    if-ltz v5, :cond_12

    const-wide/32 v16, 0x7fffffff

    cmp-long v5, v6, v16

    if-lez v5, :cond_13

    :cond_12
    const-string v5, "ExifInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "Skip the tag entry since the number of components is invalid: "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v3

    goto/16 :goto_2

    :cond_13
    const/4 v4, 0x1

    move v8, v3

    goto/16 :goto_2

    :cond_14
    const-wide/16 v4, 0x4

    cmp-long v3, v6, v4

    if-lez v3, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/support/d/a$a;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/d/a;->sF:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_18

    const-string v4, "MakerNote"

    iget-object v5, v2, Landroid/support/d/a$c;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/d/a;->sO:I

    :cond_15
    :goto_5
    int-to-long v4, v3

    add-long/2addr v4, v6

    invoke-static/range {p1 .. p1}, Landroid/support/d/a$a;->e(Landroid/support/d/a$a;)I

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    cmp-long v4, v4, v16

    if-gtz v4, :cond_19

    int-to-long v4, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/support/d/a$a;->seek(J)V

    :cond_16
    sget-object v3, Landroid/support/d/a;->sA:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1b

    const-wide/16 v4, -0x1

    packed-switch v8, :pswitch_data_0

    :goto_6
    :pswitch_0
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1a

    invoke-static/range {p1 .. p1}, Landroid/support/d/a$a;->e(Landroid/support/d/a$a;)I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_1a

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/support/d/a$a;->seek(J)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/support/d/a;->b(Landroid/support/d/a$a;I)V

    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/support/d/a$a;->seek(J)V

    goto/16 :goto_3

    :cond_17
    const/4 v4, 0x6

    move/from16 v0, p2

    if-ne v0, v4, :cond_15

    const-string v4, "ThumbnailImage"

    iget-object v5, v2, Landroid/support/d/a$c;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/d/a;->sP:I

    move-object/from16 v0, p0

    iput v12, v0, Landroid/support/d/a;->sQ:I

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v4, v5}, Landroid/support/d/a$b;->a(ILjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/d/a;->sP:I

    int-to-long v0, v5

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v5}, Landroid/support/d/a$b;->a(JLjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v5

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/d/a;->sQ:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Landroid/support/d/a$b;->a(JLjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    aget-object v16, v16, v17

    const-string v17, "Compression"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/16 v16, 0x4

    aget-object v4, v4, v16

    const-string v16, "JPEGInterchangeFormat"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const-string v5, "JPEGInterchangeFormatLength"

    invoke-virtual {v4, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/d/a;->sF:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_15

    const-string v4, "JpgFromRaw"

    iget-object v5, v2, Landroid/support/d/a$c;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/d/a;->sR:I

    goto/16 :goto_5

    :cond_19
    const-string v2, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Skip the tag entry since data offset is invalid: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/support/d/a$a;->seek(J)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/support/d/a$a;->readUnsignedShort()I

    move-result v2

    int-to-long v4, v2

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/support/d/a$a;->readShort()S

    move-result v2

    int-to-long v4, v2

    goto/16 :goto_6

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/support/d/a$a;->ck()J

    move-result-wide v4

    goto/16 :goto_6

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/support/d/a$a;->readInt()I

    move-result v2

    int-to-long v4, v2

    goto/16 :goto_6

    :cond_1a
    const-string v2, "ExifInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Skip jump into the IFD since its offset is invalid: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1b
    long-to-int v3, v6

    new-array v3, v3, [B

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/support/d/a$a;->readFully([B)V

    new-instance v4, Landroid/support/d/a$b;

    const/4 v5, 0x0

    invoke-direct {v4, v8, v12, v3, v5}, Landroid/support/d/a$b;-><init>(II[BB)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    iget-object v5, v2, Landroid/support/d/a$c;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "DNGVersion"

    iget-object v5, v2, Landroid/support/d/a$c;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/d/a;->sF:I

    :cond_1c
    const-string v3, "Make"

    iget-object v5, v2, Landroid/support/d/a$c;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "Model"

    iget-object v5, v2, Landroid/support/d/a$c;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v3}, Landroid/support/d/a$b;->c(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "PENTAX"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_1e
    const-string v3, "Compression"

    iget-object v2, v2, Landroid/support/d/a$c;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v2}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_20

    :cond_1f
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/d/a;->sF:I

    :cond_20
    move-object/from16 v0, p1

    iget v2, v0, Landroid/support/d/a$a;->mPosition:I

    int-to-long v2, v2

    cmp-long v2, v2, v14

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/support/d/a$a;->seek(J)V

    goto/16 :goto_3

    :cond_21
    move-object/from16 v0, p1

    iget v2, v0, Landroid/support/d/a$a;->mPosition:I

    add-int/lit8 v2, v2, 0x4

    invoke-static/range {p1 .. p1}, Landroid/support/d/a$a;->e(Landroid/support/d/a$a;)I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/support/d/a$a;->readInt()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/support/d/a$a;->e(Landroid/support/d/a$a;)I

    move-result v3

    if-ge v2, v3, :cond_0

    int-to-long v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/support/d/a$a;->seek(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    const/16 p2, 0x4

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p2, 0x5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private b(Landroid/support/d/a$a;Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "StripOffsets"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/a$b;

    const-string v1, "StripByteCounts"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/a$b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Landroid/support/d/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/d/a;->k(Ljava/lang/Object;)[J

    move-result-object v4

    iget-object v0, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Landroid/support/d/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/d/a;->k(Ljava/lang/Object;)[J

    move-result-object v5

    if-nez v4, :cond_1

    const-string v0, "ExifInterface"

    const-string v1, "stripOffsets should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v5, :cond_2

    const-string v0, "ExifInterface"

    const-string v1, "stripByteCounts should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    array-length v6, v5

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_3

    aget-wide v8, v5, v3

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    long-to-int v0, v0

    new-array v6, v0, [B

    move v0, v2

    move v1, v2

    move v3, v2

    :goto_2
    array-length v7, v4

    if-ge v0, v7, :cond_5

    aget-wide v8, v4, v0

    long-to-int v7, v8

    aget-wide v8, v5, v0

    long-to-int v8, v8

    sub-int/2addr v7, v3

    if-gez v7, :cond_4

    const-string v9, "ExifInterface"

    const-string v10, "Invalid strip offset value"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    int-to-long v10, v7

    invoke-virtual {p1, v10, v11}, Landroid/support/d/a$a;->seek(J)V

    add-int/2addr v3, v7

    new-array v7, v8, [B

    invoke-virtual {p1, v7}, Landroid/support/d/a$a;->read([B)I

    add-int/2addr v3, v8

    array-length v8, v7

    invoke-static {v7, v2, v6, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7

    add-int/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/d/a;->sI:Z

    iput-object v6, p0, Landroid/support/d/a;->sL:[B

    array-length v0, v6

    iput v0, p0, Landroid/support/d/a;->sK:I

    goto :goto_0
.end method

.method private static c(Landroid/support/d/a$a;)Ljava/nio/ByteOrder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/d/a$a;->readShort()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid byte order: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    return-object v0

    :sswitch_1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4949 -> :sswitch_0
        0x4d4d -> :sswitch_1
    .end sparse-switch
.end method

.method private c(Landroid/support/d/a$a;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/a$b;

    iget-object v1, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/a$b;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/a$b;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/d/a;->a(Landroid/support/d/a$a;II)V

    :cond_1
    return-void
.end method

.method private c(Ljava/io/InputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v2, v5

    :goto_0
    :try_start_0
    sget-object v3, Landroid/support/d/a;->st:[[Landroid/support/d/a$c;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    aput-object v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v3, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v3

    check-cast v0, Ljava/io/BufferedInputStream;

    move-object v2, v0

    const/16 v7, 0x1388

    invoke-virtual {v2, v7}, Ljava/io/BufferedInputStream;->mark(I)V

    const/16 v7, 0x1388

    new-array v7, v7, [B

    invoke-virtual {v2, v7}, Ljava/io/BufferedInputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    invoke-static {v7}, Landroid/support/d/a;->c([B)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    :goto_1
    iput v2, p0, Landroid/support/d/a;->sF:I

    new-instance v7, Landroid/support/d/a$a;

    invoke-direct {v7, v3}, Landroid/support/d/a$a;-><init>(Ljava/io/InputStream;)V

    iget v2, p0, Landroid/support/d/a;->sF:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_2
    iget-object v2, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v6, v2, v3

    const-string v2, "Compression"

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/a$b;

    if-eqz v2, :cond_15

    iget-object v3, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v2

    iput v2, p0, Landroid/support/d/a;->sM:I

    iget v2, p0, Landroid/support/d/a;->sM:I

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/d/a;->sS:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/support/d/a;->ch()V

    :goto_4
    return-void

    :cond_3
    :try_start_1
    invoke-static {v7}, Landroid/support/d/a;->d([B)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x9

    goto :goto_1

    :cond_4
    new-instance v2, Landroid/support/d/a$a;

    invoke-direct {v2, v7}, Landroid/support/d/a$a;-><init>([B)V

    invoke-static {v2}, Landroid/support/d/a;->c(Landroid/support/d/a$a;)Ljava/nio/ByteOrder;

    move-result-object v8

    iput-object v8, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    iget-object v8, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    iput-object v8, v2, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    invoke-virtual {v2}, Landroid/support/d/a$a;->readShort()S

    move-result v8

    invoke-virtual {v2}, Landroid/support/d/a$a;->close()V

    const/16 v2, 0x4f52

    if-eq v8, v2, :cond_5

    const/16 v2, 0x5352

    if-ne v8, v2, :cond_6

    :cond_5
    move v2, v4

    :goto_5
    if-eqz v2, :cond_7

    const/4 v2, 0x7

    goto :goto_1

    :cond_6
    move v2, v5

    goto :goto_5

    :cond_7
    new-instance v2, Landroid/support/d/a$a;

    invoke-direct {v2, v7}, Landroid/support/d/a$a;-><init>([B)V

    invoke-static {v2}, Landroid/support/d/a;->c(Landroid/support/d/a$a;)Ljava/nio/ByteOrder;

    move-result-object v7

    iput-object v7, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    iget-object v7, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    iput-object v7, v2, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    invoke-virtual {v2}, Landroid/support/d/a$a;->readShort()S

    move-result v7

    invoke-virtual {v2}, Landroid/support/d/a$a;->close()V

    const/16 v2, 0x55

    if-ne v7, v2, :cond_8

    move v2, v4

    :goto_6
    if-eqz v2, :cond_9

    const/16 v2, 0xa

    goto :goto_1

    :cond_8
    move v2, v5

    goto :goto_6

    :cond_9
    move v2, v5

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v7, v2, v3}, Landroid/support/d/a;->a(Landroid/support/d/a$a;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Landroid/support/d/a;->sS:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Landroid/support/d/a;->ch()V

    goto :goto_4

    :pswitch_1
    :try_start_3
    invoke-direct {p0, v7}, Landroid/support/d/a;->b(Landroid/support/d/a$a;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-direct {p0}, Landroid/support/d/a;->ch()V

    throw v2

    :pswitch_2
    :try_start_4
    invoke-direct {p0, v7}, Landroid/support/d/a;->a(Landroid/support/d/a$a;)V

    iget-object v2, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, "MakerNote"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/a$b;

    if-eqz v2, :cond_1

    new-instance v3, Landroid/support/d/a$a;

    iget-object v2, v2, Landroid/support/d/a$b;->sY:[B

    invoke-direct {v3, v2}, Landroid/support/d/a$a;-><init>([B)V

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    iput-object v2, v3, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    sget-object v2, Landroid/support/d/a;->sd:[B

    array-length v2, v2

    new-array v2, v2, [B

    invoke-virtual {v3, v2}, Landroid/support/d/a$a;->readFully([B)V

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/support/d/a$a;->seek(J)V

    sget-object v8, Landroid/support/d/a;->se:[B

    array-length v8, v8

    new-array v8, v8, [B

    invoke-virtual {v3, v8}, Landroid/support/d/a$a;->readFully([B)V

    sget-object v9, Landroid/support/d/a;->sd:[B

    invoke-static {v2, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_d

    const-wide/16 v8, 0x8

    invoke-virtual {v3, v8, v9}, Landroid/support/d/a$a;->seek(J)V

    :cond_a
    :goto_7
    const/4 v2, 0x6

    invoke-direct {p0, v3, v2}, Landroid/support/d/a;->b(Landroid/support/d/a$a;I)V

    iget-object v2, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    const-string v3, "PreviewImageStart"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/a$b;

    iget-object v3, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v8, 0x7

    aget-object v3, v3, v8

    const-string v8, "PreviewImageLength"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/d/a$b;

    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    iget-object v8, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const-string v9, "JPEGInterchangeFormat"

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v8, 0x5

    aget-object v2, v2, v8

    const-string v8, "JPEGInterchangeFormatLength"

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v2, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    const-string v3, "AspectFrame"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/a$b;

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/support/d/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    if-eqz v2, :cond_c

    array-length v3, v2

    if-eq v3, v6, :cond_e

    :cond_c
    const-string v3, "ExifInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Invalid aspect frame values. frame="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    sget-object v2, Landroid/support/d/a;->se:[B

    invoke-static {v8, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_a

    const-wide/16 v8, 0xc

    invoke-virtual {v3, v8, v9}, Landroid/support/d/a$a;->seek(J)V

    goto :goto_7

    :cond_e
    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v6, 0x0

    aget v6, v2, v6

    if-le v3, v6, :cond_1

    const/4 v3, 0x3

    aget v3, v2, v3

    const/4 v6, 0x1

    aget v6, v2, v6

    if-le v3, v6, :cond_1

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v6, 0x0

    aget v6, v2, v6

    sub-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x3

    aget v6, v2, v6

    const/4 v8, 0x1

    aget v2, v2, v8

    sub-int v2, v6, v2

    add-int/lit8 v2, v2, 0x1

    if-ge v3, v2, :cond_f

    add-int/2addr v3, v2

    sub-int v2, v3, v2

    sub-int/2addr v3, v2

    :cond_f
    iget-object v6, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v3, v6}, Landroid/support/d/a$b;->a(ILjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v3

    iget-object v6, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v2, v6}, Landroid/support/d/a$b;->a(ILjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v2

    iget-object v6, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    const-string v8, "ImageWidth"

    invoke-virtual {v6, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const-string v6, "ImageLength"

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, v7}, Landroid/support/d/a;->a(Landroid/support/d/a$a;)V

    iget-object v2, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "JpgFromRaw"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/a$b;

    if-eqz v2, :cond_10

    iget v2, p0, Landroid/support/d/a;->sR:I

    const/4 v3, 0x5

    invoke-direct {p0, v7, v2, v3}, Landroid/support/d/a;->a(Landroid/support/d/a$a;II)V

    :cond_10
    iget-object v2, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "ISO"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/a$b;

    iget-object v3, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    const-string v6, "PhotographicSensitivity"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/d/a$b;

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    const-string v6, "PhotographicSensitivity"

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_4
    invoke-direct {p0, v7}, Landroid/support/d/a;->a(Landroid/support/d/a$a;)V

    goto/16 :goto_2

    :sswitch_0
    invoke-direct {p0, v7, v6}, Landroid/support/d/a;->a(Landroid/support/d/a$a;Ljava/util/HashMap;)V

    goto/16 :goto_3

    :sswitch_1
    const-string v2, "BitsPerSample"

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/a$b;

    if-eqz v2, :cond_14

    iget-object v3, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/support/d/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    sget-object v3, Landroid/support/d/a;->rZ:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_11

    move v2, v4

    :goto_8
    if-eqz v2, :cond_2

    invoke-direct {p0, v7, v6}, Landroid/support/d/a;->b(Landroid/support/d/a$a;Ljava/util/HashMap;)V

    goto/16 :goto_3

    :cond_11
    iget v3, p0, Landroid/support/d/a;->sF:I

    if-ne v3, v10, :cond_14

    const-string v3, "PhotometricInterpretation"

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/d/a$b;

    if-eqz v3, :cond_14

    iget-object v8, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v8}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ne v3, v4, :cond_12

    sget-object v8, Landroid/support/d/a;->sb:[I

    invoke-static {v2, v8}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v8

    if-nez v8, :cond_13

    :cond_12
    const/4 v8, 0x6

    if-ne v3, v8, :cond_14

    sget-object v3, Landroid/support/d/a;->rZ:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    move v2, v4

    goto :goto_8

    :cond_14
    move v2, v5

    goto :goto_8

    :cond_15
    const/4 v2, 0x6

    iput v2, p0, Landroid/support/d/a;->sM:I

    invoke-direct {p0, v7, v6}, Landroid/support/d/a;->a(Landroid/support/d/a$a;Ljava/util/HashMap;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private c(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x200

    const-string v0, "ImageLength"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/a$b;

    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/a$b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v1

    if-gt v0, v3, :cond_0

    if-gt v1, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Landroid/support/d/a;->sc:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    aget-byte v2, p0, v0

    sget-object v3, Landroid/support/d/a;->sc:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private ch()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "DateTimeOriginal"

    invoke-direct {p0, v0}, Landroid/support/d/a;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DateTime"

    invoke-direct {p0, v1}, Landroid/support/d/a;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    const-string v2, "DateTime"

    invoke-static {v0}, Landroid/support/d/a$b;->t(Ljava/lang/String;)Landroid/support/d/a$b;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    invoke-direct {p0, v0}, Landroid/support/d/a;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, v3

    const-string v1, "ImageWidth"

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v4, v5, v2}, Landroid/support/d/a$b;->a(JLjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    invoke-direct {p0, v0}, Landroid/support/d/a;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, v3

    const-string v1, "ImageLength"

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v4, v5, v2}, Landroid/support/d/a$b;->a(JLjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    invoke-direct {p0, v0}, Landroid/support/d/a;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, v3

    const-string v1, "Orientation"

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v4, v5, v2}, Landroid/support/d/a$b;->a(JLjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    invoke-direct {p0, v0}, Landroid/support/d/a;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "LightSource"

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v4, v5, v2}, Landroid/support/d/a$b;->a(JLjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method static synthetic ci()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Landroid/support/d/a;->sB:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic cj()[B
    .locals 1

    sget-object v0, Landroid/support/d/a;->si:[B

    return-object v0
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private d(Landroid/support/d/a$a;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/a$b;

    iget-object v1, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/a$b;

    iget-object v2, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/a$b;

    iget-object v3, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/d/a$b;

    iget-object v4, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/d/a$b;

    if-eqz v0, :cond_6

    iget v1, v0, Landroid/support/d/a$b;->format:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/support/d/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/d/a$d;

    check-cast v0, [Landroid/support/d/a$d;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eq v1, v8, :cond_2

    :cond_0
    const-string v1, "ExifInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid crop size values. cropSize="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    aget-object v1, v0, v6

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v1, v2}, Landroid/support/d/a$b;->a(Landroid/support/d/a$d;Ljava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v1

    aget-object v0, v0, v7

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v0, v2}, Landroid/support/d/a$b;->a(Landroid/support/d/a$d;Ljava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "ImageWidth"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageLength"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/support/d/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    if-eqz v0, :cond_4

    array-length v1, v0

    if-eq v1, v8, :cond_5

    :cond_4
    const-string v1, "ExifInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid crop size values. cropSize="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    aget v1, v0, v6

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v1, v2}, Landroid/support/d/a$b;->a(ILjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v1

    aget v0, v0, v7

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v0, v2}, Landroid/support/d/a$b;->a(ILjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v0

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    iget-object v0, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v1, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v1}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v3, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v3}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v3

    iget-object v4, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v1, v0, :cond_1

    if-le v3, v2, :cond_1

    sub-int v0, v1, v0

    sub-int v1, v3, v2

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v0, v2}, Landroid/support/d/a$b;->a(ILjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v0

    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-static {v1, v2}, Landroid/support/d/a$b;->a(ILjava/nio/ByteOrder;)Landroid/support/d/a$b;

    move-result-object v1

    iget-object v2, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v2, "ImageWidth"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/support/d/a;->c(Landroid/support/d/a$a;I)V

    goto/16 :goto_0
.end method

.method private static d([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "FUJIFILMCCD-RAW"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-byte v3, p0, v0

    aget-byte v4, v2, v0

    if-eq v3, v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/support/d/a;->r(Ljava/lang/String;)Landroid/support/d/a$b;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v2, Landroid/support/d/a;->sz:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/support/d/a$b;->c(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "GPSTimeStamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v0, Landroid/support/d/a$b;->format:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget v2, v0, Landroid/support/d/a$b;->format:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const-string v2, "ExifInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GPS Timestamp format is not rational. format="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/support/d/a$b;->format:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/support/d/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/d/a$d;

    check-cast v0, [Landroid/support/d/a$d;

    if-eqz v0, :cond_2

    array-length v2, v0

    if-eq v2, v4, :cond_3

    :cond_2
    const-string v2, "ExifInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid GPS Timestamp array. array="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v1, "%02d:%02d:%02d"

    new-array v2, v4, [Ljava/lang/Object;

    aget-object v3, v0, v6

    iget-wide v4, v3, Landroid/support/d/a$d;->tb:J

    long-to-float v3, v4

    aget-object v4, v0, v6

    iget-wide v4, v4, Landroid/support/d/a$d;->tc:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aget-object v3, v0, v7

    iget-wide v4, v3, Landroid/support/d/a$d;->tb:J

    long-to-float v3, v4

    aget-object v4, v0, v7

    iget-wide v4, v4, Landroid/support/d/a$d;->tc:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aget-object v3, v0, v8

    iget-wide v4, v3, Landroid/support/d/a$d;->tb:J

    long-to-float v3, v4

    aget-object v0, v0, v8

    iget-wide v4, v0, Landroid/support/d/a$d;->tc:J

    long-to-float v0, v4

    div-float v0, v3, v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    :try_start_0
    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/support/d/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a double value"

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_6

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    instance-of v2, v0, [J

    if-eqz v2, :cond_8

    check-cast v0, [J

    check-cast v0, [J

    array-length v2, v0

    if-ne v2, v7, :cond_7

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    long-to-double v2, v2

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v2, "There are more than one component"

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    instance-of v2, v0, [I

    if-eqz v2, :cond_a

    check-cast v0, [I

    check-cast v0, [I

    array-length v2, v0

    if-ne v2, v7, :cond_9

    const/4 v2, 0x0

    aget v0, v0, v2

    int-to-double v2, v0

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v2, "There are more than one component"

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    instance-of v2, v0, [D

    if-eqz v2, :cond_c

    check-cast v0, [D

    check-cast v0, [D

    array-length v2, v0

    if-ne v2, v7, :cond_b

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    goto :goto_1

    :cond_b
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v2, "There are more than one component"

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    instance-of v2, v0, [Landroid/support/d/a$d;

    if-eqz v2, :cond_e

    check-cast v0, [Landroid/support/d/a$d;

    check-cast v0, [Landroid/support/d/a$d;

    array-length v2, v0

    if-ne v2, v7, :cond_d

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-wide v2, v0, Landroid/support/d/a$d;->tb:J

    long-to-double v2, v2

    iget-wide v4, v0, Landroid/support/d/a$d;->tc:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    goto :goto_1

    :cond_d
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v2, "There are more than one component"

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a double value"

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private k(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/a$b;

    iget-object v1, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v1, v1, p1

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/a$b;

    iget-object v2, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/a$b;

    iget-object v3, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "ImageWidth"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/d/a$b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v4, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v4, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v2

    iget-object v4, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v2, :cond_0

    if-ge v1, v3, :cond_0

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    iget-object v2, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    aput-object v2, v1, p1

    iget-object v1, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aput-object v0, v1, p2

    goto :goto_0
.end method

.method private static k(Ljava/lang/Object;)[J
    .locals 4

    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    check-cast p0, [I

    check-cast p0, [I

    array-length v0, p0

    new-array v1, v0, [J

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    int-to-long v2, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_1
    return-object p0

    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    check-cast p0, [J

    check-cast p0, [J

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_1
.end method

.method private r(Ljava/lang/String;)Landroid/support/d/a$b;
    .locals 2

    const-string v0, "ISOSpeedRatings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "PhotographicSensitivity"

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Landroid/support/d/a;->st:[[Landroid/support/d/a$c;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/d/a;->sG:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/a$b;

    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final s(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/support/d/a;->r(Ljava/lang/String;)Landroid/support/d/a$b;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/support/d/a;->sH:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/support/d/a$b;->b(Ljava/nio/ByteOrder;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
