.class final Lcom/vent/b$3;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bTF:Landroid/content/Intent;

.field final synthetic bUB:Landroid/support/v7/app/c;

.field final synthetic bUK:Lcom/vent/b;

.field bUL:Ljava/lang/String;

.field done:Z


# direct methods
.method constructor <init>(Lcom/vent/b;Landroid/content/Intent;Landroid/support/v7/app/c;)V
    .locals 1

    iput-object p1, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    iput-object p2, p0, Lcom/vent/b$3;->bTF:Landroid/content/Intent;

    iput-object p3, p0, Lcom/vent/b$3;->bUB:Landroid/support/v7/app/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/b$3;->done:Z

    return-void
.end method

.method private varargs Bq()Ljava/lang/Void;
    .locals 11

    const v10, 0x7f0f006f

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    iget-object v0, v0, Lcom/vent/b;->bUG:Ljava/io/File;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    iget-object v0, v0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    iget-object v0, v0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    iget-object v0, v0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/b$3;->done:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    invoke-virtual {v0}, Lcom/vent/b;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/b$3;->bTF:Landroid/content/Intent;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/vent/b$3;->bTF:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    :goto_1
    iget-boolean v2, p0, Lcom/vent/b$3;->done:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lcom/vent/b;->bUG:Ljava/io/File;

    iget-object v4, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    iget-object v4, v4, Lcom/vent/b;->bUG:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    iget-object v4, v4, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    iget-object v4, v4, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    iget-object v4, v4, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_8

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vent/b$3;->done:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    invoke-static {v2}, Lcom/vent/d/c;->w(Landroid/database/Cursor;)V

    :cond_2
    iget-boolean v2, p0, Lcom/vent/b$3;->done:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    :try_start_3
    iget-object v2, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    invoke-virtual {v2}, Lcom/vent/b;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    iget-object v3, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    new-instance v4, Ljava/io/File;

    const-string v5, "profilepic_download.tmp"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/vent/b;->bUG:Ljava/io/File;

    iget-object v2, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    iget-object v2, v2, Lcom/vent/b;->bUG:Ljava/io/File;

    if-eqz v2, :cond_c

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    if-eqz v0, :cond_b

    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    iget-object v3, v3, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    :try_start_6
    invoke-static {v2, v1}, Lcom/vent/d/c;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vent/b$3;->done:Z

    :goto_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v0, v6

    :cond_3
    :goto_4
    invoke-static {v1}, Lcom/vent/d/c;->c(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/vent/d/c;->c(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/ParcelFileDescriptor;)V

    :cond_4
    iget-boolean v0, p0, Lcom/vent/b$3;->done:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/vent/b$3;->bTF:Landroid/content/Intent;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vent/b$3;->bTF:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    invoke-virtual {v1}, Lcom/vent/b;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    iget-object v2, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    new-instance v3, Ljava/io/File;

    const-string v4, "profilepic_download.tmp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/vent/b;->bUG:Ljava/io/File;

    iget-object v1, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    iget-object v1, v1, Lcom/vent/b;->bUG:Ljava/io/File;

    if-eqz v1, :cond_5

    :try_start_7
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    iget-object v2, v2, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lcom/vent/b$3;->done:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-object v0, v6

    :goto_5
    invoke-static {v0}, Lcom/vent/d/c;->c(Ljava/io/Closeable;)V

    :cond_5
    return-object v6

    :cond_6
    :try_start_a
    iget-object v0, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vent/b;->bUG:Ljava/io/File;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    iput-object v6, v0, Lcom/vent/b;->bUG:Ljava/io/File;

    goto/16 :goto_0

    :cond_7
    move-object v1, v6

    goto/16 :goto_1

    :cond_8
    :try_start_b
    iget-object v4, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/vent/b;->bUG:Ljava/io/File;

    iget-object v4, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    const v5, 0x7f0f0021

    invoke-virtual {v4, v5}, Lcom/vent/b;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v3

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;

    iget-object v4, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    :try_start_c
    iget-object v3, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    const v4, 0x7f0f006f

    invoke-virtual {v3, v4}, Lcom/vent/b;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v3

    :goto_7
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;

    iget-object v4, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;

    goto/16 :goto_4

    :cond_a
    :try_start_d
    iget-object v1, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    const v2, 0x7f0f006e

    invoke-virtual {v1, v2}, Lcom/vent/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;

    move-object v1, v6

    move-object v2, v6

    goto/16 :goto_3

    :cond_b
    iget-object v1, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    const v2, 0x7f0f006e

    invoke-virtual {v1, v2}, Lcom/vent/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :goto_8
    move-object v1, v6

    move-object v2, v6

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v0, v6

    :goto_9
    iget-object v1, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    invoke-virtual {v1, v10}, Lcom/vent/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_9

    :catch_5
    move-exception v3

    move-object v1, v6

    move-object v2, v6

    move-object v0, v6

    goto :goto_7

    :catch_6
    move-exception v3

    move-object v1, v6

    move-object v2, v6

    goto :goto_7

    :catch_7
    move-exception v3

    move-object v1, v6

    goto :goto_7

    :catch_8
    move-exception v3

    move-object v2, v6

    goto :goto_6

    :cond_c
    move-object v0, v6

    goto :goto_8
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/vent/b$3;->Bq()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vent/b$3;->bUB:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    iget-boolean v0, p0, Lcom/vent/b$3;->done:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    const v1, 0x7f0f014b

    invoke-virtual {v0, v1}, Lcom/vent/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    invoke-virtual {v0}, Lcom/vent/b;->Bo()V

    iget-object v0, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    invoke-static {v0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/app/c$a;

    iget-object v1, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    invoke-direct {v0, v1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/vent/b$3;->bUL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/vent/b$3;->bUK:Lcom/vent/b;

    invoke-virtual {v0}, Lcom/vent/b;->Bi()V

    goto :goto_0
.end method
