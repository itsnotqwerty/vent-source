.class public Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkc/lsdka/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/layer/sdk/internal/lsdkd/h;

.field private final b:Ljava/io/File;

.field private final c:Lcom/layer/b/d/k;

.field private final d:Lcom/layer/sdk/internal/lsdkc/d;

.field private final e:Ljava/util/UUID;

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/layer/sdk/internal/lsdkd/h;Ljava/io/File;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdkc/d;Ljava/util/UUID;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->a:Lcom/layer/sdk/internal/lsdkd/h;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->c:Lcom/layer/b/d/k;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->d:Lcom/layer/sdk/internal/lsdkc/d;

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->e:Ljava/util/UUID;

    iput p6, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->f:I

    iput p7, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->g:I

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->b:Ljava/io/File;

    return-object v0
.end method

.method public b()Lcom/layer/b/d/k;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->c:Lcom/layer/b/d/k;

    return-object v0
.end method

.method public c()Lcom/layer/sdk/internal/lsdkc/d;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->d:Lcom/layer/sdk/internal/lsdkc/d;

    return-object v0
.end method

.method public d()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->e:Ljava/util/UUID;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->g:I

    return v0
.end method

.method public g()Lcom/layer/sdk/internal/lsdkd/h;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->a:Lcom/layer/sdk/internal/lsdkd/h;

    return-object v0
.end method
