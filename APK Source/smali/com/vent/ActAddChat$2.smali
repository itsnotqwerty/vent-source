.class final Lcom/vent/ActAddChat$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActAddChat;->f(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTo:Lcom/vent/ActAddChat;

.field final synthetic bTp:Z

.field final synthetic bTq:Z


# direct methods
.method constructor <init>(Lcom/vent/ActAddChat;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iput-boolean p2, p0, Lcom/vent/ActAddChat$2;->bTp:Z

    iput-boolean p3, p0, Lcom/vent/ActAddChat$2;->bTq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/vent/ActAddChat$2;->bTp:Z

    iget-object v1, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v1, v1, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v1, v1, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    iget-boolean v1, v1, Lcom/vent/p;->bZp:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v1, v1, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-virtual {v1}, Lcom/vent/p;->CH()V

    iget-object v1, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v1, v1, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-virtual {v1, v2}, Lcom/vent/p;->bb(Z)V

    :cond_1
    iget-object v1, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v1, v1, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    iput-boolean v2, v1, Lcom/vent/p;->bZp:Z

    iget-object v1, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v1, v1, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    iget-boolean v2, p0, Lcom/vent/ActAddChat$2;->bTq:Z

    invoke-virtual {v1, v0, v2}, Lcom/vent/p;->g(ZZ)V

    iget-object v0, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v1, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v1, v1, Lcom/vent/ActAddChat;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/vent/ActAddChat;->bTn:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    const-string v1, "api/v1/my/chat_candidates.json?per_page=15"

    iput-object v1, v0, Lcom/vent/ActAddChat;->bTm:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v0, v0, Lcom/vent/ActAddChat;->bTn:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v2, v1, Lcom/vent/ActAddChat;->bTm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v2, v2, Lcom/vent/ActAddChat;->bTn:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/vent/ActAddChat;->bTm:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v0, v0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-virtual {v0}, Lcom/vent/p;->CP()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v3, v2, Lcom/vent/ActAddChat;->bTm:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&from%5border%5d=asc&from%5bfield%5d=username&from%5bvalue%5d="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/vent/ActAddChat;->bTm:Ljava/lang/String;

    :cond_3
    new-instance v0, Lcom/vent/ActAddChat$2$1;

    iget-object v2, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v1, p0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v3, v1, Lcom/vent/ActAddChat;->bTm:Ljava/lang/String;

    const-string v4, "GET"

    const-string v5, "chat_candidates"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActAddChat$2$1;-><init>(Lcom/vent/ActAddChat$2;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    :cond_4
    return-void
.end method
