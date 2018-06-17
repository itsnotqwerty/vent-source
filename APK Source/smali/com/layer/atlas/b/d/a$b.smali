.class public final Lcom/layer/atlas/b/d/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/atlas/b/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/b/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final ai:I

.field public final boO:Ljava/lang/String;

.field final bpe:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/atlas/b/d/a$b;->boO:Ljava/lang/String;

    iput-object p2, p0, Lcom/layer/atlas/b/d/a$b;->bpe:Ljava/lang/String;

    iget-object v0, p0, Lcom/layer/atlas/b/d/a$b;->boO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/layer/atlas/b/d/a$b;->bpe:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/layer/atlas/b/d/a$b;->ai:I

    return-void
.end method


# virtual methods
.method public final wm()I
    .locals 1

    iget v0, p0, Lcom/layer/atlas/b/d/a$b;->ai:I

    return v0
.end method
