.class public interface abstract Lcom/c/a/d;
.super Ljava/lang/Object;


# static fields
.field public static final bNm:Lcom/c/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/c/a/d$1;

    invoke-direct {v0}, Lcom/c/a/d$1;-><init>()V

    sput-object v0, Lcom/c/a/d;->bNm:Lcom/c/a/d;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract dN(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract maxSize()I
.end method

.method public abstract size()I
.end method
