.class final La/a/a/f/c$1;
.super La/a/a/f/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/f/c;-><init>(La/a/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cty:La/a/a/f/c;


# direct methods
.method constructor <init>(La/a/a/f/c;La/a/a/b;)V
    .locals 0

    iput-object p1, p0, La/a/a/f/c$1;->cty:La/a/a/f/c;

    invoke-direct {p0, p2}, La/a/a/f/b;-><init>(La/a/a/b;)V

    return-void
.end method


# virtual methods
.method protected final a(La/a/a/j;La/a/a/d;)Z
    .locals 2

    invoke-super {p0, p1, p2}, La/a/a/f/b;->a(La/a/a/j;La/a/a/d;)Z

    move-result v0

    iget-object v1, p0, La/a/a/f/c$1;->cty:La/a/a/f/c;

    invoke-virtual {v1, p1, p2}, La/a/a/f/c;->a(La/a/a/j;La/a/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(La/a/a/d$a;)La/a/a/d$a;
    .locals 2

    invoke-super {p0, p1}, La/a/a/f/b;->b(La/a/a/d$a;)La/a/a/d$a;

    move-result-object v0

    iget-object v1, p0, La/a/a/f/c$1;->cty:La/a/a/f/c;

    invoke-virtual {v1, v0}, La/a/a/f/c;->b(La/a/a/d$a;)La/a/a/d$a;

    move-result-object v0

    return-object v0
.end method
