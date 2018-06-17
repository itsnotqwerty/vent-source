.class public final enum Lcom/theartofdev/edmodo/cropper/CropImageView$j;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/theartofdev/edmodo/cropper/CropImageView$j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bSa:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

.field public static final enum bSb:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

.field public static final enum bSc:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

.field public static final enum bSd:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

.field private static final synthetic bSe:[Lcom/theartofdev/edmodo/cropper/CropImageView$j;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const-string v1, "FIT_CENTER"

    invoke-direct {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->bSa:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->bSb:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const-string v1, "CENTER_CROP"

    invoke-direct {v0, v1, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->bSc:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const-string v1, "CENTER_INSIDE"

    invoke-direct {v0, v1, v5}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->bSd:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->bSa:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->bSb:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->bSc:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->bSd:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    aput-object v1, v0, v5

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->bSe:[Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/CropImageView$j;
    .locals 1

    const-class v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    return-object v0
.end method

.method public static values()[Lcom/theartofdev/edmodo/cropper/CropImageView$j;
    .locals 1

    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->bSe:[Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    invoke-virtual {v0}, [Lcom/theartofdev/edmodo/cropper/CropImageView$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    return-object v0
.end method
