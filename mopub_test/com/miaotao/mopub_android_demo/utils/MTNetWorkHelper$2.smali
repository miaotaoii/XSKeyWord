.class final Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$2;
.super Ljava/lang/Object;
.source "MTNetWorkHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;->post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
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
.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$sb:Ljava/lang/StringBuilder;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$2;->val$map:Ljava/util/Map;

    iput-object p3, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$2;->val$sb:Ljava/lang/StringBuilder;

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

    .line 89
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$2;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "out":Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .line 95
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$2;->val$url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, "posturl":Ljava/net/URL;
    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 98
    .local v3, "conn":Ljava/net/URLConnection;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 99
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 100
    new-instance v4, Ljava/io/DataOutputStream;

    .line 101
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v4

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v4, "request":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$2;->val$map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 104
    .local v6, "key":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$2;->val$map:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    nop

    .end local v6    # "key":Ljava/lang/String;
    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 108
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 109
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v5

    .line 111
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 112
    iget-object v5, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$2;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 114
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v7, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$2;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v4    # "request":Ljava/lang/StringBuilder;
    .end local v6    # "line":Ljava/lang/String;
    nop

    .line 119
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 121
    nop

    .line 122
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    goto :goto_2

    .line 118
    .end local v3    # "conn":Ljava/net/URLConnection;
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 115
    :catch_0
    move-exception v3

    .line 116
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 121
    :cond_2
    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 125
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$2;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 118
    :goto_3
    if-eqz v1, :cond_4

    .line 119
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 121
    :cond_4
    if-eqz v0, :cond_5

    .line 122
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 124
    :cond_5
    goto :goto_5

    :goto_4
    throw v3

    :goto_5
    goto :goto_4
.end method
