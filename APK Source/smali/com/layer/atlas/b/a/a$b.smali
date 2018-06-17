.class public final Lcom/layer/atlas/b/a/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/atlas/b/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final ai:I

.field private final boO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/atlas/b/a/a$b;->boO:Ljava/lang/String;

    iget-object v0, p0, Lcom/layer/atlas/b/a/a$b;->boO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/layer/atlas/b/a/a$b;->ai:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/b/a/a$b;->boO:Ljava/lang/String;

    return-object v0
.end method

.method public final wm()I
    .locals 1

    iget v0, p0, Lcom/layer/atlas/b/a/a$b;->ai:I

    return v0
.end method
