.class public final Landroid/support/a/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x3

.field public static final FontFamilyFont_fontStyle:I = 0x4

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/a/a$b;->FontFamily:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/a/a$b;->FontFamilyFont:[I

    return-void

    :array_0
    .array-data 4
        0x7f0400f1
        0x7f0400f2
        0x7f0400f3
        0x7f0400f4
        0x7f0400f5
        0x7f0400f6
    .end array-data

    :array_1
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f0400ef
        0x7f0400f7
        0x7f0400f8
    .end array-data
.end method
