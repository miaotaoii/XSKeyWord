.class public Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;
.super Ljava/lang/Object;
.source "GameAdUnits.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field m:Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;


# direct methods
.method public constructor <init>(Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;)V
    .locals 0
    .param p1, "m"    # Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->m:Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    .line 9
    return-void
.end method


# virtual methods
.method public getBanners()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->m:Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;->getBanners()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getInners()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->m:Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;->getInners()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getVideos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->m:Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;->getVideos()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->m:Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;->getBanners()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->m:Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;->getVideos()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->m:Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;->getInners()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setBanners(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    .local p1, "banners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->m:Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    invoke-virtual {v0, p1}, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;->setBanners(Ljava/util/HashMap;)V

    .line 15
    return-void
.end method

.method public setInners(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p1, "inners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->m:Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    invoke-virtual {v0, p1}, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;->setInners(Ljava/util/HashMap;)V

    .line 19
    return-void
.end method

.method public setVideos(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "videos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->m:Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    invoke-virtual {v0, p1}, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;->setVideos(Ljava/util/HashMap;)V

    .line 23
    return-void
.end method
