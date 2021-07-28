.class public Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MTBannerActivity.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private bannerConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bannerView:Lcom/mopub/mobileads/MoPubView;

.field private btn_status:Landroid/widget/Button;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 37
    const-string v0, "DePub"

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->bannerConfig:Ljava/util/HashMap;

    return-void
.end method

.method private createLayout()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 69
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    const-string v1, "Banner Debug"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, "myLayout":Landroid/widget/RelativeLayout;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 74
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->btn_status:Landroid/widget/Button;

    .line 75
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->btn_status:Landroid/widget/Button;

    const/16 v4, 0xc9

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 76
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->btn_status:Landroid/widget/Button;

    const-string v4, "load"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    const/high16 v4, 0x437a0000    # 250.0f

    invoke-static {p0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v3, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    const/16 v4, 0x1e

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 84
    iget-object v6, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->btn_status:Landroid/widget/Button;

    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v6, Lcom/mopub/mobileads/MoPubView;

    invoke-direct {v6, p0}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->bannerView:Lcom/mopub/mobileads/MoPubView;

    .line 88
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v2, v6

    .line 91
    .local v2, "para1":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {p0, v6}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 92
    const/16 v6, 0xd

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    iget-object v6, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->bannerView:Lcom/mopub/mobileads/MoPubView;

    iget-object v7, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 95
    iget-object v6, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->bannerView:Lcom/mopub/mobileads/MoPubView;

    sget-object v7, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/MoPubView;->setAdSize(Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V

    .line 96
    iget-object v6, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->bannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v6, p0}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 97
    iget-object v6, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->bannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 100
    .local v6, "textView":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n\n    unit id :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v5, v7

    .line 104
    .local v5, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->btn_status:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getId()I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v5, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 105
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 106
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v4, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->btn_status:Landroid/widget/Button;

    new-instance v7, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTBannerActivity$3K3jcBumfCib4hNat3MD9wyBJgk;

    invoke-direct {v7, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTBannerActivity$3K3jcBumfCib4hNat3MD9wyBJgk;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->setContentView(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method private initData()V
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "banner_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    .line 58
    .local v0, "map":Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;
    if-eqz v0, :cond_0

    .line 59
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;->getBanners()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->bannerConfig:Ljava/util/HashMap;

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->bannerConfig:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 62
    .local v1, "iterator":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->id:Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->bannerConfig:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private initMoPub()V
    .locals 4

    .line 122
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->loadBanner()V

    .line 124
    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/mopub/common/SdkConfiguration$Builder;

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->id:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/mopub/common/MediationSettings;

    .line 128
    invoke-virtual {v0, v1}, Lcom/mopub/common/SdkConfiguration$Builder;->withMediationSettings([Lcom/mopub/common/MediationSettings;)Lcom/mopub/common/SdkConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 130
    invoke-virtual {v0, v1}, Lcom/mopub/common/SdkConfiguration$Builder;->withLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)Lcom/mopub/common/SdkConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object v0

    .line 131
    .local v0, "sdkConfiguration":Lcom/mopub/common/SdkConfiguration;
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->id:Ljava/lang/String;

    const-string v3, "MoPubInitKey"

    invoke-static {v1, v3, v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->writeSpString(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->initSdkListener()Lcom/mopub/common/SdkInitializationListener;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mopub/common/MoPub;->initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    .line 134
    return-void
.end method

.method private initSdkListener()Lcom/mopub/common/SdkInitializationListener;
    .locals 1

    .line 144
    new-instance v0, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTBannerActivity$t9F8TT8auGARXeEXfaqZM6LtDEw;

    invoke-direct {v0, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTBannerActivity$t9F8TT8auGARXeEXfaqZM6LtDEw;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;)V

    return-object v0
.end method

.method private loadBanner()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->bannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 139
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->btn_status:Landroid/widget/Button;

    const-string v1, "loading..."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method


# virtual methods
.method public synthetic lambda$createLayout$0$MTBannerActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->btn_status:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "s":Ljava/lang/String;
    const-string v1, "Failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "load"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->loadBanner()V

    .line 114
    :cond_1
    return-void
.end method

.method public synthetic lambda$initSdkListener$2$MTBannerActivity()V
    .locals 2

    .line 145
    invoke-static {p0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->invokeApplovinSdkObject(Landroid/content/Context;)V

    .line 147
    const-string v0, "\u521d\u59cb\u5316\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->TAG:Ljava/lang/String;

    const-string v1, "MoPub onInitializationFinished "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->loadBanner()V

    .line 150
    new-instance v0, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTBannerActivity$aFTo-RC1PTUSqszSHH0Ek-qHjZM;

    .local v0, "impressionListener":Lcom/mopub/network/ImpressionListener;
    invoke-direct {v0, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTBannerActivity$aFTo-RC1PTUSqszSHH0Ek-qHjZM;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;)V

    .line 159
    invoke-static {v0}, Lcom/mopub/network/ImpressionsEmitter;->addListener(Lcom/mopub/network/ImpressionListener;)V

    .line 160
    return-void
.end method

.method public synthetic lambda$null$1$MTBannerActivity(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V
    .locals 4
    .param p1, "adUnitId"    # Ljava/lang/String;
    .param p2, "impressionData"    # Lcom/mopub/network/ImpressionData;

    .line 151
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnitId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz p2, :cond_0

    .line 153
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mopub/network/ImpressionData;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mopub/network/ImpressionData;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->TAG:Ljava/lang/String;

    const-string v1, "impressionData == null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void
.end method

.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .line 177
    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .line 188
    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .line 181
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->btn_status:Landroid/widget/Button;

    const-string v1, "showed"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .line 170
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->btn_status:Landroid/widget/Button;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "load Failed E:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 165
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->btn_status:Landroid/widget/Button;

    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->initData()V

    .line 51
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->createLayout()V

    .line 52
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->initMoPub()V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 192
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 193
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;->bannerView:Lcom/mopub/mobileads/MoPubView;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 196
    return-void
.end method
