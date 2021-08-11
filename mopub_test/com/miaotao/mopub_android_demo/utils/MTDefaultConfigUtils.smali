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

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MOPUB:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MOPUB_INTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MOPUB_REWARD:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->APPLOVIN_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->CHARTBOOST_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->FACEBOOK_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->IRONSOURCE_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->UNITY_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->VUNGLE_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MINTEGRAL_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADCOLONY_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADMOB_ADAPTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
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

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADMOB:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->APPLOVIN:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->FACEBOOK:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MOPUB_MARKETPLACE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-object v0
.end method

.method public static getDefaultBannerIds()[Ljava/lang/String;
    .locals 3

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->BANNER_AdMOB_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 147
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->BANNER_APPLOVIN_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 148
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->BANNER_FACEBOOK_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 149
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->BANNER_MPX_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 150
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 146
    return-object v0
.end method

.method public static getDefaultInnerIds()[Ljava/lang/String;
    .locals 3

    .line 96
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_AdMOB_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 97
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_APPLOVIN_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 98
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_CHARTBOOST_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 99
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_FACEBOOK_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 100
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_IRAONSOURCE_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 101
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_UNITY_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 102
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_VUNGLE_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 103
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_MINTEGRAL_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 104
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_ADCOLONY_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 105
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_CHARTBOOST_N_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 106
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_PANGLE_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 107
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_FYBER_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 108
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_MPX_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 109
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->INNER_InMobi_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 110
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 96
    return-object v0
.end method

.method public static getDefaultVideoIds()[Ljava/lang/String;
    .locals 3

    .line 116
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_AdMOB_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 117
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_ADMOB_NEW_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 118
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_APPLOVIN_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 119
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_CHARTBOOST_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 120
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_FACEBOOK_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 121
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_IRONSOURCE_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 122
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_UNITY_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 123
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_VUNGLE_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 124
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_MINTEGRAL_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 125
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_ADCOLONY_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 126
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_CHARTBOOST_N_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 127
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_PANGLE_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 128
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_fyber_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 129
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_MPX_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 130
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->VIDEO_InMobi_ID:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 131
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 116
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

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADMOB:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->APPLOVIN:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->CHARTBOOST:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->FACEBOOK:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->IRONSOURCE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->UNITY:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->VUNGLE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_mintegral:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADCOLONY:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->CHARTBOOST_N:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MOPUB_MARKETPLACE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->PANGLE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->FYBER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->InMobi:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-object v0
.end method

.method public static getTestVideoIds()[Ljava/lang/String;
    .locals 3

    .line 138
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->AFF_MOPUB_RW1:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 139
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->AFF_MOPUB_RW2:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 140
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->AFF_MOPUB_RW3:Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;

    .line 141
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MoPubAdUnitId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 138
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

    .line 35
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MOPUB_MARKETPLACE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->PANGLE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->FYBER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->InMobi:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    return-object v0
.end method
