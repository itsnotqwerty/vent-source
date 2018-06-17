.class public final La/a/a/c/b;
.super La/a/a/c/a;


# static fields
.field public static final ctf:La/a/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a/c/b;

    invoke-direct {v0}, La/a/a/c/b;-><init>()V

    sput-object v0, La/a/a/c/b;->ctf:La/a/a/c/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, La/a/a/c/b;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, La/a/a/c/a;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final FY()La/a/a/g$b;
    .locals 1

    sget-object v0, La/a/a/g$b;->cqN:La/a/a/g$b;

    return-object v0
.end method

.method protected final FZ()Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, La/a/a/g$b;->cqN:La/a/a/g$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, La/a/a/c/b;->ctd:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final Gb()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, La/a/a/c/b;->ctd:[B

    invoke-static {v0}, La/a/a/i/d;->x([B)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
