.class final Lcom/theartofdev/edmodo/cropper/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final avo:Landroid/graphics/Bitmap;

.field final bPP:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/c$b;->avo:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/theartofdev/edmodo/cropper/c$b;->bPP:I

    return-void
.end method
