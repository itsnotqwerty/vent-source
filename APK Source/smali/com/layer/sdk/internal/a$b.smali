.class public Lcom/layer/sdk/internal/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/sdk/internal/a$b;->a:Z

    iput-boolean v1, p0, Lcom/layer/sdk/internal/a$b;->b:Z

    iput-boolean v1, p0, Lcom/layer/sdk/internal/a$b;->c:Z

    iput-boolean v1, p0, Lcom/layer/sdk/internal/a$b;->d:Z

    iput-boolean v1, p0, Lcom/layer/sdk/internal/a$b;->e:Z

    iput-boolean v1, p0, Lcom/layer/sdk/internal/a$b;->f:Z

    iput-boolean v1, p0, Lcom/layer/sdk/internal/a$b;->g:Z

    iput-boolean v1, p0, Lcom/layer/sdk/internal/a$b;->h:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/layer/sdk/internal/a$b;->i:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/a$b;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/a$b;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/a$b;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/a$b;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/a$b;->g:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/a$b;->h:Z

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/a$b;->i:I

    return v0
.end method
