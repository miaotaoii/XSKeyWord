.class public Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;
.super Lcom/miaotao/mopub_android_demo/mssdk/BaseActivity;
.source "MsGameActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DePub"


# instance fields
.field private bannerAd:Lcom/ms/sdk/MsBannerAd;

.field private bannerContainer:Landroid/widget/RelativeLayout;

.field private interstitialAd:Lcom/ms/sdk/MsInterstitialAd;

.field private videoAd:Lcom/ms/sdk/MsRewardVideoAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/mssdk/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    .line 22
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->setInnerLoadListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)Lcom/ms/sdk/MsRewardVideoAd;
    .locals 1
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    .line 22
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->videoAd:Lcom/ms/sdk/MsRewardVideoAd;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)Lcom/ms/sdk/MsInterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    .line 22
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->interstitialAd:Lcom/ms/sdk/MsInterstitialAd;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    .line 22
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->setVideoAdListener()V

    return-void
.end method

.method private initAly()V
    .locals 3

    .line 106
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/aly/sdk/ALYAnalysis;->enalbeDebugMode(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "999999"

    const-string v2, "32408"

    invoke-static {v0, v1, v2}, Lcom/aly/sdk/ALYAnalysis;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private initInnerAd()V
    .locals 2

    .line 143
    new-instance v0, Lcom/ms/sdk/MsInterstitialAd;

    const-string v1, "bbb"

    invoke-direct {v0, p0, v1}, Lcom/ms/sdk/MsInterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->interstitialAd:Lcom/ms/sdk/MsInterstitialAd;

    .line 144
    return-void
.end method

.method private initMsSdk()V
    .locals 1

    .line 111
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ms/sdk/MsSDK;->setDebuggable(Z)V

    .line 112
    new-instance v0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$4;

    invoke-direct {v0, p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$4;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V

    invoke-static {p0, v0}, Lcom/ms/sdk/MsSDK;->init(Landroid/content/Context;Lcom/ms/sdk/listener/MsSdkInitializationListener;)V

    .line 118
    return-void
.end method

.method private initVideoAd()V
    .locals 1

    .line 204
    invoke-static {p0}, Lcom/ms/sdk/MsRewardVideoAd;->getInstance(Landroid/app/Activity;)Lcom/ms/sdk/MsRewardVideoAd;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->videoAd:Lcom/ms/sdk/MsRewardVideoAd;

    .line 205
    return-void
.end method

.method private setBtnBannerOnClick()V
    .locals 2

    .line 55
    const v0, 0x7f090089

    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miaotao/mopub_android_demo/mssdk/-$$Lambda$MsGameActivity$4CgaBSWVIwvytx1hiWk4vsNAgrY;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/mssdk/-$$Lambda$MsGameActivity$4CgaBSWVIwvytx1hiWk4vsNAgrY;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method private setButtonListener()V
    .locals 2

    .line 147
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$6;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$6;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v0, 0x7f090087

    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$7;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$7;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void
.end method

.method private setInnerAdListener()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->interstitialAd:Lcom/ms/sdk/MsInterstitialAd;

    new-instance v1, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$5;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$5;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/ms/sdk/MsInterstitialAd;->setInterstitialAdListener(Lcom/ms/sdk/wrapper/interstitial/MsInterstitialAdListener;)V

    .line 140
    return-void
.end method

.method private setInnerLoadListener()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->interstitialAd:Lcom/ms/sdk/MsInterstitialAd;

    new-instance v1, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$2;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$2;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/ms/sdk/MsInterstitialAd;->setLoadCallBack(Lcom/ms/sdk/wrapper/interstitial/MsInterstitialLoadCallback;)V

    .line 89
    return-void
.end method

.method private setVideoAdListener()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->videoAd:Lcom/ms/sdk/MsRewardVideoAd;

    new-instance v1, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$8;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$8;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/ms/sdk/MsRewardVideoAd;->setVideoAdListener(Lcom/ms/sdk/wrapper/video/MsRewardVideoAdListener;)V

    .line 201
    return-void
.end method

.method private setVideoLoadListener()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->videoAd:Lcom/ms/sdk/MsRewardVideoAd;

    new-instance v1, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$3;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$3;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/ms/sdk/MsRewardVideoAd;->load(Lcom/ms/sdk/wrapper/video/MsRewardVideoLoadCallback;)V

    .line 103
    return-void
.end method


# virtual methods
.method public synthetic lambda$setBtnBannerOnClick$0$MsGameActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 56
    new-instance v0, Lcom/ms/sdk/MsBannerAd;

    const-string v1, "ccc"

    invoke-direct {v0, p0, v1}, Lcom/ms/sdk/MsBannerAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->bannerAd:Lcom/ms/sdk/MsBannerAd;

    .line 57
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->bannerAd:Lcom/ms/sdk/MsBannerAd;

    new-instance v1, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$1;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$1;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/ms/sdk/MsBannerAd;->setBannerAdListener(Lcom/ms/sdk/wrapper/banner/MsBannerAdListener;)V

    .line 70
    const v0, 0x7f090165

    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->bannerContainer:Landroid/widget/RelativeLayout;

    .line 71
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->bannerContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->bannerAd:Lcom/ms/sdk/MsBannerAd;

    invoke-virtual {v1}, Lcom/ms/sdk/MsBannerAd;->getBannerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Lcom/miaotao/mopub_android_demo/mssdk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->initAly()V

    .line 37
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->initMsSdk()V

    .line 39
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->initInnerAd()V

    .line 40
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->setInnerAdListener()V

    .line 41
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->setInnerLoadListener()V

    .line 44
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->initVideoAd()V

    .line 45
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->setVideoAdListener()V

    .line 46
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->setVideoLoadListener()V

    .line 48
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->setButtonListener()V

    .line 50
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->setBtnBannerOnClick()V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 210
    invoke-super {p0}, Lcom/miaotao/mopub_android_demo/mssdk/BaseActivity;->onDestroy()V

    .line 211
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->videoAd:Lcom/ms/sdk/MsRewardVideoAd;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/ms/sdk/MsRewardVideoAd;->destroy()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->bannerAd:Lcom/ms/sdk/MsBannerAd;

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Lcom/ms/sdk/MsBannerAd;->destroy()V

    .line 217
    :cond_1
    return-void
.end method
