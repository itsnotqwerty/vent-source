.class public final Lcom/intercom/composer/b/a/b;
.super Lcom/intercom/composer/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/intercom/composer/b/b",
        "<",
        "Lcom/intercom/composer/b/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Empty"

    new-instance v1, Lcom/intercom/composer/b/a/b$1;

    invoke-direct {v1}, Lcom/intercom/composer/b/a/b$1;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/intercom/composer/b/b;-><init>(Ljava/lang/String;Lcom/intercom/composer/b/a;)V

    return-void
.end method


# virtual methods
.method public final synthetic createFragment()Lcom/intercom/composer/b/c;
    .locals 1

    new-instance v0, Lcom/intercom/composer/b/a/a;

    invoke-direct {v0}, Lcom/intercom/composer/b/a/a;-><init>()V

    return-object v0
.end method
