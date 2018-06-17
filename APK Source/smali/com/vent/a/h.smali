.class public final Lcom/vent/a/h;
.super Lcom/vent/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/a/b",
        "<",
        "Lcom/vent/a/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vent/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private static ckc:D

.field private static ckd:F

.field private static cke:D

.field private static ckf:F


# instance fields
.field public cjP:Ljava/lang/String;

.field public cjT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vent/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private cjU:I

.field private cjV:I

.field private cjW:I

.field private cjX:I

.field private cjY:I

.field public cjZ:Ljava/lang/String;

.field public cka:Ljava/lang/String;

.field public ckb:Ljava/lang/String;

.field private color:I

.field public description:Ljava/lang/String;

.field public flags:I

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vent/a/a$a;

    const-class v1, Lcom/vent/a/h;

    invoke-direct {v0, v1}, Lcom/vent/a/a$a;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/vent/a/h;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    sget-object v0, Lcom/vent/a/m;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/h;->cjT:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/h;->color:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/h;->cjU:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/h;->cjV:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/h;->cjW:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/h;->cjX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/h;->cjY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/h;->position:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/h;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/h;->cka:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/h;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/h;->ckb:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 14

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    const-wide v10, 0x3fa999999999999aL    # 0.05

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v2, "name"

    invoke-static {p1, v2}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    const-string v2, "color"

    invoke-static {p1, v2}, Lcom/vent/d/b;->g(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vent/a/h;->color:I

    const-string v2, "font_color"

    invoke-static {p1, v2}, Lcom/vent/d/b;->g(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vent/a/h;->cjU:I

    const-string v2, "auxiliary_color"

    invoke-static {p1, v2}, Lcom/vent/d/b;->g(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vent/a/h;->cjV:I

    const-string v2, "night_color"

    invoke-static {p1, v2}, Lcom/vent/d/b;->g(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vent/a/h;->cjW:I

    const-string v2, "night_font_color"

    invoke-static {p1, v2}, Lcom/vent/d/b;->g(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vent/a/h;->cjX:I

    const-string v2, "night_auxiliary_color"

    invoke-static {p1, v2}, Lcom/vent/d/b;->g(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vent/a/h;->cjY:I

    iget v2, p0, Lcom/vent/a/h;->color:I

    if-nez v2, :cond_0

    const v2, -0x7f7f80

    iput v2, p0, Lcom/vent/a/h;->color:I

    :cond_0
    iget v2, p0, Lcom/vent/a/h;->cjU:I

    if-nez v2, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lcom/vent/a/h;->cjU:I

    :cond_1
    iget v2, p0, Lcom/vent/a/h;->cjW:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/vent/a/h;->color:I

    iput v2, p0, Lcom/vent/a/h;->cjW:I

    :cond_2
    iget v2, p0, Lcom/vent/a/h;->cjX:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/vent/a/h;->cjU:I

    iput v2, p0, Lcom/vent/a/h;->cjX:I

    :cond_3
    iget v2, p0, Lcom/vent/a/h;->cjY:I

    if-nez v2, :cond_4

    iget v2, p0, Lcom/vent/a/h;->cjV:I

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/vent/a/h;->cjV:I

    :goto_0
    iput v2, p0, Lcom/vent/a/h;->cjY:I

    :cond_4
    iget v2, p0, Lcom/vent/a/h;->cjV:I

    if-nez v2, :cond_5

    iget v2, p0, Lcom/vent/a/h;->color:I

    iput v2, p0, Lcom/vent/a/h;->cjV:I

    :cond_5
    sget-boolean v2, Lcom/vent/bb;->ciz:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/vent/a/h;->cjW:I

    invoke-static {v2}, Landroid/support/v4/a/a;->af(I)D

    move-result-wide v4

    add-double/2addr v4, v10

    const/4 v3, 0x3

    new-array v3, v3, [F

    shr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v2, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v8, v2, 0xff

    invoke-static {v6, v7, v8, v3}, Landroid/support/v4/a/a;->a(III[F)V

    sget-wide v6, Lcom/vent/a/h;->ckc:D

    cmpl-double v6, v4, v6

    if-lez v6, :cond_6

    sget-wide v6, Lcom/vent/a/h;->ckc:D

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    sget-wide v8, Lcom/vent/a/h;->ckc:D

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double v4, v6, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_d

    const/4 v2, 0x2

    const/4 v4, 0x2

    aget v4, v3, v4

    sget v5, Lcom/vent/a/h;->ckd:F

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-static {v4, v5, v6}, Lcom/vent/a/h;->g(FFF)F

    move-result v4

    aput v4, v3, v2

    invoke-static {v3}, Landroid/support/v4/a/a;->a([F)I

    move-result v2

    :cond_6
    :goto_1
    iput v2, p0, Lcom/vent/a/h;->cjW:I

    iget v2, p0, Lcom/vent/a/h;->cjY:I

    invoke-static {v2}, Landroid/support/v4/a/a;->af(I)D

    move-result-wide v4

    add-double/2addr v4, v10

    const/4 v3, 0x3

    new-array v3, v3, [F

    shr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v2, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v8, v2, 0xff

    invoke-static {v6, v7, v8, v3}, Landroid/support/v4/a/a;->a(III[F)V

    sget-wide v6, Lcom/vent/a/h;->ckc:D

    cmpl-double v6, v4, v6

    if-lez v6, :cond_7

    sget-wide v6, Lcom/vent/a/h;->ckc:D

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    sget-wide v8, Lcom/vent/a/h;->ckc:D

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double v4, v6, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_10

    const/4 v2, 0x2

    const/4 v4, 0x2

    aget v4, v3, v4

    sget v5, Lcom/vent/a/h;->ckd:F

    const v6, 0x3e19999a    # 0.15f

    invoke-static {v4, v5, v6}, Lcom/vent/a/h;->g(FFF)F

    move-result v4

    aput v4, v3, v2

    invoke-static {v3}, Landroid/support/v4/a/a;->a([F)I

    move-result v2

    :cond_7
    :goto_2
    iput v2, p0, Lcom/vent/a/h;->cjY:I

    :cond_8
    const-string v2, "emotion_ids"

    invoke-static {p1, v2}, Lcom/vent/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/vent/a/h;->cjT:Ljava/util/List;

    const-string v2, "position"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vent/a/h;->position:I

    const-string v2, "android_sku"

    invoke-static {p1, v2}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    const-string v2, "android_gift_sku"

    invoke-static {p1, v2}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vent/a/h;->cka:Ljava/lang/String;

    const-string v2, "picture"

    invoke-static {p1, v2}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vent/a/h;->ckb:Ljava/lang/String;

    const-string v2, "description"

    invoke-static {p1, v2}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vent/a/h;->description:Ljava/lang/String;

    iget-object v2, p0, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    :cond_9
    iget-object v2, p0, Lcom/vent/a/h;->cka:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vent/a/h;->cka:Ljava/lang/String;

    :cond_a
    const-string v2, "visible"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    :goto_3
    const-string v3, "purchasable"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_14

    :goto_4
    or-int/2addr v1, v2

    const-string v2, "purchasable_in_store"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x4

    :cond_b
    or-int/2addr v0, v1

    iput v0, p0, Lcom/vent/a/h;->flags:I

    :goto_5
    return-void

    :cond_c
    iget v2, p0, Lcom/vent/a/h;->cjW:I

    goto/16 :goto_0

    :cond_d
    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_e

    const/4 v2, 0x2

    const/4 v4, 0x2

    aget v4, v3, v4

    sget v5, Lcom/vent/a/h;->ckd:F

    const v6, 0x3e19999a    # 0.15f

    invoke-static {v4, v5, v6}, Lcom/vent/a/h;->g(FFF)F

    move-result v4

    aput v4, v3, v2

    invoke-static {v3}, Landroid/support/v4/a/a;->a([F)I

    move-result v2

    goto/16 :goto_1

    :cond_e
    cmpg-double v6, v4, v12

    if-gez v6, :cond_f

    const/4 v2, 0x2

    const/4 v4, 0x2

    aget v4, v3, v4

    sget v5, Lcom/vent/a/h;->ckf:F

    const v6, 0x3e19999a    # 0.15f

    invoke-static {v4, v5, v6}, Lcom/vent/a/h;->g(FFF)F

    move-result v4

    aput v4, v3, v2

    invoke-static {v3}, Landroid/support/v4/a/a;->a([F)I

    move-result v2

    goto/16 :goto_1

    :cond_f
    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

    const/4 v2, 0x2

    const/4 v4, 0x2

    aget v4, v3, v4

    sget v5, Lcom/vent/a/h;->ckf:F

    const v6, 0x3dcccccd    # 0.1f

    invoke-static {v4, v5, v6}, Lcom/vent/a/h;->g(FFF)F

    move-result v4

    aput v4, v3, v2

    invoke-static {v3}, Landroid/support/v4/a/a;->a([F)I

    move-result v2

    goto/16 :goto_1

    :cond_10
    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_11

    const/4 v2, 0x2

    const/4 v4, 0x2

    aget v4, v3, v4

    sget v5, Lcom/vent/a/h;->ckd:F

    const v6, 0x3dcccccd    # 0.1f

    invoke-static {v4, v5, v6}, Lcom/vent/a/h;->g(FFF)F

    move-result v4

    aput v4, v3, v2

    invoke-static {v3}, Landroid/support/v4/a/a;->a([F)I

    move-result v2

    goto/16 :goto_2

    :cond_11
    cmpg-double v6, v4, v12

    if-gez v6, :cond_12

    const/4 v2, 0x2

    const/4 v4, 0x2

    aget v4, v3, v4

    sget v5, Lcom/vent/a/h;->ckf:F

    const v6, 0x3e99999a    # 0.3f

    invoke-static {v4, v5, v6}, Lcom/vent/a/h;->g(FFF)F

    move-result v4

    aput v4, v3, v2

    invoke-static {v3}, Landroid/support/v4/a/a;->a([F)I

    move-result v2

    goto/16 :goto_2

    :cond_12
    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_7

    const/4 v2, 0x2

    const/4 v4, 0x2

    aget v4, v3, v4

    sget v5, Lcom/vent/a/h;->ckf:F

    const v6, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v5, v6}, Lcom/vent/a/h;->g(FFF)F

    move-result v4

    aput v4, v3, v2

    invoke-static {v3}, Landroid/support/v4/a/a;->a([F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto/16 :goto_2

    :cond_13
    move v2, v0

    goto/16 :goto_3

    :cond_14
    move v1, v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5
.end method

.method public static a(Ljava/util/Map;Lcom/vent/a/m;)Lcom/vent/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/h;",
            ">;",
            "Lcom/vent/a/m;",
            ")",
            "Lcom/vent/a/h;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    goto :goto_0
.end method

.method public static b(ZI)I
    .locals 12

    const-wide v10, 0x4002cccccccccccdL    # 2.35

    const-wide v6, 0x3fa999999999999aL    # 0.05

    const/4 v9, 0x2

    const/high16 v8, 0x3e800000    # 0.25f

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/support/v4/a/a;->af(I)D

    move-result-wide v0

    add-double/2addr v0, v6

    sget-wide v2, Lcom/vent/a/h;->ckc:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    sget-wide v4, Lcom/vent/a/h;->ckc:D

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    cmpg-double v2, v2, v10

    if-gez v2, :cond_1

    const/4 v2, 0x3

    new-array v2, v2, [F

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, p1, 0xff

    invoke-static {v3, v4, v5, v2}, Landroid/support/v4/a/a;->a(III[F)V

    sget-wide v4, Lcom/vent/a/h;->ckc:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    const/4 v0, 0x0

    sget v1, Lcom/vent/a/h;->ckd:F

    sub-float/2addr v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v2, v9

    invoke-static {v2}, Landroid/support/v4/a/a;->a([F)I

    move-result v0

    invoke-static {v0}, Landroid/support/v4/a/a;->af(I)D

    move-result-wide v0

    add-double/2addr v0, v6

    sget-wide v4, Lcom/vent/a/h;->ckc:D

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    sget-wide v6, Lcom/vent/a/h;->ckc:D

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double v0, v4, v0

    cmpg-double v0, v0, v10

    if-gez v0, :cond_0

    sget v0, Lcom/vent/a/h;->ckd:F

    add-float/2addr v0, v8

    aput v0, v2, v9

    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/support/v4/a/a;->a([F)I

    move-result p1

    :cond_1
    return p1

    :cond_2
    sget v0, Lcom/vent/a/h;->ckd:F

    add-float/2addr v0, v8

    aput v0, v2, v9

    goto :goto_0
.end method

.method private static g(FFF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public static init()V
    .locals 8

    const/4 v5, 0x2

    const-wide v6, 0x3fa999999999999aL    # 0.05

    const/16 v4, 0xff

    const/4 v0, 0x3

    new-array v0, v0, [F

    sget v1, Lcom/vent/MyApplication;->cgH:I

    invoke-static {v1}, Landroid/support/v4/a/a;->af(I)D

    move-result-wide v2

    add-double/2addr v2, v6

    sput-wide v2, Lcom/vent/a/h;->ckc:D

    sget v1, Lcom/vent/MyApplication;->cgH:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    sget v2, Lcom/vent/MyApplication;->cgH:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    sget v3, Lcom/vent/MyApplication;->cgH:I

    and-int/lit16 v3, v3, 0xff

    invoke-static {v1, v2, v3, v0}, Landroid/support/v4/a/a;->a(III[F)V

    aget v1, v0, v5

    sput v1, Lcom/vent/a/h;->ckd:F

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/support/v4/a/a;->af(I)D

    move-result-wide v2

    add-double/2addr v2, v6

    sput-wide v2, Lcom/vent/a/h;->cke:D

    invoke-static {v4, v4, v4, v0}, Landroid/support/v4/a/a;->a(III[F)V

    aget v0, v0, v5

    sput v0, Lcom/vent/a/h;->ckf:F

    return-void
.end method


# virtual methods
.method public final EK()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    iget-object v4, p0, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    iget-object v4, p0, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "color"

    iget v4, p0, Lcom/vent/a/h;->color:I

    invoke-static {v4}, Lcom/vent/d/e;->eT(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v2, p0, Lcom/vent/a/h;->cjU:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/vent/a/h;->cjU:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    const-string v2, "font_color"

    iget v4, p0, Lcom/vent/a/h;->cjU:I

    invoke-static {v4}, Lcom/vent/d/e;->eT(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "auxiliary_color"

    iget v4, p0, Lcom/vent/a/h;->cjV:I

    invoke-static {v4}, Lcom/vent/d/e;->eT(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "night_color"

    iget v4, p0, Lcom/vent/a/h;->cjW:I

    invoke-static {v4}, Lcom/vent/d/e;->eT(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "night_font_color"

    iget v4, p0, Lcom/vent/a/h;->cjX:I

    invoke-static {v4}, Lcom/vent/d/e;->eT(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "night_auxiliary_color"

    iget v4, p0, Lcom/vent/a/h;->cjY:I

    invoke-static {v4}, Lcom/vent/d/e;->eT(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "emotion_ids"

    iget-object v4, p0, Lcom/vent/a/h;->cjT:Ljava/util/List;

    invoke-static {v3, v2, v4}, Lcom/vent/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Collection;)V

    const-string v2, "position"

    iget v4, p0, Lcom/vent/a/h;->position:I

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v2, p0, Lcom/vent/a/h;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "visible"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    iget v2, p0, Lcom/vent/a/h;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    const-string v2, "purchasable"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    iget v2, p0, Lcom/vent/a/h;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    const-string v0, "purchasable_in_store"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    iget-object v0, p0, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android_sku"

    iget-object v1, p0, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v0, p0, Lcom/vent/a/h;->cka:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android_gift_sku"

    iget-object v1, p0, Lcom/vent/a/h;->cka:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v0, p0, Lcom/vent/a/h;->ckb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "picture"

    iget-object v1, p0, Lcom/vent/a/h;->ckb:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v0, p0, Lcom/vent/a/h;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "description"

    iget-object v1, p0, Lcom/vent/a/h;->description:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    return-object v3

    :cond_9
    move v2, v0

    goto :goto_0

    :cond_a
    move v2, v0

    goto :goto_1
.end method

.method public final ER()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/h;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ES()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/h;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ET()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/h;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final EU()Z
    .locals 2

    iget-object v0, p0, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/vent/b/a;->cle:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/vent/b/a;->clh:Ljava/util/Map;

    iget-object v1, p0, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/vent/bb;->ciD:Ljava/util/Set;

    iget-object v1, p0, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final EV()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/h;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/a/h;->EU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final EW()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/h;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/a/h;->EU()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/a/h;->ET()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic a(Lcom/vent/a/b;)I
    .locals 1

    check-cast p1, Lcom/vent/a/h;

    invoke-virtual {p0, p1}, Lcom/vent/a/h;->d(Lcom/vent/a/h;)I

    move-result v0

    return v0
.end method

.method public final bB(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vent/a/h;->bm(Z)I

    move-result v0

    return v0
.end method

.method public final bC(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vent/a/h;->bo(Z)I

    move-result v0

    return v0
.end method

.method public final bm(Z)I
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/vent/a/h;->cjW:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vent/a/h;->color:I

    goto :goto_0
.end method

.method public final bn(Z)I
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/vent/a/h;->cjY:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vent/a/h;->cjV:I

    goto :goto_0
.end method

.method public final bo(Z)I
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/vent/a/h;->cjX:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vent/a/h;->cjU:I

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vent/a/h;

    invoke-virtual {p0, p1}, Lcom/vent/a/h;->d(Lcom/vent/a/h;)I

    move-result v0

    return v0
.end method

.method public final d(Lcom/vent/a/h;)I
    .locals 2

    iget v0, p0, Lcom/vent/a/h;->position:I

    iget v1, p1, Lcom/vent/a/h;->position:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    iget-object v1, p1, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/vent/a/b;->a(Lcom/vent/a/b;)I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/vent/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/d/e;->s(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/vent/a/b;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/h;->cjT:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Lcom/vent/a/h;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/h;->cjU:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/h;->cjV:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/h;->cjW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/h;->cjX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/h;->cjY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/h;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/h;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/h;->cka:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/h;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/h;->ckb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
