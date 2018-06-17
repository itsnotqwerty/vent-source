.class final Landroid/support/v4/e/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/e/b;->a(Landroid/content/Context;Landroid/support/v4/e/a;Landroid/support/v4/content/a/b$a;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/support/v4/e/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Dx:Landroid/support/v4/e/a;

.field final synthetic Dy:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/e/a;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/e/b$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/e/b$1;->Dx:Landroid/support/v4/e/a;

    iput p3, p0, Landroid/support/v4/e/b$1;->Dy:I

    iput-object p4, p0, Landroid/support/v4/e/b$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/e/b$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/e/b$1;->Dx:Landroid/support/v4/e/a;

    iget v2, p0, Landroid/support/v4/e/b$1;->Dy:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/e/b;->b(Landroid/content/Context;Landroid/support/v4/e/a;I)Landroid/support/v4/e/b$c;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v4/e/b$c;->pt:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/support/v4/e/b;->dy()Landroid/support/v4/g/g;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/e/b$1;->val$id:Ljava/lang/String;

    iget-object v3, v0, Landroid/support/v4/e/b$c;->pt:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/g/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
