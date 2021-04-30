.class public Lcom/miaotao/mopub_android_demo/utils/MTDefaultConfigUtils;
.super Ljava/lang/Object;
.source "MTDefaultConfigUtils.java"


# static fields
.field public static final AD_TYPE_BANNER:I = 0x3

.field public static final AD_TYPE_INTERSTITTIAL:I = 0x1

.field public static final AD_TYPE_VIDEO:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapterList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MOPUB:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MOPUB_INTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MOPUB_REWARD:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->APPLOVIN_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->CHARTBOOST_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->FACEBOOK_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->IRONSOURCE_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->UNITY_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->VUNGLE_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MINTEGRAL_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADCOLONY_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADMOB_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-object v0
.end method

.method public static getBannerList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADMOB:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->APPLOVIN:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->FACEBOOK:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-object v0
.end method

.method public static getDefaultBannerIds()[Ljava/lang/String;
    .locals 3

    .line 126
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->BANNER_AdMOB_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 127
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->BANNER_APPLOVIN_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 128
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->BANNER_FACEBOOK_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 129
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 126
    return-object v0
.end method

.method public static getDefaultInnerIds()[Ljava/lang/String;
    .locals 3

    .line 88
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_AdMOB_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 89
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_APPLOVIN_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 90
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_CHARTBOOST_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 91
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_FACEBOOK_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 92
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_IRAONSOURCE_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 93
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_UNITY_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 94
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_VUNGLE_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 95
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_MINTEGRAL_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 96
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_ADCOLONY_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 97
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_CHARTBOOST_N_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 98
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 88
    return-object v0
.end method

.method public static getDefaultVideoIds()[Ljava/lang/String;
    .locals 3

    .line 103
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_AdMOB_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 104
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_ADMOB_NEW_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 105
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_APPLOVIN_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 106
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_CHARTBOOST_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 107
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_FACEBOOK_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 108
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_IRONSOURCE_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 109
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_UNITY_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 110
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_VUNGLE_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 111
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_MINTEGRAL_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 112
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_ADCOLONY_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 113
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_CHARTBOOST_N_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 114
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 103
    return-object v0
.end method

.method public static getInterList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADMOB:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->APPLOVIN:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->CHARTBOOST:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->FACEBOOK:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->IRONSOURCE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->UNITY:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->VUNGLE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_mintegral:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADCOLONY:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->CHARTBOOST_N:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-object v0
.end method

.method public static getTestVideoIds()[Ljava/lang/String;
    .locals 3

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->AFF_MOPUB_RW1:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 119
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->AFF_MOPUB_RW2:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 120
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->AFF_MOPUB_RW3:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 121
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 118
    return-object v0
.end method

.method public static getVideoList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADMOB:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADMOB_NEW:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->APPLOVIN:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->CHARTBOOST:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->FACEBOOK:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->IRONSOURCE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->UNITY:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->VUNGLE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_mintegral:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADCOLONY:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->CHARTBOOST_N:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-object v0
.end method
