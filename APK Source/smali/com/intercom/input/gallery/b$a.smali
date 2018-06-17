.class public final Lcom/intercom/input/gallery/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intercom/input/gallery/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public attribution:Ljava/lang/String;

.field bmd:Ljava/lang/String;

.field public bme:Ljava/lang/String;

.field bmf:I

.field public imageHeight:I

.field public imageWidth:I

.field mimeType:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final wa()Lcom/intercom/input/gallery/b;
    .locals 9

    new-instance v0, Lcom/intercom/input/gallery/b;

    iget-object v1, p0, Lcom/intercom/input/gallery/b$a;->bmd:Ljava/lang/String;

    invoke-static {v1}, Lcom/intercom/input/gallery/b$a;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/intercom/input/gallery/b$a;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/intercom/input/gallery/b$a;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/intercom/input/gallery/b$a;->path:Ljava/lang/String;

    invoke-static {v3}, Lcom/intercom/input/gallery/b$a;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/intercom/input/gallery/b$a;->bme:Ljava/lang/String;

    invoke-static {v4}, Lcom/intercom/input/gallery/b$a;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/intercom/input/gallery/b$a;->attribution:Ljava/lang/String;

    invoke-static {v5}, Lcom/intercom/input/gallery/b$a;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/intercom/input/gallery/b$a;->imageWidth:I

    iget v7, p0, Lcom/intercom/input/gallery/b$a;->imageHeight:I

    iget v8, p0, Lcom/intercom/input/gallery/b$a;->bmf:I

    invoke-direct/range {v0 .. v8}, Lcom/intercom/input/gallery/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method
