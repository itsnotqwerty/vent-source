.class public final Lcom/vent/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/vent/a/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vent/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private static final cko:[I

.field private static final ckp:[C


# instance fields
.field private ckq:I

.field private ckr:I

.field private cks:I

.field private ckt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x67

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vent/a/m;->cko:[I

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vent/a/m;->ckp:[C

    new-instance v0, Lcom/vent/a/m$1;

    invoke-direct {v0}, Lcom/vent/a/m$1;-><init>()V

    sput-object v0, Lcom/vent/a/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vent/a/m;->ckq:I

    iput v0, p0, Lcom/vent/a/m;->ckr:I

    iput v0, p0, Lcom/vent/a/m;->cks:I

    iput v0, p0, Lcom/vent/a/m;->ckt:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/m;->ckq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/m;->ckr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/m;->cks:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/m;->ckt:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    sget-object v0, Lcom/vent/a/m;->cko:[I

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aget v0, v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vent/a/m;->ckq:I

    sget-object v0, Lcom/vent/a/m;->cko:[I

    const/16 v1, 0x9

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aget v0, v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0xb

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0xf

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x10

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x11

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vent/a/m;->ckr:I

    sget-object v0, Lcom/vent/a/m;->cko:[I

    const/16 v1, 0x13

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aget v0, v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x14

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x15

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x16

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x18

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x19

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x1a

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x1b

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vent/a/m;->cks:I

    sget-object v0, Lcom/vent/a/m;->cko:[I

    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aget v0, v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x1d

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x1e

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x1f

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x20

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x21

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x22

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    sget-object v1, Lcom/vent/a/m;->cko:[I

    const/16 v2, 0x23

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vent/a/m;->ckt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput v3, p0, Lcom/vent/a/m;->ckq:I

    iput v3, p0, Lcom/vent/a/m;->ckr:I

    iput v3, p0, Lcom/vent/a/m;->cks:I

    iput v3, p0, Lcom/vent/a/m;->ckt:I

    goto :goto_0
.end method

.method public static a(Lcom/vent/a/m;Lcom/vent/a/m;)I
    .locals 2

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/vent/a/m;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/vent/a/m;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Lcom/vent/a/m;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v3, Lcom/vent/a/m;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static a(Lcom/vent/a/m;Landroid/os/Parcel;I)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, p2}, Lcom/vent/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static b(Lcom/vent/a/m;Lcom/vent/a/m;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/vent/a/m;->ckq:I

    iget v1, p1, Lcom/vent/a/m;->ckq:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/vent/a/m;->ckr:I

    iget v1, p1, Lcom/vent/a/m;->ckr:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/vent/a/m;->cks:I

    iget v1, p1, Lcom/vent/a/m;->cks:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/vent/a/m;->ckt:I

    iget v1, p1, Lcom/vent/a/m;->ckt:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/vent/a/m;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/vent/a/m;->ckq:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/vent/a/m;->ckr:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/vent/a/m;->cks:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/vent/a/m;->ckt:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static f(Landroid/os/Parcel;)Lcom/vent/a/m;
    .locals 1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vent/a/m;

    invoke-direct {v0, p0}, Lcom/vent/a/m;-><init>(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method public static h(Ljava/util/Set;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/vent/a/m;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/m;

    invoke-virtual {v0}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static r(Ljava/lang/CharSequence;)Lcom/vent/a/m;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vent/a/m;

    invoke-direct {v0, p0}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final b(Lcom/vent/a/m;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/vent/a/m;->ckq:I

    iget v1, p1, Lcom/vent/a/m;->ckq:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/vent/a/m;->ckr:I

    iget v1, p1, Lcom/vent/a/m;->ckr:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/vent/a/m;->cks:I

    iget v1, p1, Lcom/vent/a/m;->cks:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/vent/a/m;->ckt:I

    iget v1, p1, Lcom/vent/a/m;->ckt:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vent/a/m;

    invoke-static {p0, p1}, Lcom/vent/a/m;->a(Lcom/vent/a/m;Lcom/vent/a/m;)I

    move-result v0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/vent/a/m;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/vent/a/m;

    iget v2, p0, Lcom/vent/a/m;->ckq:I

    iget v3, p1, Lcom/vent/a/m;->ckq:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/vent/a/m;->ckr:I

    iget v3, p1, Lcom/vent/a/m;->ckr:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/vent/a/m;->cks:I

    iget v3, p1, Lcom/vent/a/m;->cks:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/vent/a/m;->ckt:I

    iget v3, p1, Lcom/vent/a/m;->ckt:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/vent/a/m;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, p1}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/vent/a/m;->b(Lcom/vent/a/m;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/vent/a/m;->ckq:I

    iget v1, p0, Lcom/vent/a/m;->ckr:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/vent/a/m;->cks:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/vent/a/m;->ckt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2d

    const/16 v0, 0x24

    new-array v0, v0, [C

    const/4 v1, 0x0

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckq:I

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckq:I

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckq:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckq:I

    shr-int/lit8 v3, v3, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckq:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckq:I

    shr-int/lit8 v3, v3, 0x14

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckq:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckq:I

    shr-int/lit8 v3, v3, 0x1c

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x8

    aput-char v4, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckr:I

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckr:I

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckr:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckr:I

    shr-int/lit8 v3, v3, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0xd

    aput-char v4, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckr:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckr:I

    shr-int/lit8 v3, v3, 0x14

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckr:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckr:I

    shr-int/lit8 v3, v3, 0x1c

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x12

    aput-char v4, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->cks:I

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->cks:I

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->cks:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->cks:I

    shr-int/lit8 v3, v3, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x17

    aput-char v4, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->cks:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->cks:I

    shr-int/lit8 v3, v3, 0x14

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->cks:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->cks:I

    shr-int/lit8 v3, v3, 0x1c

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckt:I

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckt:I

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckt:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckt:I

    shr-int/lit8 v3, v3, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckt:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckt:I

    shr-int/lit8 v3, v3, 0x14

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckt:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/vent/a/m;->ckp:[C

    iget v3, p0, Lcom/vent/a/m;->ckt:I

    shr-int/lit8 v3, v3, 0x1c

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/vent/a/m;->ckq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/m;->ckr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/m;->cks:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/m;->ckt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
