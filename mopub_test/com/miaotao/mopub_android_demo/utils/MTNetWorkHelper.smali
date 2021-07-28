.class public Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;
.super Ljava/lang/Object;
.source "MTNetWorkHelper.java"


# static fields
.field private static final HOST:Ljava/lang/String; = "https://www.upltv.com/api/appId/list"

.field private static getPost:Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;

    invoke-direct {v0}, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;-><init>()V

    sput-object v0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;->getPost:Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$1;

    invoke-direct {v2, p0, v0}, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$1;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 70
    .local v1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 71
    const/4 v2, 0x0

    .line 73
    .local v2, "s":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v2
.end method

.method public static getInstance()Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;
    .locals 1

    .line 19
    sget-object v0, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;->getPost:Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 88
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper$2;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 128
    .local v1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 129
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 131
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v3

    .line 133
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v2
.end method


# virtual methods
.method public getHOST()Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "https://www.upltv.com/api/appId/list"

    return-object v0
.end method
