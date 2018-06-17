.class final Lio/intercom/a/a/a/c/b/b/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/i/a/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final cJl:Lio/intercom/a/a/a/i/a/b;

.field final cMg:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/i/a/b$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/i/a/b$a;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/b/j$a;->cJl:Lio/intercom/a/a/a/i/a/b;

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/b/j$a;->cMg:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public final Ij()Lio/intercom/a/a/a/i/a/b;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/j$a;->cJl:Lio/intercom/a/a/a/i/a/b;

    return-object v0
.end method
