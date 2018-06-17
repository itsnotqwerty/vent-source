.class public final Lcom/theartofdev/edmodo/cropper/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final bPQ:Landroid/net/Uri;

.field public final bPR:Lcom/theartofdev/edmodo/cropper/f;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/d$a;->bPQ:Landroid/net/Uri;

    new-instance v0, Lcom/theartofdev/edmodo/cropper/f;

    invoke-direct {v0}, Lcom/theartofdev/edmodo/cropper/f;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/d$a;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/d$a;-><init>(Landroid/net/Uri;)V

    return-void
.end method
