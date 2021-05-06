.class public Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "MTCheckInfoActyViewModel.java"


# static fields
.field private static final APPID_TAG:Ljava/lang/String; = "com.google.android.gms.ads.APPLICATION_ID"

.field private static final APPLOVINKEY_TAG:Ljava/lang/String; = "applovin.sdk.key"

.field private static final TAG:Ljava/lang/String; = "DePub"


# instance fields
.field private admobId:Ljava/lang/String;

.field private applovinKey:Ljava/lang/String;

.field private applovinKeys:[Ljava/lang/String;

.field private isAdmobIdCorrect:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRequesting:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private pkgName:Ljava/lang/String;

.field private severaAmobId:Ljava/lang/String;

.field private thread:Ljava/lang/Thread;

.field private tvErrorLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tvInfoLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .line 45
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 32
    const-string v0, "BLZ3nWD4mwe_7TFhC7kqaUqZMz32l9nxVL-GtCKc6-cEWsxizeXT8L7UJAX2KJ-qey4W9P7FNkUvaPcT295AUD"

    const-string v1, "yMhPM3rS_CH5X21yBI-FnBfIAzJzWXbHtaVBaVs2h4NU62FcQTgltE3kx3vIJmacSkCcN67hmgEtTJ0nFc-T3R"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->applovinKeys:[Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->pkgName:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->admobId:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->applovinKey:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private checkAdmobAppid()V
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getIsRequesting()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->severaAmobId:Ljava/lang/String;

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->admobId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->isAdmobIdCorrect:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "AdMob app id\u4e0e\u540e\u53f0\u4e00\u81f4"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u914d\u7f6e\u53c2\u6570\u9519\u8bef :\n\u672c\u5730:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->admobId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u540e\u53f0:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->severaAmobId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "t":Ljava/lang/String;
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->isAdmobIdCorrect:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 187
    .end local v0    # "t":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private checkApplovinKey(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->applovinKeys:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 207
    .local v4, "k":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 208
    const/4 v0, 0x1

    return v0

    .line 206
    .end local v4    # "k":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    :cond_1
    return v2
.end method

.method private checkClass()V
    .locals 8

    .line 235
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTDefaultConfigUtils;->getAdapterList()Ljava/util/ArrayList;

    move-result-object v0

    .line 237
    .local v0, "mDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    .local v2, "name":Ljava/lang/String;
    const-string v3, ""

    .line 239
    .local v3, "ver":Ljava/lang/String;
    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->checkMopubClass(Ljava/lang/String;)Z

    move-result v4

    .line 240
    .local v4, "has":Z
    if-eqz v4, :cond_0

    .line 241
    const-string v5, "MoPub"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    const-string v3, ""

    .line 243
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getTvInfoLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 244
    .local v5, "info":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ver: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 245
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getTvInfoLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 246
    .end local v5    # "info":Ljava/lang/String;
    goto :goto_1

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getTvErrorLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 249
    .local v5, "t":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u672a\u63a5\u5165"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getTvErrorLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 252
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "ver":Ljava/lang/String;
    .end local v4    # "has":Z
    .end local v5    # "t":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 253
    :cond_2
    return-void
.end method

.method private getAdmobAppIdFromInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .line 138
    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0, p1}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getAppIdFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->severaAmobId:Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->checkAdmobAppid()V

    .line 144
    return-void

    .line 139
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->severaAmobId:Ljava/lang/String;

    .line 140
    return-void
.end method

.method private getAppIdFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "json"    # Ljava/lang/String;

    .line 147
    const-string v0, ""

    const-string v1, "app_id"

    const/4 v2, 0x0

    .line 149
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    .line 151
    const-string v3, "code"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    .local v3, "code":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    .line 153
    return-object v0

    .line 155
    :cond_0
    const-string v4, "data"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 156
    .local v4, "data":Ljava/lang/String;
    invoke-static {v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v2, v5

    .line 157
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->jsonArrayToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "appStrs":[Ljava/lang/String;
    array-length v6, v5

    if-nez v6, :cond_1

    return-object v0

    .line 159
    :cond_1
    const/4 v6, 0x0

    aget-object v6, v5, v6

    .line 160
    .local v6, "str":Ljava/lang/String;
    invoke-static {v6}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    move-object v2, v7

    .line 161
    const-string v7, "DePub"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 164
    .end local v3    # "code":Ljava/lang/String;
    .end local v4    # "data":Ljava/lang/String;
    .end local v5    # "appStrs":[Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 165
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 167
    .end local v3    # "e":Lorg/json/JSONException;
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 169
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 171
    :cond_2
    return-object v0
.end method

.method private getAppInfoFromServer()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/view_models/-$$Lambda$MTCheckInfoActyViewModel$3ct3vULY8UJtKoZGc8sjBxN86fw;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/-$$Lambda$MTCheckInfoActyViewModel$3ct3vULY8UJtKoZGc8sjBxN86fw;-><init>(Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->thread:Ljava/lang/Thread;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    return-void
.end method

.method private getAppInfoFromSever(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 127
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ea450ea068caa9a63d9a4c09646580a3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "sign":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;->getInstance()Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;->getHOST()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "&client_id=44b0ff9734f1c5ec405e4ec69e591a15&sign="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&platform=android&pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private loadAdmobId()V
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.APPLICATION_ID"

    invoke-static {v1, v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->readManifest(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->admobId:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->updateTvInfoString()V

    .line 193
    return-void
.end method

.method private loadAndCheckAdmobId()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getAppInfoFromServer()V

    .line 84
    return-void
.end method

.method private loadApplovinKey()V
    .locals 2

    .line 196
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "applovin.sdk.key"

    invoke-static {v1, v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->readManifest(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->applovinKey:Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->updateTvInfoString()V

    .line 198
    return-void
.end method

.method private loadPkgName()V
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->pkgName:Ljava/lang/String;

    .line 202
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->updateTvInfoString()V

    .line 203
    return-void
.end method

.method private updateTvInfoString()V
    .locals 3

    .line 217
    const-string v0, ""

    .line 218
    .local v0, "applovinText":Ljava/lang/String;
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->applovinKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->checkApplovinKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->applovinKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (upltv \u8d26\u53f7)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->applovinKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (cp \u8d26\u53f7)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5305\u540d "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.google.android.gms.ads.APPLICATION_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->admobId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "applovin.sdk.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getTvInfoLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 232
    return-void
.end method


# virtual methods
.method public getIsAdmobIdCorrect()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->isAdmobIdCorrect:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->isAdmobIdCorrect:Landroidx/lifecycle/MutableLiveData;

    .line 77
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->loadAndCheckAdmobId()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->isAdmobIdCorrect:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getIsRequesting()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->isRequesting:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->isRequesting:Landroidx/lifecycle/MutableLiveData;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->isRequesting:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTvErrorLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->tvErrorLiveData:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->tvErrorLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->tvErrorLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTvInfoLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->tvInfoLiveData:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->tvInfoLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 52
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->loadPkgName()V

    .line 53
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->loadAdmobId()V

    .line 54
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->loadApplovinKey()V

    .line 55
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->checkClass()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->tvInfoLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$getAppInfoFromServer$0$MTCheckInfoActyViewModel()V
    .locals 4

    .line 101
    const-string v0, "DePub"

    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 102
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getIsRequesting()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 104
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getAppInfoFromSever(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "info":Ljava/lang/String;
    if-nez v1, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\npkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v2, "server data ////////////////////////////"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v2, "server data ////////////////////////////\n\n"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0, v1}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getAdmobAppIdFromInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "info":Ljava/lang/String;
    nop

    .line 118
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/InterruptedException;
    return-void
.end method

.method protected onCleared()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 92
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 95
    :cond_0
    return-void
.end method
