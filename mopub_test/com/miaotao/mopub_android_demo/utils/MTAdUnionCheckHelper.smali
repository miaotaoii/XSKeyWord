.class public Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;
.super Ljava/lang/Object;
.source "MTAdUnionCheckHelper.java"


# static fields
.field private static final FACEBOOK_BID_CLASS_NAME:Ljava/lang/String; = "com.facebook.bidding.FBAdBidRequest"

.field private static sUnionCheckFlag:I

.field private static sUnionExistFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->sUnionCheckFlag:I

    .line 24
    sput v0, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->sUnionExistFlag:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAdapters(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 696
    invoke-static {p0}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->getAdapterClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkMopubClass(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 700
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MOPUB:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasMoPub()Z

    move-result v0

    return v0

    .line 703
    :cond_0
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MOPUB_INTER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasMoPubInter()Z

    move-result v0

    return v0

    .line 707
    :cond_1
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MOPUB_REWARD:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 708
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasMoPubReward()Z

    move-result v0

    return v0

    .line 710
    :cond_2
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MOPUB_VOLLEY:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 711
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasMoPubVolley()Z

    move-result v0

    return v0

    .line 714
    :cond_3
    invoke-static {p0}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->checkAdapters(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getAdUnionVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 822
    const-string v0, "N/A"

    .line 824
    .local v0, "version":Ljava/lang/String;
    invoke-static {p1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isClassLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 826
    :try_start_0
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADMOB:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADMOB_NEW:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    .line 827
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADMOB_R:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    .line 828
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 831
    :cond_0
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADCOLONY:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 832
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 834
    :cond_1
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->UNITY:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 835
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getVersion()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 837
    :cond_2
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->VUNGLE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 838
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_AFF_CLASS_vungle_c:Ljava/lang/String;

    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_VERSION_NAME:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->getAdVersionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 840
    :cond_3
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->APPLOVIN:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 841
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_AFF_CLASS_APPLOVIN:Ljava/lang/String;

    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_VERSION:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->getAdVersionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 843
    :cond_4
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->CHARTBOOST:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 844
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 849
    :cond_5
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->PLAYABLEADS:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 850
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_AFF_CLASS_ADLY_P:Ljava/lang/String;

    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_VERSION_NAME:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->getAdVersionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 852
    :cond_6
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->FACEBOOK:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->FACEBOOK_R:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_1

    .line 862
    :cond_7
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->IRONSOURCE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->IRONSOURCE_R:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_0

    .line 865
    :cond_8
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->VK:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 866
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_AFF_CLASS_vk_c:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->getAdVersionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 868
    :cond_9
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->PLAYABLEADS_INNER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 869
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_AFF_CLASS_ADLY_P:Ljava/lang/String;

    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_VERSION_NAME:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->getAdVersionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 871
    :cond_a
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MAIO:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "unknow"

    if-eqz v1, :cond_b

    .line 873
    return-object v2

    .line 875
    :cond_b
    :try_start_1
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->NEND:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 876
    const-string v1, ""

    return-object v1

    .line 881
    :cond_c
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->APPLOVIN:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 882
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_AFF_CLASS_APPLOVIN:Ljava/lang/String;

    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_VERSION:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->getAdVersionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 884
    :cond_d
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->AMAZON:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 886
    move-object v0, v2

    .line 888
    :cond_e
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_mintegral:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 889
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_AFF_CLASS_MTG_C:Ljava/lang/String;

    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_SDK_VERSION:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->getAdVersionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 895
    :cond_f
    goto :goto_4

    .line 863
    :cond_10
    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 853
    :cond_11
    :goto_1
    sget-object v1, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_AFF_CLASS_fb_c:Ljava/lang/String;

    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_VERSION_NAME:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->getAdVersionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 854
    const-string v1, "com.facebook.bidding.FBAdBidRequest"

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v1

    .line 855
    .local v1, "bidding":Z
    if-eqz v1, :cond_12

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-bid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_2

    .line 858
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-nobid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 860
    :goto_2
    return-object v0

    .line 829
    .end local v1    # "bidding":Z
    :cond_13
    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getVersionString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 893
    :catch_0
    move-exception v1

    .line 894
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v0, ""

    .line 897
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 898
    const-string v0, "N/A"

    goto :goto_5

    .line 900
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ver. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    :cond_15
    :goto_5
    return-object v0
.end method

.method private static getAdVersionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 909
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 910
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 911
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 912
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 913
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 914
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, ""

    return-object v1
.end method

.method private static getAdapterClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 690
    const-string v0, ""

    .line 691
    .local v0, "cls":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.mopub.mobileads."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    return-object v0
.end method

.method public static hasAdcolony()Z
    .locals 4

    .line 188
    const/16 v0, 0x20

    .line 189
    .local v0, "bitunion":I
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 192
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADCOLONY_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 194
    .local v2, "result":Z
    if-nez v2, :cond_1

    .line 195
    const-string v3, "Adcolony ads jars has be not improved, check please"

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 198
    :cond_1
    if-eqz v2, :cond_2

    .line 199
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 201
    :cond_2
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 202
    return v2
.end method

.method private static hasAdmob()Z
    .locals 9

    .line 45
    const/4 v0, 0x1

    .line 46
    .local v0, "bitunion":I
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 49
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADMOB_BANNER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 51
    .local v2, "result1":Z
    const-string v3, " not found"

    const-string v4, "class "

    if-nez v2, :cond_1

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADMOB_BANNER_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 55
    :cond_1
    sget-object v5, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADMOB_INTERSTITIAL_CLASS_NAME:Ljava/lang/String;

    invoke-static {v5}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v5

    .line 57
    .local v5, "result2":Z
    if-nez v5, :cond_2

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADMOB_INTERSTITIAL_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 61
    :cond_2
    sget-object v6, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADMOB_REWARD_CLASS_NAME:Ljava/lang/String;

    invoke-static {v6}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v6

    .line 63
    .local v6, "result3":Z
    if-nez v6, :cond_3

    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADMOB_REWARD_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 67
    :cond_3
    sget-object v7, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADMOB_REQUEST_CLASS_NAME:Ljava/lang/String;

    invoke-static {v7}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v7

    .line 69
    .local v7, "result4":Z
    if-nez v7, :cond_4

    .line 70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADMOB_REQUEST_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 74
    :cond_4
    if-nez v2, :cond_6

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    if-eqz v7, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v3, 0x1

    .line 76
    .local v3, "result":Z
    :goto_1
    if-nez v3, :cond_7

    .line 77
    const-string v4, "Admob ads jars has not improved, check please"

    invoke-static {v4}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 80
    :cond_7
    if-eqz v3, :cond_8

    .line 81
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 83
    :cond_8
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 84
    return v3
.end method

.method public static hasAdmobNew()Z
    .locals 6

    .line 88
    const/4 v0, 0x2

    .line 89
    .local v0, "bitunion":I
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 90
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasAdmob()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 92
    :cond_1
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADMOB_NEW_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 94
    .local v2, "result":Z
    if-nez v2, :cond_2

    .line 95
    const-string v5, "Admob_new ads jars has not improved, check please"

    invoke-static {v5}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 98
    :cond_2
    if-eqz v2, :cond_3

    .line 99
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 101
    :cond_3
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 102
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasAdmob()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public static hasAmazon()Z
    .locals 4

    .line 470
    const/high16 v0, 0x40000

    .line 471
    .local v0, "bitunion":I
    const/high16 v1, 0x40000

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 474
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->AMAZON_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 476
    .local v2, "result":Z
    if-nez v2, :cond_1

    .line 477
    const-string v3, "Amazon jars has be not improved, check please"

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 480
    :cond_1
    if-eqz v2, :cond_2

    .line 481
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 483
    :cond_2
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 484
    return v2
.end method

.method public static hasApplovin()Z
    .locals 4

    .line 243
    const/16 v0, 0x100

    .line 244
    .local v0, "bitunion":I
    const/16 v1, 0x100

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 247
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->APPLOVIN_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 249
    .local v2, "result":Z
    if-nez v2, :cond_1

    .line 250
    const-string v3, "Applovin ads jars has not improved, check please"

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 253
    :cond_1
    if-eqz v2, :cond_2

    .line 254
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 256
    :cond_2
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 257
    return v2
.end method

.method public static hasBdm()Z
    .locals 1

    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method public static hasChartboost()Z
    .locals 4

    .line 299
    const/16 v0, 0x800

    .line 300
    .local v0, "bitunion":I
    const/16 v1, 0x800

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 303
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->CHARTBOOST_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 305
    .local v2, "result":Z
    if-nez v2, :cond_1

    .line 306
    const-string v3, "Chartboost ads jars has be not improved, check please"

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 309
    :cond_1
    if-eqz v2, :cond_2

    .line 310
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 312
    :cond_2
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 313
    return v2
.end method

.method public static hasChartboostN()Z
    .locals 4

    .line 317
    const/16 v0, 0x1000

    .line 318
    .local v0, "bitunion":I
    const/16 v1, 0x1000

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 321
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->CHARTBOOST_N_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 323
    .local v2, "result":Z
    if-nez v2, :cond_1

    .line 324
    const-string v3, "Chartboost_new_b ads jars has be not improved, check please"

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 327
    :cond_1
    if-eqz v2, :cond_2

    .line 328
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 330
    :cond_2
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 331
    return v2
.end method

.method public static hasExoplayer()Z
    .locals 4

    .line 452
    const/high16 v0, 0x20000

    .line 453
    .local v0, "bitunion":I
    const/high16 v1, 0x20000

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 456
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->EXO_PLAYER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 458
    .local v2, "result":Z
    if-nez v2, :cond_1

    .line 459
    const-string v3, "Exoplayer jars has be not improved, check please"

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 462
    :cond_1
    if-eqz v2, :cond_2

    .line 463
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 465
    :cond_2
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 466
    return v2
.end method

.method public static hasFacebook()Z
    .locals 9

    .line 106
    const/4 v0, 0x4

    .line 107
    .local v0, "bitunion":I
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 110
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->FACEBOOK_BANNER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 112
    .local v2, "result1":Z
    const-string v3, " not found"

    const-string v4, "class "

    if-nez v2, :cond_1

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->FACEBOOK_BANNER_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 116
    :cond_1
    sget-object v5, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->FACEBOOK_INTERSTITIAL_CLASS_NAME:Ljava/lang/String;

    invoke-static {v5}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v5

    .line 118
    .local v5, "result2":Z
    if-nez v5, :cond_2

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->FACEBOOK_INTERSTITIAL_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 122
    :cond_2
    sget-object v6, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->FACEBOOK_NATIVE_CLASS_NAME:Ljava/lang/String;

    invoke-static {v6}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v6

    .line 124
    .local v6, "result3":Z
    if-nez v6, :cond_3

    .line 125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->FACEBOOK_NATIVE_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 128
    :cond_3
    sget-object v7, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->FACEBOOK_LISTENER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v7}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v7

    .line 130
    .local v7, "result4":Z
    if-nez v7, :cond_4

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->FACEBOOK_LISTENER_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 135
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .line 137
    .local v3, "result":Z
    :goto_0
    if-nez v3, :cond_6

    .line 138
    const-string v4, "Facebook ads jars has not improved, check please"

    invoke-static {v4}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 141
    :cond_6
    if-eqz v3, :cond_7

    .line 142
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 144
    :cond_7
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 145
    return v3
.end method

.method public static hasFacebookVideo()Z
    .locals 6

    .line 150
    const/16 v0, 0x8

    .line 151
    .local v0, "bitunion":I
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 152
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasFacebook()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 154
    :cond_1
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->FACEBOOK_VIDEO_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 157
    .local v2, "result":Z
    if-nez v2, :cond_2

    .line 158
    const-string v5, "Facebook video ads jars has not improved, check please"

    invoke-static {v5}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 161
    :cond_2
    if-eqz v2, :cond_3

    .line 162
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 164
    :cond_3
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 165
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasFacebook()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private static hasFyber()Z
    .locals 1

    .line 671
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_AFF_CLASS_FYBER:Ljava/lang/String;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static hasGson()Z
    .locals 4

    .line 434
    const/high16 v0, 0x8000000

    .line 435
    .local v0, "bitunion":I
    const/high16 v1, 0x8000000

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 438
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->GSON_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 440
    .local v2, "result":Z
    if-nez v2, :cond_1

    .line 441
    const-string v3, "GSON jars has be not improved, check please"

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 444
    :cond_1
    if-eqz v2, :cond_2

    .line 445
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 447
    :cond_2
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 448
    return v2
.end method

.method public static hasGt()Z
    .locals 1

    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public static hasGtVideo()Z
    .locals 1

    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public static hasIronsource()Z
    .locals 1

    .line 340
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->IRONSOURCE_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    .line 376
    .local v0, "result":Z
    return v0
.end method

.method public static hasMaio()Z
    .locals 4

    .line 398
    const v0, 0x8000

    .line 399
    .local v0, "bitunion":I
    const v1, 0x8000

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 402
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->MAIO_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 404
    .local v2, "result":Z
    if-nez v2, :cond_1

    .line 405
    const-string v3, "Maio ads jars has be not improved, check please"

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 408
    :cond_1
    if-eqz v2, :cond_2

    .line 409
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 411
    :cond_2
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 412
    return v2
.end method

.method public static hasMitgr()Z
    .locals 5

    .line 488
    const/high16 v0, 0x80000

    .line 489
    .local v0, "bitunion":I
    const/high16 v1, 0x80000

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 492
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_AFF_CLASS_MTG:Ljava/lang/String;

    .line 493
    .local v2, "className":Ljava/lang/String;
    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_AFF_CLASS_MTG_2:Ljava/lang/String;

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 495
    .local v3, "result":Z
    :goto_1
    if-nez v3, :cond_3

    .line 496
    const-string v4, "Mintegral ads jars has be not improved, check please"

    invoke-static {v4}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 499
    :cond_3
    if-eqz v3, :cond_4

    .line 500
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 502
    :cond_4
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 503
    return v3
.end method

.method private static hasMoPub()Z
    .locals 1

    .line 668
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->MOPUB_INTER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static hasMoPubInter()Z
    .locals 1

    .line 682
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->MOPUB_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static hasMoPubReward()Z
    .locals 1

    .line 678
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->MOPUB_REWARD_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static hasMoPubVolley()Z
    .locals 1

    .line 685
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->MOPUB_VOLLEY_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasNend()Z
    .locals 4

    .line 416
    const/high16 v0, 0x10000

    .line 417
    .local v0, "bitunion":I
    const/high16 v1, 0x10000

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 420
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->NEND_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 422
    .local v2, "result":Z
    if-nez v2, :cond_1

    .line 423
    const-string v3, "Nend ads jars has be not improved, check please"

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 426
    :cond_1
    if-eqz v2, :cond_2

    .line 427
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 429
    :cond_2
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 430
    return v2
.end method

.method public static hasOwy()Z
    .locals 1

    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method private static hasPangle()Z
    .locals 1

    .line 674
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_AFF_CLASS_PANGLE:Ljava/lang/String;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasPlayable()Z
    .locals 4

    .line 261
    const/16 v0, 0x200

    .line 262
    .local v0, "bitunion":I
    const/16 v1, 0x200

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 265
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->PLAYABLE_REWARDAD_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->PLAYABLE_INTERAD_CLASS_NAME:Ljava/lang/String;

    .line 266
    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 268
    .local v2, "result":Z
    :goto_0
    if-nez v2, :cond_2

    .line 269
    const-string v3, "Playable ads jars has be not improved, check please"

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 272
    :cond_2
    if-eqz v2, :cond_3

    .line 273
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 275
    :cond_3
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 276
    return v2
.end method

.method public static hasPlayableInner()Z
    .locals 4

    .line 280
    const/16 v0, 0x400

    .line 281
    .local v0, "bitunion":I
    const/16 v1, 0x400

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 284
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->PLAYABLE_INNER_REWARDAD_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->PLAYABLE_INNER_INTERAD_CLASS_NAME:Ljava/lang/String;

    .line 285
    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 287
    .local v2, "result":Z
    :goto_0
    if-nez v2, :cond_2

    .line 288
    const-string v3, "Playable inner ads jars has be not improved, check please"

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 291
    :cond_2
    if-eqz v2, :cond_3

    .line 292
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 294
    :cond_3
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 295
    return v2
.end method

.method public static hasSgmb()Z
    .locals 1

    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public static hasTT()Z
    .locals 1

    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public static hasTTV()Z
    .locals 1

    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public static hasUnity()Z
    .locals 4

    .line 206
    const/16 v0, 0x40

    .line 207
    .local v0, "bitunion":I
    const/16 v1, 0x40

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 211
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->UNITY_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 213
    .local v2, "result":Z
    if-nez v2, :cond_1

    .line 214
    const-string v3, "Unity ads jars has be not improved, check please"

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 217
    :cond_1
    if-eqz v2, :cond_2

    .line 218
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 220
    :cond_2
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 221
    return v2
.end method

.method public static hasUnityBanner()Z
    .locals 6

    .line 225
    const/16 v0, 0x80

    .line 226
    .local v0, "bitunion":I
    const/16 v1, 0x80

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 227
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasUnity()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 229
    :cond_1
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->UNITY_BANNER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 231
    .local v2, "result":Z
    if-nez v2, :cond_2

    .line 232
    const-string v5, "Unity banner jars has be not improved, check please"

    invoke-static {v5}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 235
    :cond_2
    if-eqz v2, :cond_3

    .line 236
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 238
    :cond_3
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 239
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasUnity()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public static hasVk()Z
    .locals 4

    .line 380
    const/16 v0, 0x4000

    .line 381
    .local v0, "bitunion":I
    const/16 v1, 0x4000

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    return v1

    .line 384
    :cond_0
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->VK_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 386
    .local v2, "result":Z
    if-nez v2, :cond_1

    .line 387
    const-string v3, "VK ads jars has be not improved, check please"

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 390
    :cond_1
    if-eqz v2, :cond_2

    .line 391
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 393
    :cond_2
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 394
    return v2
.end method

.method public static hasVungle()Z
    .locals 6

    .line 169
    const/16 v0, 0x10

    .line 170
    .local v0, "bitunion":I
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isCheckedUnion(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 171
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isExistedUnion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasGson()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 173
    :cond_1
    sget-object v2, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->VUNGLE_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v2

    .line 175
    .local v2, "result":Z
    if-nez v2, :cond_2

    .line 176
    const-string v5, "Vungle ads jars has not improved, check please"

    invoke-static {v5}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->d(Ljava/lang/String;)V

    .line 179
    :cond_2
    if-eqz v2, :cond_3

    .line 180
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateExistedUnion(I)V

    .line 182
    :cond_3
    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->updateCheckedUnion(I)V

    .line 183
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasGson()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private static isCheckedUnion(I)Z
    .locals 1
    .param p0, "unionbit"    # I

    .line 28
    sget v0, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->sUnionCheckFlag:I

    and-int/2addr v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClassLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .line 720
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MOPUB_MARKETPLACE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    const/4 v0, 0x1

    return v0

    .line 723
    :cond_0
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADMOB:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasAdmob()Z

    move-result v0

    return v0

    .line 726
    :cond_1
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADMOB_NEW:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 727
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasAdmobNew()Z

    move-result v0

    return v0

    .line 729
    :cond_2
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADCOLONY:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 730
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasAdcolony()Z

    move-result v0

    return v0

    .line 732
    :cond_3
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->VUNGLE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 733
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasVungle()Z

    move-result v0

    return v0

    .line 735
    :cond_4
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->UNITY:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 736
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasUnity()Z

    move-result v0

    return v0

    .line 738
    :cond_5
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->APPLOVIN:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 739
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasApplovin()Z

    move-result v0

    return v0

    .line 741
    :cond_6
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->CHARTBOOST:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 742
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasChartboost()Z

    move-result v0

    return v0

    .line 744
    :cond_7
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->CHARTBOOST_N:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 745
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasChartboostN()Z

    move-result v0

    return v0

    .line 747
    :cond_8
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->PLAYABLEADS:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 748
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasPlayable()Z

    move-result v0

    return v0

    .line 750
    :cond_9
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->FACEBOOK:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 751
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasFacebookVideo()Z

    move-result v0

    return v0

    .line 753
    :cond_a
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->IRONSOURCE:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 754
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasIronsource()Z

    move-result v0

    return v0

    .line 756
    :cond_b
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->VK:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 757
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasVk()Z

    move-result v0

    return v0

    .line 759
    :cond_c
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->PLAYABLEADS_INNER:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 760
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasPlayableInner()Z

    move-result v0

    return v0

    .line 762
    :cond_d
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->MAIO:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 763
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasMaio()Z

    move-result v0

    return v0

    .line 765
    :cond_e
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->NEND:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 766
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasNend()Z

    move-result v0

    return v0

    .line 771
    :cond_f
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->ADMOB_R:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 772
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasAdmob()Z

    move-result v0

    return v0

    .line 774
    :cond_10
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->FACEBOOK_R:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 775
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasFacebookVideo()Z

    move-result v0

    return v0

    .line 777
    :cond_11
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->IRONSOURCE_R:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 778
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasIronsource()Z

    move-result v0

    return v0

    .line 780
    :cond_12
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->AMAZON:Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/consts/MTAdPlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 781
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasAmazon()Z

    move-result v0

    return v0

    .line 784
    :cond_13
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_mintegral:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 785
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasMitgr()Z

    move-result v0

    return v0

    .line 787
    :cond_14
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_oneway:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 788
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasOwy()Z

    move-result v0

    return v0

    .line 790
    :cond_15
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_toutiao:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 791
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasTT()Z

    move-result v0

    return v0

    .line 793
    :cond_16
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_toutiao_video:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 794
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasTTV()Z

    move-result v0

    return v0

    .line 796
    :cond_17
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_gdt:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 797
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasGtVideo()Z

    move-result v0

    return v0

    .line 799
    :cond_18
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_sigmob:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 800
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasSgmb()Z

    move-result v0

    return v0

    .line 802
    :cond_19
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_fyber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 803
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasFyber()Z

    move-result v0

    return v0

    .line 805
    :cond_1a
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_pangle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 806
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasPangle()Z

    move-result v0

    return v0

    .line 810
    :cond_1b
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_Inmobi:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 811
    const-string v0, "com.inmobi.ads.InMobiAdRequestStatus"

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 814
    :cond_1c
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->ADS_KEY_NAME_baidu:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 815
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->hasBdm()Z

    move-result v0

    return v0

    .line 818
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private static isExistedUnion(I)Z
    .locals 1
    .param p0, "unionbit"    # I

    .line 33
    sget v0, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->sUnionExistFlag:I

    and-int/2addr v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static updateCheckedUnion(I)V
    .locals 1
    .param p0, "unionbit"    # I

    .line 37
    sget v0, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->sUnionCheckFlag:I

    or-int/2addr v0, p0

    sput v0, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->sUnionCheckFlag:I

    .line 38
    return-void
.end method

.method private static updateExistedUnion(I)V
    .locals 1
    .param p0, "unionbit"    # I

    .line 41
    sget v0, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->sUnionExistFlag:I

    or-int/2addr v0, p0

    sput v0, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->sUnionExistFlag:I

    .line 42
    return-void
.end method
