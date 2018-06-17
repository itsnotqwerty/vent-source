.class final Lio/intercom/a/a/a/c/c/b$d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/a/a/a/c/c/b$d;->a(Lio/intercom/a/a/a/c/c/r;)Lio/intercom/a/a/a/c/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/b$b",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cMy:Lio/intercom/a/a/a/c/c/b$d;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/c/b$d;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/b$d$1;->cMy:Lio/intercom/a/a/a/c/c/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic C([B)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final HU()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method
