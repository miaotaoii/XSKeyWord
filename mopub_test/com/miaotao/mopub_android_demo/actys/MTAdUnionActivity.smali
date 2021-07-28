.class public Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MTAdUnionActivity.java"

# interfaces
.implements Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionClickListener;
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DePub"

.field public static adunit_banner:[Ljava/lang/String;

.field public static adunit_inter:[Ljava/lang/String;

.field public static adunit_video:[Ljava/lang/String;


# instance fields
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

.field private interConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private interObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubInterstitial;",
            ">;"
        }
    .end annotation
.end field

.field private mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

.field private mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private rewardedVideoListener:Lcom/mopub/mobileads/MoPubRewardedAdListener;

.field private type:Ljava/lang/String;

.field private units:Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

.field private videoConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->videoConfig:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interObjects:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interConfig:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->bannerConfig:Ljava/util/HashMap;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    .line 55
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->loadVideoAd(Ljava/lang/String;)V

    return-void
.end method

.method private createFragment(Landroid/widget/RelativeLayout;)V
    .locals 4
    .param p1, "layout"    # Landroid/widget/RelativeLayout;

    .line 106
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->newInstance(I)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    .line 109
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-virtual {v0, v2}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->setBanner(Z)V

    .line 111
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->videoConfig:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->initData(Ljava/util/HashMap;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v3, "inner"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->newInstance(I)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    .line 116
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-virtual {v0, v2}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->setBanner(Z)V

    .line 118
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interConfig:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->initData(Ljava/util/HashMap;)V

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->newInstance(I)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    .line 122
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-virtual {v0, v1}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->setBanner(Z)V

    .line 123
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->bannerConfig:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->initData(Ljava/util/HashMap;)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->units:Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    if-nez v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->setType(I)V

    .line 129
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-virtual {v0, p0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->setAdUnionClickListener(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionClickListener;)V

    .line 130
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 131
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 132
    .local v1, "transaction":Landroidx/fragment/app/FragmentTransaction;
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 133
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 134
    return-void
.end method

.method private getInterObjectFromId(Ljava/lang/String;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/MoPubInterstitial;

    .line 210
    .local v1, "o":Lcom/mopub/mobileads/MoPubInterstitial;
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->getKeywords()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    return-object v1

    .line 213
    .end local v1    # "o":Lcom/mopub/mobileads/MoPubInterstitial;
    :cond_0
    goto :goto_0

    .line 214
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initBannerConfig()V
    .locals 5

    .line 186
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTDefaultConfigUtils;->getBannerList()Ljava/util/ArrayList;

    move-result-object v0

    .line 187
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->adunit_banner:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->bannerConfig:Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private initConfig(Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;)V
    .locals 0
    .param p1, "units"    # Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    .line 383
    if-eqz p1, :cond_0

    .line 384
    invoke-direct {p0, p1}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->initGameConfig(Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;)V

    goto :goto_0

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->initDefaultConfig()V

    .line 388
    :goto_0
    return-void
.end method

.method private initDefaultConfig()V
    .locals 2

    .line 367
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTDefaultConfigUtils;->getDefaultInnerIds()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->adunit_inter:[Ljava/lang/String;

    .line 368
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTDefaultConfigUtils;->getDefaultVideoIds()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->adunit_video:[Ljava/lang/String;

    .line 369
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTDefaultConfigUtils;->getDefaultBannerIds()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->adunit_banner:[Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->initVideoConfig()V

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v1, "inner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->initInterConfig()V

    goto :goto_0

    .line 378
    :cond_1
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->initBannerConfig()V

    .line 380
    :goto_0
    return-void
.end method

.method private initGameConfig(Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;)V
    .locals 2
    .param p1, "units"    # Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    .line 346
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p1}, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->getVideos()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->videoConfig:Ljava/util/HashMap;

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v1, "inner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p1}, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->getInners()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interConfig:Ljava/util/HashMap;

    .line 350
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->initInnerObjects()V

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p1}, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->getBanners()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->bannerConfig:Ljava/util/HashMap;

    .line 354
    :goto_0
    return-void
.end method

.method private initInnerObjects()V
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interConfig:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 359
    .local v1, "id":Ljava/lang/String;
    new-instance v2, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {v2, p0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 360
    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2, p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 361
    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interObjects:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .end local v1    # "id":Ljava/lang/String;
    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method

.method private initInterConfig()V
    .locals 5

    .line 193
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTDefaultConfigUtils;->getInterList()Ljava/util/ArrayList;

    move-result-object v0

    .line 194
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->adunit_inter:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interConfig:Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private initLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v1, "banner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, "MoPub Banner"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MoPubRewardedVideos"

    goto :goto_0

    :cond_1
    const-string v1, "MoPubInterstitial"

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, "layout":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 99
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->setContentView(Landroid/view/View;)V

    .line 101
    invoke-direct {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->createFragment(Landroid/widget/RelativeLayout;)V

    .line 103
    return-void
.end method

.method private initMoPub()V
    .locals 9

    .line 425
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->preload()V

    .line 428
    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u521d\u59cb\u5316\u4e2d..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 431
    const-string v0, ""

    .line 432
    .local v0, "initId":Ljava/lang/String;
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->units:Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    if-nez v1, :cond_1

    .line 433
    const-string v0, "0293a6434d234f09bb975ea5658e9066"

    goto :goto_0

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->videoConfig:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 437
    :cond_2
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v2, "inner"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 438
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interConfig:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 440
    :cond_3
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->bannerConfig:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 445
    :goto_0
    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    .line 446
    .local v1, "sdk":Lcom/applovin/sdk/AppLovinSdk;
    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdk;->getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    .line 447
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "38b7a718-32c9-4f91-b28b-0ca9713cf6bb"

    .line 449
    .local v3, "gaid":Ljava/lang/String;
    const-string v4, "db8bd61d-f351-4a1d-b0c7-3908e9e9f105"

    .line 450
    .local v4, "gaid2":Ljava/lang/String;
    const-string v5, "3b24af48-6b88-48ba-b4b1-f34970cfc993"

    .line 451
    .local v5, "gaid3":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdk;->getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/applovin/sdk/AppLovinSdkSettings;->setTestDeviceAdvertisingIds(Ljava/util/List;)V

    .line 457
    new-instance v6, Lcom/mopub/common/SdkConfiguration$Builder;

    invoke-direct {v6, v0}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 458
    invoke-virtual {v6, v7}, Lcom/mopub/common/SdkConfiguration$Builder;->withLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)Lcom/mopub/common/SdkConfiguration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object v6

    .line 459
    .local v6, "sdkConfiguration":Lcom/mopub/common/SdkConfiguration;
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    const-string v8, "MoPubInitKey"

    invoke-static {v7, v8, v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->writeSpString(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->initSdkListener()Lcom/mopub/common/SdkInitializationListener;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/mopub/common/MoPub;->initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    .line 462
    return-void
.end method

.method private initSdkListener()Lcom/mopub/common/SdkInitializationListener;
    .locals 1

    .line 466
    new-instance v0, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTAdUnionActivity$Wlgdp9LNNeygQ1kaaAd24ooQiMk;

    invoke-direct {v0, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTAdUnionActivity$Wlgdp9LNNeygQ1kaaAd24ooQiMk;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;)V

    return-object v0
.end method

.method private initVideoConfig()V
    .locals 5

    .line 179
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTDefaultConfigUtils;->getVideoList()Ljava/util/ArrayList;

    move-result-object v0

    .line 180
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->adunit_video:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->videoConfig:Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$null$0(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V
    .locals 4
    .param p0, "adUnitId"    # Ljava/lang/String;
    .param p1, "impressionData"    # Lcom/mopub/network/ImpressionData;

    .line 484
    const-string v0, "DePub"

    if-eqz p1, :cond_0

    .line 485
    const-string v1, "\n///////////////////impression data///////////////////"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adUnitId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mopub/network/ImpressionData;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mopub/network/ImpressionData;->getAdUnitFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mopub/network/ImpressionData;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mopub/network/ImpressionData;->getNetworkPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 494
    :cond_0
    const-string v1, "impressionData == null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    return-void
.end method

.method private loadInterAd(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d2\u5c4f\u5e7f\u544a\u52a0\u8f7d :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interConfig:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ad unit :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DePub"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0, p1}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->getInterObjectFromId(Ljava/lang/String;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    .line 222
    .local v0, "moPubInterstitial":Lcom/mopub/mobileads/MoPubInterstitial;
    if-nez v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    const-string v2, "load fail"

    const-string v3, "moPubInterstitial == null"

    invoke-virtual {v1, p1, v2, v3}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->refreshState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void

    .line 226
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 227
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    const-string v2, "loading"

    const-string v3, ""

    invoke-virtual {v1, p1, v2, v3}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->refreshState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private loadVideoAd(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mopub/common/MediationSettings;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideos;->loadRewardedVideo(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89c6\u9891\u5e7f\u544a\u52a0\u8f7d :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->videoConfig:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " adUnit :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DePub"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    const-string v1, "loading"

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->refreshState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private preLoadInter()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interConfig:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->loadInterAd(Ljava/lang/String;)V

    .line 174
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method private preLoadVideo()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->videoConfig:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->loadVideoAd(Ljava/lang/String;)V

    .line 167
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method private preload()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->setRewardListener()V

    .line 415
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->preLoadVideo()V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v1, "inner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->setInnerListener()V

    .line 419
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->preLoadInter()V

    .line 421
    :cond_1
    :goto_0
    return-void
.end method

.method private setInnerListener()V
    .locals 6

    .line 391
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->units:Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    if-nez v0, :cond_0

    .line 392
    sget-object v0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->adunit_inter:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 393
    .local v3, "id":Ljava/lang/String;
    new-instance v4, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {v4, p0, v3}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 394
    iget-object v4, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v4, p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 395
    iget-object v4, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v4, v3}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 396
    iget-object v4, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interObjects:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .end local v3    # "id":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interConfig:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 400
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    .local v1, "id":Ljava/lang/String;
    new-instance v2, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {v2, p0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 403
    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2, p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 404
    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 405
    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interObjects:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .end local v1    # "id":Ljava/lang/String;
    goto :goto_1

    .line 409
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private setRewardListener()V
    .locals 1

    .line 264
    new-instance v0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity$1;

    invoke-direct {v0, p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity$1;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;)V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->rewardedVideoListener:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    .line 308
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->rewardedVideoListener:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedAds;->setRewardedAdListener(Lcom/mopub/mobileads/MoPubRewardedAdListener;)V

    .line 309
    return-void
.end method


# virtual methods
.method public synthetic lambda$initSdkListener$1$MTAdUnionActivity()V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->units:Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    if-nez v0, :cond_0

    .line 468
    invoke-static {p0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->invokeApplovinSdkObject(Landroid/content/Context;)V

    .line 470
    :cond_0
    const/4 v0, 0x0

    const-string v1, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 472
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v1, "banner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, "MoPub Banner"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MoPubRewardedVideos"

    goto :goto_0

    :cond_2
    const-string v1, "MoPubInterstitial"

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 478
    :goto_1
    const-string v0, "DePub"

    const-string v1, "MoPub onInitializationFinished "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->preload()V

    .line 482
    sget-object v0, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTAdUnionActivity$OqK1w4fRviUM52cW_vX1CRHcUv4;->INSTANCE:Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTAdUnionActivity$OqK1w4fRviUM52cW_vX1CRHcUv4;

    .line 497
    .local v0, "impressionListener":Lcom/mopub/network/ImpressionListener;
    invoke-static {v0}, Lcom/mopub/network/ImpressionsEmitter;->addListener(Lcom/mopub/network/ImpressionListener;)V

    .line 498
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 146
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 147
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onBackPressed(Landroid/app/Activity;)V

    .line 148
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " id :"

    const-string v2, "DePub"

    if-eqz v0, :cond_1

    .line 234
    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAds;->hasRewardedAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAds;->showRewardedAd(Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video\u5e7f\u544a\u5c55\u793a :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->videoConfig:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 239
    :cond_0
    invoke-direct {p0, p1}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->loadVideoAd(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    const-string v3, "inner"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    invoke-direct {p0, p1}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->getInterObjectFromId(Ljava/lang/String;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u63d2\u5c4f\u5e7f\u544a\u5c55\u793a :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->interConfig:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0, p1}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->getInterObjectFromId(Ljava/lang/String;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    goto :goto_0

    .line 246
    :cond_2
    invoke-direct {p0, p1}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->loadInterAd(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miaotao/mopub_android_demo/actys/MTBannerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;

    invoke-direct {v1}, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;-><init>()V

    .line 252
    .local v1, "map":Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v2, "map1":Ljava/util/HashMap;
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->bannerConfig:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {v1, v2}, Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;->setBanners(Ljava/util/HashMap;)V

    .line 256
    const-string v3, "banner_config"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->startActivity(Landroid/content/Intent;)V

    .line 260
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "map":Lcom/miaotao/mopub_android_demo/beans/MTSerializableMap;
    .end local v2    # "map1":Ljava/util/HashMap;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 76
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onCreate(Landroid/app/Activity;)V

    .line 78
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->type:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "unitData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->units:Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    .line 80
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->units:Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    invoke-direct {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->initConfig(Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;)V

    .line 82
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->initLayout()V

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 503
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 504
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onDestroy(Landroid/app/Activity;)V

    .line 505
    return-void
.end method

.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .line 335
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 4
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .line 339
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->getKeywords()Ljava/lang/String;

    move-result-object v1

    const-string v2, "load"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->refreshState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->loadInterAd(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialFailed id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->getKeywords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DePub"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->getKeywords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "load fail"

    invoke-virtual {v0, v1, v3, v2}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->refreshState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 4
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialLoaded id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->getKeywords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DePub"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->mAdUnionFragment:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->getKeywords()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loaded"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->refreshState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .line 330
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 153
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 154
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onPause(Landroid/app/Activity;)V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 138
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 139
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onResume(Landroid/app/Activity;)V

    .line 141
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->initMoPub()V

    .line 142
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 159
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 160
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onStop(Landroid/app/Activity;)V

    .line 161
    return-void
.end method
