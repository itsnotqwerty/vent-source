.class public final Lcom/layer/atlas/b/c/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/atlas/b/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final bpd:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/atlas/b/c/a$b;->bpd:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final wm()I
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/b/c/a$b;->bpd:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method
