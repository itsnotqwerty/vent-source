.class public final Lcom/layer/b/e/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/e/a$a;,
        Lcom/layer/b/e/a$b;
    }
.end annotation


# static fields
.field private static bxx:Lcom/layer/b/e/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/layer/b/e/a$a;

    invoke-direct {v0}, Lcom/layer/b/e/a$a;-><init>()V

    sput-object v0, Lcom/layer/b/e/a;->bxx:Lcom/layer/b/e/a$b;

    return-void
.end method

.method public static a(Lcom/layer/b/e/a$b;)V
    .locals 0

    sput-object p0, Lcom/layer/b/e/a;->bxx:Lcom/layer/b/e/a$b;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/layer/b/e/a;->bxx:Lcom/layer/b/e/a$b;

    invoke-interface {v0, p0}, Lcom/layer/b/e/a$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    sget-object v0, Lcom/layer/b/e/a;->bxx:Lcom/layer/b/e/a$b;

    invoke-interface {v0, p0}, Lcom/layer/b/e/a$b;->a(I)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/layer/b/e/a;->bxx:Lcom/layer/b/e/a$b;

    invoke-interface {v0, p0}, Lcom/layer/b/e/a$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/layer/b/e/a;->bxx:Lcom/layer/b/e/a$b;

    invoke-interface {v0, p0}, Lcom/layer/b/e/a$b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/layer/b/e/a;->bxx:Lcom/layer/b/e/a$b;

    invoke-interface {v0, p0, p1}, Lcom/layer/b/e/a$b;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/layer/b/e/a;->bxx:Lcom/layer/b/e/a$b;

    invoke-interface {v0, p0, p1}, Lcom/layer/b/e/a$b;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
