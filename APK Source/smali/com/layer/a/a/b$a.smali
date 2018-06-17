.class public final Lcom/layer/a/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:D

.field public bpD:I

.field bpG:Lcom/layer/a/a/c;

.field c:D

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/layer/a/a/b$a;->a:I

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/layer/a/a/b$a;->b:D

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    iput-wide v0, p0, Lcom/layer/a/a/b$a;->c:D

    const v0, 0xea60

    iput v0, p0, Lcom/layer/a/a/b$a;->d:I

    const v0, 0xdbba0

    iput v0, p0, Lcom/layer/a/a/b$a;->bpD:I

    sget-object v0, Lcom/layer/a/a/c;->a:Lcom/layer/a/a/c;

    iput-object v0, p0, Lcom/layer/a/a/b$a;->bpG:Lcom/layer/a/a/c;

    return-void
.end method


# virtual methods
.method public final wo()Lcom/layer/a/a/b;
    .locals 1

    new-instance v0, Lcom/layer/a/a/b;

    invoke-direct {v0, p0}, Lcom/layer/a/a/b;-><init>(Lcom/layer/a/a/b$a;)V

    return-object v0
.end method
