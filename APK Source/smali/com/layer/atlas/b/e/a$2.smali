.class final Lcom/layer/atlas/b/e/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/atlas/b/e/a;->a(Lcom/layer/atlas/b/e/a$a;Lcom/layer/atlas/b/e/a$b;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnQ:Lcom/layer/sdk/messaging/Message;

.field final synthetic bph:Lcom/layer/atlas/b/e/a;


# direct methods
.method constructor <init>(Lcom/layer/atlas/b/e/a;Lcom/layer/sdk/messaging/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/b/e/a$2;->bph:Lcom/layer/atlas/b/e/a;

    iput-object p2, p0, Lcom/layer/atlas/b/e/a$2;->bnQ:Lcom/layer/sdk/messaging/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/layer/atlas/b/e/a$2;->bnQ:Lcom/layer/sdk/messaging/Message;

    invoke-static {v0}, Lcom/layer/atlas/b/e/b;->j(Lcom/layer/sdk/messaging/Message;)Lcom/layer/sdk/messaging/MessagePart;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/atlas/b/e/a$2;->bnQ:Lcom/layer/sdk/messaging/Message;

    invoke-static {v1}, Lcom/layer/atlas/b/e/b;->i(Lcom/layer/sdk/messaging/Message;)Lcom/layer/sdk/messaging/MessagePart;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/atlas/b/e/a$2;->bnQ:Lcom/layer/sdk/messaging/Message;

    invoke-static {v2}, Lcom/layer/atlas/b/e/b;->h(Lcom/layer/sdk/messaging/Message;)Lcom/layer/sdk/messaging/MessagePart;

    move-result-object v2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getDataStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Full size: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/atlas/util/b;->du(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/MessagePart;->getDataStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preview size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/atlas/util/b;->du(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/layer/sdk/messaging/MessagePart;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/atlas/util/b;->du(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
