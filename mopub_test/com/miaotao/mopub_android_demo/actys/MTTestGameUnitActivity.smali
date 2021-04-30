.class public Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MTTestGameUnitActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DePub"


# instance fields
.field private btn_banner:Landroid/widget/Button;

.field private btn_inter:Landroid/widget/Button;

.field private btn_video:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private mUnits:Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 241
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTTestGameUnitActivity$wpLRAW7K59i6y5fO4w8DeNatA5E;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTTestGameUnitActivity$wpLRAW7K59i6y5fO4w8DeNatA5E;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;)Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;
    .locals 1
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;

    .line 33
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->mUnits:Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->showDialog(Ljava/lang/String;)V

    return-void
.end method

.method private getAppInfoFromServer()V
    .locals 2

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u5e7f\u544a\u4f4d\u4fe1\u606f..."

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTTestGameUnitActivity$FzuIMa-QV9QTK8kc2McWxBo9kyM;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTTestGameUnitActivity$FzuIMa-QV9QTK8kc2McWxBo9kyM;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 239
    return-void
.end method

.method private getAppInfoFromSever(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 153
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

    .line 155
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

    .line 158
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTNetWorkHelper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getUnitsFromJson(Ljava/lang/String;)Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;
    .locals 16
    .param p1, "json"    # Ljava/lang/String;

    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    .line 167
    const-string v0, "code"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    .line 169
    return-object v2

    .line 172
    :cond_0
    const-string v3, "data"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    .local v3, "data":Ljava/lang/String;
    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    move-object v1, v4

    .line 174
    const-string v4, "mopub_id"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->jsonArrayToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "appStrs":[Ljava/lang/String;
    if-eqz v4, :cond_5

    array-length v5, v4

    if-nez v5, :cond_1

    goto :goto_2

    .line 177
    :cond_1
    new-instance v5, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    new-instance v6, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    invoke-direct {v6}, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;-><init>()V

    invoke-direct {v5, v6}, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;-><init>(Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;)V

    .line 178
    .local v5, "units":Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v6, "inners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v7, "videos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v8, "banners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v9, v4

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_4

    aget-object v11, v4, v10

    .line 184
    .local v11, "s":Ljava/lang/String;
    invoke-static {v11}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 185
    .local v12, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "type"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 186
    .local v13, "t":Ljava/lang/String;
    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, "name"

    const-string v2, "key"

    if-eqz v14, :cond_2

    .line 187
    :try_start_1
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 188
    :cond_2
    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 189
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 191
    :cond_3
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v8, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .end local v11    # "s":Ljava/lang/String;
    .end local v13    # "t":Ljava/lang/String;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_0

    .line 194
    .end local v12    # "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v5, v8}, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->setBanners(Ljava/util/HashMap;)V

    .line 195
    invoke-virtual {v5, v7}, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->setVideos(Ljava/util/HashMap;)V

    .line 196
    invoke-virtual {v5, v6}, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->setInners(Ljava/util/HashMap;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    return-object v5

    .line 175
    .end local v5    # "units":Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;
    .end local v6    # "inners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "videos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "banners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :goto_2
    const/4 v2, 0x0

    return-object v2

    .line 200
    .end local v0    # "code":Ljava/lang/String;
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "appStrs":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 203
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private initLayout()V
    .locals 11

    .line 51
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 52
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    const-string v1, "\u6e38\u620f\u5e7f\u544a\u4f4d\u6d4b\u8bd5"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    const-string v1, "DePub"

    const-string v2, "MTTestGameUnitActivity onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, "myLayout":Landroid/widget/RelativeLayout;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 59
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_video:Landroid/widget/Button;

    .line 60
    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_video:Landroid/widget/Button;

    const/16 v3, 0x79

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    .line 61
    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_video:Landroid/widget/Button;

    const-string v3, "\u6fc0\u52b1\u89c6\u9891Debug"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    const/high16 v3, 0x437a0000    # 250.0f

    invoke-static {p0, v3}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    const/16 v6, 0x1e

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 67
    iget-object v7, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_video:Landroid/widget/Button;

    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 71
    invoke-static {p0, v3}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v7, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v7, "test_para":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    iget-object v8, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_video:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getId()I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 77
    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 78
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_inter:Landroid/widget/Button;

    .line 79
    iget-object v8, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_inter:Landroid/widget/Button;

    const/16 v10, 0x7a

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setId(I)V

    .line 80
    iget-object v8, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_inter:Landroid/widget/Button;

    const-string v10, "\u63d2\u5c4fDebug"

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v8, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_inter:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v8, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_inter:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 87
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_banner:Landroid/widget/Button;

    .line 88
    iget-object v8, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_banner:Landroid/widget/Button;

    const/16 v10, 0x7b

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setId(I)V

    .line 89
    iget-object v8, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_banner:Landroid/widget/Button;

    const-string v10, "Banner Debug"

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 93
    invoke-static {p0, v3}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v8, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v3, v8

    .line 96
    .local v3, "bannerPara":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 99
    iget-object v4, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_banner:Landroid/widget/Button;

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v4, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_inter:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getId()I

    move-result v4

    invoke-virtual {v3, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->setContentView(Landroid/view/View;)V

    .line 105
    iget-object v4, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_banner:Landroid/widget/Button;

    new-instance v5, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTTestGameUnitActivity$9N5oVbWlVvNDm8L0d4gE02udY2I;

    invoke-direct {v5, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTTestGameUnitActivity$9N5oVbWlVvNDm8L0d4gE02udY2I;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v4, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_video:Landroid/widget/Button;

    new-instance v5, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity$1;

    invoke-direct {v5, p0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity$1;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v4, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->btn_inter:Landroid/widget/Button;

    new-instance v5, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity$2;

    invoke-direct {v5, p0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity$2;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 257
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 259
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 260
    return-void
.end method


# virtual methods
.method public synthetic lambda$getAppInfoFromServer$1$MTTestGameUnitActivity()V
    .locals 5

    .line 217
    invoke-static {p0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->getAppInfoFromSever(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "info":Ljava/lang/String;
    const-string v1, "DePub"

    const-string v2, "\n\nserver data ////////////////////////////"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v2, "server data ////////////////////////////\n\n"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->getUnitsFromJson(Ljava/lang/String;)Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    move-result-object v2

    .line 223
    .local v2, "units":Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return thread cause lifecycle is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle$State;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    return-void

    .line 229
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->hasData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 231
    .local v1, "message":Landroid/os/Message;
    iput-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->mUnits:Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    .line 232
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 233
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    .end local v1    # "message":Landroid/os/Message;
    goto :goto_0

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    :goto_0
    return-void
.end method

.method public synthetic lambda$initLayout$0$MTTestGameUnitActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->mUnits:Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->getBanners()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->mUnits:Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    const-string v2, "unitData"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 109
    const-string v1, "type"

    const-string v2, "banner"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 113
    :cond_0
    const-string v0, "\u6ca1\u6709banner \u5e7f\u544a\u4f4d"

    invoke-direct {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->showDialog(Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$2$MTTestGameUnitActivity(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "\u6e38\u620f\u5e7f\u544a\u4f4d\u6d4b\u8bd5"

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ca1\u6709\u67e5\u8be2\u5230\u5e7f\u544a\u4f4did\n\u5305\u540d:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-direct {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->showDialog(Ljava/lang/String;)V

    .line 248
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->initLayout()V

    .line 45
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->getAppInfoFromServer()V

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 264
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->handler:Landroid/os/Handler;

    .line 266
    return-void
.end method
