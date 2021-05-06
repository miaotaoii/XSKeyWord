.class final Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$1;
.super Ljava/lang/Object;
.source "MTNetWorkHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;->get(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$sb:Ljava/lang/StringBuilder;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 41
    .local v1, "isr":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$1;->val$url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "geturl":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 43
    .local v3, "conn":Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 44
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v1, v4

    .line 45
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v4

    .line 46
    const/4 v4, 0x0

    .line 47
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_0

    .line 48
    iget-object v5, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 50
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v6, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v2    # "geturl":Ljava/net/URL;
    .end local v4    # "line":Ljava/lang/String;
    nop

    .line 56
    nop

    .line 57
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 59
    nop

    .line 60
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    goto :goto_3

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 54
    .end local v3    # "conn":Ljava/net/URLConnection;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 51
    :catch_1
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 56
    if-eqz v0, :cond_1

    .line 57
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 62
    :catch_2
    move-exception v2

    goto :goto_2

    .line 59
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 63
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 67
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 54
    :goto_4
    if-eqz v0, :cond_4

    .line 56
    if-eqz v0, :cond_3

    .line 57
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_5

    .line 62
    :catch_3
    move-exception v3

    goto :goto_6

    .line 59
    :cond_3
    :goto_5
    if-eqz v1, :cond_4

    .line 60
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 63
    .local v3, "e":Ljava/io/IOException;
    :goto_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    .line 66
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_7
    goto :goto_9

    :goto_8
    throw v2

    :goto_9
    goto :goto_8
.end method
