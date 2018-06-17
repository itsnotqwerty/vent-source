.class public abstract Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/io/InputStream;
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/b;->a:Ljava/lang/String;

    return-object v0
.end method
