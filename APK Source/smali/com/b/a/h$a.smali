.class final Lcom/b/a/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final b:I

.field private final bGh:Lcom/b/a/aa;

.field final synthetic bGi:Lcom/b/a/h;

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/b/a/h;ILcom/b/a/aa;Z)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/h$a;->bGi:Lcom/b/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/b/a/h$a;->b:I

    iput-object p3, p0, Lcom/b/a/h$a;->bGh:Lcom/b/a/aa;

    iput-boolean p4, p0, Lcom/b/a/h$a;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/aa;)Lcom/b/a/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/b/a/h$a;->b:I

    iget-object v1, p0, Lcom/b/a/h$a;->bGi:Lcom/b/a/h;

    iget-object v1, v1, Lcom/b/a/h;->bGe:Lcom/b/a/x;

    iget-object v1, v1, Lcom/b/a/x;->bCF:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/b/a/h$a;

    iget-object v1, p0, Lcom/b/a/h$a;->bGi:Lcom/b/a/h;

    iget v2, p0, Lcom/b/a/h$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lcom/b/a/h$a;->d:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/b/a/h$a;-><init>(Lcom/b/a/h;ILcom/b/a/aa;Z)V

    iget-object v0, p0, Lcom/b/a/h$a;->bGi:Lcom/b/a/h;

    iget-object v0, v0, Lcom/b/a/h;->bGe:Lcom/b/a/x;

    iget-object v0, v0, Lcom/b/a/x;->bCF:Ljava/util/List;

    iget v1, p0, Lcom/b/a/h$a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/v;

    invoke-interface {v0}, Lcom/b/a/v;->Ae()Lcom/b/a/ac;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/h$a;->bGi:Lcom/b/a/h;

    iget-boolean v1, p0, Lcom/b/a/h$a;->d:Z

    invoke-virtual {v0, p1, v1}, Lcom/b/a/h;->a(Lcom/b/a/aa;Z)Lcom/b/a/ac;

    move-result-object v0

    goto :goto_0
.end method
