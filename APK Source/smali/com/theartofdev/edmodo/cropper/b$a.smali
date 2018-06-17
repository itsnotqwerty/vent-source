.class public final Lcom/theartofdev/edmodo/cropper/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final avo:Landroid/graphics/Bitmap;

.field public final bPE:Ljava/lang/Exception;

.field public final bPG:I

.field public final bPH:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/b$a;->avo:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/theartofdev/edmodo/cropper/b$a;->bPG:I

    iput p4, p0, Lcom/theartofdev/edmodo/cropper/b$a;->bPH:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/b$a;->bPE:Ljava/lang/Exception;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/b$a;->avo:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->bPG:I

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->bPH:I

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/b$a;->bPE:Ljava/lang/Exception;

    return-void
.end method
