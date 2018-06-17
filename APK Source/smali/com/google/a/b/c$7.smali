.class final Lcom/google/a/b/c$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/c;->b(Lcom/google/a/c/a;)Lcom/google/a/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/b/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic bhc:Ljava/lang/reflect/Type;

.field final synthetic bhd:Lcom/google/a/b/c;

.field final synthetic bhg:Lcom/google/a/h;


# direct methods
.method constructor <init>(Lcom/google/a/b/c;Lcom/google/a/h;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/c$7;->bhd:Lcom/google/a/b/c;

    iput-object p2, p0, Lcom/google/a/b/c$7;->bhg:Lcom/google/a/h;

    iput-object p3, p0, Lcom/google/a/b/c$7;->bhc:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final vo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/c$7;->bhg:Lcom/google/a/h;

    invoke-interface {v0}, Lcom/google/a/h;->vd()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
